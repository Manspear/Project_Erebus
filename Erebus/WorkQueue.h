#pragma once

#include "BaseIncludes.h"

#define MAX_THREADS 4
#define MAX_WORK 1000
#define WORK_TIMEOUT 100 // ms

typedef void (Job)( void* args );
struct Work
{
	Job* job;
	void* args;
};

class WorkQueue
{
public:
	WorkQueue();
	~WorkQueue();

	void add( Job* job, void* args );
	void execute();
	void stop();

private:
	struct ThreadData
	{
		HANDLE begin, end;
		Work* work;
		bool running;
		int first, last;
	};

	static DWORD WINAPI threadWork( LPVOID args );

	HANDLE begin, end, threads[MAX_THREADS];
	ThreadData data[MAX_THREADS];
	Work work[MAX_THREADS*MAX_WORK];
	int nwork;
	bool running;
};