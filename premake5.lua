workspace "RocketGame"						 
  location ""												 
  architecture "x86_64"							 
  startproject "RocketGame"				 
																		 
  configurations										 
  {																	 
	  "Debug",												 
	  "Release"												 
  }																	 
																		 
  defines														 
  {																	 
	   "_CRT_SECURE_NO_WARNINGS"				 
  }																	 
																		 
  includedirs												
  {																	 
	   "./",														
    "C:/dev/anEngine2D/src/anEngine2D",               
    "C:/dev/anEngine2D/src/anEngine2DEditor",       
    "C:/dev/anEngine2D/thirdparty/sol2/include",  
    "C:/dev/anEngine2D/thirdparty/entt/include",  
    "C:/dev/anEngine2D/thirdparty/glm",					
    "C:/dev/anEngine2D/thirdparty/stb",					
    "C:/dev/anEngine2D/thirdparty/tinyfiledialogs",	
    "C:/dev/anEngine2D/thirdparty/tinyxml2",	
    "C:/dev/anEngine2D/thirdparty/box2d/include",	
    "C:/dev/anEngine2D/thirdparty/fmod/include",	
    "C:/dev/anEngine2D/thirdparty/glew/include",	
    "C:/dev/anEngine2D/thirdparty/glfw/include",	
    "C:/dev/anEngine2D/thirdparty/freetype/include",	
    "C:/dev/anEngine2D/thirdparty/ImGui",	
    "C:/dev/anEngine2D/thirdparty/ImGuiColorTextEdit/ImGuiColorTextEdit",	
    "C:/dev/anEngine2D/thirdparty/lua"	
  }																	 
																		 
  filter "system:windows"						 
	  defines													 
	  {																 
		  "PLATFORM_WINDOWS"						 
	  }																 
																		 
  project "RocketGame"						 
	  location ""											 
	  kind "WindowedApp"								 
	  language "C++"									 
	  cppdialect "C++17"							 
																		 
	  targetdir "./"										 
	  objdir "obj"		 
																		 
	  files														 
	  {																 
			"C:/dev/RocketGame/RocketGame.cpp",
		  "assets/**.cpp",			 
		  "assets/**.h"				 
	  }																 
																		 
		libdirs
		{
			"C:/dev/anEngine2D/src/anEngine2DStudio/lib"
		}
																		 
	  links														 
	  {																 
			"anEngine2D.lib",               
			"anEngine2DEditor.lib",          
			"Lua.lib",               
			"ImGui.lib",               
			"Box2D.lib"               
	  }																 
																		 
	  filter "system:windows"					 
		  systemversion "latest"				 
																		 
			buildcommands {
				"del /S *.pdb"
			}
																		 
			postbuildcommands {
				("{COPY} C:/dev/anEngine2D/src/anEngine2DStudio/bin/glfw3.dll ./"),
				("{COPY} C:/dev/anEngine2D/src/anEngine2DStudio/bin/glew32.dll ./"),
				("{COPY} C:/dev/anEngine2D/src/anEngine2DStudio/bin/freetype.dll ./"),
				("{COPY} C:/dev/anEngine2D/src/anEngine2DStudio/bin/fmod.dll ./"),
			}
																		 
	  filter "configurations:Debug"		 
		  defines "C_DEBUG"							 
		  runtime "Debug"								 
		  symbols "on"									 
																		 
	  filter "configurations:Release"	 
	  	defines "C_RELEASE"						 
	  	runtime "Release"							 
	  	optimize "on"									 

