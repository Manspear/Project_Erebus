#include "RenderQueue.h"

RenderQueue::RenderQueue()
{

}

RenderQueue::~RenderQueue()
{

}

void RenderQueue::process(std::vector<RenderQueueElement*> &elements)
{
	size_t size = elements.size();

	std::vector<size_t> indices(size);
	std::iota(indices.begin(), indices.end(), 0);

	std::sort(indices.begin(), indices.end(),
		[&elements](size_t i1, size_t i2) {return elements[i2] < elements[i1]; });

	for (int i = 0; i < size; i++)
	{
		elements[indices[i]]->draw();
	}
}