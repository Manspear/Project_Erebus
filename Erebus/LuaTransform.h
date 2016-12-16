#pragma once

#include "lua\lua.hpp"
#include "Transform.h"

namespace LuaTransform
{
	void registerFunctions( lua_State* lua, Transform* transforms, int* boundTransforms);
	int bind( lua_State* lua );
	int destroy( lua_State* lua );
	int move( lua_State* lua );
	int switchTransform( lua_State* lua );
	int follow( lua_State* lua );
	int fly( lua_State* lua );
	int shoot( lua_State* lua );
	int activeControl(lua_State* lua);

	int setPosition( lua_State* lua );
	int setRotation( lua_State* lua );
	int setLookAt( lua_State* lua );
	int setScale( lua_State* lua );

	int getPosition( lua_State* lua );
	int getRotation( lua_State* lua );
	int getLookAt( lua_State* lua );
	int getScale( lua_State* lua );

	int updateRotationFromLookVector(lua_State* lua);
}