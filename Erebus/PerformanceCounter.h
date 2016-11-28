#pragma once

#include <windows.h>

class PerformanceCounter
{
public:
	PerformanceCounter();
	~PerformanceCounter();

	void startCounter();		//Starts or resets the counter
	double getCurrentTime();	//Amount of time passed since counter started, in milliseconds
	double getDeltaTime();		//Amount of time passed since getDeltaTime was last called, in milliseconds

private:
	double frequency = 0.0;
	LARGE_INTEGER start, last, current;
};