workspace "C"

	configurations { "Debug", "Release" }
	architecture "x64"

	outputpath = "%{prj.name}/%{cfg.buildcfg}/"

	targetdir ("_bin/" .. outputpath)
	objdir ("_bin_obj/" .. outputpath)

	defines { "_WIN32", "WIN32" }

	include "project_list.lua"
