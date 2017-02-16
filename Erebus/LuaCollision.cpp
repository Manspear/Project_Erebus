#include "LuaCollision.h"

namespace LuaCollision
{
	static CollisionHandler* g_collisionHandler = nullptr;
	static Transform* g_transforms = nullptr;
	static CollisionsDraw* g_collisionsDraw = nullptr;

	void registerFunctions( lua_State* lua, CollisionHandler* handler, Transform* transforms, CollisionsDraw* collisionsDraw)
	{
		g_collisionHandler = handler;
		g_transforms = transforms;
		g_collisionsDraw = collisionsDraw;

		//CollisionHandler
		luaL_newmetatable( lua, "collisionHandlerMeta" );
		luaL_Reg handlerRegs[] =
		{
			{ "AddSphere",			addSphere },
			{ "AddAABB",			addAABB },
			{ "AddRay",				addRay},
			{ "AddOBB",				addOBB },
			{ "AddHitbox",			addHitbox},
			{ "SetLayerCollision",	setLayerCollision },
			{ "PrintCollisions",	printCollisions },
			{ "DrawHitboxes",		drawHitboxes },
			{ "DeactivateAllHitboxes", deactivateAllHitboxes},
			{ "ActivateAllHitboxes", activateAllHitboxes},
			{"Enable", enableCollisionHandler},
			{"Disable", disableCollisionHandler},
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, handlerRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );

		lua_newtable( lua );
		lua_pushlightuserdata( lua, handler );
		lua_setfield( lua, -2, "__self" );
		luaL_setmetatable( lua, "collisionHandlerMeta" );
		lua_setglobal( lua, "CollisionHandler" );

		//Sphere
		luaL_newmetatable( lua, "sphereColliderMeta" );
		luaL_Reg sphereRegs[] =
		{
			{ "Create",				createSphere },
			{ "GetCollisionIDs",	getCollisionIDs },
			{ "CheckCollision",		checkCollision },
			{ "SetRadius",			setRadius },
			{ "GetID",				getID },
			{ "SetActive",			setActive },
			{ "AddChild",			addChild },
			{ "SetOffset",			setOffset},
			{ "SetPos",				setPos },
			{ "__gc",				destroy },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, sphereRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "SphereCollider" );

		// AABB
		luaL_newmetatable( lua, "aabbColliderMeta" );
		luaL_Reg aabbRegs[] =
		{
			{ "Create",				createAABB },
			{ "GetCollisionIDs",	getCollisionIDs },
			{ "CheckCollision",		checkCollision },
			{ "SetActive",			setActive },
			{ "AddChild",			addChild },
			{ "SetOffset",			setOffset },
			{ "SetMinPos",			setAABBMinPos },
			{ "SetMaxPos",			setAABBMaxPos },
			{ "SetPos",				setPos },
			{ "__gc",				destroy },
			{ NULL, NULL }
		};

		luaL_setfuncs( lua, aabbRegs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );
		lua_setglobal( lua, "AABBCollider" );

		//Ray
		luaL_newmetatable(lua, "rayColliderMeta");
		luaL_Reg rayRegs[] =
		{
			{ "Create",				createRay },
			{ "GetCollisionIDs",	getRayCollisionIDs },
			{ "CheckCollision",		checkRayCollision },
			{ "SetRayDirection",	setRayDirection },
			{ "GetID",				getRayID },
			{ "SetActive",          setActive },
			{ "SetPos",				setPos },
			{ "__gc",				destroyRay },
			{ NULL, NULL }
		};

		luaL_setfuncs(lua, rayRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "RayCollider");

		//OBB
		luaL_newmetatable(lua, "obbColliderMeta");
		luaL_Reg obbRegs[] =
		{
			{ "Create",				createOBB },
			{ "GetCollisionIDs",	getCollisionIDs },
			{ "CheckCollision",		checkCollision },
			{ "SetSize",			setOBBSize },
			{ "RotateAroundX",			rotateOBBAroundX },
			{ "RotateAroundY",			rotateOBBAroundY },
			{ "RotateAroundZ",			rotateOBBAroundZ },
			{ "SetXAxis",			setOBBXAxis },
			{ "SetYAxis",			setOBBYAxis },
			{ "SetZAxis",			setOBBZAxis },
			{ "GetID",				getID },
			{ "SetActive",			setActive },
			{ "AddChild",			addChild },
			{ "SetOffset",			setOffset },
			{ "SetHalfLengths",			setOBBHalfLengths },
			{ "SetPos",				setPos },
			{ "__gc",				destroy },
			{ NULL, NULL }
		};
		luaL_setfuncs(lua, obbRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "OBBCollider");

		//MovementController
		luaL_newmetatable(lua, "movementControllerMeta");
		luaL_Reg movementControllerRegs[] =
		{
			{ "Create",				createMovementController },
			{ "SetHitbox",			setMovementControllerHitbox },
			{ "SetTransform",		setMovementControllerTransform },
			{ "SetHeightmap",		setMovementControllerHeightmap },
			{ "Update",				movementControllerUpdate },
			{ "SetCollisionLayer",	setMovementControllerCollisionLayer },
			{ "Move",				movementControllerMove },
			{ "__gc",				destroyMovementController },
			{ NULL, NULL }
		};
		luaL_setfuncs(lua, movementControllerRegs, 0);
		lua_pushvalue(lua, -1);
		lua_setfield(lua, -2, "__index");
		lua_setglobal(lua, "MovementController");

		lua_pop(lua, 1);
	}

