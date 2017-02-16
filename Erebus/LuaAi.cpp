#include"LuaAi.h"
#include "Debug.h"

using namespace Importer;
namespace LuaAI
{
	static AGI::AGIEngine * AI = nullptr;
	static Transform* transforms = nullptr;
	static Assets* g_assets = nullptr;

	static HeightMap ** heightMaps = nullptr;
	//static int nrOfHM;

	void registerFunctions(lua_State * L, Transform* inTransforms,AGI::AGIEngine * inAI, Assets* assets)
	{
		AI = inAI;
		transforms = inTransforms;
		g_assets = assets;

		luaL_newmetatable(L, "aiTable");
		luaL_Reg regs[] =
		{
			{ "FollowPlayer",		followPlayer },
			{ "NavigateMesh", navigateMesh },
			{ "DistanceTransTrans",distanceTransTrans },
			{ "DistanceTransPos",distanceTransPos },
			{ "NormalizeDir",normalizeDir },
			{ "CreateIM",createIM },
			{ "AddHeightMap", addHeightMap},
			{ "CreateHM", createHM },
			{ "ClearMap",clearMap },
			{ "AddIP",addInfluencePoint },
			{ "CheckIfTarget",checkIfTargetNodeIsOccupied },
			{ "DrawDebug",draw},
			{ "SetSpecificTarget",setSpecificTarget },
			{ "Blur",blurIM },
			{ "AStarSearch",aStarSearch },
			{ "ClearAStar",clearAStarSearch },
			{ "Unload",unload },
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

			glm::vec3 pos = AI->calculateIMPath(index,transforms[index].getPos());

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

			//lua_getfield(lua, 2, "y");
			position.y = 0;

			lua_getfield(lua, 2, "z");
			position.z = lua_tonumber(lua, -1);

			//AI->drawDebug(position);

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

	int createIM(lua_State * lua)
	{
		if (lua_gettop(lua) >= 3)
		{
			AI->createInfluenceMap(heightMaps,lua_tointeger(lua, 2), lua_tointeger(lua, 3));
			
		}
		return 0;
	}

	int createHM(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			std::cout << lua_tointeger(lua, 1);
			heightMaps = new HeightMap*[lua_tointeger(lua, 1)];
			//nrOfHM = lua_tointeger(lua, 1);
		}
		return 0;
	}

	int addHeightMap(lua_State * lua)
	{
		if (lua_gettop(lua) >= 2)
		{
			//heightMaps[0] = g_assets->load<HeightMap>(lua_tostring(lua, 1));
			
			lua_getfield(lua, 1, "__self");
			std::cout << lua_tointeger(lua, 2);
			heightMaps[lua_tointeger(lua,2)] = (HeightMap*)lua_touserdata(lua, -1);
			//	AI->createInfluenceMap(heightmaps,lua_tointeger(lua, 2), lua_tointeger(lua, 3));
		}
		return 0;
	}

	int clearMap(lua_State * lua)
	{
		glm::vec3 position;
		lua_getfield(lua, 1, "x");
		position.x = lua_tonumber(lua, -1);

		lua_getfield(lua, 1, "y");
		position.y = lua_tonumber(lua, -1);

		lua_getfield(lua, 1, "z");
		position.z = lua_tonumber(lua, -1);

		AI->resetIM(position, lua_tointeger(lua, 2));
		return 0;
	}

	int checkIfTargetNodeIsOccupied(lua_State * lua)
	{
		glm::vec3 position;
		lua_getfield(lua, 1, "x");
		position.x = lua_tonumber(lua, -1);

		lua_getfield(lua, 1, "y");
		position.y = lua_tonumber(lua, -1);

		lua_getfield(lua, 1, "z");
		position.z = lua_tonumber(lua, -1);

		lua_pushboolean(lua, AI->checkIfTargetNodeIsOccupied(position));

		return 1;
	}

	int addInfluencePoint(lua_State * lua)
	{
		int result = 0;
		if (lua_gettop(lua) >= 1)
		{
			AI->addInfluencePoint(transforms[lua_tointeger(lua, 1)].getPos(), lua_tointeger(lua, 2), lua_tointeger(lua, 3));
			result = 0;
		}
		return result;
	}

	int blurIM(lua_State * lua)
	{
		//AI->blur();
		return 0;
	}
	
	int setSpecificTarget(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			//OLD Function
			//glm::vec3 pos  = AI->SetTargetRangeFromPlayer(transforms[lua_tointeger(lua, 1)].getPos(), transforms[lua_tointeger(lua, 2)].getPos(),lua_tonumber(lua,3));
			
			// NEw Function
			glm::vec3 pos = AI->setTargetRangeFromPlayer(transforms[lua_tointeger(lua, 1)].getPos(), lua_tonumber(lua, 2),lua_tointeger(lua,3), lua_tointeger(lua, 4));

			lua_newtable(lua);
			lua_pushnumber(lua, pos.x);
			lua_setfield(lua, -2, "x");

			if (pos.y == -1)
				lua_pushnumber(lua, -1);
			else
				lua_pushnumber(lua, 0);

			lua_setfield(lua, -2, "y");

			lua_pushnumber(lua, pos.z);
			lua_setfield(lua, -2, "z");


		}

		return 1;
	}

	int aStarSearch(lua_State * lua)
	{
		if (lua_gettop(lua) >= 3)
		{
			glm::vec3 fromPosition;
			lua_getfield(lua, 1, "x");
			fromPosition.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "y");
			fromPosition.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "z");
			fromPosition.z = lua_tonumber(lua, -1);

			glm::vec3 toPosition;
			lua_getfield(lua, 2, "x");
			toPosition.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			toPosition.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			toPosition.z = lua_tonumber(lua, -1);

			AI->aStarSearch(lua_tointeger(lua, 3), fromPosition, toPosition);

			/*
			glm::vec3 fromPosition;
			lua_getfield(lua, 1, "x");
			fromPosition.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "y");
			fromPosition.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 1, "z");
			fromPosition.z = lua_tonumber(lua, -1);



			glm::vec3 toPosition;
			lua_getfield(lua, 2, "x");
			toPosition.x = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "y");
			toPosition.y = lua_tonumber(lua, -1);

			lua_getfield(lua, 2, "z");
			toPosition.z = lua_tonumber(lua, -1);

			AI->aStarSearch(2,fromPosition,toPosition);
			*/

		}

		return 0;
	}

	int clearAStarSearch(lua_State * lua)
	{
		if (lua_gettop(lua) >= 1)
		{
			AI->clearAStarSearch(lua_tointeger(lua,1));
		}

		return 0;
	}
	int unload(lua_State * lua)
	{
		//delete []heightMaps;

		return 0;
	}
	int draw(lua_State * lua)
	{

			AI->drawDebug(heightMaps);

		return 0;
	}

	int addDebug(Debug * bugger)
	{
		AI->addDebug(bugger);
		return 0;
	}
}