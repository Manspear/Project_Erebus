#pragma once

#include "lua\lua.hpp"
#include "Gear.h"
#include "Assets.h"
#include "WorkQueue.h"

#define MAX_ANIMATIONS 100

namespace LuaGear
{
	void registerFunctions( lua_State* lua,
							Gear::GearEngine* gearEngine,
							std::vector<ModelInstance>* models,
							std::vector<AnimatedInstance>* animatedModels,
							Animation* animations,
							std::vector<ModelInstance>* forwardModels,
							int* boundAnimations,
							Assets* assets,
							WorkQueue* work );

	int addStaticInstance( lua_State* lua );
	int addAnimatedInstance( lua_State* lua );
	int addForwardInstance(lua_State* lua);


	int print( lua_State* lua );
	int getTextDimensions( lua_State* lua );

	int bindAnimation( lua_State* lua );
	int quickBlend(lua_State* lua);
	int updateAnimationBlending(lua_State* lua);
	int setTransitionTimes(lua_State* lua);
	int setAnimationSegments(lua_State * lua);
	int assembleAnimationsIntoShadermatrices(lua_State * lua);
}