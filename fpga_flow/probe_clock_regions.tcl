#=====================================================================
# probe_clock_regions.tcl -- why did FLOW_PBLOCK get an empty clock-region
# list?  Query the device grid directly (no netlist needed).
#
#   cmd /c "vivado.bat -mode batch -source fpga_flow\probe_clock_regions.tcl"
#=====================================================================
link_design -part xcvu9p-flga2104-2L-e -name probe

puts "PROBE_CR_RAW [get_clock_regions]"
puts "PROBE_CR_COUNT [llength [get_clock_regions]]"

set xs {}
set ys {}
foreach cr [get_clock_regions] {
  set nm [get_property NAME $cr]
  puts "PROBE_CR_NAME $nm"
  if {[regexp {CLOCKREGION_X(\d+)Y(\d+)} $nm -> cx cy]} {
    if {[lsearch -exact $xs $cx] < 0} { lappend xs $cx }
    if {[lsearch -exact $ys $cy] < 0} { lappend ys $cy }
  }
}
puts "PROBE_XVALS [lsort -integer $xs]"
puts "PROBE_YVALS [lsort -integer $ys]"

# fallback source of the same information: site coordinate extents
set smin_x 99999; set smax_x -1; set smin_y 99999; set smax_y -1
set n 0
foreach s [get_sites -quiet -filter {SITETYPE =~ "SLICE*"}] {
  incr n
  set nm [get_property NAME $s]
  if {[regexp {SLICE_X(\d+)Y(\d+)} $nm -> sx sy]} {
    if {$sx < $smin_x} { set smin_x $sx }
    if {$sx > $smax_x} { set smax_x $sx }
    if {$sy < $smin_y} { set smin_y $sy }
    if {$sy > $smax_y} { set smax_y $sy }
  }
}
puts "PROBE_SLICE_N $n"
puts "PROBE_SLICE_X $smin_x..$smax_x"
puts "PROBE_SLICE_Y $smin_y..$smax_y"
puts "PROBE_DONE"
