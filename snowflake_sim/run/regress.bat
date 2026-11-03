@echo off
REM =====================================================================
REM  Snowflake-on-Helios : one-command regression for a graph config
REM
REM  Usage:  regress.bat <rep|surface> <d> [1:1]
REM      e.g.  regress.bat rep 3
REM            regress.bat surface 5 1:1
REM
REM  Steps: generate graph from localuf -> golden trace from localuf ->
REM         RTL simulation (xsim) -> line-by-line comparison.
REM  ASCII only on purpose (cmd.exe mangles non-ASCII .bat files).
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
set REPO=D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main
set REF=%~dp0..\ref
set SCHED=2:1
set SCHEDARG=
if /I "%~3"=="1:1" ( set SCHED=1:1 & set SCHEDARG=1:1 )
set PYTHONIOENCODING=utf-8

if "%~1"=="" ( echo usage: regress.bat ^<rep^|surface^> ^<d^> [1:1] & exit /b 1 )

echo === [1/4] generate graph : %1 d=%2 ===
pushd "%REPO%\build_scripts"
python generate_snowflake.py --code %1 --d %2
if errorlevel 1 ( popd & goto :fail )
popd

echo === [2/4] golden trace (localuf, schedule %SCHED%) ===
python "%REF%\gen_golden.py" --code %1 --d %2 --schedule %SCHED% --out "%REF%\golden_tmp.txt"
if errorlevel 1 goto :fail

echo === [3/4] RTL simulation (xsim) ===
call "%~dp0run_core.bat" %SCHEDARG%
if errorlevel 1 goto :fail

echo === [4/4] compare RTL vs localuf ===
python "%REF%\compare_trace.py" "%REF%\golden_tmp.txt" "%~dp0rtl_trace.txt"
echo.
echo === regress finished : %1 d=%2 schedule %SCHED% ===
exit /b 0

:fail
echo [ERROR] regress failed - see output above
exit /b 1
