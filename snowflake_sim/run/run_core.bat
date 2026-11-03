@echo off
REM =====================================================================
REM  Snowflake-on-Helios : core simulation (trace for golden comparison)
REM
REM  Usage:  run_core.bat          2:1 schedule (Snowflake)
REM          run_core.bat 1:1      1:1 schedule (baseline)
REM
REM  Prerequisite: generate the graph first:
REM      cd ..\..\Helios_scalable_QEC-main\Helios_scalable_QEC-main\build_scripts
REM      python generate_snowflake.py --code rep --d 3
REM  Optional: set SNOW_DEFS to add xvlog defines, e.g.
REM      set SNOW_DEFS=-d SNOW_BUSYREG
REM  Output: rtl_trace.txt (compare with ..\ref\compare_trace.py)
REM          tb_snow.wdb  (waveform, open with run_gui.bat)
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
set REPO=D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main
cd /d "%~dp0"

set DEFS=
set TAG=2to1
if /I "%~1"=="1:1" ( set DEFS=-d SNOW_ONE_ONE & set TAG=1to1 )

if exist xsim.dir rmdir /s /q xsim.dir
if exist rtl_trace.txt del rtl_trace.txt

echo === [1/3] xvlog (schedule: %TAG%) ===
call "%VIVADO_BIN%\xvlog.bat" -sv %DEFS% %SNOW_DEFS% ^
  "%REPO%\design\snowflake\snowflake_core.sv" ^
  "%REPO%\test_benches\snowflake\tb_snowflake_core.sv"
if errorlevel 1 goto :fail

echo === [2/3] xelab ===
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_core -s tb_snow -debug typical
if errorlevel 1 goto :fail

echo === [3/3] xsim ===
call "%VIVADO_BIN%\xsim.bat" tb_snow -t sim_run.tcl
if errorlevel 1 goto :fail

if not exist rtl_trace.txt ( echo [ERROR] rtl_trace.txt not produced & goto :fail )
echo.
echo === DONE (%TAG%). trace = %~dp0rtl_trace.txt ===
exit /b 0

:fail
echo [ERROR] see log above.
exit /b 1
