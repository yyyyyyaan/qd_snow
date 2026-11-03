#=====================================================================
# synth_helios.tcl -- synthesise the ORIGINAL Helios single-FPGA decoder
# (the paper's union-find PE array) with the same tool, device and flow as
# the Snowflake builds, so the two can be compared per PE / per node.
#
#   cmd /c "vivado.bat -mode batch -source fpga_flow\synth_helios.tcl"
#
# Top: standard_planar_code_3d_no_fast_channel_synthesizable_top
#      (from scripts/total.tcl; parameters give a 5 x 4 code over 5 rounds
#       = 100 processing units)
#
# Notes
#  * parameters/parameters.sv is an include-only file (localparams), it is
#    included by the design files themselves and must NOT be read separately.
#  * the known-broken / duplicated files are skipped:
#      - "processing_unit synthesizable_test.sv"  (test copy of the PE)
#      - "final_arbitration _ll_connected.sv"     (debug copy)
#      - design/generated/*                       (duplicate module names,
#        multi-FPGA leaf/hub files)
#      - single_FPGA_decoding_graph_dynamic_rsc.sv (known multiple-driver bug)
#=====================================================================
set here [file dirname [file normalize [info script]]]
set repo [file normalize [file join $here .. Helios_scalable_QEC-main Helios_scalable_QEC-main]]
set outdir [file join $here logs]
set tag "helios_single_fpga"
set part xcvu9p-flga2104-2L-e
set period 5.0

file mkdir $outdir

set srcs {}
foreach dir {pe generics channels stage_controller wrappers} {
  foreach f [lsort [glob -nocomplain -directory [file join $repo design $dir] *]] {
    set base [file tail $f]
    if {[string match "*synthesizable_test*" $base]} { continue }
    if {[string match "*_ll_connected*" $base]}    { continue }
    if {[string match "single_FPGA_decoding_graph_dynamic_rsc*" $base]} { continue }
    if {[string match "*.sv" $f] || [string match "*.v" $f]} { lappend srcs $f }
  }
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
  synth_design -top standard_planar_code_3d_no_fast_channel_synthesizable_top \
               -part $part -mode out_of_context -flatten_hierarchy none
} err]} {
  puts "HELIOS_SYNTH_FAILED $err"
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

puts "HELIOS_RESULT tag=$tag part=$part period=$period wns=$wns \
lut=[util_row [file join $outdir "helios_util_$tag.rpt"] {CLB LUTs}] \
ff=[util_row [file join $outdir "helios_util_$tag.rpt"] {CLB Registers}] \
lutram=[util_row [file join $outdir "helios_util_$tag.rpt"] {LUT as Memory}] \
bram=[util_row [file join $outdir "helios_util_$tag.rpt"] {Block RAM Tile}]"
puts "HELIOS_DONE"
