@echo off
REM =====================================================================
REM  Open the xsim GUI with the Snowflake testbench and key waves loaded.
REM  需要先跑过 run_core.bat (生成 snapshot tb_snow).
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
cd /d "%~dp0"

if not exist "xsim.dir\tb_snow" (
  echo [ERROR] 找不到仿真快照, 请先运行 run_core.bat
  pause
  exit /b 1
)

echo 启动 xsim GUI (gui_wave.tcl 会自动加载信号并运行) ...
call "%VIVADO_BIN%\xsim.bat" tb_snow -gui -t gui_wave.tcl
exit /b 0
