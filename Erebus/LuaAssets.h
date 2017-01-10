#pragma once

#include "lua\lua.hpp"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"
#include "HeightMap.h"

namespace LuaAssets
{
	void registerFunctions( lua_State* lua, Importer::Assets* assets );

	int loadModel( lua_State* lua );

	int loadTexture( lua_State* lua );
	int bindTexture( lua_State* lua );

	int loadHeightmap( lua_State* lua );
	int getHeight( lua_State* lua );
	int getHeightmapModel( lua_State* lua );

	int getMapWidth(lua_State * lua);
	int getMapHeight(lua_State * lua);
}