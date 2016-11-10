#pragma once
//Win32 Includes
#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

//Basic Util Includes
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include <vector>

//OpenGL Includes
//#include <glm\glm.hpp>
#include <GLFW\glfw3.h>
#include <gl\GL.h>
//#include <glm\gtx\transform.hpp>

//Other includes /*
#include <windows.h>
#include <stdlib.h>
#include <string.h>
#include <tchar.h>

#include <stdio.h>
#include "Wincon.h"
//*/
//#include "GraphicEngine.h"

#include <GLFW/glfw3.h>

#ifdef _DEBUG 
#ifndef DBG_NEW
#define DBG_NEW new ( _NORMAL_BLOCK , __FILE__ , __LINE__ ) 
#define new DBG_NEW 
#endif
#endif  // _DEBUG