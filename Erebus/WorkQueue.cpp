#include "WorkQueue.h"

WorkQueue::WorkQueue()
{
	begin = CreateSemaphore( NULL, 0, MAX_THREADS, NULL );
	end = CreateSemaphore( NULL, 0, MAX_THREADS, NULL );
	nwork = 0;
	running = true;

	for( int i=0; i<MAX_THREADS; i++ )
	{
		data[i] = { begin, end, work, &running };
		threads[i] = CreateThread( NULL, 0, threadWork, &data[i], NULL, NULL );
	}
}

WorkQueue::~WorkQueue()
{
	stop();

	CloseHandle( begin );
	CloseHandle( end );

	for( int i=0; i<MAX_THREADS; i++ )
		CloseHandle( threads[i] );
}

void WorkQueue::add( Job* job, void* args )
{
	work[nwork].job = job;
	work[nwork].args = args;
	nwork++;
}

void WorkQueue::execute()
{
	ReleaseSemaphore( begin, MAX_THREADS, NULL );
}

void WorkQueue::stop()
{
	if( running )
	{
		running = false;
		WaitForMultipleObjects( MAX_THREADS, threads, TRUE, INFINITE );
	}
}

DWORD WINAPI WorkQueue::threadWork( LPVOID args )
{
	ThreadData* data = (ThreadData*)args;

	while( *data->running )
	{
		DWORD waitResult = WaitForSingleObject( data->begin, WORK_TIMEOUT );
		if( waitResult == WAIT_OBJECT_0 )
		{
			int last = data->last;
			for( int i=data->first; i<last; i++ )
			{
				data->work[i].job( data->work[i].args );
			}

			ReleaseSemaphore( data->end, 1, NULL );
		}
	}
}