#pragma once

#include "lua\lua.hpp"
#include "Gear.h"

namespace LuaGear
{
	void registerFunctions( lua_State* lua, Gear::GearEngine* gearEngine, std::vector<ModelInstance>* models );

	int addModelInstance( lua_State* lua );

	// helper functions
	Gear::GearEngine* getGearEngine( lua_State* lua );
}