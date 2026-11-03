#=====================================================================
# netlist_synth.tcl -- synthesise one configuration and write a
# functional-simulation netlist, for the gate-level regression
# (M0 deliverable).  Env inputs mirror run_ooc.tcl.
#
#   FLOW_REPO / FLOW_TOP / FLOW_SRCS / FLOW_DEFS / FLOW_GRAPH /
#   FLOW_PART / FLOW_TAG / FLOW_OUT
#=====================================================================
set repo   $::env(FLOW_REPO)
set top    $::env(FLOW_TOP)
set part   $::env(FLOW_PART)
set tag    $::env(FLOW_TAG)
set outdir $::env(FLOW_OUT)
set srcs   [expr {[info exists ::env(FLOW_SRCS)] ? [split $::env(FLOW_SRCS) ";"] \
                  : [list "$repo/design/snowflake/snowflake_core.sv"]}]
set defs   [expr {[info exists ::env(FLOW_DEFS)] ? [split $::env(FLOW_DEFS) ";"] : [list]}]

file mkdir $outdir

if {[info exists ::env(FLOW_GRAPH)] && $::env(FLOW_GRAPH) ne ""} {
  set dst "$repo/design/generated/snowflake_graph.svh"
  if {![string equal -nocase [file normalize $::env(FLOW_GRAPH)] [file normalize $dst]]} {
    file copy -force $::env(FLOW_GRAPH) $dst
  }
  puts "NETLIST_GRAPH_PINNED [file tail $::env(FLOW_GRAPH)]"
}

# The lattice sources include generated headers by BARE name
# (`include "snowflake_graph.svh"`), which Vivado's reader resolves against the
# include path, not against the including file -- without this it fails with
# "cannot open include file snowflake_graph.svh".  `read_verilog` has no
# -include_dirs option in 2020.2, so the search path is set on the fileset
# first, exactly as run_ooc.tcl does.
set_property include_dirs [list "$repo/design/generated" "$repo/design/snowflake"] \
    [current_fileset]
foreach s $srcs { read_verilog -sv $s }

set synth_args [list -top $top -part $part -mode out_of_context -flatten_hierarchy none]
if {[llength $defs]} { lappend synth_args -verilog_define [join $defs " "] }
synth_design {*}$synth_args

write_verilog -force -mode funcsim "$outdir/netlist_$tag.v"
puts "NETLIST_WRITTEN $outdir/netlist_$tag.v"
