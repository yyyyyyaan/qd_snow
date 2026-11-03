#=====================================================================
# run_ooc.tcl -- parameterised out-of-context Vivado flow for the
# Snowflake-on-Helios work (M0 deliverable).
#
# It does:  [optional graph pinning] -> read sources -> synth_design
#           -> opt_design -> place_design -> phys_opt_design -> route_design
#           -> utilization / timing / logic-level / power / DRC reports
#           -> routed checkpoint -> machine readable FLOW_RESULT line
#
# All inputs come from environment variables so that one PowerShell driver
# (run_all.ps1) can sweep config x part x period serially, which also avoids
# two Vivado runs overwriting design/generated/snowflake_graph.svh.
#
#   FLOW_REPO    repo root (Helios_scalable_QEC-main/Helios_scalable_QEC-main)
#   FLOW_TOP     top module name           (default snowflake_core)
#   FLOW_SRCS    ';' separated source list (default design/snowflake/snowflake_core.sv)
#   FLOW_DEFS    ';' separated verilog defines, e.g. SNOW_ONE_ONE
#   FLOW_GRAPH   graph header to pin as design/generated/snowflake_graph.svh (optional)
#   FLOW_PART    e.g. xcvu9p-flga2104-2L-e
#   FLOW_PERIOD  clock period in ns
#   FLOW_TAG     run tag used for file names and the CSV line
#   FLOW_OUT     output directory
#   FLOW_MODE    synth | impl            (default impl)
#   FLOW_FLATTEN none | rebuilt | full   (default none)
#   FLOW_EXTRA_CLK  additional clock period for a second clock pin (optional, top has 'clk2')
#=====================================================================

set repo    $::env(FLOW_REPO)
set top     $::env(FLOW_TOP)
set part    $::env(FLOW_PART)
set period  $::env(FLOW_PERIOD)
set tag     $::env(FLOW_TAG)
set outdir  $::env(FLOW_OUT)
set mode    [expr {[info exists ::env(FLOW_MODE)] ? $::env(FLOW_MODE) : "impl"}]
set flatten [expr {[info exists ::env(FLOW_FLATTEN)] ? $::env(FLOW_FLATTEN) : "none"}]
set srcs    [expr {[info exists ::env(FLOW_SRCS)] ? [split $::env(FLOW_SRCS) ";"] \
                   : [list "$repo/design/snowflake/snowflake_core.sv"]}]
set defs    [expr {[info exists ::env(FLOW_DEFS)] ? [split $::env(FLOW_DEFS) ";"] : [list]}]

file mkdir $outdir

# ---- pin the decoding-graph header this run was generated for ----------
if {[info exists ::env(FLOW_GRAPH)] && $::env(FLOW_GRAPH) ne ""} {
  set dst "$repo/design/generated/snowflake_graph.svh"
  if {![string equal -nocase [file normalize $::env(FLOW_GRAPH)] [file normalize $dst]]} {
    file copy -force $::env(FLOW_GRAPH) $dst
  }
  puts "FLOW_GRAPH_PINNED [file tail $::env(FLOW_GRAPH)] -> $dst"
}

# ---- pin the seam (slice) header, same race, same fix --------------------
# snowflake_pe_array.sv `includes ../generated/snowflake_seam.svh under
# SNOW_SLICED, and make_sliced_sim.py writes that file into the repo -- so the
# ModelSim regressions and a Vivado sweep would otherwise fight over it.
if {[info exists ::env(FLOW_SEAM)] && $::env(FLOW_SEAM) ne ""} {
  set dst "$repo/design/generated/snowflake_seam.svh"
  if {![string equal -nocase [file normalize $::env(FLOW_SEAM)] [file normalize $dst]]} {
    file copy -force $::env(FLOW_SEAM) $dst
  }
  puts "FLOW_SEAM_PINNED [file tail $::env(FLOW_SEAM)] -> $dst"
}

