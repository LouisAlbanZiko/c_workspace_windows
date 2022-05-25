baseName = path.getbasename(os.getcwd());

workspace (baseName)
	configurations { "Debug", "Release"}
	platforms { "x64" }

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"

	filter { "platforms:x64" }
        architecture "x86_64"
	
	filter {}

	outputpath = "%{prj.name}/%{cfg.buildcfg}/"

	targetdir ("_bin/" .. outputpath)
	objdir ("_binobj/" .. outputpath)

	include "../project_list.lua"
