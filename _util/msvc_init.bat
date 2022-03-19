@echo off

echo MVS environment not initialized. Initializing...

set setup_path="%__MVS_PATH__%\VC\Auxiliary\Build\vcvars64.bat"

IF EXIST %setup_path% (
	CALL %setup_path%
	echo.
	CALL _util\msvc_vars.bat
) ELSE (
	echo %setup_path% does not exists.
	echo Edit _util\msvc_vars.bat file to match your installation of Visual Studio Compiler.
	echo.
	echo Exiting...
	EXIT /b
)