	int addSphere( lua_State* lua )
	{
		int nargs = lua_gettop( lua );
		assert( nargs == 1 || nargs == 2 );

		SphereCollider* collider = getSphereCollider( lua, 1 );
		int layer = 0;
		if( nargs == 2 )
			layer = (int)lua_tointeger( lua, 2 );
		g_collisionHandler->addHitbox( collider, layer );

		return 0;
	}

	int addAABB( lua_State* lua )
	{
		int nargs = lua_gettop( lua );
		assert( nargs == 1 || nargs == 2 );

		AABBCollider* collider = getAABBCollider( lua, 1 );
		int layer = 0;
		if( nargs == 2 )
			layer = (int)lua_tointeger( lua, 2 );
		g_collisionHandler->addHitbox( collider,layer);

		return 0;
	}

	int addRay(lua_State * lua)
	{
		int nargs = lua_gettop(lua);
		assert( nargs == 1 || nargs == 2 );

		RayCollider* collider = getRayCollider(lua, 1);
		int layer = 0;
		if (nargs == 2)
			layer = (int)lua_tointeger(lua, 2);
		g_collisionHandler->addRay(collider,layer);

		return 0;
	}

	int addOBB(lua_State * lua)
	{
		int nargs = lua_gettop(lua);
		assert( nargs == 1 || nargs == 2 );

		OBBCollider* collider = getOBBCollider(lua, 1);
		int layer = 0;
		if (nargs == 2)
			layer = (int)lua_tointeger(lua, 2);
		g_collisionHandler->addHitbox(collider,layer);

		return 0;
	}

	int addHitbox(lua_State * lua)
	{
		int nargs = lua_gettop(lua);
		assert(nargs == 1 || nargs == 2);

		HitBox* collider = getHitBox(lua, 1);
		int layer = 0;
		if (nargs == 2)
			layer = (int)lua_tointeger(lua, 2);
		g_collisionHandler->addHitbox(collider, layer);

		return 0;
	}

	int createSphere( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int transformID = (int)lua_tointeger( lua, 1 );

		SphereCollider* collider = new SphereCollider( transformID );
		lua_newtable( lua );
		luaL_setmetatable( lua, "sphereColliderMeta" );
		lua_pushlightuserdata( lua, collider );
		lua_setfield( lua, -2, "__self" );

		return 1;
	}

	int createAABB( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int transformID = (int)lua_tointeger( lua, 1 );

		AABBCollider* collider = new AABBCollider( transformID );
		lua_newtable( lua );
		luaL_setmetatable( lua, "aabbColliderMeta" );
		lua_pushlightuserdata( lua, collider );
		lua_setfield( lua, -2, "__self" );

		return 1;
	}

	int createRay(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int transformID = (int)lua_tointeger(lua, 1);

		RayCollider* ray = new RayCollider(transformID,glm::vec3(0,1,0));

		lua_newtable(lua);
		luaL_setmetatable(lua, "rayColliderMeta");
		lua_pushlightuserdata(lua, ray);
		lua_setfield(lua, -2, "__self");

		return 1;
	}

	int createOBB(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int transformID = (int)lua_tointeger(lua, 1);

		OBBCollider* collider = new OBBCollider(transformID);
		lua_newtable(lua);
		luaL_setmetatable(lua, "obbColliderMeta");
		lua_pushlightuserdata(lua, collider);
		lua_setfield(lua, -2, "__self");

		return 1;
	}

	int destroy( lua_State* lua )
	{
		HitBox* hitbox = getHitBox( lua, 1 );
		if(hitbox->parent == nullptr)
			delete hitbox;

		return 0;
	}

