set f [open "tiny.v" w]
puts $f "module tiny(input clk, input \[7:0\] a, output reg \[7:0\] q); always @(posedge clk) q <= a + 8'd1; endmodule"
close $f
read_verilog tiny.v
foreach p {xcvu29p-fsvh2892-2-e xcku040-ffva1156-2-e xcvu9p-flga2104-2L-e} {
  if {[catch {synth_design -top tiny -part $p -mode out_of_context -quiet} err]} {
    puts "RESULT PART $p : FAILED -> [lindex [split $err "\n"] 0]"
  } else {
    puts "RESULT PART $p : OK"
  }
}
puts "RESULT env XILINXD_LICENSE_FILE=[expr {[info exists ::env(XILINXD_LICENSE_FILE)] ? $::env(XILINXD_LICENSE_FILE) : "(unset)"}]"
puts "RESULT env LM_LICENSE_FILE=[expr {[info exists ::env(LM_LICENSE_FILE)] ? $::env(LM_LICENSE_FILE) : "(unset)"}]"
