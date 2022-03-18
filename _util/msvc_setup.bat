@echo off

echo Setting __MVS_PATH__ and __MVS_VERSION__ environment variables.

Rem Modify the following two lines with the correct path and version
set __MVS_PATH__="%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Community"
set __MVS_VERSION__=2019

setx __MVS_PATH__ %__MVS_PATH__%
setx __MVS_VERSION__ %__MVS_VERSION__%

IF %errorlevel% NEQ 0 (
	echo __MVS_PATH__ and __MVS_VERSION__ environment variables are not set.
	echo Please edit and then run _util\_setup.bat file with administrator privileges.
	echo This needs to be run only once to setup the environment.
) ELSE (
	echo Environment variables set.
)
