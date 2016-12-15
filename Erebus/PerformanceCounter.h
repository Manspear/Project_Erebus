#pragma once

#include <windows.h>

class PerformanceCounter
{
public:
	PerformanceCounter();
	~PerformanceCounter();

	void startCounter();		//Starts or resets the counter
	double getCurrentTime();	//Amount of time passed since counter started, in seconds
	double getDeltaTime();		//Amount of time passed since getDeltaTime was last called, in seconds
	void displayFPS();
	int getFPS();
private:
	double frequency = 0.0;
	LARGE_INTEGER start, last;

	double frameTime;
	double deltaTime;
	int fps;
	size_t frameCounter;
};