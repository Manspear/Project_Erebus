#pragma once
#include "ModelAsset.h"
#include <glm\common.hpp>
/*
Hold the animation stack
Update animations
Included in every model
*/
class Animation
{
public:
	void getAsset(Importer::ModelAsset* asset);
	void updateAnimation(float dt, int layer);
private:
	int oldAnim;
	int oldWeight;
	Importer::ModelAsset* asset;
	std::vector<glm::mat4> animMatrix;
};