@echo off

if NOT [%1]==[] (
	cd %1
	..\_bin\%1\Debug\%1.exe
	cd ..
) ELSE (
	echo Project not passed.
)
