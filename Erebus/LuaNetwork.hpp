#pragma once

#include "lua\lua.hpp"
#include "NetworkController.hpp"

namespace LuaNetwork
{
	void registerFunctions(lua_State* lua, NetworkController* networkController);
	int sendTransformPacket(lua_State* lua);
	int getTransformPacket(lua_State* lua);
	int sendAnimationPacket(lua_State* lua);
	int getAnimationPacket(lua_State* lua);
	int getNetworkHost(lua_State* lua);
	int shouldSendNewTransform(lua_State* lua);
}
