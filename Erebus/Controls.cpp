#include "Controls.h"

Controls::Controls(): sensitivity(300)
{
	xrot = 0;
}

Controls::~Controls()
{

}

void Controls::update( Inputs* input )
{
	//update inputs that are pressed this frame
	for (int i = 0; i < CONTROLS_MAX_KEYS - nrOfButtons; i++) {
		keys[i] = input->keyPressedThisFrame(inputKeys[i]);
	}
	for (int i = CONTROLS_MAX_KEYS - nrOfButtons; i < CONTROLS_MAX_KEYS; i++) {
		keys[i] = input->buttonPressedThisFrame(inputKeys[i]);
	}

	//update inputs that are released this frame
	for (int i = CONTROLS_MAX_KEYS; i < 2*CONTROLS_MAX_KEYS - nrOfButtons; i++) {
		keys[i] = input->keyReleasedThisFrame(inputKeys[i - CONTROLS_MAX_KEYS]);
	}
	for (int i = 2 * CONTROLS_MAX_KEYS - nrOfButtons; i < 2*CONTROLS_MAX_KEYS; i++) {
		keys[i] = input->buttonReleasedThisFrame(inputKeys[i - CONTROLS_MAX_KEYS]);
	}

	//update inputs that are being held down
	for (int i = 2*CONTROLS_MAX_KEYS; i < 3 * CONTROLS_MAX_KEYS - nrOfButtons; i++) {
		keys[i] = input->keyPressed(inputKeys[i - 2* CONTROLS_MAX_KEYS]);
	}
	for (int i = 3 * CONTROLS_MAX_KEYS - nrOfButtons; i < 3 * CONTROLS_MAX_KEYS; i++) {
		keys[i] = input->buttonPressed(inputKeys[i - 2 * CONTROLS_MAX_KEYS]);
	}

	//rotate the controlled object (prolly shouldnt be dont here, but fuck it)
	MousePos dPos = input->getDeltaPos();
	glm::vec3 rotation = controlled->getRotation();
	rotation.y += (float)dPos.x / sensitivity;
	xrot += (float)dPos.y / sensitivity;
	if (rotation.y > 2 * 3.14f) 
	{
		rotation.y -= 2 * 3.14f;
	}
	if (xrot > 3.14f / 2) 
	{
		xrot = 3.14f / 2;
	}
	if (xrot < -3.14f / 2) 
	{
		xrot = -3.14f / 2;
	}

	controlled->setRotation(rotation);
	controlled->setLookAt(glm::normalize(glm::vec3(
		cos(xrot) * sin(rotation.y),
		sin(xrot),
		cos(xrot)*cos(rotation.y)
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

void Controls::sensitivityFactor(float factor)
{
	sensitivity *= factor;
}


