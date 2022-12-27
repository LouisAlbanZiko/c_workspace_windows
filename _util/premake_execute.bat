@echo off

if NOT DEFINED __MVS_VERSION__ (
	CALL %~dp0_init.bat
)

_premake\premake5.exe vs%__MVS_VERSION__%
