#pragma once
#include "BaseIncludes.h"
#include "Debug.h"
#include "Camera.h"
#include "RenderQueue.h"

class DebugHandler
{
private:
	const int totalToIntance = 256;
	std::vector<Debug*> debuggers;

	void drawAllLines(Camera* camera, RenderQueue* renderQueRef);
	void drawAllSpheres(Camera* camera, RenderQueue* renderQueRef);
	void drawAllAABBs(Camera* camera, RenderQueue* renderQueRef);

	GLuint tempBuffer;
	void draw(int &numInstances);
public:
	DebugHandler();
	~DebugHandler();

	void addDebuger(Debug* bugref);

	void update(Camera* camera, RenderQueue* renderQueRef);


};

