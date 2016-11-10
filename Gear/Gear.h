#pragma once

#ifdef GEAR_EXPORTS  
#define GEAR_API __declspec(dllexport)   
#else  
#define GEAR_API __declspec(dllimport)   
#endif
namespace Gear
{
	GEAR_API double Add(double a, double b);
}