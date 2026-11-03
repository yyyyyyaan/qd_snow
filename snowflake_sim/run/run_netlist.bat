@echo off
REM =====================================================================
REM  Snowflake-on-Helios : gate-level (post-synthesis netlist) regression
REM
REM  Usage:  run_netlist.bat <netlist.v> <tag>
REM      e.g.  run_netlist.bat ..\..\fpga_flow\logs\netlist_rep_d3_2to1.v rep_d3_2to1
REM
REM  Runs the SAME testbench against the synthesised netlist and writes
REM  netlist_trace.txt, which is then compared with the localuf golden
REM  trace by compare_trace.py.  This is what protects us from
REM  "synthesis changed the semantics" (x propagation, width truncation,
REM  don't-care branches).
REM  ASCII only on purpose (cmd.exe mangles non-ASCII .bat files).
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
cd /d "%~dp0"

if "%~1"=="" ( echo usage: run_netlist.bat ^<netlist.v^> ^<tag^> & exit /b 1 )
if not exist "%~1" ( echo [ERROR] netlist not found: %~1 & exit /b 1 )

if exist xsim.dir rmdir /s /q xsim.dir
if exist netlist_trace.txt del netlist_trace.txt

echo === [1/3] xvlog (netlist + testbench) ===
call "%VIVADO_BIN%\xvlog.bat" -sv -d SNOW_NETLIST "%~1" ^
  "D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main\test_benches\snowflake\tb_snowflake_core.sv"
if errorlevel 1 goto :fail

echo === [2/3] xelab (unisim libraries + glbl) ===
REM the unisim primitives (FDRE ...) reference the glbl module for GSR, so glbl
REM must be elaborated as an extra top; without it xelab fails with
REM "ERROR: [VRFC 10-2989] 'glbl' is not declared [.../unisims/FDRE.v]"
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_core glbl -s tb_snow_net -L unisims_ver -L secureip --debug typical --timescale 1ns/1ps
if errorlevel 1 goto :fail

echo === [3/3] xsim ===
call "%VIVADO_BIN%\xsim.bat" tb_snow_net -t sim_run.tcl
if errorlevel 1 goto :fail

if not exist rtl_trace.txt ( echo [ERROR] no trace produced & goto :fail )
copy /y rtl_trace.txt netlist_trace.txt >nul
echo.
echo === DONE. netlist trace = %~dp0netlist_trace.txt ===
exit /b 0

:fail
echo [ERROR] netlist regression failed - see output above
exit /b 1
