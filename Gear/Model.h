#pragma once

#include "BaseIncludes.h"
#include "RenderQueueElement.h"
#include "ModelAsset.h"
#include "ShaderProgram.h"


class Model : public RenderQueueElement
{
public:
	GEAR_API Model();
	GEAR_API virtual ~Model();
	GEAR_API virtual void draw(const GLuint &shaderProgramId) override;
	GEAR_API void setModelAsset( Importer::ModelAsset* asset );
	GEAR_API void setModelAsset(Importer::ModelAsset* asset, int n);
	GEAR_API Importer::ModelAsset* getModelAsset() const;


	std::vector<int> matrixIndices;
		
	glm::mat4 worldMatrix;
	ShaderProgram* shader;

private:
	Importer::ModelAsset* modelAsset;
};
