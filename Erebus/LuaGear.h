#pragma once

#include "lua\lua.hpp"
#include "Gear.h"
#include "Assets.h"
#include "WorkQueue.h"
#include "Window.h"
#include "TransformHandler.h"

#define MAX_ANIMATIONS 100

namespace LuaGear
{
	void registerFunctions(lua_State* lua,
		Gear::GearEngine* gearEngine,
		std::vector<ModelInstance>* models,
		std::vector<ModelInstance>* animatedModels,
		Animation* animations,
		int* boundAnimations,
		std::vector<ModelInstance>* forwardModels,
		std::vector<ModelInstance>* blendingModels,
		TransformHandler* transformHandler, 
		bool* queueModels,
		bool* mouseVisible,
		bool* fullscreen,
		Assets* assets,
		WorkQueue* work,
		FloatingDamage* floatingDamage);

	/*int addStaticInstance( lua_State* lua );
	int addAnimatedInstance(lua_State* lua);
	int addForwardInstance(lua_State* lua);
	int addBlendingInstance(lua_State* lua);*/

	int bindStaticInstance( lua_State* lua );
	int bindAnimatedInstance( lua_State* lua );
	int bindForwardInstance( lua_State* lua );
	int bindBlendingInstance( lua_State* lua );
	int unbindInstance( lua_State* lua );

	int setQueueModels(lua_State* lua);
	int setCursorVisible(lua_State* lua);
	int setFullscreen(lua_State* lua);

	int print(lua_State* lua);
	int getTextDimensions(lua_State* lua);

	int resetSegmentAnimationClock(lua_State* lua);
	int bindAnimation(lua_State* lua);
	int quickBlend(lua_State* lua);
	int updateAnimationBlending(lua_State* lua);
	int setTransitionTimes(lua_State* lua);
	int setAnimationSegments(lua_State * lua);
	int assembleAnimationsIntoShadermatrices(lua_State * lua);
	int setSegmentPlayTime(lua_State * lua);
	int resetSegmentPlayTime(lua_State * lua);
	int setTint(lua_State * lua);
	int setSegmentState(lua_State* lua);
	int setQuickBlend(lua_State* lua);
	int setUniformValue(lua_State* lua);
	int setUniformLocation(lua_State* lua);
	int setBlendUniformValue(lua_State* lua);
	int setBlendTextures(lua_State* lua);
	int setFogColor(lua_State* lua);

	int printDamageNumer(lua_State* lua);
}