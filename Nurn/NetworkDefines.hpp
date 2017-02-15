#pragma once

// DLL define

#ifdef NURN_EXPORTS
#define NURN_API __declspec(dllexport)
#else
#define NURN_API __declspec(dllimport)
#endif

// Protocol definition

//#define USING_UDP 1
#define USING_TCP 1


// Debug definition

//#define DEBUGGING_NETWORK 1


// Platform detection

#define PLATFORM_WINDOWS  1
#define PLATFORM_MAC      2
#define PLATFORM_UNIX     3

#if defined(_WIN32)
#define PLATFORM PLATFORM_WINDOWS
#elif defined(__APPLE__)
#define PLATFORM PLATFORM_MAC
#else
#define PLATFORM PLATFORM_UNIX
#endif