#=====================================================================
# open_impl_gui.tcl -- open a routed (or post-synth) checkpoint and start
# the Vivado GUI so the implementation can be inspected interactively
# (M2 deliverable, the implementation-side twin of the waveform GUI).
#
#   vivado -mode gui -source fpga_flow/open_impl_gui.tcl            (tag from env FLOW_TAG)
#   vivado -mode gui -source fpga_flow/open_impl_gui.tcl -tclargs rep_d3_2to1_xcvu9p
#
# What it shows:
#   * the routed design in the device view (use the "Netlist"/"Device" tabs)
#   * utilization, timing summary and the 20 worst paths, written to
#     logs/gui_<tag>_*.rpt and echoed in the Tcl console
#   * the critical path selected in the timing report (click a row to
#     highlight it in the device view / schematic)
#=====================================================================
set here [file dirname [file normalize [info script]]]
set logdir [file join $here logs]

set tag ""
if {[llength $argv]} { set tag [lindex $argv 0] } elseif {[info exists ::env(FLOW_TAG)]} { set tag $::env(FLOW_TAG) }
if {$tag eq ""} {
  set cands [lsort [glob -nocomplain -directory $logdir postroute_*.dcp]]
  if {![llength $cands]} { error "no postroute_*.dcp in $logdir -- run sweep.ps1 first" }
  set dcp [lindex $cands end]
} else {
  set dcp [file join $logdir "postroute_$tag.dcp"]
  if {![file exists $dcp]} { set dcp [file join $logdir "postsynth_$tag.dcp"] }
}
if {![file exists $dcp]} { error "checkpoint not found for tag '$tag'" }

puts "OPENING $dcp"
open_checkpoint $dcp

report_utilization      -file [file join $logdir "gui_[file rootname [file tail $dcp]]_util.rpt"]
report_timing_summary   -delay_type max -max_paths 20 -file [file join $logdir "gui_[file rootname [file tail $dcp]]_timing.rpt"]
report_timing           -delay_type max -max_paths 20 -input_pins -file [file join $logdir "gui_[file rootname [file tail $dcp]]_paths.rpt"]
catch { report_power    -file [file join $logdir "gui_[file rootname [file tail $dcp]]_power.rpt"] }

puts "----- worst path (also written to logs/gui_*_paths.rpt) -----"
set tp [get_timing_paths -delay_type max -max_paths 1]
if {[llength $tp]} {
  puts "slack=[get_property SLACK $tp] levels=[get_property LOGIC_LEVELS $tp]"
  puts "startpoint=[get_property STARTPOINT_PIN $tp]  endpoint=[get_property ENDPOINT_PIN $tp]"
}

if {[catch {current_project} proj] || $proj eq ""} { }
if {![llength [info commands start_gui]] || ![is_gui_mode]} {
  if {[llength [info commands start_gui]]} { start_gui }
}
puts "GUI ready. Useful commands:"
puts "  report_timing -max_paths 20 -input_pins          ;# re-run timing"
puts "  select_objects \[get_cells <name>\]                ;# highlight a cell"
puts "  show_schematic \[get_cells <name>\]                ;# open schematic of a cell"
puts "  report_utilization -hierarchical                 ;# resource breakdown"
