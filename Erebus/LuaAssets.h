#pragma once

#include "lua\lua.hpp"
#include "Assets.h"
#include "ModelAsset.h"
#include "TextureAsset.h"

namespace LuaAssets
{
	void registerFunctions( lua_State* lua, Importer::Assets* assets );
	int loadModel( lua_State* lua );
}