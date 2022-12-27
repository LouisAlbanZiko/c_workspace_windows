@echo off

IF NOT DEFINED DevEnvDir (
	CALL %~dp0msvc_init.bat
	IF %errorlevel% NEQ 0 (
		EXIT /b 1
	)
)

EXIT /b 0
