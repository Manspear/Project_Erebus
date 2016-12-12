#include "LuaGear.h"
using namespace Gear;
using namespace Importer;

namespace LuaGear
{
	static GearEngine* g_gearEngine = nullptr;
	static std::vector<ModelInstance>* g_models = nullptr;

	void registerFunctions( lua_State* lua, GearEngine* gearEngine, std::vector<ModelInstance>* models )
	{
		g_gearEngine = gearEngine;
		g_models = models;

		luaL_newmetatable( lua, "gearMeta" );
		luaL_Reg regs[] =
		{
			{ "AddModelInstance", addModelInstance },
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
	}

	int addModelInstance( lua_State* lua )
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

				index = g_models->size();
				g_models->push_back( instance );
			}

			g_models->at(index).worldIndices.push_back(transformID);

			// NOTE: Should we push the result to Lua? Like this:
			//lua_pushnumber( lua, result );
		}

		return 0;
	}
}