@echo off
REM =====================================================================
REM  Multi-context PE-array decoder : simulate both contexts and check each
REM  one against the localuf golden trace.
REM
REM  Usage:  run_pearray_ctx.bat <rep|surface> <d> [1:1]
REM  Env:    SNOW_DEFS=-d SNOW_CTX1   -> single-context equivalence anchor
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

if "%~1"=="" ( echo usage: run_pearray_ctx.bat ^<rep^|surface^> ^<d^> [1:1] & exit /b 1 )

echo === [1/5] generate graph : %1 d=%2 ===
pushd "%REPO%\build_scripts"
python generate_snowflake.py --code %1 --d %2
if errorlevel 1 ( popd & goto :fail )
popd

echo === [2/5] regenerate the multi-context PE array ===
python "%~dp0..\..\fpga_flow\make_pearray_ctx.py"
if errorlevel 1 goto :fail

echo === [3/5] golden trace (localuf, %SCHED%) ===
python "%REF%\gen_golden.py" --code %1 --d %2 --schedule %SCHED% --out "%REF%\golden_tmp.txt"
if errorlevel 1 goto :fail

echo === [4/5] simulate (%SNOW_DEFS%) ===
if exist xsim.dir rmdir /s /q xsim.dir
if exist rtl_trace_ctx0.txt del rtl_trace_ctx0.txt
if exist rtl_trace_ctx1.txt del rtl_trace_ctx1.txt
call "%VIVADO_BIN%\xvlog.bat" -sv %DEFS% %SNOW_DEFS% ^
  "%REPO%\design\snowflake\snowflake_edge_ctx.sv" ^
  "%REPO%\design\snowflake\snowflake_pe_ctx.sv" ^
  "%REPO%\design\snowflake\snowflake_pe_array_ctx.sv" ^
  "%REPO%\test_benches\snowflake\tb_snowflake_pe_array_ctx.sv"
if errorlevel 1 goto :fail
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_pe_array_ctx -s tb_pearrctx -debug typical --timescale 1ns/1ps
if errorlevel 1 goto :fail
call "%VIVADO_BIN%\xsim.bat" tb_pearrctx -t sim_run_ctx2.tcl
if errorlevel 1 goto :fail

if not exist rtl_trace_ctx0.txt ( echo [ERROR] no trace produced & goto :fail )
echo === [5/5] compare each context with the golden trace ===
echo -- context 0 --
python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace_ctx0.txt"
if exist rtl_trace_ctx1.txt (
  echo -- context 1 --
  python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace_ctx1.txt"
)
echo === PE-array ctx regression finished : %1 d=%2 %SCHED% ===
exit /b 0

:fail
echo [ERROR] PE-array ctx regression failed - see output above
exit /b 1
