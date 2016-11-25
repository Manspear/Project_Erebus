#include "Controls.h"

Controls::Controls()
{
	keys[0] = GLFW_KEY_W; keys[1] = GLFW_KEY_S; keys[2] = GLFW_KEY_A; keys[3] = GLFW_KEY_D;
	nrOfKeys = 4;
}

Controls::~Controls()
{

}

void Controls::sendControls(Inputs &input)
{
	std::vector<int> pressedKeys;
	for (int i = 0; i < nrOfKeys; i++)
	{
		if (input.keyPressed(keys[i]))
			pressedKeys.push_back(i);
	}	
	for (int i = 0; i < pressedKeys.size(); i++)
	{
		if (pressedKeys.at(i) == 0)
			controlled->move({ 1, 0, 0 }, 0.1);
		else if (pressedKeys.at(i) == 1)
			controlled->move({ -1, 0, 0 }, 0.1);
		else if (pressedKeys.at(i) == 2)
			controlled->move({ 0, 1, 0 }, 0.1);
		else if (pressedKeys.at(i) == 3)
			controlled->move({ 0, -1, 0 }, 0.1);
	}	

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
	std::cout << rotation.y << "\t" << rotation.z << "\n";
}

Transform * Controls::getControl()
{
	return controlled;
}

void Controls::setControl(Transform * trans)
{
	controlled = trans;
}


