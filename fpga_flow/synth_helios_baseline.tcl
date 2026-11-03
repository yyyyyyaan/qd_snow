#=====================================================================
# synth_helios_baseline.tcl -- synthesise the ORIGINAL Helios single-FPGA
# union-find decoder for a like-for-like area comparison with the Snowflake
# implementation (same tool, same device, same out-of-context flow).
#
# It uses fpga_flow/helios_baseline/, a scratch copy of the repository's
# design tree with one patch: parameters/parameters.sv gets STAGE_WIDTH = 4 and
# the three stage codes that design/pe/processing_unit.sv uses but the shipped
# parameters file does not define (STAGE_SPREAD_CLUSTER, STAGE_GROW_BOUNDARY,
# STAGE_SYNC_IS_ODD_CLUSTER).  Without that patch the repository's PE cannot be
# synthesised at all ("STAGE_SPREAD_CLUSTER is not declared").
#
#   cmd /c "vivado.bat -mode batch -source fpga_flow\synth_helios_baseline.tcl"
#
# Top: standard_planar_code_3d_no_fast_channel_synthesizable_top
#      (from scripts/total.tcl) with CODE_DISTANCE_X=5, CODE_DISTANCE_Z=4 and
#      MEASUREMENT_ROUNDS=5 -> 100 processing units.
#=====================================================================
set here [file dirname [file normalize [info script]]]
set repo [file join $here helios_baseline]
set outdir [file join $here logs]
set tag "helios_baseline_100pe"
if {[info exists ::env(HELIOS_TAG)] && $::env(HELIOS_TAG) ne ""} { set tag $::env(HELIOS_TAG) }
set part xcvu9p-flga2104-2L-e
set period 5.0
set top standard_planar_code_3d_no_fast_channel_synthesizable_top

file mkdir $outdir

set srcs {}
# Explicit list instead of globbing the whole tree: the repository also ships
# multi-FPGA leaf/hub sources (which do not compile on their own), a debug copy
# of the PE and a broken left/right wrapper.  The list below is the
# instantiation chain of the single-FPGA top; anything missing shows up as an
# unresolved module during elaboration and can simply be appended.
foreach rel {
  design/pe/processing_unit.sv
  design/generics/tree_compare_solver.sv
  design/generics/tree_distance_3d_solver.sv
  design/generics/many_to_one_mux.sv
  design/channels/blocking_channel.sv
  design/channels/nonblocking_channel.sv
  design/channels/neighbor_link.sv
  design/channels/neigbor_link_fifo.sv
  design/channels/pu_arbitration.sv
  design/channels/final_arbitration.sv
  design/stage_controller/decoder_stage_controller.sv
  design/stage_controller/get_boundry_cardinality_3d.sv
  design/wrappers/standard_planar_code_2d_no_fast_channel_synthesizable_top.sv
  design/wrappers/standard_planar_code_2d_no_fast_channel_with_stage_controller.sv
  design/wrappers/standard_planar_code_2d_no_fast_channel.sv
} {
  set f [file join $repo $rel]
  if {[file exists $f]} { lappend srcs $f } else { puts "HELIOS_MISSING $rel" }
}
foreach f [lsort [glob -nocomplain [file join $repo design generics *.v]]] {
  if {[string match "*fifo*" $f]} { lappend srcs $f }
}
puts "HELIOS_SRCS [llength $srcs] files"
foreach s $srcs { puts "  [file tail $s]" }
foreach s $srcs { read_verilog -sv $s }

set xdc [file join $outdir "ooc_$tag.xdc"]
set fh [open $xdc w]
puts $fh "create_clock -name clk -period $period \[get_ports clk\]"
close $fh
read_xdc $xdc

if {[catch {
  synth_design -top $top -part $part -mode out_of_context -flatten_hierarchy none
} err]} {
  puts "HELIOS_SYNTH_FAILED [lindex [split $err "\n"] 0]"
  exit 1
}

report_utilization -file [file join $outdir "helios_util_$tag.rpt"]
report_utilization -hierarchical -file [file join $outdir "helios_utilhier_$tag.rpt"]
report_timing_summary -delay_type max -max_paths 10 -file [file join $outdir "helios_timing_$tag.rpt"]

proc util_row {file label} {
  if {![file exists $file]} { return "NA" }
  set fh [open $file r]; set data [read $fh]; close $fh
  foreach line [split $data "\n"] {
    if {[string first $label $line] >= 0} {
      foreach c [regexp -all -inline {\S+} $line] {
        if {[string is integer -strict $c]} { return $c }
      }
    }
  }
  return "NA"
}

set wns "NA"
set tp [get_timing_paths -delay_type max -max_paths 1 -quiet]
if {[llength $tp]} { set wns [get_property SLACK $tp] }

puts "HELIOS_RESULT tag=$tag top=$top part=$part period=$period wns=$wns \
lut=[util_row [file join $outdir "helios_util_$tag.rpt"] {CLB LUTs}] \
ff=[util_row [file join $outdir "helios_util_$tag.rpt"] {CLB Registers}] \
lutram=[util_row [file join $outdir "helios_util_$tag.rpt"] {LUT as Memory}] \
bram=[util_row [file join $outdir "helios_util_$tag.rpt"] {Block RAM Tile}] \
dsp=[util_row [file join $outdir "helios_util_$tag.rpt"] {DSPs}]"
puts "HELIOS_DONE"
