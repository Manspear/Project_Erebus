#pragma once
#include "lua\lua.hpp"
#include "Gear.h"

namespace LuaUI {
	void registerFunctions(lua_State* lua,
		Gear::GearEngine* gearEngine);
	int drawImage(lua_State* lua);
	int mousePick(lua_State* lua);
	int loadScreenImage(lua_State* lua);
	int unloadScreenImage(lua_State* lua);
	int resizeScreenImage(lua_State* lua);
	int repositionScreenImage(lua_State* lua);
}