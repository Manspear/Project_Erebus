#include "LuaNetwork.hpp"

namespace LuaNetwork 
{
	static NetworkController* g_networkController = nullptr;

	void registerFunctions(lua_State * lua, NetworkController * networkController)
	{
		g_networkController = networkController;
		luaL_newmetatable(lua, "networkMeta");
		luaL_Reg regs[] =
		{
			{ "SendTransformPacket", sendTransformPacket },
			{ "GetTransformPacket", getTransformPacket },
			{ "SendAnimationPacket", sendAnimationPacket },
			{ "GetAnimationPacket", getAnimationPacket },
			{ "SendAIPacket", sendAIPacket },
			{ "GetAIPacket", getAIPacket },
			{ "SendSpellPacket", sendSpellPacket },
			{ "GetSpellPacket", getSpellPacket },
			{ "SendAITransformPacket", sendAITransformPacket },
			{ "GetAITransformPacket", getAITransformPacket },
			{ "SendChargingPacket", sendChargingPacket },
			{ "GetChargingPacket", getChargingPacket },
			{ "GetNetworkHost", getNetworkHost },
			{ "ShouldSendNewTransform", shouldSendNewTransform },
			{ "ShouldSendNewAnimation", shouldSendNewAnimation },
			{ "ShouldSendNewAITransform", shouldSendNewAITransform },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, regs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");

		lua_setglobal(lua, "Network");
	}

	int sendTransformPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);

