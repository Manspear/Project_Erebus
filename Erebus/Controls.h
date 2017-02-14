#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"
#include "Transform.h"
#include <lua\lua.hpp>
#include "TransformHandler.h"

#define CONTROLS_MAX_KEYS 12

class Controls
{
public:
	Controls();
	~Controls();
	void update( Inputs* input );
	bool* getKeys();
	//Transform* getControl();
	//void setControl(Transform* trans);
	void setControl( TransformHandler* handler, int id );
	void sensitivityFactor(float factor);
private:
	//Transform* controlled;
	TransformHandler* transformHandler;
	int transformID;
	float sensitivity;
	bool keys[CONTROLS_MAX_KEYS*3];

	int nrOfButtons = 1;
	// the keys that we use, put keys first and buttons last, if you put a new button in the list, please increment the number of buttons variable (and maybe the CONTROLS_MAX_KEYS xd) :)
	int inputKeys[CONTROLS_MAX_KEYS] = { 
		GLFW_KEY_W,
		GLFW_KEY_S,
		GLFW_KEY_A,
		GLFW_KEY_D,
		GLFW_KEY_SPACE,
		GLFW_KEY_LEFT_SHIFT,
		GLFW_KEY_TAB,
		GLFW_KEY_1,
		GLFW_KEY_2,
		GLFW_KEY_3,
		GLFW_KEY_4, 
		GLFW_MOUSE_BUTTON_LEFT }; 

	int buttons[1]; 
};