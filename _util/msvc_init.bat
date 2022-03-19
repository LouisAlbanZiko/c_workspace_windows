@echo off

echo MVS environment not initialized. Initializing...

CALL _util\msvc_vars.bat

set setup_path="%__MVS_PATH__%\VC\Auxiliary\Build\vcvars64.bat"

IF EXIST %setup_path% (
	CALL %setup_path%
) ELSE (
	echo %setup_path% does not exists.
	echo Edit _util\msvc_vars.bat file to match your installation of Visual Studio Compiler.
	echo Exiting...
	EXIT /b 1
)

EXIT /b 0
