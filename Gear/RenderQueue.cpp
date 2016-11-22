#include "RenderQueue.h"

RenderQueue::RenderQueue()
{

}

RenderQueue::~RenderQueue()
{

}

void RenderQueue::configure(RenderQueueId &id)
{

	if (currentShader != id.shaderProgram)
	{
		//use id.shaderProgram
		currentShader = id.shaderProgram;
	}

	if (currentTexture != id.texture)
	{
		//use id.texture
		currentTexture = id.texture;
	}
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
		RenderQueueElement* el = elements[indices[i]];
		configure(el->id);
		el->draw();
	}
}