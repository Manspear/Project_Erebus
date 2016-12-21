#pragma once
//Win32 Includes
//#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

//Basic Util Includes

#ifdef GEAR_EXPORTS  
#define GEAR_API __declspec(dllexport)   
#else  
#define GEAR_API __declspec(dllimport)   
#endif

#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include <vector>

//OpenGL Includes
#include "GL\glew.h"
#include <GLFW\glfw3.h>
#include <glm\glm.hpp>
#include <glm\gtx\transform.hpp>
#include <glm\gtc\matrix_transform.hpp>
#include <glm\gtx\rotate_vector.hpp>
#include <glm\gtc\type_ptr.hpp>

//Other includes /*
#include <stdlib.h>
#include <string.h>
#include <tchar.h>
#include <stdint.h>

#include <stdio.h>
#include "Wincon.h"

struct TransformStruct
{
	glm::vec3 pos;
	glm::vec3 rot;
	glm::vec3 scale;
	glm::vec3 lookAt;
	bool active;
};

#define WINDOW_WIDTH 1280.f
#define WINDOW_HEIGHT 720.f

#ifdef GEAR_EXPORTS  
#define GEAR_API __declspec(dllexport)   
#else  
#define GEAR_API __declspec(dllimport)   
#endif

#ifdef _DEBUG 
#ifndef DBG_NEW
#define DBG_NEW new ( _NORMAL_BLOCK , __FILE__ , __LINE__ ) 
#define new DBG_NEW 
#endif
#endif  // _DEBUG