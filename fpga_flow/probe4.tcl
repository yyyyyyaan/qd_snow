set f [open "tiny.v" w]
puts $f "module tiny(input clk, input \[7:0\] a, output reg \[7:0\] q); always @(posedge clk) q <= a + 8'd1; endmodule"
close $f
foreach pat {xcvu9p* xcvu13p* xcvu37p* xcvu29p* xcvu19p* xczu7ev* xczu9eg* xczu19eg* xcku040* xc7z020* xc7a100t*} {
  puts "FAM $pat : [llength [get_parts $pat]]"
}
read_verilog tiny.v
foreach p {xcvu9p-flga2104-2L-e xczu7ev-ffvc1156-2-e xczu19eg-ffvc1760-2-i xcku040-ffva1156-2-e xc7z020clg400-1 xc7a100tcsg324-1} {
  if {[llength [get_parts $p]] == 0} { puts "PROBE $p : NOT_INSTALLED"; continue }
  set ok 1
  if {[catch {synth_design -top tiny -part $p -mode out_of_context} e]} { set ok 0; set msg [string map {"\n" " | "} [lindex [split $e "\n"] 0]] }
  if {$ok && [llength [get_cells -hier -quiet]] == 0} { set ok 0; set msg "synth produced no cells" }
  if {$ok} { puts "PROBE $p : SYNTH_OK luts=[llength [get_cells -hier -filter {PRIMITIVE_GROUP == LUT}]]" } else { puts "PROBE $p : FAIL -> $msg" }
}
puts "PROBE_ALLDONE"
