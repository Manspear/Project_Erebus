#pragma once

#include "lua\lua.hpp"
#include "NetworkController.hpp"
#include <iostream>
#include <fstream>
#include <string>

using namespace Packet;

namespace LuaNetwork
{
	void registerFunctions(lua_State* lua, NetworkController* networkController);
	int sendTransformPacket(lua_State* lua);
	int getTransformPacket(lua_State* lua);
	int sendAnimationPacket(lua_State* lua);
	int getAnimationPacket(lua_State* lua);
	int sendAIStatePacket(lua_State* lua);
	int getAIStatePacket(lua_State* lua);
	int sendSpellPacket(lua_State* lua);
	int sendChargeSpellPacket(lua_State* lua);
	int getSpellPacket(lua_State* lua);
	int sendAITransformPacket(lua_State* lua);
	int getAITransformPacket(lua_State* lua);
	int sendChargingPacket(lua_State* lua);
	int getChargingPacket(lua_State* lua);
	int sendQuickBlendPacket(lua_State* lua);
	int getQuickBlendPacket(lua_State* lua);
	int sendDamagePacket(lua_State* lua);
	int getDamagePacket(lua_State* lua);
	int sendChangeSpellsPacket(lua_State* lua);
	int getChangeSpellsPacket(lua_State* lua);
	int sendPlayerEventPacket(lua_State* lua);
	int getPlayerEventPacket(lua_State* lua);
	int sendAIHealthPacket(lua_State* lua);
	int getAIHealthPacket(lua_State* lua);
	int sendDashPacket(lua_State* lua);
	int getDashPacket(lua_State* lua);
	int sendEndEventPacket(lua_State* lua);
	int getEndEventPacket(lua_State* lua);
	int sendPlayerHealthPacket(lua_State* lua);
	int getPlayerHealthPacket(lua_State* lua);
	int sendRessurectionPacket(lua_State* lua);
	int getRessurectionPacket(lua_State* lua);
	int sendAIDamageTextPacket(lua_State* lua);
	int getAIDamageTextPacket(lua_State* lua);
	int sendBossDamageTextPacket(lua_State* lua);
	int getBossDamageTextPacket(lua_State* lua);
	int sendBossHealthPacket(lua_State* lua);
	int getBossHealthPacket(lua_State* lua);
	int getNetworkHost(lua_State* lua);
	int shouldSendNewAITransform(lua_State* lua);
	int shouldSendNewTransform(lua_State* lua);
	int shouldSendNewAnimation(lua_State* lua);
	int getIP(lua_State* lua);
}
