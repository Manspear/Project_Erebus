#include "LuaGear.h"
using namespace Gear;
using namespace Importer;

namespace LuaGear
{
	static GearEngine* g_gearEngine = nullptr;
	static std::vector<ModelInstance>* g_models = nullptr;
	static std::vector<AnimatedInstance>* g_animatedModels = nullptr;
	static Animation* g_animations = nullptr;
	static int* g_boundAnimations = nullptr;
	static Assets* g_assets = nullptr;
	static WorkQueue* g_work = nullptr;
	static bool* g_queueModels = nullptr;

	void registerFunctions( lua_State* lua, GearEngine* gearEngine, std::vector<ModelInstance>* models, std::vector<AnimatedInstance>* animatedModels, Animation* animations, int* boundAnimations, bool* queueModels, Assets* assets, WorkQueue* work )
	{
		g_gearEngine = gearEngine;
		g_models = models;
		g_animatedModels = animatedModels;
		g_animations = animations;
		g_boundAnimations = boundAnimations;
		g_assets = assets;
		g_work = work;
		g_queueModels = queueModels;

		// Gear
		luaL_newmetatable( lua, "gearMeta" );
		luaL_Reg regs[] =
		{
			{ "AddStaticInstance", addStaticInstance },
			{ "AddAnimatedInstance", addAnimatedInstance },
			{ "Print", print},
			{ "GetTextDimensions", getTextDimensions },
			{ "QueueModels", setQueueModels },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		
		lua_newtable( lua );
		luaL_setmetatable( lua, "gearMeta" );
		lua_pushlightuserdata( lua, gearEngine );
		lua_setfield( lua, -2, "__self" );
		lua_setglobal( lua, "Gear" );
		lua_pop(lua, 1);

		// Animation
		luaL_newmetatable( lua, "animationMeta" );
		luaL_Reg animationRegs[] =
		{
			{ "Bind", bindAnimation },
			//{ "Create", createAnimation },
			//{ "__gc",	destroyAnimation },
			{ "Update",	updateAnimationBlending },
			{ "UpdateShaderMatrices", assembleAnimationsIntoShadermatrices},
			{ "SetTransitionTimes", setTransitionTimes},
			{ "SetAnimationSegments", setAnimationSegments},
			{ "QuickBlend", quickBlend },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, animationRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "Animation" );
	}

	int addStaticInstance( lua_State* lua )
	{
		int ntop = lua_gettop( lua );
		if( ntop >= 2 )
		{
			ModelAsset* asset = (ModelAsset*)lua_touserdata( lua, 1 );
			int transformID = lua_tointeger( lua, 2 );

			int result = g_gearEngine->generateWorldMatrix();
			//g_gearEngine->renderQueue.incrementWorldMatrix();

			int index = -1;
			for( int i=0; i<g_models->size(); i++ )
				if( g_models->at(i).asset == asset )
					index = i;

			if( index < 0 )
			{
				ModelInstance instance;
				instance.asset = asset;
				//TEMP TODO: move to importer
				//instance.material = Material(g_assets, "Materials/MaterialTextures/molerat_texturemap2.png", "Materials/MaterialTextures/molerat_normalmap.png");
				
				index = g_models->size();
				g_models->push_back( instance );

			}

			g_models->at(index).worldIndices.push_back(transformID);

			// NOTE: Should we push the result to Lua? Like this:
			//lua_pushnumber( lua, result );
		}

		return 0;
	}

	int addAnimatedInstance( lua_State* lua )
	{
		int ntop = lua_gettop( lua );
		if( ntop >= 3 )
		{
			ModelAsset* asset = (ModelAsset*)lua_touserdata( lua, 1 );
			int transformID = lua_tointeger( lua, 2 );
			lua_getfield( lua, 3, "__self" );
			Animation* animation = (Animation*)lua_touserdata( lua, -1 );

			int result = g_gearEngine->generateWorldMatrix();
			//g_gearEngine->renderQueue.incrementWorldMatrix();

			int index = -1;
			for( int i=0; i<g_animatedModels->size(); i++ )
				if( g_animatedModels->at(i).asset == asset )
					index = i;

			if( index < 0 )
			{
				AnimatedInstance instance;
				instance.asset = asset;
				//TEMP TODO: move to importer
				//instance.material = Material(g_assets, "Materials/MaterialTextures/molerat_texturemap2.png", "Materials/MaterialTextures/molerat_normalmap.png");

				index = g_animatedModels->size();
				g_animatedModels->push_back( instance );
			}

			animation->setAsset(asset);

			g_animatedModels->at(index).worldIndices.push_back(transformID);
			g_animatedModels->at(index).animations.push_back(animation);

			// NOTE: Should we push the result to Lua? Like this:
			//lua_pushnumber( lua, result );
		}

		return 0;
	}

	int setQueueModels( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );
		*g_queueModels = lua_toboolean( lua, 1 );
		return 0;
	}

