#pragma once

#include "lua\lua.hpp"
#include "Gear.h"
#include "Assets.h"

namespace LuaGear
{
	void registerFunctions( lua_State* lua, Gear::GearEngine* gearEngine, std::vector<ModelInstance>* models, Assets* assets );

	int addModelInstance( lua_State* lua );
}