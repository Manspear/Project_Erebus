#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"
#include "Transform.h"
#include <lua\lua.hpp>


#define CONTROLS_MAX_KEYS 12

class Controls
{
public:
	Controls();
	~Controls();
	void sendControls(Inputs &input, lua_State* L);
	void update( Inputs* input );
	bool* getKeys();
	Transform* getControl();
	void setControl(Transform* trans);
private:
	Transform* controlled;
	//int nrOfKeys;
	//int nrOfRelease;
	//int keys[CONTROLS_MAX_KEYS];
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