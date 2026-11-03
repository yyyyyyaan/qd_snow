#=====================================================================
# synth_helios_pe.tcl -- synthesise ONE original Helios processing unit
# (design/pe/processing_unit.sv) on its own, out of context, to close the
# "how many LUTs is a Helios node, really?" question of report section 7.4.
#
# Why a single PE and not a bigger array: the 5x4x5=100-PE and 7x6=294-PE runs
# already showed the per-PE cost is flat (276.7 -> 274.6 LUT/PE), so the gap to
# the paper's 92 LUT/node cannot be amortisation.  A single PE removes the array
# and lets the hierarchical report show WHERE the per-node cost goes.
#
# The module defaults are the paper's configuration
#   CODE_DISTANCE_X = 27, CODE_DISTANCE_Z = 26, MEASUREMENT_ROUNDS = 27
# so no parameter override is needed.
#
#   cmd /c "vivado.bat -mode batch -source fpga_flow\synth_helios_pe.tcl"
#=====================================================================
set here [file dirname [file normalize [info script]]]
set repo [file join $here helios_baseline]
set outdir [file join $here logs]
set tag "helios_pe_d21"
if {[info exists ::env(HELIOS_TAG)] && $::env(HELIOS_TAG) ne ""} { set tag $::env(HELIOS_TAG) }
set part xcvu9p-flga2104-2L-e
set period 5.0
set top processing_unit

file mkdir $outdir

set srcs {}
# Same explicit chain as synth_helios_baseline.tcl, minus the array wrappers
# (not part of a single PE's instantiation chain).
foreach rel {
  parameters/parameters.sv
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
} {
  set f [file join $repo $rel]
  if {[file exists $f]} { lappend srcs $f } else { puts "HELIOS_MISSING $rel" }
}
foreach f [lsort [glob -nocomplain [file join $repo design generics *.v]]] {
  if {[string match "*fifo*" $f]} { lappend srcs $f }
}
puts "HELIOS_PE_SRCS [llength $srcs] files"
foreach s $srcs { puts "  [file tail $s]" }
foreach s $srcs { read_verilog -sv $s }

set xdc [file join $outdir "ooc_$tag.xdc"]
set fh [open $xdc w]
puts $fh "create_clock -name clk -period $period \[get_ports clk\]"
close $fh
read_xdc $xdc

if {[catch {
  set gens {}
  # The repository's PE carries DIRECT_CHANNEL_COUNT = 3 (low-latency "ll_connected"
  # channels) on top of the six neighbour links.  The paper's 200 LUT/PE figure is
  # quoted for "a PE for d = 21 with six adjacent PEs", i.e. WITHOUT direct
  # channels, so the comparison needs a variant that drops them:
  #   $env(HELIOS_PE_GENERICS) = "DIRECT_CHANNEL_COUNT 1"
  if {[info exists ::env(HELIOS_PE_GENERICS)] && $::env(HELIOS_PE_GENERICS) ne ""} {
    set gens [split $::env(HELIOS_PE_GENERICS)]
    puts "HELIOS_PE_GENERICS $gens"
  }
  if {[llength $gens]} {
    synth_design -top $top -part $part -mode out_of_context -flatten_hierarchy none \
        -generic $gens
  } else {
    synth_design -top $top -part $part -mode out_of_context -flatten_hierarchy none
  }
} err]} {
  puts "HELIOS_PE_SYNTH_FAILED [lindex [split $err "\n"] 0]"
  exit 1
}

report_utilization -file [file join $outdir "helios_pe_util_$tag.rpt"]
report_utilization -hierarchical -file [file join $outdir "helios_pe_utilhier_$tag.rpt"]
report_timing_summary -delay_type max -max_paths 10 -file [file join $outdir "helios_pe_timing_$tag.rpt"]

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

set uf [file join $outdir "helios_pe_util_$tag.rpt"]
puts "HELIOS_PE_RESULT tag=$tag top=$top part=$part period=$period wns=$wns \
lut=[util_row $uf {CLB LUTs}] \
ff=[util_row $uf {CLB Registers}] \
lutram=[util_row $uf {LUT as Memory}] \
bram=[util_row $uf {Block RAM Tile}] \
dsp=[util_row $uf {DSPs}]"
puts "HELIOS_PE_DONE"
