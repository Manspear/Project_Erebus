#include "LuaErebus.h"

namespace LuaErebus
{
	static Transform* g_transforms = nullptr;
	static Controls* g_controls = nullptr;
	static NetworkController* g_network = nullptr;
	static PerformanceCounter* g_counter = nullptr;
	static bool* g_running = nullptr;

	void registerFunctions( lua_State* lua, Transform* transforms, Controls* controls, NetworkController* network, PerformanceCounter* counter, bool* running)
	{
		g_transforms = transforms;
		g_controls = controls;
		g_network = network;
		g_counter = counter;
		g_running = running;

		luaL_newmetatable( lua, "erebusMeta" );
		luaL_Reg regs[] =
		{
			{ "SetControls", setControls },
			{ "CameraSensitivity", cameraSensitivity },
			{ "StartNetworkHost", startNetworkHost },
			{ "StartNetworkClient", startNetworkClient },
			{ "ShutdownNetwork", shutdownNetwork },
			{ "Running", setRunning },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "Erebus" );
	}

	int setControls( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 1 )
		{
			int transformID = (int)lua_tointeger( lua, 1 );
			g_controls->setControl( &g_transforms[transformID] );
		}

		return 0;
	}
	
	int cameraSensitivity(lua_State * lua)
	{		
		g_controls->sensitivityFactor((float)lua_tonumber(lua, 1));
		return 0;
	}

	int startNetworkHost( lua_State* lua )
	{
		bool result = false;
		g_network->setNetworkHost( true );
		if (g_network->initNetworkAsHost())
		{
			result = g_network->acceptNetworkCommunication();
		}

		if (result)
		{
			g_network->startCommunicationThreads(*g_counter);
		}

		lua_pushboolean(lua, result);
		return 1;
	}

	int startNetworkClient(lua_State* lua)
	{
		bool result = false;
		g_network->setNetworkHost(false);

		lua_getfield(lua, 1, "a");
		uint8_t a = lua_tointeger(lua, -1);
		lua_getfield(lua, 1, "b");
		uint8_t b = lua_tointeger(lua, -1);
		lua_getfield(lua, 1, "c");
		uint8_t c = lua_tointeger(lua, -1);
		lua_getfield(lua, 1, "d");
		uint8_t d = lua_tointeger(lua, -1);

		if (g_network->initNetworkAsClient(a, b, c, d))
		{
			result = true;
		}

		if (result)
		{
			g_network->startCommunicationThreads(*g_counter);
		}

		lua_pushboolean(lua, result);
		return 1;
	}

	int shutdownNetwork(lua_State* lua)
	{
		g_network->shutdown();
		return 0;
	}

	int setRunning(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 1);
		*g_running = lua_toboolean(lua, 1) != 0;
		return 0;
	}
}