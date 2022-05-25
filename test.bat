@echo off

if NOT [%1]==[] (
	_bin\%1\Debug\%1.exe
) ELSE (
	echo Project not passed.
)
