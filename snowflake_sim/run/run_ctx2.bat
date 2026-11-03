@echo off
REM =====================================================================
REM  Context-switching prototype (snowflake_core_ctx2) : simulate and check
REM  EACH context against the localuf golden trace.
REM
REM  Usage:  run_ctx2.bat <rep|surface> <d> [1:1]
REM
REM  Steps: generate the graph, build the golden trace with gen_golden.py,
REM         compile snowflake_core_ctx2.sv + tb_snowflake_ctx2.sv, simulate,
REM         then compare rtl_trace_ctx0.txt and rtl_trace_ctx1.txt with the
REM         golden trace independently.
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

echo === [1/5] generate graph : %1 d=%2 ===
pushd "%REPO%\build_scripts"
python generate_snowflake.py --code %1 --d %2
if errorlevel 1 ( popd & goto :fail )
popd
echo === [2/5] regenerate the 2-context prototype ===
python "%REPO%\..\..\fpga_flow\make_ctx2.py" || goto :fail

echo === [3/5] golden trace (localuf, %SCHED%) ===
python "%REF%\gen_golden.py" --code %1 --d %2 --schedule %SCHED% --out "%REF%\golden_tmp.txt" || goto :fail

echo === [4/5] simulate the prototype ===
if exist xsim.dir rmdir /s /q xsim.dir
if exist rtl_trace_ctx0.txt del rtl_trace_ctx0.txt
if exist rtl_trace_ctx1.txt del rtl_trace_ctx1.txt
call "%VIVADO_BIN%\xvlog.bat" -sv %DEFS% %SNOW_DEFS% ^
  "%REPO%\design\snowflake\snowflake_core_ctx2.sv" ^
  "%REPO%\test_benches\snowflake\tb_snowflake_ctx2.sv" || goto :fail
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_ctx2 -s tb_snow_ctx2 --debug typical --timescale 1ns/1ps || goto :fail
call "%VIVADO_BIN%\xsim.bat" tb_snow_ctx2 -t sim_run_ctx2.tcl || goto :fail

echo === [5/5] compare each context with the golden trace ===
echo -- context 0 --
python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace_ctx0.txt"
echo -- context 1 --
python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace_ctx1.txt"
echo === ctx2 regression finished : %1 d=%2 %SCHED% ===
exit /b 0

:fail
echo [ERROR] ctx2 regression failed - see output above
exit /b 1
