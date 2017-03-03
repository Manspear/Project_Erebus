#include "LuaTransform.h"
#include "glm\gtx\vector_angle.hpp"

#define GLM_FORCE_RADIANS

namespace LuaTransform
{
	// NOTE: Put global in Lua instead?
	// Putting static in front means we can only reach the
	// variable from this compilation unit.
	static TransformHandler* g_transformHandler = nullptr;

	void registerFunctions( lua_State* lua, TransformHandler* transformHandler )
	{
		g_transformHandler = transformHandler;

		luaL_newmetatable( lua, "transformMeta" );
		luaL_Reg regs[] =
		{
			//{ "Bind",				bind },
			//{ "Destroy",			destroy },
			{ "Move",				move },
			{ "Switch",				switchTransform },
			{ "Follow",				follow },
			{ "Fly",				fly },
			{ "Shoot",				shoot },
			{ "ActiveControl",		activeControl},

			{ "SetPosition",		setPosition },
			{ "SetRotation",		setRotation },
			{ "SetLookAt",			setLookAt },
			{ "SetFacing",			setFacing },
			{ "SetScale",			setScale },
			{ "SetScaleNonUniform", setScaleNonUniform },
			{ "SetPosFromTransformID", setPosFromTransID },
			{ "SetLookAtFromTransformID", setLookAtFromTransID },
			{ "SetRotationFromTransformID", setRotationFromTransID },

			{ "GetPosition",		getPosition },
			{ "GetRotation",		getRotation },
			{ "GetLookAt",			getLookAt },
			{ "GetScale",			getScale },
			{ "GetScaleNonUniform", getScaleNonUniform },
			{ "GetMovementDirection", getMoveDirection },
			
			{ "UpdateRotationFromLookVector", updateRotationFromLookVector},
			{ "RotateToVector",		rotateToVector},

			{ "GetDistanceBetweenTrans", getDistance }, 
			{"GetDistanceBetweenTransAndPos", getDistanceTransPos},

			{ "ResetTransforms", reset },
			{ "CopyTransform", copyTransform },

			{ NULL, NULL }
		};

		luaL_setfuncs( lua, regs, 0 );
		lua_pushvalue( lua, -1 );
		lua_setfield( lua, -2, "__index" );

		lua_setglobal( lua, "Transform" );
	}

	/*int bind( lua_State* lua )
	{
		int n = lua_gettop( lua );
		for( int i=1; i<=n; i++ )
			std::cout << lua_tonumber( lua, 1 ) << std::endl;
		lua_pushinteger( lua, *g_boundTransforms );
		*g_boundTransforms += 1;

		return 1;
	}*/

	// NOTE: Copied from the old LuaBinds.h
	// What is this function supposed to do?
	//Det var på tiden vi skapade new Transform() fårn lua istället för att ge ett index
	/*int destroy( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );
		
		Transform* transform = (Transform*)lua_touserdata( lua, 1 );
		delete transform;

		return 0;
	}*/

	int move( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 5 );

		int index = (int)lua_tointeger( lua, 1 );
		glm::vec3 direction( lua_tonumber( lua, 2 ), lua_tonumber( lua, 3 ), lua_tonumber( lua, 4 ) );
		float dt = (float)lua_tonumber( lua, 5 );

		//g_transforms[index].move( direction, dt );

		TransformStruct* t = g_transformHandler->getTransform(index);
		glm::vec3 tempForward = glm::normalize( glm::vec3(t->lookAt.x, 0, t->lookAt.z) );
		t->pos += tempForward * direction.x * dt;
		t->pos.y += direction.y * dt;
		t->pos += glm::cross( {0,1,0}, tempForward) * direction.z * dt;

