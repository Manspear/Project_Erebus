#include "LuaGear.h"
using namespace Gear;
using namespace Importer;

namespace LuaGear
{
	static GearEngine* g_gearEngine = nullptr;
	static std::vector<ModelInstance>* g_models = nullptr;
	static std::vector<ModelInstance>* g_animatedModels = nullptr;
	static std::vector<ModelInstance>* g_ForwardModels = nullptr;
	static std::vector<ModelInstance>* g_blendingModels = nullptr;
	//static std::vector<AnimatedInstance>* g_animatedModels = nullptr;
	static Animation* g_animations = nullptr;
	static int* g_boundAnimations = nullptr;
	static Assets* g_assets = nullptr;
	static WorkQueue* g_work = nullptr;
	static bool* g_queueModels = nullptr;
	static bool* g_mouseVisible = nullptr;
	static bool* g_fullscreen = nullptr;
	static TransformHandler* g_transformHandler = nullptr;
	static Skybox* g_skybox = nullptr;
	static FloatingDamage* g_floatDamage = nullptr;

	void registerFunctions(lua_State* lua, GearEngine* gearEngine, std::vector<ModelInstance>* models, std::vector<ModelInstance>* animatedModels, Animation* animations, int* boundAnimations, std::vector<ModelInstance>* forwardModels, std::vector<ModelInstance>* blendingModels, TransformHandler* transformHandler, bool* queueModels, bool* mouseVisible, bool* fullscreen, Assets* assets, WorkQueue* work,
		FloatingDamage* floatingDamage)
	{
		g_gearEngine = gearEngine;
		g_ForwardModels = forwardModels;
		g_blendingModels = blendingModels;
		g_models = models;
		g_animatedModels = animatedModels;
		g_animations = animations;
		g_boundAnimations = boundAnimations;
		g_assets = assets;
		g_work = work;
		g_queueModels = queueModels;
		g_mouseVisible = mouseVisible;
		g_fullscreen = fullscreen;
		g_transformHandler = transformHandler;
		g_skybox = g_gearEngine->getSkybox();
		g_floatDamage = floatingDamage;

		// Gear
		luaL_newmetatable(lua, "gearMeta");
		luaL_Reg regs[] =
		{
			{ "ResetAnimations", resetAnimations },
			{ "ResetModels", resetModels },
			{ "BindStaticInstance", bindStaticInstance },
			{ "BindAnimatedInstance", bindAnimatedInstance },
			{ "BindForwardInstance", bindForwardInstance },
			{ "BindBlendingInstance", bindBlendingInstance },
			{ "UnbindInstance", unbindInstance },
			{ "UnbindForward",  unbindForward },
			{ "Print", print },
			{ "PrintDamage", printDamageNumer},
			{ "GetTextDimensions", getTextDimensions },
			{ "SetUniformValue", setUniformValue },
			{ "SetBlendUniformValue", setBlendUniformValue },
			{ "SetBlendTextures", setBlendTextures },
			{ "QueueModels", setQueueModels },
			{ "CursorVisible", setCursorVisible },
			{ "Fullscreen", setFullscreen },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_newtable(lua);
		luaL_setmetatable(lua, "gearMeta");
		lua_pushlightuserdata(lua, gearEngine);
		lua_setfield(lua, -2, "__self");
		lua_setglobal(lua, "Gear");
		lua_pop(lua, 1);

		// Animation
		luaL_newmetatable(lua, "animationMeta");
		luaL_Reg animationRegs[] =
		{
			{ "Bind", bindAnimation },
			{ "Unbind", unbindAnimation },
			{ "Update",	updateAnimationBlending },
			{ "UpdateShaderMatrices", assembleAnimationsIntoShadermatrices },
			{ "SetTransitionTimes", setTransitionTimes },
			{ "SetAnimationSegments", setAnimationSegments },
			{ "SetAnimationModel", setAnimationModel },
			{ "QuickBlend", quickBlend },
			{ "SetSegmentState", setSegmentState },
			{ "SetQuickBlend", setQuickBlend },
			{ "SetSegmentPlayTime", setSegmentPlayTime },
			{ "ResetSegmentPlayTime", resetSegmentPlayTime },
			{ "ResetSegmentAnimationClock", resetSegmentAnimationClock },
			{ "StopAnimationUpdating", stopAnimationUpdating },
			{ "SetTint", setTint},
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, animationRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "Animation");

		//Skybox and directional light
		luaL_newmetatable(lua, "skyboxMeta");
		luaL_Reg skyboxRegs[] =
		{
			{ "SetFogColor", setFogColor },
			{ "SetBlend", setBlend},
			{ "Shadows", setShadow },
			{ "SetAmbient", setAmbient },
			{ "SetSunColor", setLightColor },
			{ "SetSunAngle", setLightAngle },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, skyboxRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "Sky");
	}

	int resetAnimations( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 0 );
		for( int i=0; i<MAX_ANIMATIONS; i++ )
			g_animations[i].reset();
		*g_boundAnimations = 0;

		return 0;
	}

