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
	bool keysPressed[CONTROLS_MAX_KEYS];
	int buttons[1];
};