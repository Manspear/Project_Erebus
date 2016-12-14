#pragma once

#include "lua\lua.hpp"
#include "Gear.h"
#include "Assets.h"

namespace LuaGear
{
	void registerFunctions( lua_State* lua,
							Gear::GearEngine* gearEngine,
							std::vector<ModelInstance>* models,
							std::vector<AnimatedInstance>* animatedModels,
							Assets* assets );

	int addStaticInstance( lua_State* lua );
	int addAnimatedInstance( lua_State* lua );

	int createAnimation( lua_State* lua );
	int destroyAnimation( lua_State* lua );
	int updateAnimation( lua_State* lua );
}