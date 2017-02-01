#pragma once
#include "lua\lua.hpp"
#include "Gear.h"

namespace LuaLight {
	void registerFunctions(lua_State* lua,
		Gear::GearEngine* gearEngine);

	int addLight(lua_State* lua);
	int updatePos(lua_State* lua);
	int updateColor(lua_State* lua);
	int updateRadius(lua_State* lua);
	int updateIntensity(lua_State* lua);
	int removeLight(lua_State* lua);
	int unloadLight(lua_State* lua);
}