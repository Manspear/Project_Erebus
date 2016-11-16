#pragma once

#include "BaseIncludes.h"
#include "RenderQueueElement.h"
#include "Importer.h"

namespace Gear
{
	class Model : public RenderQueueElement
	{
	public:
		GEAR_API Model();
		GEAR_API virtual ~Model();

		GEAR_API virtual void draw() override;

		GEAR_API void setModelAsset( Importer::ModelAsset* asset );

		GEAR_API Importer::ModelAsset* getModelAsset() const;

	private:
		Importer::ModelAsset* modelAsset;
	};
};