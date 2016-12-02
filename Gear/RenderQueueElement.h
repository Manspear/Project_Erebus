#pragma once

#include "BaseIncludes.h"

#define _ui8 unsigned __int8
#define _ui16 unsigned __int16

namespace Gear::RenderQueue
{
	enum BucketType
	{
		DYNAMIC_CALL,
		STATIC_INSTANCED,
		PARTICLE_CALL
	};

	struct Id
	{
		_ui16 key = 0;

		_ui8 shaderProgram = 0;
		_ui8 texture = 0;

		Id() {}
		Id(_ui8 _shaderProgram, _ui8 _texture)
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

	struct DrawDesc
	{
		GLuint vertexBuffer = 0;		//GL index of the vertex buffer
		GLuint indexBuffer = 0;			//GL index of the index buffer

		size_t nrDataValues = 0;		//Nr of different data values, e.g. vertex, normal, UV
		size_t* dataSizeList = 0;		//Array of the size of each data value, { sizeof(vertex), sizeof(normal) }
		size_t dataStride = 0;			//Stride size
		size_t indexBufferSize = 0;		//Total size of the index buffer
		size_t nInstances = 0;			//Number of instances

		DrawDesc() {}
		DrawDesc(GLuint _vertexBuffer, GLuint _indexBuffer, size_t _nrDataValues,
			size_t* _dataSizeList, size_t _dataStride, size_t _indexBufferSize)
		{
			vertexBuffer = _vertexBuffer;
			indexBuffer = _indexBuffer;
			nrDataValues = _nrDataValues;
			dataSizeList = _dataSizeList;
			dataStride = _dataStride;
			indexBufferSize = _indexBufferSize;
		}
	};

	class Element
	{
	public:
		Id id;
		DrawDesc drawDesc;

	public:
		Element() {}
		virtual ~Element() {}

		virtual void draw(const GLuint &shaderProgramId) = 0;

		bool operator< (Element &obj) const
		{
			return id.key < obj.id.key;
		}
	};
};
