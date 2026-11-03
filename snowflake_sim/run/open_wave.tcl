#----------------------------------------------------------------------
# 离线查看已保存的波形 (不重新仿真)
#   用法: Vivado GUI -> Tcl Console:
#           cd D:/ycz/doc/deepseek_workzone/decoder/snowflake_sim/run
#           source open_wave.tcl
#   前提: 先跑过 run_core.bat 或 run_wrapper.bat (生成 .wdb)
#----------------------------------------------------------------------
set wdbs [list tb_snow.wdb tb_snow_wrap.wdb]
set found 0
foreach w $wdbs {
    set p [file join [pwd] $w]
    if {[file exists $p]} {
        open_wave_database $p
        puts "已打开波形数据库: $p"
        incr found
    }
}
if {$found == 0} {
    puts "ERROR: 当前目录没有 .wdb, 请先运行 run_core.bat"
} else {
    puts "若波形窗口为空: 在 Scopes/Objects 面板选中信号 -> 右键 Add to Wave Window"
    puts "推荐: tb_snowflake_core/dut/{obs_active,obs_defect,obs_growth,obs_ecorr,dbg_stage}"
}
