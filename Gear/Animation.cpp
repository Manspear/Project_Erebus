#include "Animation.h"



Animation::Animation()
{
	animationTimer = 0;
	for (int i = 0; i < finalList.size(); i++)
		shaderMatrices[i] = glm::mat4();
}

Animation::~Animation()
{
}

void Animation::setAsset(Importer::ModelAsset * asset)
{
	this->asset = asset;
	Importer::hModel* model = asset->getHeader();
	finalList.resize(model->numJoints);
}

void Animation::updateAnimation(float dt, int layer)
{
	/*
	The MODEL file order:
	DATAHEADER -> MODELHEADER -> OFFSETS ->
	MESHES -> BOUNDINGBOXES -> SKELETONS ->
	JOINTS -> ANIMATION STATES -> KEYFRAMES ->
	VERTICES -> SKELETAL VERTICES -> INDICES
	*/
	animationTimer += dt;
	Importer::hModel* model = asset->getHeader();
	int jointOffset = 0;
	for (int i = 0; i < model->numSkeletons; i++)
	{
		//layer gives the current animation layer/state
		Importer::hSkeleton* skeleton = asset->getSkeleton(i);

		for (int j = 0; j < skeleton->jointCount; j++)
		{
			//get animation layer
			Importer::hAnimationState* state = asset->getAnimationState(i, j, layer);

			Importer::hJoint* joint;
			Importer::sKeyFrame* keys = asset->getKeyFrames(i, j, layer);

			//Get the maxtime for this layer
			float maxTime = ((sKeyFrame*)((char*)keys + (state->keyCount - 1) * sizeof(Importer::sKeyFrame)))->keyTime; //-1 to make keys end at the start of the adress of the last keyFrame instead of where the last keyframe ends

																														//resets itself wohahaha
			animationTimer = abs(std::fmod(animationTimer, maxTime));

			float timeOverCompare = INT_MAX;
			float timeUnderCompare = -INT_MAX;

			Importer::sKeyFrame overKey;
			Importer::sKeyFrame underKey;

			for (int k = 0; k < state->keyCount; k++)
			{
				Importer::sKeyFrame* currKey = (sKeyFrame*)((char*)keys + k * sizeof(Importer::sKeyFrame));
				float diff = animationTimer - currKey->keyTime;

				if (timeOverCompare == INT_MAX && timeUnderCompare == -INT_MAX)
				{
					overKey = *currKey;
					underKey = overKey;
					timeOverCompare = diff;
				}
				//if the keyTime is larger that the targetTime
				if (diff > 0 && diff < timeOverCompare)
				{
					underKey = *currKey;
					timeOverCompare = diff;
				}
				//if the keytime is less than the targetTime
				else if (diff < 0 && diff > timeUnderCompare)
				{
					overKey = *currKey;
					timeUnderCompare = diff;
				}
			}
			finalList[j + jointOffset] = interpolateKeys(overKey, underKey);
		}
		jointOffset += skeleton->jointCount;
	}
	updateJointMatrices();
}

glm::mat4x4 * Animation::getShaderMatrices()
{
	return shaderMatrices;
}

Importer::sKeyFrame Animation::interpolateKeys(Importer::sKeyFrame overKey, Importer::sKeyFrame underKey)
{
	float diffKeys = overKey.keyTime - underKey.keyTime;
	if (diffKeys == 0)
	{
		glm::quat rotOver = glm::make_quat(overKey.keyRotate);
		glm::vec3 endRot = glm::eulerAngles(rotOver);
		overKey.keyRotate[0] = endRot[0];
		overKey.keyRotate[1] = endRot[1];
		overKey.keyRotate[2] = endRot[2];

		return overKey;
	}

	float diffUnderTime = abs(animationTimer - underKey.keyTime);
	float underAffect = diffUnderTime / diffKeys;

	Importer::sKeyFrame interpolatedKey;

	glm::quat rotOver = glm::make_quat(overKey.keyRotate);
	glm::quat rotUnder = glm::make_quat(underKey.keyRotate);

	myLerp(underKey.keyTranslate, overKey.keyTranslate, interpolatedKey.keyTranslate, underAffect);

	myLerp(underKey.keyScale, overKey.keyScale, interpolatedKey.keyScale, underAffect);
	
	//Lerping the quaternion
	glm::quat resQ = glm::slerp(rotUnder, rotOver, underAffect);
	glm::vec3 endRot = glm::eulerAngles(resQ);
	interpolatedKey.keyRotate[0] = endRot[0];
	interpolatedKey.keyRotate[1] = endRot[1];
	interpolatedKey.keyRotate[2] = endRot[2];

	//INTERPOLATED TIME == (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect)
	interpolatedKey.keyTime = (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect);

	return interpolatedKey;
}

