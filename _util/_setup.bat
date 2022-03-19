@echo off

IF NOT EXIST _premake\premake5.exe (
	CALL _util\premake_setup.bat
) ELSE (
	echo Premake is installed.
)