		lua_getfield(lua, 2, "x");
		float pos_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "y");
		float pos_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "z");
		float pos_z = lua_tonumber(lua, -1);

		lua_getfield(lua, 3, "x");
		float lookAt_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 3, "y");
		float lookAt_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 3, "z");
		float lookAt_z = lua_tonumber(lua, -1);

		lua_getfield(lua, 4, "x");
		float rotation_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 4, "y");
		float rotation_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 4, "z");
		float rotation_z = lua_tonumber(lua, -1);

		g_networkController->sendTransformPacket(TransformPacket(index, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z));

		return 0;
	}

	int getTransformPacket(lua_State* lua)
	{
		TransformPacket transformPacket;

		if (g_networkController->fetchTransformPacket(transformPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, transformPacket.data.id);
			lua_pushnumber(lua, transformPacket.data.pos_x);
			lua_pushnumber(lua, transformPacket.data.pos_y);
			lua_pushnumber(lua, transformPacket.data.pos_z);
			lua_pushnumber(lua, transformPacket.data.lookAt_x);
			lua_pushnumber(lua, transformPacket.data.lookAt_y);
			lua_pushnumber(lua, transformPacket.data.lookAt_z);
			lua_pushnumber(lua, transformPacket.data.rotation_x);
			lua_pushnumber(lua, transformPacket.data.rotation_y);
			lua_pushnumber(lua, transformPacket.data.rotation_z);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 80);
			lua_pushnumber(lua, 27);
			lua_pushnumber(lua, 160);
			lua_pushnumber(lua, 0.5);
			lua_pushnumber(lua, 0.25);
			lua_pushnumber(lua, 0.75);
			lua_pushnumber(lua, 0.0);
			lua_pushnumber(lua, 3.14);
			lua_pushnumber(lua, 1.57);
		}

		return 11;
	}

	int sendAnimationPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);
		int animationState = lua_tointeger(lua, 2);
		float dt = lua_tonumber(lua, 3);
		int animationSegmentID = lua_tointeger(lua, 4);

		g_networkController->sendAnimationPacket(AnimationPacket(index, animationState, dt, animationSegmentID));

		return 0;
	}

	int getAnimationPacket(lua_State* lua)
	{
		AnimationPacket animationPacket;

		if (g_networkController->fetchAnimationPacket(animationPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, animationPacket.data.id);
			lua_pushnumber(lua, animationPacket.data.animationState);
			lua_pushnumber(lua, animationPacket.data.dt);
			lua_pushnumber(lua, animationPacket.data.animationSegmentID);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
		}
		
		return 5;
	}

	int sendAIPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);
		int aiState = lua_tointeger(lua, 2);

		g_networkController->sendAIStatePacket(AIStatePacket(index, aiState));

		return 0;
	}

	int getAIPacket(lua_State* lua)
	{
		AIStatePacket aiPacket;

		if (g_networkController->fetchAIStatePacket(aiPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, aiPacket.data.transformID);
			lua_pushnumber(lua, aiPacket.data.aiState);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
		}

		return 3;
	}

	int sendSpellPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);
		int currentSpell = lua_tointeger(lua, 2);

		g_networkController->sendSpellPacket(SpellPacket(index, currentSpell));

		return 0;
	}

	int getSpellPacket(lua_State* lua)
	{
		SpellPacket spellPacket;

		if (g_networkController->fetchSpellPacket(spellPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, spellPacket.data.ID);
			lua_pushnumber(lua, spellPacket.data.currentSpell);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
		}

		return 3;
	}

	int sendAITransformPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);

		lua_getfield(lua, 2, "x");
		float pos_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "y");
		float pos_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "z");
		float pos_z = lua_tonumber(lua, -1);

		lua_getfield(lua, 3, "x");
		float lookAt_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 3, "y");
		float lookAt_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 3, "z");
		float lookAt_z = lua_tonumber(lua, -1);

		lua_getfield(lua, 4, "x");
		float rotation_x = lua_tonumber(lua, -1);
		lua_getfield(lua, 4, "y");
		float rotation_y = lua_tonumber(lua, -1);
		lua_getfield(lua, 4, "z");
		float rotation_z = lua_tonumber(lua, -1);

		g_networkController->sendAITransformPacket(TransformPacket(index, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z));

		return 0;
	}

	int getAITransformPacket(lua_State* lua)
	{
		TransformPacket aiTransformPacket;

		if (g_networkController->fetchAITransformPacket(aiTransformPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, aiTransformPacket.data.id);
			lua_pushnumber(lua, aiTransformPacket.data.pos_x);
			lua_pushnumber(lua, aiTransformPacket.data.pos_y);
			lua_pushnumber(lua, aiTransformPacket.data.pos_z);
			lua_pushnumber(lua, aiTransformPacket.data.lookAt_x);
			lua_pushnumber(lua, aiTransformPacket.data.lookAt_y);
			lua_pushnumber(lua, aiTransformPacket.data.lookAt_z);
			lua_pushnumber(lua, aiTransformPacket.data.rotation_x);
			lua_pushnumber(lua, aiTransformPacket.data.rotation_y);
			lua_pushnumber(lua, aiTransformPacket.data.rotation_z);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 80);
			lua_pushnumber(lua, 27);
			lua_pushnumber(lua, 160);
			lua_pushnumber(lua, 0.5);
			lua_pushnumber(lua, 0.25);
			lua_pushnumber(lua, 0.75);
			lua_pushnumber(lua, 0.0);
			lua_pushnumber(lua, 3.14);
			lua_pushnumber(lua, 1.57);
		}

		return 11;
	}

	int sendChargingPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);
		float damage = lua_tonumber(lua, 2);

		g_networkController->sendChargingPacket(ChargingPacket(index, damage));

		return 0;
	}

	int getChargingPacket(lua_State* lua)
	{
		ChargingPacket chargingPacket;

		if (g_networkController->fetchChargingPacket(chargingPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, chargingPacket.data.ID);
			lua_pushnumber(lua, chargingPacket.data.damage);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
			lua_pushnumber(lua, 0);
		}

		return 3;
	}

	int getNetworkHost(lua_State* lua)
	{
		bool networkHost = g_networkController->getNetworkHost();

		lua_pushboolean(lua, networkHost);
		return 1;
	}

	int shouldSendNewTransform(lua_State* lua)
	{
		if (g_networkController->timeSinceLastTransformPacket() > 0.01)
		{
			lua_pushboolean(lua, true);
		}
		else
		{
			lua_pushboolean(lua, false);
		}
		return 1;
	}

	int shouldSendNewAnimation(lua_State* lua)
	{
		if (g_networkController->timeSinceLastAnimationPacket() > 0.01)
		{
			lua_pushboolean(lua, true);
		}
		else
		{
			lua_pushboolean(lua, false);
		}
		return 1;
	}

	int shouldSendNewAITransform(lua_State* lua)
	{
		if (g_networkController->timeSinceLastAITransformPacket() > 0.01)
		{
			lua_pushboolean(lua, true);
		}
		else
		{
			lua_pushboolean(lua, false);
		}
		return 1;
	}

}