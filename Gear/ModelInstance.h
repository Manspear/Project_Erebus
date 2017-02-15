#pragma once
//#include "ShaderProgram.h"
#include "ModelAsset.h"

using namespace Importer;

namespace Gear
{
	class ModelInstance
	{
	public:

	private:
		Importer::ModelAsset* asset;
		std::vector<int> worldIndices;
		GLuint instanceVBO = 0;
		GLuint instanceVAO = 0;
	};
}
