#pragma once
#include "ModelAsset.h"
#include <glm\common.hpp>
#include "BaseIncludes.h"
/*
Hold the animation stack
Update animations
Included in every model

Have the ability to interpolate between two animation states
Which means that interpolation needs to be implemented individually for both animation states,
and then interpolation needs to be done between those two animation states.
*/
#define MAXJOINTCOUNT 64
using namespace Importer;
class Animation
{
public:
	GEAR_API Animation();
	GEAR_API ~Animation();
	GEAR_API void setAsset(Importer::ModelAsset* asset);
	GEAR_API void updateAnimation(float dt, int layer);
	GEAR_API glm::mat4x4* getShaderMatrices();
private:
	Importer::sKeyFrame interpolateKeys(Importer::sKeyFrame overKey, Importer::sKeyFrame underKey);
	void updateJointMatrices();
	void myLerp(float arr1[3], float arr2[3], float fillArr[3], float iVal);
	void convertToRotMat(float in[3], glm::mat4* result);
	void convertToTransMat(float inputArr[3], glm::mat4* result);
	void convertToScaleMat(float inputArr[3], glm::mat4* result);
	float animationTimer;
	int oldAnim;
	int oldWeight;
	glm::mat4x4 shaderMatrices[MAXJOINTCOUNT];
	Importer::ModelAsset* asset;
	std::vector<glm::mat4> animMatrix;
	std::vector<sKeyFrame> finalList;
};