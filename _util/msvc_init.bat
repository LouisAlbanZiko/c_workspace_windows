@echo off

echo MVS environment not initialized. Initializing...

set setup_path="%__MVS_PATH__%\VC\Auxiliary\Build\vcvars64.bat"

IF EXIST %setup_path% (
	CALL %setup_path%
	echo.
) ELSE (
	echo __MVS_PATH__ and __MVS_VERSION__ environment variables are not set.
	echo Please run _util\_setup.bat file with administrator privileges.
	echo This needs to be run only once to setup the environment.
	echo.
	echo Exiting...
	EXIT /b
)
