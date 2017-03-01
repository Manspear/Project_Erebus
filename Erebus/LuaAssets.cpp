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
			{ "UnloadModel", unloadModel },
			{ "LoadTexture", loadTexture },
			{ "UnloadTexture", unloadTexture },
			{ "LoadHeightmap", loadHeightmap },
			{ "UnloadHeightmap", unloadHeightmap },
			{ "GetAssets", getAssets },
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
			{ "Inside", insideHeightmap },
			{ "SetPosition", setHeightmapPosition },
			{ "SetHeightMultiplier", setHeightmapMultiplier },
			{ "GetSize", getHeightmapSize },
			{ "GetHeight", getHeight },
			//{ "GetModel", getHeightmapModel },
			{ "GetMapWidth", getMapWidth },
			{ "GetMapHeight", getMapHeight },
			{ "GetPosition", getHeightmapPosition },
			{ "GetHeightMultiplier", getHeightmapMultiplier },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, heightmapRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_pop(lua, 2);
	}

	int loadModel( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int result = 0;

		ModelAsset* model = g_assets->load<ModelAsset>( lua_tostring( lua, 1 ) );

		if( model )
		{
			lua_pushlightuserdata( lua, model );
			result = 1;
		}

		return result;
	}

	int unloadModel( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		g_assets->unload<ModelAsset>( lua_tostring( lua, 1 ) );

		return 0;
	}

	int loadTexture( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int result = 0;

		TextureAsset* texture = g_assets->load<TextureAsset>( lua_tostring( lua, 1 ) );

		if( texture )
		{
			lua_newtable( lua );
			luaL_setmetatable( lua, "textureMeta" );
			lua_pushlightuserdata( lua, texture );
			lua_setfield( lua, -2, "__self" );
			result = 1;
		}

		return result;
	}

	int unloadTexture( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		g_assets->unload<TextureAsset>( lua_tostring( lua, 1 ) );

		return 0;
	}

	int bindTexture( lua_State* lua )
	{
		int numArgs = lua_gettop( lua );

		assert( numArgs == 1 || numArgs == 2 );

		lua_getfield( lua, 1, "__self" );
		TextureAsset* texture = (TextureAsset*)lua_touserdata( lua, -1 );

		int index = GL_TEXTURE0;
		if( numArgs == 2 )
			index = (int)lua_tointeger( lua, 2 );

		texture->bind( index );

		return 0;
	}

	int loadHeightmap( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int result = 0;

		HeightMap* heightmap = g_assets->load<HeightMap>( lua_tostring( lua, 1 ) );
		if( heightmap )
		{
			lua_newtable( lua );
			luaL_setmetatable( lua, "heightmapMeta" );
			lua_pushlightuserdata( lua, heightmap );
			lua_setfield( lua, -2, "__self" );

			result = 1;
		}

		return result;
	}

	int unloadHeightmap( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		g_assets->unload<HeightMap>( lua_tostring( lua, 1 ) );

		return 0;
	}

	int insideHeightmap( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		glm::vec3 position = getVec3( lua, 2 );

		lua_pushboolean( lua, heightmap->inside( position ) );
		return 1;
	}

	int setHeightmapPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		glm::vec3 position = getVec3( lua, 2 );

		heightmap->setPosition( position );
		return 0;
	}

	int setHeightmapMultiplier( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		float height = lua_tonumber( lua, 2 );

		heightmap->setHeightMultiplier( height );
		return 0;
	}

	int getHeightmapSize( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HeightMap* heightmap = getHeightmap( lua, 1 );

		lua_newtable( lua );
		lua_pushnumber( lua, heightmap->getMapWidth() );
		lua_setfield( lua, -2, "width" );
		lua_pushnumber( lua, heightmap->getMapHeight() );
		lua_setfield( lua, -2, "height" );
		return 1;
	}

	int getHeight( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 3 );

		int result = 0;

		HeightMap* heightmap = getHeightmap( lua, 1 );

		float x = (float)lua_tonumber( lua, 2 );
		float y = (float)lua_tonumber( lua, 3 );

		lua_pushnumber( lua, heightmap->getPos(x,y) );
		result = 1;

		return result;
	}

	int getMapWidth(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int result = 0;

		HeightMap* heightmap = getHeightmap( lua, 1 );

		lua_pushnumber(lua, heightmap->getMapWidth());
		result = 1;

		return result;
	}

	int getMapHeight(lua_State* lua)
	{
		assert( lua_gettop( lua ) == 1 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		lua_pushnumber(lua, heightmap->getMapHeight());

		return 1;
	}

	int getHeightmapPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		setVec3( lua, heightmap->getPosition() );

		return 1;
	}

	int getHeightmapMultiplier( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HeightMap* heightmap = getHeightmap( lua, 1 );
		lua_pushnumber( lua, heightmap->getHeightMultiplier() );
		return 1;
	}

	/*int getHeightmapModel( lua_State* lua )
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
	}*/

	int getAssets( lua_State* lua )
	{
		lua_newtable( lua );

		for( std::map<AssetID, Asset*>::const_iterator it = g_assets->getAssets().begin(); it != g_assets->getAssets().end(); it++ )
		{
			lua_pushnumber( lua, it->second->getReferenceCount() );
			lua_setfield( lua, -2, it->second->getFileInfo()->getPath().c_str() );
		}

		return 1;
	}

	Importer::HeightMap* getHeightmap( lua_State* lua, int index )
	{
		lua_getfield( lua, index, "__self" );
		return (HeightMap*)lua_touserdata( lua, -1 );
	}

	void setVec3( lua_State* lua, const glm::vec3& v )
	{
		lua_newtable( lua );
		lua_pushnumber( lua, v.x );
		lua_setfield( lua, -2, "x" );
		lua_pushnumber( lua, v.y );
		lua_setfield( lua, -2, "y" );
		lua_pushnumber( lua, v.z );
		lua_setfield( lua, -2, "z" );
	}

	glm::vec3 getVec3( lua_State* lua, int index )
	{
		glm::vec3 result;
		lua_getfield( lua, index, "x" );
		result.x = lua_tonumber( lua, -1 );
		lua_getfield( lua, index, "y" );
		result.y = lua_tonumber( lua, -1 );
		lua_getfield( lua, index, "z" );
		result.z = lua_tonumber( lua, -1 );

		return result;
	}
}