# ---- out-of-context constraints --------------------------------------
set xdc "$outdir/ooc_$tag.xdc"
set fh [open $xdc w]
puts $fh "create_clock -name clk -period $period \[get_ports clk\]"
puts $fh "set_input_delay  -clock clk 0.0 \[remove_from_collection \[all_inputs\] \[get_ports clk\]\]"
puts $fh "set_output_delay -clock clk 0.0 \[all_outputs\]"
close $fh
read_xdc $xdc

# The SHARED-LATTICE sources need the generated-header directories on the include
# search path: snowflake_lattice.svh lives in design/generated and pulls in
# ../generated/snowflake_graph.svh, and snowflake_pe.sv / snowflake_edge.sv pull in
# ../generated/snowflake_*.svh.  Those relative paths resolve fine under ModelSim
# but not under Vivado's reader (which otherwise fails with "cannot open include
# file snowflake_graph.svh" and then a cascade of "value of X depends on itself"
# for every localparam in the header).
# `read_verilog` has no -include_dirs option in 2020.2; the search path is a
# fileset property in project mode, so for this non-project run set the global
# search path instead.
set_property include_dirs [list "$repo/design/generated" "$repo/design/snowflake"] \
  [current_fileset]
foreach s $srcs { read_verilog -sv $s }

set synth_args [list -top $top -part $part -mode out_of_context -flatten_hierarchy $flatten]
if {[llength $defs]} { lappend synth_args -verilog_define [join $defs " "] }
# FLOW_GENERICS: ';' separated top-level parameter overrides, "NAME=value" form
# (the "NAME value" form silently applies only the first pair).  Used by the
# context-count scaling probes, e.g. FLOW_GENERICS=NCTX=8.
if {[info exists ::env(FLOW_GENERICS)] && $::env(FLOW_GENERICS) ne ""} {
  set generics [split $::env(FLOW_GENERICS) ";"]
  puts "FLOW_GENERICS $generics"
  lappend synth_args -generic $generics
}
puts "FLOW_SYNTH $synth_args"
synth_design {*}$synth_args

report_utilization -file "$outdir/util_synth_$tag.rpt"
report_utilization -hierarchical -file "$outdir/utilhier_synth_$tag.rpt"

