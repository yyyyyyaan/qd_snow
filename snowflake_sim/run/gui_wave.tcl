#----------------------------------------------------------------------
# 波形配置 (Snowflake 核): 在 xsim GUI 里加载关键信号并运行
#
#   用法 A: run_gui.bat                     (推荐, 自动执行本文件)
#   用法 B: D:\ycz\vivado\Vivado\2020.2\bin\xsim.bat tb_snow -gui -t gui_wave.tcl
#   用法 C: 已打开 Vivado GUI -> Tcl Console:
#             cd D:/ycz/doc/deepseek_workzone/decoder/snowflake_sim/run
#             source gui_wave.tcl
#
#   说明: Snowflake 核是扁平设计(生成表在模块内), 层次名都是普通路径,
#         不像 Helios 的 generate 块那样是转义标识符。
#----------------------------------------------------------------------

proc w {args} {
    if {[catch {add_wave {*}$args} err]} { puts "  (skip) $args : $err" }
}

# --- 顶层控制/协议 ---
w /tb_snowflake_core/clk
w /tb_snowflake_core/reset
w /tb_snowflake_core/start
w /tb_snowflake_core/done
w /tb_snowflake_core/all_busy
w /tb_snowflake_core/syndrome
w /tb_snowflake_core/dbg_stage
w /tb_snowflake_core/dbg_step
w /tb_snowflake_core/commit_onehot

# --- 节点阵列(打包总线: 每个节点一位/一段, 便于整体观察) ---
w /tb_snowflake_core/dut/obs_active
w /tb_snowflake_core/dut/obs_whole
w /tb_snowflake_core/dut/obs_defect
w /tb_snowflake_core/dut/obs_grown
w /tb_snowflake_core/dut/obs_unrooted
w /tb_snowflake_core/dut/obs_busy
w /tb_snowflake_core/dut/obs_ptr
w /tb_snowflake_core/dut/obs_cid

# --- 边阵列 ---
w /tb_snowflake_core/dut/obs_growth
w /tb_snowflake_core/dut/obs_ecorr

# --- 显示进制 ---
catch {set_property display_radix hex      [get_waves {*obs_cid*}]}
catch {set_property display_radix hex      [get_waves {*obs_growth*}]}
catch {set_property display_radix unsigned [get_waves {*dbg_stage*}]}
catch {set_property display_radix unsigned [get_waves {*dbg_step*}]}

# --- 跑完整个 testbench ---
run all
