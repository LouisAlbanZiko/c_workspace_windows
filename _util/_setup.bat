@echo off

IF NOT EXIST _premake\premake5.exe (
	CALL _util\premake_setup.bat
) ELSE (
	echo Premake is installed.
)

IF NOT DEFINED __MVS_PATH__ (
	CALL _util\msvc_setup.bat
) ELSE (
	echo Variables are already set.
)

pause > nul
