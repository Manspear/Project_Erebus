#pragma once

#include "lua\lua.hpp"
#include "Gear.h"
#include "Assets.h"
#include "WorkQueue.h"
#include "Window.h"

#define MAX_ANIMATIONS 100

namespace LuaGear
{
	void registerFunctions( lua_State* lua,
							Gear::GearEngine* gearEngine,
							std::vector<ModelInstance>* models,
							std::vector<AnimatedInstance>* animatedModels,
							Animation* animations,
							int* boundAnimations,
							std::vector<ModelInstance>* forwardModels,
							bool* queueModels,
							bool* mouseVisible,
							bool* fullscreen,
							Assets* assets,
							WorkQueue* work );

	int addStaticInstance( lua_State* lua );
	int addAnimatedInstance( lua_State* lua );
	int addForwardInstance(lua_State* lua);

	int setQueueModels( lua_State* lua );
	int setCursorVisible( lua_State* lua );
	int setFullscreen(lua_State* lua);

	int print( lua_State* lua );
	int getTextDimensions( lua_State* lua );

	int bindAnimation( lua_State* lua );
	int quickBlend(lua_State* lua);
	int updateAnimationBlending(lua_State* lua);
	int setTransitionTimes(lua_State* lua);
	int setAnimationSegments(lua_State * lua);
	int assembleAnimationsIntoShadermatrices(lua_State * lua);
	int setSegmentState( lua_State* lua );
	int setQuickBlend( lua_State* lua );
}