		return 0;
	}

	int switchTransform( lua_State* lua )
	{
		return 0;
	}

	int follow( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 4 );

		int followIndex = (int)lua_tointeger( lua, 1 );
		int myIndex = (int)lua_tointeger( lua, 2 );
		float speed = (float)lua_tonumber( lua, 3 );
		float dt = (float)lua_tonumber( lua, 4 );

		//g_transforms[myIndex].follow( g_transforms[followIndex].getPos(), speed, dt );
		TransformStruct* followTrans = g_transformHandler->getTransform(followIndex);
		TransformStruct* myTrans = g_transformHandler->getTransform(myIndex);

		glm::vec3 followPos = followTrans->pos;
		glm::vec3 myPos = myTrans->pos;

		if( glm::length( followPos - myPos ) > 0.01f )
			myTrans->lookAt = glm::normalize( followPos - myPos );
		myTrans->pos += myTrans->lookAt * speed * dt;

		return 0;
	}

	int fly( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 3 );

		int index = (int)lua_tointeger( lua, 1 );
		int speed = (int)lua_tointeger( lua, 2 );
		float dt = (float)lua_tonumber( lua, 3 );

		//g_transforms[index].move( glm::vec3( speed, g_transforms[index].getLookAt().y*(float)speed, 0 ), dt );

		TransformStruct* t = g_transformHandler->getTransform(index);
		glm::vec3 dir( speed, t->lookAt.y*(float)speed, 0 );

		glm::vec3 tempForward = glm::normalize( glm::vec3( t->lookAt.x, 0, t->lookAt.z ) );
		t->pos += tempForward * dir.x * dt;
		t->pos.y += dir.y * dt;
		t->pos += glm::cross( {0,1,0}, tempForward) * dir.z * dt;

		return 0;
	}

	int shoot( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int a = (int)lua_tointeger( lua, 1 );
		int b = (int)lua_tointeger( lua, 2 );

		//g_transforms[a].setLookDir( g_transforms[b].getLookAt() );
		//g_transforms[a].setPos(g_transforms[b].getPos());

		TransformStruct* atrans = g_transformHandler->getTransform(a);
		TransformStruct* btrans = g_transformHandler->getTransform(b);

		atrans->lookAt = btrans->lookAt;
		atrans->pos = btrans->pos;

		return 0;
	}

	int activeControl(lua_State* lua)
	{
		/*assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger(lua, 1);
		bool active = lua_toboolean(lua, 2) != 0;

		g_transforms[index].setActive( active);
		if (!active)
			g_transforms[index].setPos({ 0, 0, 0 });

		return 0;*/

		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );
		bool active = (bool)lua_toboolean( lua, 2 );

		if( active )
		{
			g_transformHandler->activateTransform( index );
		}
		else
		{
			g_transformHandler->deactivateTransform( index );
		}

		return 0;
	}

	int setPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 position;
		lua_getfield( lua, 2, "x" );
		position.x = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "y" );
		position.y = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "z" );
		position.z = (float)lua_tonumber( lua, -1 );

		//g_transforms[index].setPos( position );
		g_transformHandler->getTransform( index )->pos = position;

		return 0;
	}

	int setRotation( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 rotation;
		lua_getfield( lua, 2, "x" );
		rotation.x = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "y" );
		rotation.y = (float)lua_tonumber( lua, -1 );

		lua_getfield( lua, 2, "z" );
		rotation.z = (float)lua_tonumber( lua, -1 );

		//g_transforms[index].setRotation( position );
		g_transformHandler->getTransform( index )->rot = rotation;

		return 0;
	}

	int setLookAt( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );
		glm::vec3 lookAt;
		lua_getfield( lua, 2, "x" );	lookAt.x = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 2, "y" );	lookAt.y = (float)lua_tonumber( lua, -1 );
		lua_getfield( lua, 2, "z" );	lookAt.z = (float)lua_tonumber( lua, -1 );

		//g_transforms[index].setLookAt( lookAt );
		//g_transformHandler->getTransform( index )->lookAt = lookAt;
		TransformStruct* t = g_transformHandler->getTransform( index );
		t->lookAt = lookAt;

		return 0;
	}

	int setFacing( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int from = lua_tointeger( lua, 1 );
		int to = lua_tointeger( lua, 2 );

		glm::vec3 fromPos = g_transformHandler->getTransform(from)->pos;
		glm::vec3 toPos = g_transformHandler->getTransform(to)->pos;

		toPos.y = 0;
		fromPos.y = 0;
		glm::vec3 dir = glm::normalize(toPos - fromPos);

		float yrot = acosf( dir.z );
		if( dir.x < 0.0f )
			yrot *= -1.0f;

		g_transformHandler->getTransform(from)->rot.y = yrot;

		return 0;
	}

	int setScale( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 2 );

		int index = (int)lua_tointeger( lua, 1 );
		float scale = (float)lua_tonumber( lua, 2 );

		//g_transforms[index].setScale( scale );
		g_transformHandler->getTransform( index )->scale = glm::vec3( scale );

		return 0;
	}

	int setScaleNonUniform(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 4 );

		glm::vec3 scale;
		int index = (int)lua_tointeger(lua, 1);
		scale.x = (float)lua_tonumber(lua, 2);
		scale.y = (float)lua_tonumber(lua, 3);
		scale.z = (float)lua_tonumber(lua, 4);

		//g_transforms[index].setScale(scale);
		g_transformHandler->getTransform( index )->scale = scale;

		return 0;
	}

	int setPosFromTransID(lua_State* lua) 
	{
		assert( lua_gettop( lua ) == 2 );

		int indexFrom = (int)lua_tointeger(lua, 2);
		int indexTo = (int)lua_tointeger(lua, 1);

		//g_transforms[indexTo].setPos(g_transforms[indexFrom].getPos());
		g_transformHandler->getTransform( indexTo )->pos = g_transformHandler->getTransform( indexFrom )->pos;

		return 0;
	}

	int setLookAtFromTransID(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		int indexFrom = (int)lua_tointeger(lua, 2);
		int indexTo = (int)lua_tointeger(lua, 1);

		//g_transforms[indexTo].setLookAt(g_transforms[indexFrom].getLookAt());
		g_transformHandler->getTransform(indexTo)->lookAt = g_transformHandler->getTransform(indexFrom)->lookAt;

		return 0;
	}

	int setRotationFromTransID(lua_State * lua)
	{
		assert(lua_gettop(lua) == 2);

		int indexFrom = (int)lua_tointeger(lua, 2);
		int indexTo = (int)lua_tointeger(lua, 1);

		g_transformHandler->getTransform(indexTo)->rot = g_transformHandler->getTransform(indexFrom)->rot;

		return 0;
	}

	int getPosition( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		//glm::vec3 position = g_transforms[index].getPos();
		glm::vec3 position = g_transformHandler->getTransform(index)->pos;

		lua_newtable( lua );
		lua_pushnumber( lua, position.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, position.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, position.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getMoveDirection(lua_State* lua)//index, forward, left
	{
		assert( lua_gettop( lua ) == 3 );

		int index = (int)lua_tointeger(lua, 1);
		float forward = (float)lua_tonumber(lua, 2);
		float left = (float)lua_tonumber(lua, 3);

		//glm::vec3 fwd = g_transforms[index].getLookAt();
		glm::vec3 fwd = g_transformHandler->getTransform(index)->lookAt;
		glm::vec3 lfd = glm::cross(glm::normalize(glm::vec3(fwd.x, 0, fwd.z)), {0,1,0});
		lfd *= left;
		fwd = fwd*forward + lfd;


		lua_newtable(lua);
		lua_pushnumber(lua, fwd.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, fwd.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, fwd.z);
		lua_setfield(lua, -2, "z");

		return 1;
	}

	int getRotation( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		glm::vec3 rotation = g_transformHandler->getTransform(index)->rot;

		lua_newtable( lua );
		lua_pushnumber( lua, rotation.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, rotation.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, rotation.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getLookAt( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );

		//glm::vec3 lookAt = g_transforms[index].getLookAt();
		glm::vec3 lookAt = g_transformHandler->getTransform(index)->lookAt;

		lua_newtable( lua );
		lua_pushnumber( lua, lookAt.x );
		lua_setfield( lua, -2, "x" );

		lua_pushnumber( lua, lookAt.y );
		lua_setfield( lua, -2, "y" );

		lua_pushnumber( lua, lookAt.z );
		lua_setfield( lua, -2, "z" );

		return 1;
	}

	int getScale( lua_State* lua )
	{
		assert( lua_gettop( lua ) == 1 );

		int index = (int)lua_tointeger( lua, 1 );
		//lua_pushnumber( lua, g_transforms[index].getScale().x );
		lua_pushnumber( lua, g_transformHandler->getTransform(index)->scale.x );

		return 1;
	}

	int LuaTransform::getScaleNonUniform(lua_State * lua)
	{
		assert(lua_gettop(lua) == 1);
		int index = (int)lua_tointeger(lua, 1);
		lua_newtable(lua);
		lua_pushnumber(lua, g_transformHandler->getTransform(index)->scale.x);
		lua_setfield(lua, -2, "x");

		lua_pushnumber(lua, g_transformHandler->getTransform(index)->scale.y);
		lua_setfield(lua, -2, "y");

		lua_pushnumber(lua, g_transformHandler->getTransform(index)->scale.z);
		lua_setfield(lua, -2, "z");

		return 1;
	}

	int rotateToVector(lua_State* lua) {
		assert(lua_gettop(lua) == 2);
		int transID = (int)lua_tointeger(lua, 1);

		glm::vec3 vector;
		lua_getfield(lua, 2, "x");		vector.x = (float)lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "y");		vector.y = (float)lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "z");		vector.z = (float)lua_tonumber(lua, -1);

		vector = glm::normalize(vector);
		g_transformHandler->getTransform(transID)->lookAt = vector;
		//g_transforms[transID].setLookAt(vector);

		glm::vec3 rotationxz = glm::normalize(glm::vec3(vector.x,0,vector.z));
		float pitch = acosf(rotationxz.z);
		float yaw = asinf(vector.y);

		if (vector.x < 0)
			pitch *= -1;
		g_transformHandler->getTransform(transID)->rot = {0,pitch, yaw};
		//g_transforms[transID].setRotation({0, pitch,yaw});
		return 0;
	}
	int updateRotationFromLookVector(lua_State * lua)
	{
		assert( lua_gettop( lua ) == 1 );

		int transID = (int)lua_tointeger(lua, 1);
		//glm::vec3 tempLookdir = g_transforms[transID].getLookAt();
		glm::vec3 tempLookdir = g_transformHandler->getTransform(transID)->lookAt;
		tempLookdir.y = 0;
		tempLookdir = glm::normalize(tempLookdir);
		float rotY = ((tempLookdir.x > 0) * 2 - 1) * acos(glm::dot(tempLookdir, {0,0,1}));
		g_transformHandler->getTransform(transID)->rot = {0, rotY, 0};
		//g_transforms[transID].setRotation({ 0, rotY, 0 });

		return 0;
	}


	int getDistance(lua_State* lua) {
		assert(lua_gettop(lua) == 2);
		int id1 = lua_tointeger(lua, 1);
		int id2 = lua_tointeger(lua, 2);
		lua_pushnumber(lua, glm::length(g_transformHandler->getTransform(id1)->pos - g_transformHandler->getTransform(id2)->pos));
		return 1;
	}
	int getDistanceTransPos(lua_State* lua) {
		assert(lua_gettop(lua) == 2);
		int id1 = lua_tointeger(lua, 1);
		glm::vec3 pos;
		lua_getfield(lua, 2, "x");		pos.x = (float)lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "y");		pos.y = (float)lua_tonumber(lua, -1);
		lua_getfield(lua, 2, "z");		pos.z = (float)lua_tonumber(lua, -1);
		lua_pushnumber(lua, glm::length(g_transformHandler->getTransform(id1)->pos - pos));
		return 1;
	}

	int reset( lua_State* lua )
	{
		g_transformHandler->reset();
		return 0;
	}

	int copyTransform(lua_State* lua) {
		assert(lua_gettop(lua) == 2);
		int id1 = lua_tointeger(lua, 1);
		int id2 = lua_tointeger(lua, 2);
		TransformStruct* trans1 = g_transformHandler->getTransform(id1);
		TransformStruct* trans2 = g_transformHandler->getTransform(id2);
		trans2->lookAt = trans1->lookAt;
		trans2->pos = trans1->pos;
		trans2->rot = trans1->rot;
		trans2->scale = trans1->rot;
		return 0;
	}
}