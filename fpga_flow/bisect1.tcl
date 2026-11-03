set repo $::env(SMOKE_REPO)
set f [open "tiny.v" w]
puts $f "module tiny(input clk, input \[7:0\] a, output reg \[7:0\] q); always @(posedge clk) q <= a + 8'd1; endmodule"
close $f
# --- test 1: tiny with -flatten_hierarchy none
read_verilog tiny.v
if {[catch {synth_design -top tiny -part xcvu9p-flga2104-2L-e -mode out_of_context -flatten_hierarchy none} e]} { puts "T1 FAIL: $e" } else { puts "T1 OK cells=[llength [get_cells -hier]]" }
# --- test 2: snowflake, default flatten, default mode
read_verilog -sv "$repo/design/snowflake/snowflake_core.sv"
if {[catch {synth_design -top snowflake_core -part xcvu9p-flga2104-2L-e} e]} { puts "T2 FAIL: $e" } else { puts "T2 OK cells=[llength [get_cells -hier]]" }
# --- test 3: snowflake ooc, single thread
set_param general.maxThreads 1
if {[catch {synth_design -top snowflake_core -part xcvu9p-flga2104-2L-e -mode out_of_context} e]} { puts "T3 FAIL: $e" } else { puts "T3 OK cells=[llength [get_cells -hier]]" }
puts "BISECT_DONE"
