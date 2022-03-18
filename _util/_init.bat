@echo off

IF NOT DEFINED DevEnvDir (
	CALL _util\msvc_init.bat
)
