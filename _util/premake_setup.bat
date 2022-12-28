@echo off

echo Premake is not present. Downloading...

set premake_directory=%~dp0..\..\_premake
set premake_archive=%premake_directory%\premake.zip
set premake_executable=%premake_directory%\premake5.exe
set premake_link=https://github.com/premake/premake-core/releases/download/v5.0.0-beta1/premake-5.0.0-beta1-windows.zip

if NOT EXIST %premake_directory% (
	mkdir %premake_directory%
)

if NOT EXIST %premake_executable% (
	if NOT EXIST %premake_archive% (
		powershell -Command "Invoke-WebRequest %premake_link% -OutFile %premake_archive%"
	)
	powershell -Command "Expand-Archive %premake_archive% -DestinationPath %premake_directory%/"
)

echo Premake downloaded.
