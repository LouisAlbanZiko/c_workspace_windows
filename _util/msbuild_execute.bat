@echo off

IF NOT DEFINED method (
	set method=build
)

IF NOT DEFINED target (
	set target=
)

IF NOT DEFINED config (
	set config=Debug
)

echo Executing:
echo msbuild %target% -t:%method% /property:Configuration=%config%
msbuild %target% -t:%method% /property:Configuration=%config%
echo Done.

set method=
set target=
set config=
