@echo off

CALL _util\_init.bat

CALL _util\premake_execute.bat

setlocal enabledelayedexpansion

if NOT [%1]==[] (
	echo Building %1...
	msbuild %1 -t:clean
	if %errorlevel% NEQ 0 (
		echo Failed to build %1.
	) ELSE (
		echo Sucessfully built %1.
	)
) ELSE (
	echo Building solution.
	msbuild -t:clean
	if %errorlevel% NEQ 0 (
		echo Failed to build solution.
	) ELSE (
		echo Sucessfully built solution.
	)
)

endlocal
