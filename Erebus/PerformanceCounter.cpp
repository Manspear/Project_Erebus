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
	frequency = double(start.QuadPart) / 1000.0;
	QueryPerformanceCounter(&start);
	current = start;
}

double PerformanceCounter::getCurrentTime()
{
	QueryPerformanceCounter(&current);
	return double(current.QuadPart - start.QuadPart) / frequency;
}

double PerformanceCounter::getDeltaTime()
{
	last = current;
	QueryPerformanceCounter(&current);
	return double(current.QuadPart - last.QuadPart) / frequency;
}