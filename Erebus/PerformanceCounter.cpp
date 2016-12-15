#include "PerformanceCounter.h"
#include <iostream>
PerformanceCounter::PerformanceCounter():frameTime(0.0), frameCounter(0)
{
	startCounter();
}

PerformanceCounter::~PerformanceCounter()
{

}

void PerformanceCounter::startCounter()
{
	QueryPerformanceFrequency(&start);
	frequency = double(start.QuadPart);
	QueryPerformanceCounter(&start);
	last = start;
}

double PerformanceCounter::getCurrentTime()
{
	LARGE_INTEGER timeStamp;
	double elapsedTime;

	QueryPerformanceCounter(&timeStamp);
	elapsedTime = double(timeStamp.QuadPart - start.QuadPart) / frequency;

	return elapsedTime;
}

double PerformanceCounter::getDeltaTime()
{
	LARGE_INTEGER timeStamp;
	double elapsedTime;

	QueryPerformanceCounter(&timeStamp);
	deltaTime = double(timeStamp.QuadPart - last.QuadPart) / frequency;
	last = timeStamp;

	return deltaTime;
}

void PerformanceCounter::displayFPS()
{
	frameCounter++;
	frameTime += deltaTime;
	if (frameTime >= 1.0)
	{
 		double fps = double(frameCounter) / frameTime;
		std::cout << "FPS: " << fps << std::endl;
		frameTime -= 1.0;
		frameCounter = 0;
	}
}

int PerformanceCounter::getFPS()
{
	frameCounter++;
	frameTime += deltaTime;
	if (frameTime >= 0.7)
	{
		fps = double(frameCounter) / frameTime;
		frameTime -= 0.7;
		frameCounter = 0;
	}
	return fps;
}
