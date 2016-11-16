#pragma once

#include "RenderQueueElement.h"

#include <vector>
#include <numeric>
#include <algorithm>

class RenderQueue
{
private:

public:
	RenderQueue();
	~RenderQueue();

	void process(std::vector<RenderQueueElement*> &elements);
};