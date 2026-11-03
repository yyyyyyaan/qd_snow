@echo off
REM =====================================================================
REM  PE-array Snowflake decoder : simulate and compare with the localuf
REM  golden trace (the same trace the flat core is checked against, so a
REM  PASS here means PE array = flat core = reference implementation).
REM
REM  Usage:  run_pearray.bat <rep|surface> <d> [1:1]
REM  ASCII only on purpose (cmd.exe mangles non-ASCII .bat files).
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
set REPO=D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main
set REF=%~dp0..\ref
set SCHED=2:1
set DEFS=
if /I "%~3"=="1:1" ( set SCHED=1:1 & set DEFS=-d SNOW_ONE_ONE )
set PYTHONIOENCODING=utf-8
cd /d "%~dp0"

if "%~1"=="" ( echo usage: run_pearray.bat ^<rep^|surface^> ^<d^> [1:1] & exit /b 1 )

echo === [1/4] generate graph : %1 d=%2 ===
pushd "%REPO%\build_scripts"
python generate_snowflake.py --code %1 --d %2
if errorlevel 1 ( popd & goto :fail )
popd

echo === [2/4] golden trace (localuf, %SCHED%) ===
python "%REF%\gen_golden.py" --code %1 --d %2 --schedule %SCHED% --out "%REF%\golden_tmp.txt"
if errorlevel 1 goto :fail

echo === [3/4] simulate the PE array ===
if exist xsim.dir rmdir /s /q xsim.dir
if exist rtl_trace.txt del rtl_trace.txt
call "%VIVADO_BIN%\xvlog.bat" -sv %DEFS% %SNOW_DEFS% ^
  "%REPO%\design\snowflake\snowflake_edge.sv" ^
  "%REPO%\design\snowflake\snowflake_pe.sv" ^
  "%REPO%\design\snowflake\snowflake_pe_array.sv" ^
  "%REPO%\test_benches\snowflake\tb_snowflake_pe_array.sv"
if errorlevel 1 goto :fail
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_pe_array -s tb_pearr -debug typical --timescale 1ns/1ps
if errorlevel 1 goto :fail
call "%VIVADO_BIN%\xsim.bat" tb_pearr -t sim_run.tcl
if errorlevel 1 goto :fail

if not exist rtl_trace.txt ( echo [ERROR] rtl_trace.txt not produced & goto :fail )
echo === [4/4] compare PE array vs localuf ===
python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace.txt"
echo === PE-array regression finished : %1 d=%2 %SCHED% ===
exit /b 0

:fail
echo [ERROR] PE-array regression failed - see output above
exit /b 1
