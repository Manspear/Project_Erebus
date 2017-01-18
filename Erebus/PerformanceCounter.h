#pragma once

#include <windows.h>
#include <SDKDDKVer.h>
#include <stdio.h>
#include <tchar.h>
#include <d3d11_3.h>
#include <dxgi1_4.h>
#include <Psapi.h>

#pragma comment(lib, "dxgi.lib")

class PerformanceCounter
{
public:
	PerformanceCounter();
	~PerformanceCounter();

	void startCounter();			//Starts or resets the counter
	double getCurrentTime();		//Amount of time passed since counter started, in seconds
	double getDeltaTime();			//Amount of time passed since getDeltaTime was last called, in seconds
	double getNetworkSendDeltaTime();	//Amount of time passed since getNetworkSendDeltaTime was last called, in seconds
	double getNetworkRecDeltaTime();	//Amount of time passed since getNetworkRecDeltaTime was last called, in seconds
	void displayFPS();
	int getFPS();
	int getVramUsage();
	int getRamUsage();
private:
	double frequency = 0.0;
	LARGE_INTEGER start, last;

	double frameTime = 0.0f;
	double deltaTime = 0.0f;
	int fps = -1;
	size_t frameCounter = 0;

	IDXGIFactory* dxgifactory;
	IDXGIAdapter* firstAdapter;
	IDXGIAdapter3* dxgiAdapter3;
	HRESULT ret_code;
	DXGI_QUERY_VIDEO_MEMORY_INFO info;

	//Network Specific time variables
	LARGE_INTEGER networkSendLast;
	double networkSendDeltaTime = 0.0f;
	LARGE_INTEGER networkRecLast;
	double networkRecDeltaTime = 0.0f;
};