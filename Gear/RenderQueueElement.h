#pragma once

struct RenderQueueId
{
	__int16 key = 0;

	__int16 shaderProgram = 0;
	__int16 texture = 0;

	RenderQueueId() {}
	RenderQueueId(int _shaderProgram, int _texture)
		: shaderProgram(_shaderProgram), texture(_texture) {}

	__int16 generateKey()
	{
		key = shaderProgram << 8
			| texture;
		return key;
	}
};

class RenderQueueElement
{
private:
	RenderQueueId id;

public:
	RenderQueueElement() {}
	virtual ~RenderQueueElement() {}

	virtual void draw() = 0;

	bool operator< (RenderQueueElement &obj) const
	{
		return id.key < obj.id.key;
	}
};