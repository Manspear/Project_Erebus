#include"LuaAi.h"
#include "Debug.h"

using namespace Importer;
namespace LuaAI
{
	static AGI::AGIEngine * AI = nullptr;
	static Transform* transforms = nullptr;

	void registerFunctions(lua_State * L, Transform* inTransforms,AGI::AGIEngine * inAI)
	{
		AI = inAI;
		transforms = inTransforms;

		luaL_newmetatable(L, "aiTable");
		luaL_Reg regs[] =
		{
			{ "FollowPlayer",		followPlayer },
			{ "NavigateMesh", navigateMesh },
			{ "DistanceTransTrans",distanceTransTrans },
			{ "DistanceTransPos",distanceTransPos },
			{ "NormalizeDir",normalizeDir },
			{ "SetNav",setNav },
			{ "ClearMap",clearMap },
			{ "AddIP",addInfluencePoint },
			{ NULL, NULL }
		};
		luaL_setfuncs(L, regs, 0);
		lua_pushvalue(L, -1);
		lua_setfield(L, -2, "__index");
		//int n = lua_gettop(L);
		lua_setglobal(L, "AI");
	}

	int followPlayer(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);

			//AI.setTarget(transforms[index].getPos());
			result = 0;
		}
		return result;
	}

	int navigateMesh(lua_State * lua)
	{
		int result = 0;

		if (lua_gettop(lua) >= 1)
		{
			int index = lua_tointeger(lua, 1);

			glm::vec3 pos = AI->calculateIMPath(transforms[index].getPos());


			lua_newtable(lua);
			lua_pushnumber(lua, pos.x);
			lua_setfield(lua, -2, "x");

			lua_pushnumber(lua, pos.y);
			lua_setfield(lua, -2, "y");

			lua_pushnumber(lua, pos.z);
			lua_setfield(lua, -2, "z");

			result = 1;
		}


		return result;
	}

	int distanceTransTrans(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{
			int playerIndex = lua_tointeger(lua, 2);
			int enemyIndex = lua_tointeger(lua, 1);

			float distance = glm::distance(transforms[playerIndex].getPos(), transforms[enemyIndex].getPos());

			//lua_newtable(lua);
			lua_pushnumber(lua, distance);
			result = 1;
		}

		return result;
	}

	int distanceTransPos(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{
			int enemyIndex = lua_tointeger(lua, 1);

			glm::vec3 position;
			lua_getfield(lua, 2, "x");
			position.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			position.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			position.z = lua_tonumber(lua, -1);

			AI->drawDebug(position);

			float distance = glm::distance(glm::vec3(transforms[enemyIndex].getPos().x,0, transforms[enemyIndex].getPos().z), position);

			//lua_newtable(lua);
			lua_pushnumber(lua, distance);
			result = 1;
		}

		return result;
	}

	int normalizeDir(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 2)
		{

			int index = lua_tointeger(lua, 1);

			glm::vec3 position;
			lua_getfield(lua, 2, "x");
			position.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			position.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			position.z = lua_tonumber(lua, -1);

			position.y = 0;

			glm::vec3 tempPos = transforms[index].getPos();
			tempPos.y = 0;

			glm::vec3 normalizedDir = -glm::normalize(tempPos - position);

			lua_newtable(lua);
			lua_pushnumber(lua, normalizedDir.x);
			lua_setfield(lua, -2, "x");

			lua_pushnumber(lua, normalizedDir.y);
			lua_setfield(lua, -2, "y");

			lua_pushnumber(lua, normalizedDir.z);
			lua_setfield(lua, -2, "z");

			result = 1;
		}

		return result;
	}

	int setNav(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 2)
		{
			AI->createInfluenceMap(lua_tointeger(lua, 1), lua_tointeger(lua, 2));

		}
		return result;
	}

	int clearMap(lua_State * lua)
	{
		AI->resetIM();
		return 0;
	}

	int addInfluencePoint(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{
			AI->addInfluencePoint(transforms[lua_tointeger(lua, 1)].getPos(), lua_tointeger(lua, 2));
			result = 0;
		}
		return result;
	}

	int draw()
	{
		AI->drawDebug();
		return 1;
	}
	int addDebug(Debug * bugger)
	{
		AI->addDebug(bugger);
		return 0;
	}
}