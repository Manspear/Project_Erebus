#include "LuaAssets.h"

using namespace Importer;
namespace LuaAssets
{
	static Assets* g_assets = nullptr;

	void registerFunctions( lua_State* lua, Assets* assets )
	{
		g_assets = assets;

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
			ModelAsset* model = g_assets->load<ModelAsset>( lua_tostring( lua, 1 ) );

			lua_pushlightuserdata( lua, model );
			result = 1;
		}

		return result;
	}
}