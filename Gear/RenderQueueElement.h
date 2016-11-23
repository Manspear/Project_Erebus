#pragma once

#include "BaseIncludes.h"

#define _ui8 unsigned __int8
#define _ui16 unsigned __int16

struct RenderQueueId
{
	_ui16 key = 0;

	_ui8 shaderProgram = 0;
	_ui8 texture = 0;

	RenderQueueId() {}
	RenderQueueId(_ui8 _shaderProgram, _ui8 _texture)
		: shaderProgram((_ui8)_shaderProgram), texture((_ui8)_texture) 
	{
		generateKey();
	}

	_ui16 generateKey()
	{
		key = shaderProgram << 8
			| texture;
		return key;
	}
};

class RenderQueueElement
{
public:
	RenderQueueId id;
	RenderQueueElement() {}
	virtual ~RenderQueueElement() {}

	virtual void draw(const GLuint &shaderProgramId) = 0;

	bool operator< (RenderQueueElement &obj) const
	{
		return id.key < obj.id.key;
	}
};