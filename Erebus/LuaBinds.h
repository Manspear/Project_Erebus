#pragma once
#include <lua\lua.hpp>
#include "BaseIncludes.h"
#include "Controls.h"

#include "LuaErebus.h"
#include "LuaAssets.h"
#include "LuaCollision.h"
#include "LuaControls.h"
#include "LuaGear.h"
#include "LuaParticles.h"
#include "LuaTransform.h"
#include "LuaCamera.h"

class LuaBinds
{
public:
	LuaBinds();
	~LuaBinds();

	void load( Gear::GearEngine* gearEngine,
				Importer::Assets* assets,
				CollisionHandler* collisionHandler,
				Controls* controls,
				Transform* transforms,
				int* boundTransforms,
				std::vector<ModelInstance>* models,
				Camera* camera);
	void unload();
	void update( Controls* controls, float deltaTime );

	lua_State* lua;

private:
	bool validState;
	int updateReference;
};