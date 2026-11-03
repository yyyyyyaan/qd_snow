@echo off
REM =====================================================================
REM  Open a routed implementation checkpoint in the Vivado GUI.
REM
REM  Usage:  open_gui.bat                 (newest postroute checkpoint)
REM          open_gui.bat rep_d3_2to1_xcvu9p
REM
REM  ASCII only on purpose (cmd.exe mangles non-ASCII .bat files).
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
set FLOW=D:\ycz\doc\deepseek_workzone\decoder\fpga_flow

if "%~1"=="" (
  call "%VIVADO_BIN%\vivado.bat" -mode gui -source "%FLOW%\open_impl_gui.tcl"
) else (
  call "%VIVADO_BIN%\vivado.bat" -mode gui -source "%FLOW%\open_impl_gui.tcl" -tclargs %~1
)
