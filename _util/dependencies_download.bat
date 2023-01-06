@echo off

setlocal enabledelayedexpansion

set file_path=%~dp0..\..\%1\dependencies.txt

IF NOT EXIST !file_path! (
	echo No dependency file found for %1
) ELSE (
	FOR /F "usebackq tokens=*" %%L in ("!file_path!") do (
		for /F %%A IN ("%%L") do set depen_link=%%A
		for %%A in (%%L) do set depen_name=%%A
		set depen_path=_vendor\!depen_name!
		IF NOT EXIST !depen_path! (
			echo git clone !depen_link! !depen_path!
			git clone !depen_link! !depen_path!
			IF !errorlevel! NEQ 0 (
				echo Failed to download !depen_name! dependencies for '%1'. Check dependencies.txt file and then run this script again.
				EXIT /b 1
			)
		) ELSE (
			echo !depen_name! is already present. Skiping.
		)
		CALL %0 !depen_path!
	)
)

endlocal

EXIT /b 0
