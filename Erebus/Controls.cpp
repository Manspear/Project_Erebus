#include "Controls.h"

Controls::Controls()
{
	/*keys[0] = GLFW_KEY_W; keys[1] = GLFW_KEY_S; keys[2] = GLFW_KEY_A; keys[3] = GLFW_KEY_D; keys[4] = GLFW_KEY_SPACE; 
	keys[5] = GLFW_KEY_LEFT_SHIFT;	keys[6] = GLFW_KEY_TAB;
	keys[7] = GLFW_MOUSE_BUTTON_LEFT;
	nrOfKeys = 7;*/

}

Controls::~Controls()
{

}

void Controls::sendControls(Inputs &input, lua_State* L)
{
	/*std::vector<int> pressedKeys;
	for (int i = 0; i < nrOfKeys - 1; i++)
	{
		if (input.keyPressed(keys[i]))
			pressedKeys.push_back(i);
	}	

	if (input.keyPressedThisFrame(keys[6]))
		pressedKeys.push_back(6);

	if (input.buttonPressedThisFrame(keys[7]))
		pressedKeys.push_back(7);

	if (pressedKeys.size() > 0)
	{
		lua_getglobal(L, "Controls");
		lua_getglobal(L, "buttons");
		for (int i = 0; i < pressedKeys.size(); i++)
		{
			lua_pushinteger(L, i + 1);
			lua_pushinteger(L, pressedKeys.at(i));
			lua_settable(L, -3);
		}
		lua_pcall(L, 1, 0, 0);
		lua_pop(L, lua_gettop(L));
	}

	lua_getglobal(L, "doDaHustle");
	if(lua_pcall(L, 0, 0, 0))
		std::cout << lua_tostring(L, -1);*/

	/*lua_getglobal( L, "Controls" );
	lua_getglobal( L, "buttons" );
	for( int i=0; i<CONTROLS_MAX_KEYS; i++ )
	{
		lua_pushboolean( L, keys[i] );
		lua_rawseti( L, -2, i+1 );
	}
	lua_pcall( L, 1, 0, 0 );
	lua_pop( L, lua_gettop(L) );*/

	MousePos dPos = input.getDeltaPos();
	glm::vec3 rotation = controlled->getRotation();
	rotation.y += (float)dPos.x / 100.f;
	rotation.z += (float)dPos.y / 100.f;
	if (rotation.y > 2 * 3.14f) 
	{
		rotation.y -= 2 * 3.14f;
	}
	if (rotation.z > 3.14f / 2) 
	{
		rotation.z = 3.14f / 2;
	}
	if (rotation.z < -3.14f / 2) 
	{
		rotation.z = -3.14f / 2;
	}
	controlled->setRotation(rotation);
	controlled->setLookAt(glm::normalize(glm::vec3(
		cos(rotation.z) * sin(rotation.y),
		sin(rotation.z),
		cos(rotation.z)*cos(rotation.y)
		)));
}

void Controls::update( Inputs* input )
{
	keys[0] = input->keyPressed( GLFW_KEY_W );
	keys[1] = input->keyPressed( GLFW_KEY_S );
	keys[2] = input->keyPressed( GLFW_KEY_A );
	keys[3] = input->keyPressed( GLFW_KEY_D );
	keys[4] = input->keyPressed( GLFW_KEY_SPACE );
	keys[5] = input->keyPressed( GLFW_KEY_LEFT_SHIFT );
	keys[6] = input->keyPressed( GLFW_KEY_TAB );
	keys[7] = input->buttonPressedThisFrame( GLFW_MOUSE_BUTTON_LEFT );

	MousePos dPos = input->getDeltaPos();
	glm::vec3 rotation = controlled->getRotation();
	rotation.y += (float)dPos.x / 100.f;
	rotation.z += (float)dPos.y / 100.f;
	if (rotation.y > 2 * 3.14f) 
	{
		rotation.y -= 2 * 3.14f;
	}
	if (rotation.z > 3.14f / 2) 
	{
		rotation.z = 3.14f / 2;
	}
	if (rotation.z < -3.14f / 2) 
	{
		rotation.z = -3.14f / 2;
	}
	controlled->setRotation(rotation);
	controlled->setLookAt(glm::normalize(glm::vec3(
		cos(rotation.z) * sin(rotation.y),
		sin(rotation.z),
		cos(rotation.z)*cos(rotation.y)
	)));
}

bool* Controls::getKeys()
{
	return keys;
}

Transform * Controls::getControl()
{
	return controlled;
}

void Controls::setControl(Transform * trans)
{
	controlled = trans;
}


