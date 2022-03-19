@echo off

if NOT DEFINED __MVS_VERSION__ (
	CALL _util\_init.bat
)

_premake\premake5.exe vs%__MVS_VERSION__%