if {$mode eq "impl"} {
  # ---- optional layout constraints -----------------------------------
  # FLOW_KEEP_HIER=1 : stop opt_design from dissolving the PE / edge module
  #   boundaries (KEEP_HIERARCHY), so the comparison shows whether the modular
  #   structure helps or hurts the placer.
  # FLOW_PBLOCK=<k>  : split the PE array into k full-height vertical stripes of
  #   clock regions and pin node blocks [i*NN/k, (i+1)*NN/k) into stripe i.
  #   The generator emits nodes in spatial order, so a contiguous index block is
  #   a spatial neighbourhood; the stripe cuts are what costs (the long wires
  #   that must now cross between stripes).
  if {[info exists ::env(FLOW_KEEP_HIER)] && $::env(FLOW_KEEP_HIER) ne ""} {
    set kh_cells [get_cells -hier -quiet -filter {REF_NAME =~ snowflake_pe* || REF_NAME =~ snowflake_edge*}]
    puts "FLOW_KEEP_HIER [llength $kh_cells] cells"
    if {[llength $kh_cells]} { set_property KEEP_HIERARCHY TRUE $kh_cells }
  }
  # FLOW_PBLOCK_ONE=<n> : put EVERY PE/edge cell into ONE pblock covering a
  #   compact n-clock-region block (as square as the region grid allows).
  #   Why: the on-board runs are 82% ROUTE delay (report 6.31/6.32), and at ~5%
  #   utilization that is the placer spreading a small design over a big die --
  #   not silicon speed.  Confining it separates those two explanations, and is
  #   what a real board build does anyway (the decoder sits next to the PS and
  #   the rest of the system).  `FLOW_PBLOCK` below is a DIFFERENT experiment
  #   (split into stripes, i.e. measure the seam cost); this one shrinks.
  if {[info exists ::env(FLOW_PBLOCK_ONE)] && $::env(FLOW_PBLOCK_ONE) ne ""} {
    set want [expr {int($::env(FLOW_PBLOCK_ONE))}]
    set xvals {}; set yvals {}
    foreach cr [get_clock_regions] {
      set nm [get_property NAME $cr]
      if {[regexp {^X(\d+)Y(\d+)$} $nm -> cx cy]} {
        if {[lsearch -exact $xvals $cx] < 0} { lappend xvals $cx }
        if {[lsearch -exact $yvals $cy] < 0} { lappend yvals $cy }
      }
    }
    if {![llength $xvals]} {
      puts "FLOW_PBLOCK_ONE_FAILED no clock regions found -- refusing to run an unconstrained build"
      exit 1
    }
    set xvals [lsort -integer $xvals]; set yvals [lsort -integer $yvals]
    set nx [llength $xvals]; set ny [llength $yvals]
    set nxr 1
    while {$nxr * $nxr < $want && $nxr < $nx} { incr nxr }
    set nyr [expr {int(ceil(double($want) / $nxr))}]
    if {$nxr > $nx} { set nxr $nx }
    if {$nyr > $ny} { set nyr $ny }
    set x0 [lindex $xvals 0]; set x1 [lindex $xvals [expr {$nxr - 1}]]
    set y0 [lindex $yvals 0]; set y1 [lindex $yvals [expr {$nyr - 1}]]
    create_pblock pb_one
    resize_pblock pb_one -add "CLOCKREGION_X${x0}Y${y0}:CLOCKREGION_X${x1}Y${y1}"
    set cells [get_cells -hier -quiet -filter {REF_NAME =~ snowflake_pe* || REF_NAME =~ snowflake_edge*}]
    add_cells_to_pblock pb_one $cells
    puts "FLOW_PBLOCK_ONE want=$want regions=${nxr}x${nyr} X${x0}..${x1}Y${y0}..${y1} cells=[llength $cells] (device has [expr {$nx*$ny}] clock regions)"
  }
  if {[info exists ::env(FLOW_PBLOCK)] && $::env(FLOW_PBLOCK) ne ""} {    set k [expr {int($::env(FLOW_PBLOCK))}]
    set xvals {}
    set yvals {}
    # NOTE: get_clock_regions returns objects whose NAME is "X0Y0" (no
    # CLOCKREGION_ prefix) -- matching on "CLOCKREGION_X.." found nothing, left
    # xvals empty, clamped k to 0 and silently ran the UNCONSTRAINED baseline.
    # That is why the first pb4/pb8 runs came out bit-identical to the baseline.
    foreach cr [get_clock_regions] {
      set nm [get_property NAME $cr]
      if {[regexp {^X(\d+)Y(\d+)$} $nm -> cx cy]} {
        if {[lsearch -exact $xvals $cx] < 0} { lappend xvals $cx }
        if {[lsearch -exact $yvals $cy] < 0} { lappend yvals $cy }
      }
    }
    if {![llength $xvals]} {
      puts "FLOW_PBLOCK_FAILED no clock regions found -- refusing to run an unconstrained build"
      exit 1
    }
    set xvals [lsort -integer $xvals]
    set yvals [lsort -integer $yvals]
    set nx [llength $xvals]
    set y0 [lindex $yvals 0]
    set y1 [lindex $yvals end]
    if {$k > $nx} { set k $nx }
    # every PE instance, sorted with -dictionary so g_pe[10] > g_pe[9]
    set pe_cells [lsort -dictionary [get_cells -hier -quiet -filter {REF_NAME =~ snowflake_pe*}]]
    set nn [llength $pe_cells]
    puts "FLOW_PBLOCK k=$k clock_region_x=$xvals y=$y0..$y1 pe_cells=$nn"
    for {set i 0} {$i < $k} {incr i} {
      # floor boundaries shared by the region split and the node split, so that
      # PE block i really lands in stripe i and no clock-region column is skipped
      set b0 [expr {$i * $nx / $k}]
      set b1 [expr {($i + 1) * $nx / $k}]
      if {$b1 <= $b0} { continue }
      set xi0 [lindex $xvals $b0]
      set xi1 [lindex $xvals [expr {$b1 - 1}]]
      set n0 [expr {$i * $nn / $k}]
      set n1 [expr {($i + 1) * $nn / $k}]
      create_pblock "pb_$i"
      resize_pblock "pb_$i" -add "CLOCKREGION_X${xi0}Y${y0}:CLOCKREGION_X${xi1}Y${y1}"
      set cells [lrange $pe_cells $n0 [expr {$n1 - 1}]]
      add_cells_to_pblock "pb_$i" $cells
      puts "FLOW_PBLOCK pb_$i x=$xi0..$xi1 nodes=$n0..[expr {$n1-1}] cells=[llength $cells]"
    }
  }
  opt_design
  place_design
  phys_opt_design
  route_design
  report_utilization         -file "$outdir/util_route_$tag.rpt"
  report_utilization         -hierarchical -file "$outdir/utilhier_route_$tag.rpt"
  report_timing_summary      -delay_type max -max_paths 20 -file "$outdir/timing_$tag.rpt"
  report_timing              -delay_type max -max_paths 20 -input_pins -file "$outdir/timing_paths_$tag.rpt"
  report_design_analysis     -logic_level_distribution -file "$outdir/logic_levels_$tag.rpt"
  catch { report_power      -file "$outdir/power_$tag.rpt" }
  catch { report_drc        -file "$outdir/drc_$tag.rpt" }
  catch { report_clock_utilization -file "$outdir/clocks_$tag.rpt" }
  write_checkpoint -force "$outdir/postroute_$tag.dcp"
} else {
  report_timing_summary -delay_type max -max_paths 20 -file "$outdir/timing_synth_$tag.rpt"
  write_checkpoint -force "$outdir/postsynth_$tag.dcp"
}