	int destroyRay(lua_State * lua)
	{
		RayCollider* ray = getRayCollider(lua, 1);
		delete ray;

		return 0;
	}

	int destroyMovementController(lua_State * lua)
	{
		MovementController* controller = getMovementController(lua, 1);
		delete controller;

		return 0;
	}

	int getCollisionIDs( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HitBox* hitbox = getHitBox( lua, 1 );

		std::vector<int>* ids = hitbox->getIDCollisionsRef();
		lua_newtable( lua );
		for( int i=0; i<ids->size(); i++ )
		{
			lua_pushnumber( lua, ids->at(i) );
			lua_rawseti( lua, -2, i+1 );
		}

		return 1;
	}

	int getRayCollisionIDs(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		RayCollider* ray = getRayCollider(lua, 1);

		std::vector<int>* ids = ray->getIDCollisionsRef();
		lua_newtable(lua);
		for (int i = 0; i<ids->size(); i++)
		{
			lua_pushnumber(lua, ids->at(i));
			lua_rawseti(lua, -2, i + 1);
		}

		return 1;
	}

	int checkCollision( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HitBox* hitbox = getHitBox( lua, 1 );

		lua_pushboolean( lua, hitbox->checkCollision() );

		return 1;
	}

	int checkRayCollision(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		RayCollider* ray = getRayCollider(lua, 1);
		lua_pushboolean(lua, ray->checkCollision());

		return 1;
	}

	int setPos(lua_State * lua)
	{
		assert(lua_gettop(lua) == 4);

		HitBox* hitbox = (HitBox*)getHitBox(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		hitbox->setPos(glm::vec3(x,y,z));

		return 0;
	}

	int setRadius( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		SphereCollider* collider = (SphereCollider*)getHitBox( lua, 1 );
		float radius = (float)lua_tonumber( lua, 2 );

		collider->setRadius( radius );

		return 0;
	}

	int setActive(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		HitBox* hitbox = getHitBox(lua, 1);
		bool active = lua_toboolean(lua, 2) != 0;

		hitbox->setActive(active);

		return 0;
	}

	int setRayActive(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		RayCollider* ray = getRayCollider(lua, 1);
		bool active = lua_toboolean(lua, 2) !=0;

		ray->setActive(active);

		return 0;
	}

	int setRayDirection(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		RayCollider* ray = (RayCollider*)getRayCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		ray->setDirection(glm::vec3(x,y,z));

		return 0;
	}

	int setOBBSize(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float xHalftLength = (float)lua_tonumber(lua, 2);
		float yHalftLength = (float)lua_tonumber(lua, 3);
		float zHalftLength = (float)lua_tonumber(lua, 4);

		obb->setSize(glm::vec3(xHalftLength, yHalftLength, zHalftLength));

		return 0;
	}

	int setOffset(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		HitBox* hitbox = getHitBox(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		hitbox->setLocalPos(glm::vec3(x,y,z));

		return 0;
	}

	int rotateOBBAroundX(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float angle = (float)lua_tonumber(lua, 2);

		obb->rotateAroundX(angle);

		return 0;
	}

	int rotateOBBAroundY(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float angle = (float)lua_tonumber(lua, 2);

		obb->rotateAroundY(angle);

		return 0;
	}

	int rotateOBBAroundZ(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float angle = (float)lua_tonumber(lua, 2);

		obb->rotateAroundZ(angle);

		return 0;
	}

	int setOBBXAxis(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		obb->setXAxis(glm::vec3(x,y,z));

		return 0;
	}

	int setOBBYAxis(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		obb->setYAxis(glm::vec3(x, y, z));

		return 0;
	}

	int setOBBZAxis(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		obb->setZAxis(glm::vec3(x, y, z));

		return 0;
	}

	int setOBBHalfLengths(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		OBBCollider* obb = (OBBCollider*)getOBBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		obb->setXHalfLength(x);
		obb->setYHalfLength(y);
		obb->setZHalfLength(z);

		return 0;
	}

	int setAABBMinPos(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		AABBCollider* aabb = (AABBCollider*)getAABBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		aabb->setMinPos(glm::vec3(x,y,z));

		return 0;
	}

	int setAABBMaxPos(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		AABBCollider* aabb = (AABBCollider*)getAABBCollider(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		aabb->setMaxPos(glm::vec3(x, y, z));

		return 0;
	}

	int addChild(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		HitBox* hitbox = getHitBox(lua, 1);
		HitBox* child = getHitBox(lua, 2);

		hitbox->addChild(child);

		return 0;
	}

	int createMovementController(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 0 );

		MovementController* movementController = new MovementController();
		lua_newtable(lua);
		luaL_setmetatable(lua, "movementControllerMeta");
		lua_pushlightuserdata(lua, movementController);
		lua_setfield(lua, -2, "__self");

		return 1;
	}

	int setMovementControllerHitbox(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		MovementController* movementController = getMovementController(lua, 1);
		HitBox* hitbox = getHitBox(lua, 2);

		movementController->setHitbox(hitbox);

		return 0;
	}

	int setMovementControllerTransform(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		MovementController* movementController = getMovementController(lua, 1);
		int transformIndex = (int)lua_tointeger(lua, 2);

		movementController->setTransform(&g_transforms[transformIndex]);

		return 0;
	}

	int setMovementControllerHeightmap(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		MovementController* movementController = getMovementController(lua, 1);
		HeightMap* heightmap = getHeightmap(lua, 2);

		movementController->setHeightmap(heightmap);

		return 0;
	}

	int setMovementControllerCollisionLayer(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 2 );

		MovementController* movementController = getMovementController(lua, 1);
		int layer = (int)lua_tointeger(lua, 2);

		movementController->setCollisionLayer(g_collisionHandler->getCollisionLayers(),layer);

		return 0;
	}

	int movementControllerUpdate(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		MovementController* movementController = getMovementController(lua, 1);
		movementController->update();

		return 0;
	}

	int movementControllerMove(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		MovementController* controller = getMovementController(lua, 1);
		float x = (float)lua_tonumber(lua, 2);
		float y = (float)lua_tonumber(lua, 3);
		float z = (float)lua_tonumber(lua, 4);

		controller->move(glm::vec3(x,y,z));

		return 0;
	}

	int setLayerCollision( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 3 );
		int layer1 = (int)lua_tointeger( lua, 1 );
		int layer2 = (int)lua_tointeger( lua, 2 );
		bool canCollide = lua_toboolean( lua, 3 ) != 0;

		g_collisionHandler->setLayerCollisionMatrix( layer1, layer2, canCollide );

		return 0;
	}

