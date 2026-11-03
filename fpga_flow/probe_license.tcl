# 探测 Vivado 许可与可用器件：对若干候选 part 做一次极小规模的 OOC 综合
# 用法: vivado -mode batch -source probe_license.tcl

puts "=== Vivado version ==="
puts [version -short]

# 一个极小模块，用于综合试探
set f [open "tiny.v" w]
puts $f "module tiny(input clk, input [7:0] a, output reg [7:0] q);"
puts $f "  always @(posedge clk) q <= a + 8'd1;"
puts $f "endmodule"
close $f

set parts {
  xc7z020clg400-1
  xc7a100tcsg324-1
  xczu7ev-ffvc1156-2-e
  xcvu29p-fsvh2892-2-e
  xcku040-ffva1156-2-e
}

foreach p $parts {
    if {[catch {read_verilog tiny.v} e]} { puts "read_verilog failed: $e" ; break }
    set ok 1
    if {[catch {
        synth_design -top tiny -part $p -mode out_of_context -quiet
    } err]} {
        set ok 0
        puts "PART $p : SYNTH FAILED"
        puts "    [string map {\n { }} [lindex [split $err "\n"] 0]]"
    }
    if {$ok} {
        set nlut [llength [get_cells -hier -filter {PRIMITIVE_TYPE =~ CLB.*}]]
        puts "PART $p : SYNTH OK"
        # 清理以便下一个 part 复用同一进程
        catch {close_project -quiet}
    }
    catch {remove_files -quiet [get_files -quiet]}
}

puts "=== license files / env ==="
foreach v {XILINXD_LICENSE_FILE LM_LICENSE_FILE XILINX_VIVADO} {
    if {[info exists ::env($v)]} { puts "  $v = $::env($v)" } else { puts "  $v = (unset)" }
}
puts "=== done ==="
