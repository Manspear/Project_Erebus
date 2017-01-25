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
			{ "GetNetworkHost", getNetworkHost },
			{ "ShouldSendNewTransform", shouldSendNewTransform },
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

		//std::cout << "Packing position - x: " << pos_x << " y: " << pos_y << " z: " << pos_z << std::endl;
		//std::cout << "Packing lookAt - x: " << lookAt_x << " y: " << lookAt_y << " z: " << lookAt_z << std::endl;
		//std::cout << "Packing rotation - x: " << rotation_x << " y: " << rotation_y << " z: " << rotation_z << std::endl << std::endl;

		g_networkController->sendTransformPacket(index, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z);

		return 0;
	}

	int getTransformPacket(lua_State* lua)
	{
		TransformPacket transformPacket;

		if (g_networkController->fetchTransformPacket(transformPacket))
		{

			//std::cout << "Receiving position - x: " << transformPacket.data.pos_x << " y: " << transformPacket.data.pos_y << " z: " << transformPacket.data.pos_z << std::endl;
			//std::cout << "Receiving lookAt - x: " << transformPacket.data.lookAt_x << " y: " << transformPacket.data.lookAt_y << " z: " << transformPacket.data.lookAt_z << std::endl;
			//std::cout << "Receiving rotation - x: " << transformPacket.data.rotation_x << " y: " << transformPacket.data.rotation_y << " z: " << transformPacket.data.rotation_z << std::endl << std::endl;

			lua_pushboolean(lua, true);
			lua_pushnumber(lua, transformPacket.data.ID);
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

		g_networkController->sendAnimationPacket(index);

		return 0;
	}

	int getAnimationPacket(lua_State* lua)
	{
		AnimationPacket animationPacket;

		if (g_networkController->fetchAnimationPacket(animationPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, animationPacket.data.ID);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
		}
		
		return 2;
	}

	int sendAIPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);

		g_networkController->sendAIPacket(index);

		return 0;
	}

	int getAIPacket(lua_State* lua)
	{
		AIPacket aiPacket;

		if (g_networkController->fetchAIPacket(aiPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, aiPacket.data.ID);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
		}

		return 2;
	}

	int sendSpellPacket(lua_State* lua)
	{
		int index = lua_tointeger(lua, 1);

		g_networkController->sendSpellPacket(index);

		return 0;
	}

	int getSpellPacket(lua_State* lua)
	{
		SpellPacket spellPacket;

		if (g_networkController->fetchSpellPacket(spellPacket))
		{
			lua_pushboolean(lua, true);
			lua_pushnumber(lua, spellPacket.data.ID);
		}
		else
		{
			lua_pushboolean(lua, false);
			lua_pushnumber(lua, 0);
		}

		return 2;
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
}