	int printCollisions( lua_State* lua )
	{
		g_collisionHandler->printCollisions();
		return 0;
	}

	int drawHitboxes( lua_State* lua )
	{
		g_collisionsDraw->drawThisFrame();
		return 0;
	}

	int deactivateAllHitboxes(lua_State * lua)
	{
		g_collisionHandler->deactiveteAllHitboxes();
		return 0;
	}

	int activateAllHitboxes(lua_State * lua)
	{
		g_collisionHandler->activeteAllHitboxes();
		return 0;
	}

	int enableCollisionHandler(lua_State * lua)
	{
		g_collisionHandler->setEnabled(true);
		return 0;
	}

	int disableCollisionHandler(lua_State * lua)
	{
		g_collisionHandler->setEnabled(false);
		return 0;
	}

	int getID( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		HitBox* hitbox = getHitBox( lua, 1 );
		lua_pushnumber( lua, hitbox->getID() );

		return 1;
	}

	int getRayID(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		RayCollider* ray = getRayCollider(lua, 1);
		lua_pushnumber(lua, ray->getID());

		return 1;
	}

	HitBox* getHitBox( lua_State* lua, int index )
	{
		lua_getfield( lua, index, "__self" );
		return (HitBox*)lua_touserdata( lua, -1 );
	}

	SphereCollider* getSphereCollider( lua_State* lua, int index )
	{
		lua_getfield( lua, index, "__self" );
		return (SphereCollider*)lua_touserdata( lua, -1 );
	}

	AABBCollider* getAABBCollider( lua_State* lua, int index )
	{
		lua_getfield( lua, index, "__self" );
		return (AABBCollider*)lua_touserdata( lua, -1 );
	}
	RayCollider * getRayCollider(lua_State * lua, int index)
	{
		lua_getfield(lua, index, "__self");
		return (RayCollider*)lua_touserdata(lua, -1);
	}
	OBBCollider * getOBBCollider(lua_State * lua, int index)
	{
		lua_getfield(lua, index, "__self");
		return (OBBCollider*)lua_touserdata(lua, -1);
	}
	MovementController * getMovementController(lua_State * lua, int index)
	{
		lua_getfield(lua, index, "__self");
		return (MovementController*)lua_touserdata(lua, -1);
	}
	HeightMap * getHeightmap(lua_State * lua, int index)
	{
		lua_getfield(lua, index, "__self");
		return (HeightMap*)lua_touserdata(lua, -1);
	}
}