void Animation::updateJointMatrices()
{
	glm::mat4x4 tMatrices[MAXJOINTCOUNT];
	glm::vec3 debugTrans[MAXJOINTCOUNT];
	glm::vec3 debugRot[MAXJOINTCOUNT];
	glm::vec3 debugScale[MAXJOINTCOUNT];

	for (int i = 0; i < finalList.size(); i++)
	{
		////glm::mat4x4 translateMat = glm::make_mat4x4(finalList[i].keyTranslate);
		////glm::mat4x4 rotateMat = glm::make_mat4x4(finalList[i].keyRotate);
		////scaleMat = glm::make_mat4x4(finalList[i].keyScale);
		//glm::mat4 scaleMat = glm::scale(glm::make_vec3(finalList[i].keyScale));

		//glm::vec3 transVec = glm::tvec3<float>(glm::make_vec3(finalList[i].keyTranslate));
		//glm::mat4 translateMat = glm::translate(transVec);

		//glm::tvec3<float> rotXAxis = glm::vec3(1, 0, 0);
		//glm::tvec3<float> rotYAxis = glm::vec3(0, 1, 0);
		//glm::tvec3<float> rotZAxis = glm::vec3(0, 0, 1);

		////rotations expressed in radians, convert to degrees by: deg * rad / deg
		//float degreesX = finalList[i].keyRotate[0] * 180 / 3.14159265359;
		//float degreesY = finalList[i].keyRotate[1] * 180 / 3.14159265359;
		//float degreesZ = finalList[i].keyRotate[2] * 180 / 3.14159265359;

		//glm::mat4x4 rotateMat = glm::rotate(degreesX, rotXAxis) * glm::rotate(degreesY, rotYAxis) * glm::rotate(degreesZ, rotZAxis);
		float degRot[3];
		//degRot[0] = finalList[i].keyRotate[0] * 180 / 3.14159265359;
		//degRot[1] = finalList[i].keyRotate[1] * 180 / 3.14159265359;
		//degRot[2] = finalList[i].keyRotate[2] * 180 / 3.14159265359;

		degRot[0] = finalList[i].keyRotate[0];
		degRot[1] = finalList[i].keyRotate[1];
		degRot[2] = finalList[i].keyRotate[2];
		glm::mat4 translateMat;
		glm::mat4 rotateMat;
		glm::mat4 scaleMat;


		//convertToRotMat(finalList[i].keyRotate, &rotateMat);
		convertToRotMat(degRot, &rotateMat);
		convertToTransMat(finalList[i].keyTranslate, &translateMat);
		convertToScaleMat(finalList[i].keyScale, &scaleMat);

		tMatrices[i] = translateMat * scaleMat * rotateMat;
	}
	/*It looks like only the root is moving... But it should not*/
	int jointIdxOffset = 0;
	hSkeleton* skelPtr = asset->getSkeleton(0);
	hJoint* modelJointPtr = asset->getJointsStart();
	for (int i = 0; i < finalList.size(); i++)
	{
		if (modelJointPtr->parentJointID >= 0)
		{
			int parentID = modelJointPtr->parentJointID + jointIdxOffset;

			tMatrices[i] = tMatrices[parentID] * tMatrices[i];
		}

		glm::mat4x4 invBPose = glm::make_mat4x4(modelJointPtr->globalBindposeInverse);

		shaderMatrices[i] = tMatrices[i] * invBPose;

		modelJointPtr = (hJoint*)((char*)modelJointPtr + sizeof(hJoint));
		if (i == skelPtr->jointCount - 1)
		{
			skelPtr = (hSkeleton*)((char*)skelPtr + sizeof(hSkeleton));
			jointIdxOffset = skelPtr->jointOffset / sizeof(hJoint);
		}
	}
	//for (int i = 0; i < finalList.size(); i++)
	//	shaderMatrices[i] = glm::mat4();
}

void Animation::myLerp(float arr1[3], float arr2[3], float fillArr[3], float iVal)
{
	fillArr[0] = (arr1[0] * (1 - iVal)) + (arr2[0] * (iVal));
	fillArr[1] = (arr1[1] * (1 - iVal)) + (arr2[1] * (iVal));
	fillArr[2] = (arr1[2] * (1 - iVal)) + (arr2[2] * (iVal));
}

void Animation::convertToRotMat(float in[3], glm::mat4* result)
{
	*result =
	{
		cosf(in[1]) * cosf(in[2]), cosf(in[1]) * sinf(in[2]), -sinf(in[1]), 0.f,
		cosf(in[0]) * (-sinf(in[2])) + sinf(in[0]) * sinf(in[1]) * cosf(in[2]), cosf(in[0]) * cosf(in[2]) + sinf(in[0]) * sinf(in[1]) * sinf(in[2]), sinf(in[0]) * cosf(in[1]), 0.f,
		-sinf(in[0]) * (-sinf(in[2])) + cosf(in[0]) * sinf(in[1]) * cosf(in[2]), (-sinf(in[0])) * cosf(in[2]) + cosf(in[0]) * sinf(in[1]) * sinf(in[2]), cosf(in[0]) * cosf(in[1]), 0.f,
		0.f, 0.f, 0.f, 1.f
	};
}

void Animation::convertToTransMat(float inputArr[3], glm::mat4 * result)
{
	for (int i = 0; i < 3; i++)
		(*result)[3][i] = inputArr[i];
}

void Animation::convertToScaleMat(float inputArr[3], glm::mat4 * result)
{
	for (int i = 0; i < 3; i++)
		(*result)[i][i] = inputArr[i];
}
