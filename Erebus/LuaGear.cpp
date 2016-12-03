#include "LuaGear.h"
using namespace Gear;
using namespace Importer;

namespace LuaGear
{
	// TEMP: Where should we put this? In GearEngine? or in Erebus? 
	std::vector<ModelInstance>* g_models = nullptr;

	void registerFunctions( lua_State* lua, GearEngine* gearEngine, std::vector<ModelInstance>* models )
	{
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

		// TEMP: This should not a global variable.
		g_models = models;
	}

	int addModelInstance( lua_State* lua )
	{
		int ntop = lua_gettop( lua );
		if( ntop >= 1 )
		{
			ModelAsset* asset = (ModelAsset*)lua_touserdata( lua, 1 );

			int amount = 1;
			if( ntop > 1 )
				amount = lua_tointeger( lua, 2 );

			GearEngine* engine = getGearEngine( lua );

			for( int i=0; i<amount; i++ )
			{
				int result = engine->renderQueue.generateWorldMatrix();

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

				g_models->at(index).worldIndices.push_back(result);

				// NOTE: Should we push the result to Lua? Like this:
				//lua_pushnumber( lua, result );
			}
		}

		return 0;
	}

	GearEngine* getGearEngine( lua_State* lua )
	{
		lua_getglobal( lua, "Gear" );
		lua_getfield( lua, -1, "__self" );

		GearEngine* result = (GearEngine*)lua_touserdata( lua, -1 );
		lua_pop( lua, 1 );

		return result;
	}
}