	int resetModels( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 0 );

		g_models->clear();
		g_animatedModels->clear();
		g_ForwardModels->clear();
		g_blendingModels->clear();

		return 0;
	}

	int stopAnimationUpdating(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);
		lua_getfield(lua, 1, "__self");

		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		bool doUpdate = lua_toboolean(lua, 2);
		animation->stopAnimationUpdating(doUpdate);

		return 0;
	}

	int bindStaticInstance( lua_State* lua )
	{
		//assert( lua_gettop( lua ) == 1 );

		if( lua_gettop( lua ) == 2 )
			int f = 0;

		ModelAsset* asset = (ModelAsset*)lua_touserdata( lua, 1 );

		assert( asset );
		
		int result = g_transformHandler->bindStaticInstance( asset );
		lua_pushinteger( lua, result );

		return 1;
	}

	int bindAnimatedInstance( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		ModelAsset* asset = (ModelAsset*)lua_touserdata( lua, 1 );
		lua_getfield( lua, 2, "__self" );
		Animation* animation = (Animation*)lua_touserdata( lua, -1 );

		assert( asset );
		assert( animation );

		int result = g_transformHandler->bindAnimatedInstance( asset, animation );
		lua_pushinteger( lua, result );

		return 1;
	}

	int setQueueModels(lua_State* lua)
	{
		assert(lua_gettop(lua) >= 1);
		*g_queueModels = lua_toboolean(lua, 1) != 0;
		return 0;
	}

	int setCursorVisible(lua_State* lua)
	{
		assert(lua_gettop(lua) >= 1);
		*g_mouseVisible = lua_toboolean(lua, 1) != 0;
		return 0;
	}

	int setFullscreen(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 1);
		*g_fullscreen = lua_toboolean(lua, 1) != 0;
		return 0;
	}

	int unbindInstance( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		g_transformHandler->unbindInstance( index );

		return 0;
	}

	int print(lua_State* lua)
	{
		int ntop = lua_gettop(lua);
		assert(ntop == 3 || ntop == 4 || ntop == 5);

		std::string s = lua_tostring(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);

		float scale = 1.0f;
		int type = -1;
		if (ntop >= 4)
			type = lua_type(lua, 4);

		glm::vec4 color(1.0f);
		if (type == LUA_TNUMBER)
		{
			scale = (float)lua_tonumber(lua, 4);

			if (ntop >= 5)
			{
				for (int i = 0; i<4; i++)
				{
					lua_rawgeti(lua, 5, i + 1);
					color[i] = (float)lua_tonumber(lua, -1);
				}
			}
		}
		else if (type == LUA_TTABLE)
		{
			for (int i = 0; i<4; i++)
			{
				lua_rawgeti(lua, 4, i + 1);
				color[i] = (float)lua_tonumber(lua, -1);
			}
		}

		g_gearEngine->print(s, x, y, scale, color);

		return 0;
	}

	int getTextDimensions(lua_State* lua)
	{
		assert(lua_gettop(lua) >= 1);

		glm::vec2 dim = g_gearEngine->getTextDimensions(lua_tostring(lua, 1));
		lua_pushnumber(lua, dim.x);
		lua_pushnumber(lua, dim.y);
		return 2;
	}

	int resetSegmentAnimationClock(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 2);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		int segment = (int)lua_tointeger(lua, 2);

		animation->resetSegmentAnimationClock(segment);

		return 0;
	}

	int bindAnimation(lua_State* lua)
	{
		int index = -1, maxIndex = *g_boundAnimations;
		for( int i=0; i<maxIndex && index < 0; i++ )
			if( !g_animations[i].getActive() )
				index = i;

		if( index < 0 )
		{
			index = *g_boundAnimations;
			*g_boundAnimations = index + 1;
		}

		Animation* animation = &g_animations[index];
		animation->setMatrixIndex(index);
		animation->setActive( true );

		lua_newtable(lua);
		luaL_setmetatable(lua, "animationMeta");
		lua_pushlightuserdata(lua, animation);
		lua_setfield(lua, -2, "__self");

		return 1;
	}

	int unbindAnimation(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		lua_getfield( lua, 1, "__self" );
		Animation* animation = (Animation*)lua_touserdata( lua, -1 );
		animation->setActive( false );
		animation->reset();

		return 0;
	}

	int quickBlend(lua_State * lua)
	{
		assert(lua_gettop(lua) == 6);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);
		float dt = (float)lua_tonumber(lua, 2);
		int originState = (int)lua_tointeger(lua, 3);
		int transitionState = (int)lua_tointeger(lua, 4);
		float blendTime = (float)lua_tonumber(lua, 5);
		int animationSegment = (int)lua_tointeger(lua, 6);

		bool res = animation->quickBlend(dt, originState,
			transitionState, blendTime, animationSegment);

		lua_pushboolean(lua, res);

		return 1;
	}

	int updateAnimationBlending(lua_State* lua)
	{
		assert(lua_gettop(lua) == 4);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);
		float dt = (float)lua_tonumber(lua, 2);
		int layer = (int)lua_tointeger(lua, 3);
		int animationSegment = (int)lua_tointeger(lua, 4);

		animation->updateState(dt, layer, animationSegment);

		return 1;
	}

	int setTransitionTimes(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		int numStates = (int)lua_rawlen(lua, 2);

		float* transitions = new float[numStates*numStates];

		for (int curState = 0, index = 0; curState < numStates; curState++)
		{
			lua_rawgeti(lua, 2, curState + 1);
			for (int curTransition = 0; curTransition < numStates; curTransition++, index++)
			{
				lua_rawgeti(lua, -1, curTransition + 1);
				transitions[index] = (float)lua_tonumber(lua, -1);
				lua_pop(lua, 1);
			}
			lua_pop(lua, 1);
		}

		animation->setTransitionTimes(transitions, numStates);

		delete[] transitions;

		return 0;
	}

	int setAnimationSegments(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);
		int numberOfSegments = (int)lua_tointeger(lua, 2);
		animation->setAnimationSegments(numberOfSegments);

		return 1;
	}

	int setAnimationModel(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		ModelAsset* model = (ModelAsset*)lua_touserdata(lua, 1);
		lua_getfield(lua, 2, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		animation->setAsset(model);

		return 0;
	}

	int assembleAnimationsIntoShadermatrices(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);
		animation->assembleAnimationsIntoShadermatrices();

		return 0;
	}

	int setTint(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);
		int type = lua_type(lua, 2);
		glm::vec4 tint(1.f);

		if (type == LUA_TTABLE)
		{
			lua_getfield(lua, 2, "r");
			tint.r = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "g");
			tint.g = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "b");
			tint.b = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "a");
			tint.a = (float)lua_tonumber(lua, -1);
		}
		else
		{
			tint = glm::vec4(1, 1, 0, 1);
		}

		animation->setTint(tint);

		return 0;
	}

	int setSegmentPlayTime(lua_State * lua)
	{

		assert(lua_gettop(lua) >= 3);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		float animTime = (float)lua_tonumber(lua, 2);
		int segment = (int)lua_tointeger(lua, 3);

		animation->setSegmentPlayTime(animTime, segment);

		return 0;
	}

	int resetSegmentPlayTime(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 2);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		int segment = (int)lua_tointeger(lua, 2);

		animation->resetSegmentPlayTime(segment);

		return 0;
	}

	int setSegmentState(lua_State* lua)
	{
		assert(lua_gettop(lua) >= 3);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		int state = (int)lua_tointeger(lua, 2);
		int segment = (int)lua_tointeger(lua, 3);

		animation->setSegmentState(state, segment);
		return 0;
	}

	int setQuickBlend(lua_State* lua)
	{
		assert(lua_gettop(lua) >= 5);

		lua_getfield(lua, 1, "__self");
		Animation* animation = (Animation*)lua_touserdata(lua, -1);

		int from = (int)lua_tointeger(lua, 2);
		int to = (int)lua_tointeger(lua, 3);
		float blendTime = (float)lua_tonumber(lua, 4);
		int segment = (int)lua_tointeger(lua, 5);

		animation->setQuickBlend(from, to, blendTime, segment);
		return 0;
	}

	int bindForwardInstance(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1 || lua_gettop(lua) == 2);

		ModelAsset* asset = (ModelAsset*)lua_touserdata(lua, 1);

		assert(asset);

		int result = g_transformHandler->bindForwardInstance(asset);
		if (lua_gettop(lua) == 2)
		{
			UniformValues ufValue;
			ufValue.transformIndex = g_gearEngine->forwardModels->size() - 1;
			ufValue.values = { 0, 0 };
			g_gearEngine->uniValues.push_back(ufValue);
		}
		lua_pushinteger(lua, result);
		lua_pushinteger(lua, g_gearEngine->uniValues.size() - 1);
		return 2;
	}

	int unbindForward(lua_State* lua)
	{
		g_gearEngine->uniValues.clear();
		return 0;
	}

	int setUniformValue(lua_State * lua)
	{
		assert(lua_gettop(lua) == 3);

		int index = (int)lua_tointeger( lua, 1 );
		float a = (float)lua_tonumber( lua, 2 );
		float b = (float)lua_tonumber( lua, 3 );
		if (g_gearEngine->uniValues.size() > 0)
			g_gearEngine->uniValues.at(index).values = { a, b };

		return 0;
	}

	int setBlendUniformValue(lua_State * lua)
	{

		assert( lua_gettop( lua ) >= 3 );

		int index = (int)lua_tointeger(lua, 1);
		int size = (int)lua_tointeger(lua, 2);
		glm::vec2 blend;
		for (int i = 0; i < size; i++)
		{
			lua_getfield(lua, 3 + i, "x");
			blend.x = (float)lua_tonumber(lua, -1);

			lua_getfield(lua, 3 + i, "y");
			blend.y = (float)lua_tonumber(lua, -1);

			g_gearEngine->textureBlend.at(index).blendFactor[i] = blend;
		}
		g_gearEngine->textureBlend.at(index).active = true;
		return 0;
	}

	int bindBlendingInstance(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);

		ModelAsset* asset = (ModelAsset*)lua_touserdata(lua, 1);

		assert(asset);

		int result = g_transformHandler->bindBlendingInstance(asset);

		lua_pushinteger(lua, result);
		return 1;
	}

	int setBlendTextures(lua_State * lua)
	{
		assert( lua_gettop( lua ) >= 4 );

		int index = g_gearEngine->textureBlend.size() - 1;
		int size = (int)lua_tointeger( lua, 2 );

		TextureAsset* texture;
		for( int i=0; i<size; i++ )
		{
			lua_getfield( lua, i+3, "__self" );
			texture = (TextureAsset*)lua_touserdata( lua, -1 );
			g_gearEngine->textureBlend.at(index).textureVector.push_back( texture );		
		}
		g_gearEngine->textureBlend.at(index).numTextures = size;
		lua_pushinteger(lua, index);
		return 1;
	}

	int setFogColor(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 3);

		float r = (float)lua_tonumber(lua, 1);
		float g = (float)lua_tonumber(lua, 2);
		float b = (float)lua_tonumber(lua, 3);

		g_skybox->setFogColor(glm::vec3(r, g, b));

		return 0;
	}

	int setBlend(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 1);
		float blend = (int)lua_tonumber(lua, 1);

		g_skybox->setBlend(blend);
		return 0;
	}

	int setShadow(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);
		bool shadowEnabled = lua_toboolean(lua, 1);

		g_skybox->setShadowsEnabled(shadowEnabled);
		return 0;
	}

	int setAmbient(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 3);

		float r = (float)lua_tonumber(lua, 1);
		float g = (float)lua_tonumber(lua, 2);
		float b = (float)lua_tonumber(lua, 3);

		g_skybox->setAmbient(glm::vec3(r, g, b));
		return 0;
	}

	int setLightColor(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 3);

		float r = (float)lua_tonumber(lua, 1);
		float g = (float)lua_tonumber(lua, 2);
		float b = (float)lua_tonumber(lua, 3);

		g_skybox->setColor(glm::vec3(r, g, b));
		return 0;
	}

	int setLightAngle(lua_State * lua)
	{
		assert(lua_gettop(lua) >= 1);

		float angle = (float)lua_tonumber(lua, 1);
		
		g_skybox->setSunAngle(angle);
		return 0;
	}


	int printDamageNumer(lua_State * lua)
	{
		assert(lua_gettop(lua) == 5);
		float damage = lua_tonumber(lua, 1);

		int damageType = (int)lua_tointeger(lua, 2);

		glm::vec3 position;
		position.x = lua_tonumber(lua, 3);
		position.y = lua_tonumber(lua, 4);
		position.z = lua_tonumber(lua, 5);

		g_floatDamage->addDamage(damage, damageType, position);
		return 0;
	}
}