	int print(lua_State* lua)
	{
		int ntop = lua_gettop(lua);
		if (ntop >= 3)
		{
			std::string s = lua_tostring(lua, 1);
			float x = lua_tonumber(lua, 2);
			float y = lua_tonumber(lua, 3);

			float scale = 1.0f;
			int type = -1;
			if( ntop >= 4 )
				type = lua_type( lua, 4 );

			glm::vec4 color( 1.0f );
			if( type == LUA_TNUMBER )
			{
				scale = lua_tonumber( lua, 4 );

				if( ntop >= 5 )
				{
					for( int i=0; i<4; i++ )
					{
						lua_rawgeti( lua, 5, i+1 );
						color[i] = lua_tonumber( lua, -1 );
					}
				}
			}
			else if( type == LUA_TTABLE )
			{
				for( int i=0; i<4; i++ )
				{
					lua_rawgeti( lua, 4, i+1 );
					color[i] = lua_tonumber( lua, -1 );
				}
			}

			g_gearEngine->print(s, x, y, scale, color);
		}
		return 0;
	}

	int getTextDimensions( lua_State* lua )
	{
		assert( lua_gettop( lua ) >= 1 );

		glm::vec2 dim = g_gearEngine->getTextDimensions( lua_tostring( lua, 1 ) );
		lua_pushnumber( lua, dim.x );
		lua_pushnumber( lua, dim.y );
		return 2;
	}

	/*int createAnimation( lua_State* lua )
	{
		Animation* animation = new Animation();
		lua_newtable( lua );
		luaL_setmetatable( lua, "animationMeta" );
		lua_pushlightuserdata( lua, animation );
		lua_setfield( lua, -2, "__self" );

		return 1;
	}*/

	/*int destroyAnimation( lua_State* lua )
	{
		lua_getfield( lua, 1, "__self" );
		Animation* animation = (Animation*)lua_touserdata( lua, -1 );
		delete animation;

		return 0;
	}*/

	int bindAnimation( lua_State* lua )
	{
		int index = *g_boundAnimations;
		Animation* animation = &g_animations[index];
		animation->setMatrixIndex( index );
		*g_boundAnimations = index+1;

		lua_newtable( lua );
		luaL_setmetatable( lua, "animationMeta" );
		lua_pushlightuserdata( lua, animation );
		lua_setfield( lua, -2, "__self" );

		return 1;
	}

	//int updateAnimation( lua_State* lua )
	//{
	//	int result = 0;
	//
	//	if( lua_gettop( lua ) >= 3 )
	//	{
	//		lua_getfield( lua, 1, "__self" );
	//		Animation* animation = (Animation*)lua_touserdata( lua, -1 );
	//		float dt = lua_tonumber( lua, 2 );
	//		int layer = lua_tointeger( lua, 3 );
	//
	//		animation->updateAnimation( dt, layer );
	//	}
	//
	//	return result;
	//}

	int quickBlend(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 5)
		{
			lua_getfield(lua, 1, "__self");
			Animation* animation = (Animation*)lua_touserdata(lua, -1);
			float dt = lua_tonumber(lua, 2);
			int originState = lua_tointeger(lua, 3);
			int transitionState = lua_tointeger(lua, 4);
			float blendTime = lua_tonumber(lua, 5);
			int animationSegment = lua_tointeger(lua, 6);

			bool res = animation->quickBlend(dt, originState,
			transitionState, blendTime, animationSegment);

			lua_pushboolean(lua, res);

			result = 1;
		}

		return result;
	}

	int updateAnimationBlending(lua_State* lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 3)
		{
			lua_getfield(lua, 1, "__self");
			Animation* animation = (Animation*)lua_touserdata(lua, -1);
			float dt = lua_tonumber(lua, 2);
			int layer = lua_tointeger(lua, 3);
			int animationSegment = lua_tointeger(lua, 4);

			animation->updateState(dt, layer, animationSegment);
		}

		return result;
	}

	int setTransitionTimes(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 2)
		{
			lua_getfield(lua, 1, "__self");
			Animation* animation = (Animation*)lua_touserdata(lua, -1);

			int numStates = lua_rawlen(lua, 2);

			float* transitions = new float[numStates*numStates];

			for (int curState = 0, index = 0; curState < numStates; curState++)
			{
				lua_rawgeti(lua, 2, curState+1);
				for (int curTransition = 0; curTransition < numStates; curTransition++, index++)
				{
					lua_rawgeti(lua, -1, curTransition+1);
					transitions[index] = lua_tonumber(lua, -1);
					lua_pop(lua, 1);
				}
				lua_pop(lua, 1);
			}

			animation->setTransitionTimes(transitions, numStates);

			delete[] transitions;
		}
		return result;
	}

	int setAnimationSegments(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 1)
		{
			lua_getfield(lua, 1, "__self");
			Animation* animation = (Animation*)lua_touserdata(lua, -1);
			int numberOfSegments = lua_tointeger(lua, 2);
			animation->setAnimationSegments(numberOfSegments);
		}
		return result;
	}

	int assembleAnimationsIntoShadermatrices(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 0)
		{
			lua_getfield(lua, 1, "__self");
			Animation* animation = (Animation*)lua_touserdata(lua, -1);
			animation->assembleAnimationsIntoShadermatrices();
		}
		return result;
	}
}