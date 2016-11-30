#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"
#include "Transform.h"
#include <lua\lua.hpp>


class Controls
{
public:
	Controls();
	~Controls();
	void sendControls(Inputs &input, lua_State* L);
	Transform* getControl();
	void setControl(Transform* trans);
private:
	Transform* controlled;
	int nrOfKeys;
	int nrOfRelease;
	int keys[7];
};