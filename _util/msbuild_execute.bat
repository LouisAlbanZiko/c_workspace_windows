@echo off

IF NOT DEFINED make_method (
	set msbuild_method=build
) ELSE (
	set msbuild_method=!make_method!
)

IF NOT DEFINED make_target (
	set msbuild_target=_out\build\
) ELSE (
	set msbuild_target=_out\build\!make_target!
)

IF NOT DEFINED make_config (
	set msbuild_config=Debug
) ELSE (
	set msbuild_config=!make_config!
)

echo Executing:
echo msbuild %msbuild_target% -t:%msbuild_method% /property:Configuration=%msbuild_config%
msbuild %msbuild_target% -t:%msbuild_method% /property:Configuration=%msbuild_config%
echo Done.

set msbuild_method=
set msbuild_target=
set msbuild_config=
