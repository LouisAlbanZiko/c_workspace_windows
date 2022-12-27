@echo off

setlocal enabledelayedexpansion

Rem set variables
if NOT [%1]==[] (
	set make_method=%1
) else (
	echo No method supplied.
	echo Usage: make.bat ^<method^> ^<config^> ^<target^>
	EXIT /b 0
)

if NOT [%2]==[] (
	set make_config=%2
) else (
	set make_config=Debug
)

if NOT [%3]==[] (
	set make_target=%3
)

Rem check methods
if [%make_method%]==[run] (
	if NOT EXIST %~dp0..\_out\bin\%make_target%\%make_config%\%make_target%.exe (
		echo %make_target% is not built. Building now.
		CALL %~dp0make.bat build !make_config! !make_target!
		echo Done building.
	)
	start "%make_target%:%make_config%" %~dp0_util\run.bat
) else (
	CALL %~dp0_util\_init.bat

	if %errorlevel% NEQ 0 (
		EXIT /b 1
	)

	CALL %~dp0_util\premake_execute.bat

	CALL %~dp0_util\msbuild_execute.bat
)

endlocal

EXIT /b 0
