@echo off

if DEFINED __MVS_VERSION__ (
	_premake\premake5.exe vs%__MVS_VERSION__%
) ELSE (
	echo __MVS_PATH__ and __MVS_VERSION__ environment variables are not set and premake is not downloaded.
	echo Please run _util\_setup.bat file with administrator privileges.
	echo This needs to be run only once to setup the environment.
)

