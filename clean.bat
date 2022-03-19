@echo off

CALL _util\_init.bat

if %errorlevel% NEQ 0 (
	EXIT /b 1
)

CALL _util\premake_execute.bat

setlocal enabledelayedexpansion

set method=clean
if NOT [%1]==[] (
	set target=%1
)
CALL _util\msbuild_execute.bat

endlocal

EXIT /b 0
