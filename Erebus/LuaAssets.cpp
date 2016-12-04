#include "LuaAssets.h"

using namespace Importer;
namespace LuaAssets
{
	static Assets* g_assets = nullptr;

	void registerFunctions( lua_State* lua, Assets* assets )
	{
		g_assets = assets;

		// Assets
		luaL_newmetatable( lua, "assetsMeta" );
		luaL_Reg assetsRegs[] =
		{
			{ "LoadModel", loadModel },
			{ "LoadTexture", loadTexture },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, assetsRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		
		//lua_newtable( lua );
		//luaL_setmetatable( lua, "assetsMeta" );
		//lua_pushlightuserdata( lua, assets );
		//lua_setfield( lua, -2, "__self" );
		lua_setglobal( lua, "Assets" );

		// Texture
		luaL_newmetatable( lua, "textureMeta" );
		luaL_Reg textureRegs[] =
		{
			{ "Bind", bindTexture },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, textureRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
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

	int loadTexture( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			TextureAsset* texture = g_assets->load<TextureAsset>( lua_tostring( lua, 1 ) );

			lua_newtable( lua );
			luaL_setmetatable( lua, "textureMeta" );
			lua_pushlightuserdata( lua, texture );
			lua_setfield( lua, -2, "__self" );
			result = 1;
		}

		return result;
	}

	int bindTexture( lua_State* lua )
	{
		if( lua_gettop( lua ) >= 1 )
		{
			lua_getfield( lua, 1, "__self" );
			TextureAsset* texture = (TextureAsset*)lua_touserdata( lua, -1 );

			int index = GL_TEXTURE0;
			if( lua_gettop( lua ) > 1 )
				index = lua_tointeger( lua, 2 );

			texture->bind( index );
		}

		return 0;
	}
}