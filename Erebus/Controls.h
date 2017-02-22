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
	void setEnabled( bool enabled );

private:
	//Transform* controlled;
	TransformHandler* transformHandler;
	int transformID;
	float sensitivity;
	float xrot;
	bool enabled;
};