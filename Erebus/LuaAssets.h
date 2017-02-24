#pragma once

#include "lua\lua.hpp"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "HeightMap.h"

namespace LuaAssets
{
	void registerFunctions( lua_State* lua, Importer::Assets* assets );

	int unload( lua_State* lua );

	int loadModel( lua_State* lua );

	int loadTexture( lua_State* lua );
	int bindTexture( lua_State* lua );

	int loadHeightmap( lua_State* lua );
	int insideHeightmap( lua_State* lua );
	int setHeightmapPosition( lua_State* lua );
	int setHeightmapMultiplier( lua_State* lua );
	int getHeightmapSize( lua_State* lua );
	int getHeight( lua_State* lua );
	//int getHeightmapModel( lua_State* lua );
	int getMapWidth(lua_State * lua);
	int getMapHeight(lua_State * lua);
	int getHeightmapPosition( lua_State* lua );
	int getHeightmapMultiplier( lua_State* lua );

	// helper functions
	Importer::HeightMap* getHeightmap( lua_State* lua, int index );
	void setVec3( lua_State* lua, const glm::vec3& v );
	glm::vec3 getVec3( lua_State* lua, int index );
}