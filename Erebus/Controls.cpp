#include "Controls.h"

Controls::Controls()
{
}

Controls::~Controls()
{

}

void Controls::update( Inputs* input )
{
	keys[0] = input->keyPressed( GLFW_KEY_W );
	keys[1] = input->keyPressed( GLFW_KEY_S );
	keys[2] = input->keyPressed( GLFW_KEY_A );
	keys[3] = input->keyPressed( GLFW_KEY_D );
	keys[4] = input->keyPressed( GLFW_KEY_SPACE );
	keys[5] = input->keyPressed( GLFW_KEY_LEFT_SHIFT );
	keys[6] = input->keyPressedThisFrame( GLFW_KEY_TAB );
	keys[7] = input->buttonPressedThisFrame( GLFW_MOUSE_BUTTON_LEFT );
	keys[8] = input->keyPressedThisFrame( GLFW_KEY_1 );
	keys[9] = input->keyPressedThisFrame( GLFW_KEY_2 );
	keys[10] = input->keyPressedThisFrame( GLFW_KEY_3 );
	keys[11] = input->keyPressedThisFrame( GLFW_KEY_4 );

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


