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
			{ "LoadHeightmap", loadHeightmap },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, assetsRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
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

		// Heightmap
		luaL_newmetatable( lua, "heightmapMeta" );
		luaL_Reg heightmapRegs[] =
		{
			{ "GetHeight", getHeight },
			{ "GetModel", getHeightmapModel },
			{ "GetMapWidth", getMapWidth },
			{ "GetMapHeight", getMapHeight },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, heightmapRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_pop(lua, 2);
	}

	int loadModel( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			ModelAsset* model = g_assets->load<ModelAsset>( lua_tostring( lua, 1 ) );

			if( model )
			{
				lua_pushlightuserdata( lua, model );
				result = 1;
			}
		}

		return result;
	}

	int loadTexture( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			TextureAsset* texture = g_assets->load<TextureAsset>( lua_tostring( lua, 1 ) );

			if( texture )
			{
				lua_newtable( lua );
				luaL_setmetatable( lua, "textureMeta" );
				lua_pushlightuserdata( lua, texture );
				lua_setfield( lua, -2, "__self" );
				result = 1;
			}
		}

		return result;
	}

	int bindTexture( lua_State* lua )
	{
		int numArgs = lua_gettop( lua );
		if( numArgs >= 1 )
		{
			lua_getfield( lua, 1, "__self" );
			TextureAsset* texture = (TextureAsset*)lua_touserdata( lua, -1 );

			int index = GL_TEXTURE0;
			if( numArgs > 1 )
				index = lua_tointeger( lua, 2 );

			texture->bind( index );
		}

		return 0;
	}

	int loadHeightmap( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			HeightMap* heightmap = g_assets->load<HeightMap>( lua_tostring( lua, 1 ) );
			if( heightmap )
			{
				lua_newtable( lua );
				luaL_setmetatable( lua, "heightmapMeta" );
				lua_pushlightuserdata( lua, heightmap );
				lua_setfield( lua, -2, "__self" );

				result = 1;
			}
		}

		return result;
	}

	int getHeight( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 3 )
		{
			lua_getfield( lua, 1, "__self" );
			HeightMap* heightmap = (HeightMap*)lua_touserdata( lua, -1 );

			float x = lua_tonumber( lua, 2 );
			float y = lua_tonumber( lua, 3 );

			lua_pushnumber( lua, heightmap->getPos(x,y) );
			result = 1;
		}

		return result;
	}

	int getMapWidth(lua_State* lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 1)
		{
			lua_getfield(lua, 1, "__self");
			HeightMap* heightmap = (HeightMap*)lua_touserdata(lua, -1);

			lua_pushnumber(lua, heightmap->getMapWidth());
			result = 1;
		}

		return result;
	}

	int getMapHeight(lua_State* lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 1)
		{
			lua_getfield(lua, 1, "__self");
			HeightMap* heightmap = (HeightMap*)lua_touserdata(lua, -1);

			lua_pushnumber(lua, heightmap->getMapHeight());
			result = 1;
		}

		return result;
	}

	int getHeightmapModel( lua_State* lua )
	{
		int result = 0;

		if( lua_gettop( lua ) >= 1 )
		{
			lua_getfield( lua, 1, "__self" );
			HeightMap* heightmap = (HeightMap*)lua_touserdata( lua, -1 );

			lua_pushlightuserdata( lua, heightmap->getModel() );
			result = 1;
		}

		return result;
	}
}