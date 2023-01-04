@echo off

setlocal enabledelayedexpansion

set file_path=%~dp0..\..\%1\dependencies.txt

IF NOT EXIST !file_path! (
	echo No dependency file found for %1
) ELSE (
	FOR /F "usebackq tokens=*" %%L in ("!file_path!") do (
		for %%A in (%%L) do set depen_path=%%A
		IF NOT EXIST !depen_path! (
			echo git clone %%L
			git clone %%L
			IF !errorlevel! NEQ 0 (
				echo Failed to download dependencies for folder '%1'. Check dependencies.txt file and then run this script again.
				EXIT /b 1
			)
		) ELSE (
			echo !depen_path! is already present. Skiping.
		)
		CALL %0 !depen_path!
	)
)

endlocal

EXIT /b 0
