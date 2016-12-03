#include "LuaAssets.h"

using namespace Importer;
namespace LuaAssets
{
	void registerFunctions( lua_State* lua, Assets* assets )
	{
		luaL_newmetatable( lua, "assetsMeta" );
		luaL_Reg assetsRegs[] =
		{
			{ "LoadModel", loadModel },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, assetsRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		
		lua_newtable( lua );
		luaL_setmetatable( lua, "assetsMeta" );
		lua_pushlightuserdata( lua, assets );
		lua_setfield( lua, -2, "__self" );
		lua_setglobal( lua, "Assets" );
	}

	int loadModel( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			Assets* assets = getAssets( lua );
			ModelAsset* model = assets->load<ModelAsset>( lua_tostring( lua, 1 ) );

			lua_pushlightuserdata( lua, model );
			result = 1;
		}

		return result;
	}

	Assets* getAssets( lua_State* lua )
	{
		lua_getglobal( lua, "Assets" );
		lua_getfield( lua, -1, "__self" );

		Assets* result = (Assets*)lua_touserdata( lua, -1 );
		lua_pop( lua, 1 );

		return result;
	}
}