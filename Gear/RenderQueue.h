#pragma once

#include "RenderQueueElement.h"

#include <vector>
#include <numeric>
#include <algorithm>

class RenderQueue
{
private:
	int currentShader = 0;
	int currentTexture = 0;
private:
	void configure(RenderQueueId &id);
public:
	RenderQueue();
	~RenderQueue();

	void process(std::vector<RenderQueueElement*> &elements);
};