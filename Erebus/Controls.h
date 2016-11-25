#pragma once
#include "BaseIncludes.h"
#include "Inputs.h"
#include "Transform.h"


class Controls
{
public:
	Controls();
	~Controls();
	void sendControls(Inputs &input);
	Transform* getControl();
	void setControl(Transform* trans);
private:
	Transform* controlled;
	int nrOfKeys;
	int keys[5];
};