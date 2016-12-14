#pragma once

#include "lua\lua.hpp"
#include "Controls.h"

namespace LuaErebus
{
	void registerFunctions( lua_State* lua, Transform* transforms, Controls* controls );

	int setControls( lua_State* lua );
}