#include "PerformanceCounter.h"

PerformanceCounter::PerformanceCounter()
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
	elapsedTime = double(timeStamp.QuadPart - last.QuadPart) / frequency;

	return elapsedTime;
}

double PerformanceCounter::getDeltaTime()
{
	LARGE_INTEGER timeStamp;
	double elapsedTime;

	QueryPerformanceCounter(&timeStamp);
	elapsedTime = double(timeStamp.QuadPart - last.QuadPart) / frequency;
	last = timeStamp;

	return elapsedTime;
}