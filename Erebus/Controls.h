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
	void update( Inputs* input );
	void setControl(Transform* trans);
	void setEnabled(bool enabled);
	void sensitivityFactor(float factor);

private:
	Transform* controlled;
	bool enabled;
	float sensitivity;
	float xrot;
};