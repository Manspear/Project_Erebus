#pragma once

#include "lua\lua.hpp"
#include "Controls.h"

namespace LuaControls
{
	void registerFunctions( lua_State* lua );

	void sendControls( lua_State* lua, Controls* controls );
	void setKey( lua_State* lua, int index, const char* name );
}