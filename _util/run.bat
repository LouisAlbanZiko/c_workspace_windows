@echo off

cd %~dp0..\..\
_out\bin\%make_target%\%make_config%\%make_target%.exe
pause
EXIT
