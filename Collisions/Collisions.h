#pragma once

#ifdef COLLISIONS_EXPORTS
#define COLLISIONS_EXPORTS __declspec(dllexport)   
#else  
#define COLLISIONS_EXPORTS __declspec(dllimport)   
#endif