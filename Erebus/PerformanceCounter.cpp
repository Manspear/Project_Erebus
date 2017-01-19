#include "PerformanceCounter.h"
#include <iostream>
PerformanceCounter::PerformanceCounter():frameTime(0.0), frameCounter(0)
{
	dxgifactory = nullptr;
	dxgiAdapter3 = NULL;
	ret_code = ::CreateDXGIFactory(
		__uuidof(IDXGIFactory),
		reinterpret_cast<void**>(&dxgifactory));
	ret_code = dxgifactory->EnumAdapters(0, &firstAdapter);
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

double PerformanceCounter::getNetworkSendDeltaTime()
{
	LARGE_INTEGER timeStamp;

	QueryPerformanceCounter(&timeStamp);
	networkSendDeltaTime = double(timeStamp.QuadPart - networkSendLast.QuadPart) / frequency;
	networkSendLast = timeStamp;

	return networkSendDeltaTime;
}

double PerformanceCounter::getNetworkRecDeltaTime()
{
	LARGE_INTEGER timeStamp;

	QueryPerformanceCounter(&timeStamp);
	networkRecDeltaTime = double(timeStamp.QuadPart - networkRecLast.QuadPart) / frequency;
	networkRecLast = timeStamp;

	return networkRecDeltaTime;
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

int PerformanceCounter::getVramUsage()
{

	if (SUCCEEDED(ret_code))
	{
		
		if (SUCCEEDED(firstAdapter->QueryInterface(__uuidof(IDXGIAdapter3), (void**)&dxgiAdapter3)))
		{
			if (SUCCEEDED(dxgiAdapter3->QueryVideoMemoryInfo(0, DXGI_MEMORY_SEGMENT_GROUP_LOCAL, &info)))
			{
				int memoryUsage = info.CurrentUsage / 1024 / 1024; //MiB
				
				return memoryUsage;
			};

			//SafeRelease(dxgiAdapter3);
		}

	}

	return -1;
}

int PerformanceCounter::getRamUsage()
{
	PROCESS_MEMORY_COUNTERS info;
	GetProcessMemoryInfo(GetCurrentProcess(), &info, sizeof(info));
	return ((int)info.WorkingSetSize / 1024 / 1024) - getVramUsage();

	return 0;
}