# ---- machine readable summary ----------------------------------------
set util_file [expr {$mode eq "impl" ? "$outdir/util_route_$tag.rpt" : "$outdir/util_synth_$tag.rpt"}]
proc util_row {file label} {
  if {![file exists $file]} { return "NA" }
  set fh [open $file r]
  set data [read $fh]
  close $fh
  foreach line [split $data "\n"] {
    if {[string first $label $line] >= 0} {
      set cols [regexp -all -inline {\S+} $line]
      # rows look like:  | CLB LUTs | 780 | 0 | 1182240 | 0.07 |
      foreach c $cols { if {[string is integer -strict $c]} { return $c } }
    }
  }
  return "NA"
}

# The ROW LABELS are device-family dependent.  UltraScale (the whole report so
# far) says `CLB LUTs` / `CLB Registers`; 7-series -- i.e. the Z-7020 on the
# board (D12) -- says `Slice LUTs` / `Slice Registers` and has no URAM at all.
# Without this fallback the first on-board runs printed `lut=NA ff=NA` while
# their utilization report plainly said 2598 / 799
# (logs/util_synth_..._xc7z020clg484_p6p5.rpt), which would have made the
# on-board capacity table unbuildable.  Order matters: the UltraScale label is
# tried first, so every existing row is produced by the same lookup as before.
proc util_any {file labels} {
  foreach label $labels {
    set v [util_row $file $label]
    if {$v ne "NA"} { return $v }
  }
  return "NA"
}

set wns "NA"; set levels "NA"; set minp "NA"; set fmax "NA"
set tp [get_timing_paths -delay_type max -max_paths 1 -quiet]
if {[llength $tp]} {
  set wns [get_property SLACK $tp]
  set levels [get_property LOGIC_LEVELS $tp]
  if {$wns ne ""} { set minp [expr {$period - $wns}]
                    if {$minp > 0} { set fmax [format "%.1f" [expr {1000.0 / $minp}]] } }
}

puts "FLOW_RESULT tag=$tag top=$top part=$part period=$period mode=$mode \
wns=$wns levels=$levels min_period=$minp fmax_mhz=$fmax \
lut=[util_any $util_file {{CLB LUTs} {Slice LUTs}}] \
ff=[util_any $util_file {{CLB Registers} {Slice Registers}}] \
lutram=[util_row $util_file {LUT as Memory}] \
bram=[util_row $util_file {Block RAM Tile}] \
uram=[util_row $util_file {URAM}] \
dsp=[util_row $util_file {DSPs}]"
puts "FLOW_DONE $tag"
