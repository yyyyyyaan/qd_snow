@echo off
REM =====================================================================
REM  Snowflake byte-stream interface (Helios protocol) simulation
REM
REM  This build also compiles Helios source files, so Helios really takes
REM  part in the compilation:
REM    parameters/parameters.sv       message constants (0x01 / 0x02)
REM    design/generics/fifo_fwft.v    fifo_wrapper (output buffering)
REM    design/channels/serdes.sv      serializer   (wide word -> bytes)
REM =====================================================================
setlocal
set VIVADO_BIN=D:\ycz\vivado\Vivado\2020.2\bin
set REPO=D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main
cd /d "%~dp0"

if exist xsim.dir rmdir /s /q xsim.dir

echo === [1/3] xvlog : Snowflake + Helios support files ===
call "%VIVADO_BIN%\xvlog.bat" -sv ^
  "%REPO%\design\generics\fifo_fwft.v" ^
  "%REPO%\design\channels\serdes.sv" ^
  "%REPO%\design\snowflake\snowflake_core.sv" ^
  "%REPO%\design\snowflake\snowflake_wrapper.sv" ^
  "%REPO%\test_benches\snowflake\tb_snowflake_wrapper.sv"
if errorlevel 1 goto :fail

echo === [2/3] xelab (unified timescale: Helios fifo_fwft.v has none) ===
call "%VIVADO_BIN%\xelab.bat" tb_snowflake_wrapper -s tb_snow_wrap -debug typical -timescale 1ns/1ps
if errorlevel 1 goto :fail

echo === [3/3] xsim ===
call "%VIVADO_BIN%\xsim.bat" tb_snow_wrap -t sim_run.tcl
if errorlevel 1 goto :fail

echo === DONE. waveform: tb_snow_wrap.wdb ===
exit /b 0

:fail
echo [ERROR] see log above.
exit /b 1
