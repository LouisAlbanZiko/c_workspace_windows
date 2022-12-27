@echo off


set __MVS_PATH__=%ProgramFiles%\Microsoft Visual Studio\2022\Community
set __MVS_VERSION__=0

for /D %%Y IN ("%ProgramFiles%\Microsoft Visual Studio\*") DO (
	for %%f in (%%Y) do set folder_name_y=%%~nxf
	if !folder_name_y! GTR !__MVS_VERSION__! (
		set __MVS_VERSION__=!folder_name_y!
		set __MVS_PATH__=%%Y\Community
	)
)

echo path: !__MVS_PATH__!
echo version: !__MVS_VERSION__!

Rem If the script couldn't find your mvs installation then
Rem Uncomment and modify the following two lines with the correct path and version
Rem set __MVS_PATH__=%ProgramFiles%\Microsoft Visual Studio\2022\Community
Rem set __MVS_VERSION__=2022

