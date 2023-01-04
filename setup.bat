@echo off

setlocal enabledelayedexpansion

IF NOT EXIST %~dp0..\dependencies.txt (
	echo No dependencies file found. Skiping dependencies.
) ELSE (
	echo Found dependencies file. Downloading dependencies...
	CALL %~dp0_util\dependencies_download.bat .
	echo Downloaded dependencies.
)

IF NOT EXIST _premake\premake5.exe (
	CALL %~dp0_util\premake_setup.bat
) ELSE (
	echo Premake is installed.
)

endlocal

EXIT /b 0
