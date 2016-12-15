#pragma once
#include "BaseIncludes.h"
#include "Debug.h"
#include "Camera.h"
#include "RenderQueue.h"

class DebugHandler
{
private:
	std::vector<Debug*> debuggers;

	void drawAllLines(Camera* camera, RenderQueue* renderQueRef,const int &totalLines);
public:
	DebugHandler();
	~DebugHandler();

	void addDebuger(Debug* bugref);

	void update(Camera* camera, RenderQueue* renderQueRef);


};

