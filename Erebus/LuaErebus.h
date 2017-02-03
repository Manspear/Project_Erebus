#pragma once

#include "lua\lua.hpp"
#include "Controls.h"
#include "NetworkController.hpp"

namespace LuaErebus
{
	void registerFunctions( lua_State* lua, Transform* transforms, Controls* controls, NetworkController* network, PerformanceCounter* counter, bool* running);

	int setControls( lua_State* lua );
	int cameraSensitivity(lua_State* lua);
	int startNetworkHost(lua_State* lua);
	int startNetworkClient(lua_State* lua);
	int setRunning(lua_State* lua);
}