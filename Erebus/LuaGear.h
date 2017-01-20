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
							Assets* assets,
							WorkQueue* work );

	int addStaticInstance( lua_State* lua );
	int addAnimatedInstance( lua_State* lua );
	int activateInstance( lua_State* lua );
	int deactivateInstance( lua_State* lua );

	int print( lua_State* lua );
	int getTextDimensions( lua_State* lua );

	int createAnimation( lua_State* lua );
	int destroyAnimation( lua_State* lua );
	int updateAnimation( lua_State* lua );
	int quickBlend(lua_State* lua);
	int updateAnimationBlending(lua_State* lua);
	int setTransitionTimes(lua_State* lua);
	int setAnimationSegments(lua_State * lua);
	int assembleAnimationsIntoShadermatrices(lua_State * lua);
	

	// for threading
	struct BlendingData { Animation* animation; float dt; int layer; int segment; };
	void asyncUpdateState( void* args );
	void resetAnimations();
}