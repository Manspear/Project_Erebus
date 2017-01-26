#include "Animation.h"

Animation::Animation()
{
	animTimer = 0.0f;
	fromAnimationTimer = 0;
	toAnimationTimer = 0;
	animationSegments = 0;
	for (int i = 0; i < finalList.size(); i++)
		shaderMatrices[i] = glm::mat4();

	transitionTimeArray = nullptr;

	transitionTimeArraySize = 9;
}

Animation::~Animation()
{
	delete[] transitionTimeArray;
	for (int i = 0; i < animationSegments; i++)
		delete[] animationMatrixLists[i];
}

void Animation::setAsset(Importer::ModelAsset * asset)
{
	this->asset = asset;
	Importer::hModel* model = asset->getHeader();
	finalList.resize(model->numJoints);
}

void Animation::updateAnimation(float dt, int layer, int animationSegment)
{
	animationTimers[animationSegment] += dt;
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

			sKeyFrame* aids = (sKeyFrame*)((char*)keys + (state->keyCount - 1) * sizeof(Importer::sKeyFrame));
			sKeyFrame* aids2 = (sKeyFrame*)((char*)keys + (1) * sizeof(Importer::sKeyFrame));
			//resets itself wohahaha
			animationTimers[animationSegment] = abs(std::fmod(animationTimers[animationSegment], maxTime));

			float timeOverCompare = INT_MAX;
			float timeUnderCompare = -INT_MAX;

			Importer::sKeyFrame overKey;
			Importer::sKeyFrame underKey;

			for (int k = 0; k < state->keyCount; k++)
			{
				Importer::sKeyFrame* currKey = (sKeyFrame*)((char*)keys + k * sizeof(Importer::sKeyFrame));
				float diff = animationTimers[animationSegment] - currKey->keyTime;

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

			finalList[j + jointOffset] = interpolateKeys(overKey, underKey, animationTimers[animationSegment]);
		}
		jointOffset += skeleton->jointCount;
	}
	calculateAndSaveJointMatrices(finalList, animationSegment);
	//updateJointMatrices(finalList);
}

std::vector<sKeyFrame> Animation::updateAnimationForBlending(float dt, int layer, float& animTimer)
{
	if( animTimer >= 0.0f )
		animTimer += dt;
	else
	{
		this->animTimer += dt;
		animTimer = this->animTimer;
	}
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
			animTimer = abs(std::fmod(animTimer, maxTime));

			float timeOverCompare = INT_MAX;
			float timeUnderCompare = -INT_MAX;

			Importer::sKeyFrame overKey;
			Importer::sKeyFrame underKey;

			for (int k = 0; k < state->keyCount; k++)
			{
				Importer::sKeyFrame* currKey = (sKeyFrame*)((char*)keys + k * sizeof(Importer::sKeyFrame));
				float diff = animTimer - currKey->keyTime;

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
			finalList[j + jointOffset] = interpolateKeys(overKey, underKey, animTimer);
		}
		jointOffset += skeleton->jointCount;
	}
	return finalList;
}

GEAR_API void Animation::updateState(float dt, int state, int animationSegment)
{
	//Do not append if the animation already exists 
	if (animationStacks[animationSegment].back() == state)
	{
		if (animationStacks[animationSegment].size() == 1)
		{
			updateAnimation(dt, state, animationSegment);
		}
		else if (animationStacks[animationSegment].size() > 1)
		{
			int from = animationStacks[animationSegment][animationStacks[animationSegment].size() - 2];
			int to = animationStacks[animationSegment].back();

			if (oldTos[animationSegment] != to && oldFroms[animationSegment] != from)
			{
				transitionTimers[animationSegment] = transitionTimeArray[to + numStates * from];
				transitionMaxTimes[animationSegment] = transitionTimers[animationSegment];
				oldTos[animationSegment] = to;
				oldFroms[animationSegment] = from;
				toAnimationTimer = 0;
			}
			blendAnimations(to, from, transitionTimers[animationSegment], animationSegment, dt);
			if (isTransitionCompletes[animationSegment])
			{
				animationStacks[animationSegment].clear();
				animationStacks[animationSegment].push_back(to);
				isTransitionCompletes[animationSegment] = false;
			}
		}
	}
	//Append if the animation doesn't exist
	else
	{
		//If the blending got interrupted
		if (animationStacks[animationSegment].size() > 1)
		{
			int back = animationStacks[animationSegment].back();
			animationStacks[animationSegment].clear();
			animationStacks[animationSegment].push_back(back);
		}
		animationStacks[animationSegment].push_back(state);
	}
}

void Animation::updateStateForQuickBlend(float dt, int state, int animationSegment, float transitionTime)
{
	if (animationStacks[animationSegment].back() == state)
	{
		if (animationStacks[animationSegment].size() == 1)
		{
			updateAnimation(dt, state, animationSegment);
		}
		else if (animationStacks[animationSegment].size() > 1)
		{
			int from = animationStacks[animationSegment][animationStacks[animationSegment].size() - 2];
			int to = animationStacks[animationSegment].back();

			if (oldTos[animationSegment] != to && oldFroms[animationSegment] != from)
			{
				transitionTimers[animationSegment] = transitionTime;
				transitionMaxTimes[animationSegment] = transitionTimers[animationSegment];
				oldTos[animationSegment] = to;
				oldFroms[animationSegment] = from;
				toAnimationTimer = 0;
			}

			blendAnimations(to, from, transitionTimers[animationSegment], animationSegment, dt);
			if (isTransitionCompletes[animationSegment])
			{
				animationStacks[animationSegment].clear();
				animationStacks[animationSegment].push_back(to);
				isTransitionCompletes[animationSegment] = false;
			}
		}
	}
	//Append if the animation doesn't exist
	else
	{
		//If the blending got interrupted
		if (animationStacks[animationSegment].size() > 1)
		{
			int back = animationStacks[animationSegment].back();
			animationStacks[animationSegment].clear();
			animationStacks[animationSegment].push_back(back);
		}
		animationStacks[animationSegment].push_back(state);
	}
}

GEAR_API bool Animation::quickBlend(float dt, int originState, int transitionState, float blendTime, int animationSegment)
{
	float halfTime = blendTime / 2.f;

	if (quickBlendStates[animationSegment] == true)
	{
		transitionState = originState;
	}

	updateStateForQuickBlend(dt, transitionState, animationSegment, halfTime);

	if (animationTimers[animationSegment] >= blendTime && quickBlendStates[animationSegment] == true)
	{
		animationTimers[animationSegment] = 0;
		int wolo = animationStacks[animationSegment].back();
		animationStacks[animationSegment].clear();
		animationStacks[animationSegment].push_back(wolo);
		quickBlendStates[animationSegment] = false;

		updateAnimation(dt, wolo, animationSegment);

		return true;
	}

	if (animationTimers[animationSegment] >= halfTime && quickBlendStates[animationSegment] == false)
	{
		int wolo = animationStacks[animationSegment].back();

		quickBlendStates[animationSegment] = true;
	}
	return false;
}

GEAR_API void Animation::setAnimationSegments(int numberOfSegments)
{
	this->animationSegments = numberOfSegments;

	std::vector<int> animStack;
	animStack.push_back(0);
	for (int i = 0; i < animationSegments; i++)
	{
		isTransitionCompletes.push_back(true);

		oldTos.push_back(-1337);
		oldFroms.push_back(-1337);

		transitionMaxTimes.push_back(0);
		transitionTimers.push_back(0);
		animationTimers.push_back(0);
		animationStacks.push_back(animStack);

		quickBlendStates.push_back(false);

		glm::mat4x4* allahu = new glm::mat4x4[MAXJOINTCOUNT];
		animationMatrixLists.push_back(allahu);
	}
}

void Animation::setMatrixIndex( int index )
{
	matrixIndex = index;
}

int Animation::getMatrixIndex()
{
	return matrixIndex;
}

GEAR_API void Animation::setTransitionTimes(float * transitionTimeArray, int numStates)
{
	assert(this->transitionTimeArray == nullptr);

	this->transitionTimeArray = new float[numStates * numStates];
	memcpy((char*)this->transitionTimeArray, (char*)transitionTimeArray, sizeof(float) * numStates * numStates);
	this->transitionTimeArraySize = numStates * numStates;
	setStates(numStates);
}

GEAR_API void Animation::setStates(int numStates)
{
	this->numStates = numStates;
}

GEAR_API void Animation::assembleAnimationsIntoShadermatrices()
{
	if (animationSegments > 1)
	{
		//animationMatrixLists is a 64 long mat4 list, where each 
		memcpy(shaderMatrices, animationMatrixLists[0], MAXJOINTCOUNT * MAXJOINTCOUNT);

		for (int i = 1; i < animationSegments; i++)
		{
			for (int j = 0; j < MAXJOINTCOUNT; j++)
			{
				//if (animationMatrixLists[i][j] != glm::mat4x4())
				//	animationMatrixLists[i][j] = animationMatrixLists[i][j];
				//
				//glm::mat4x4 popo;
				//popo = inverse(animationMatrixLists[0][0]);
				//// popo = inverse(animationMatrixLists[0][0]);
				//popo[3][0] = 0;
				//popo[3][1] = 0;
				//popo[3][2] = 0;
				shaderMatrices[j] *= animationMatrixLists[i][j]; //* popo;
			}
		}
	}
	else
	{
		//64 slots each with 64 matrices
		memcpy(shaderMatrices, animationMatrixLists[0], MAXJOINTCOUNT * MAXJOINTCOUNT);
	}

	/*
	Adding together matrices like this might not work if both animations aren't affected
	by the same root motion. To fix, multiply all joints of the torso with the root motion
	of the legs. It is assumed that the root is controlled by the lower body.
	*/
}

glm::mat4x4 * Animation::getShaderMatrices()
{
	return shaderMatrices;
}

void Animation::blendAnimations(int blendTo, int blendFrom, float& transitionTimer, int animationSegment, float dt)
{
	/*
	Need the "finished" matrices of both of these animations.
	Modify the animation-function to return a list of matrices.
	*/

	fromAnimationTimer = animationTimers[animationSegment];
	toAnimationTimer = animationTimers[animationSegment];
	animationTimers[animationSegment] += dt;

	blendFromKeys = updateAnimationForBlending(dt, blendFrom, fromAnimationTimer);
	blendToKeys = updateAnimationForBlending(dt, blendTo, toAnimationTimer);

	std::vector<sKeyFrame> blendedList;
	for (int i = 0; i < blendToKeys.size(); i++)
	{
		blendedList.push_back(interpolateKeysForBlending(blendToKeys[i], blendFromKeys[i], animationSegment));
	}

	//Now update the matrix list with the blended keys
	calculateAndSaveJointMatrices(blendedList, animationSegment);

	//When blended
	transitionTimer -= dt;
	if (transitionTimer < 0.001)
	{
		isTransitionCompletes[animationSegment] = true;
	}
	else
	{
		isTransitionCompletes[animationSegment] = false;
	}
}

Importer::sKeyFrame Animation::interpolateKeys(Importer::sKeyFrame overKey, Importer::sKeyFrame underKey, float& animTimer)
{
	float diffKeys = overKey.keyTime - underKey.keyTime;
	if (diffKeys == 0)
	{
		glm::quat rotOver = glm::make_quat(overKey.keyRotate);
		glm::vec3 endRot = glm::eulerAngles(rotOver);
		overKey.keyRotate[0] = endRot[0];
		overKey.keyRotate[1] = endRot[1];
		overKey.keyRotate[2] = endRot[2];
		overKey.keyRotate[3] = 1;

		return overKey;
	}

	float diffUnderTime = abs(animTimer - underKey.keyTime);
	float underAffect = diffUnderTime / diffKeys;

	Importer::sKeyFrame interpolatedKey;
	glm::quat rotOver = glm::quat(overKey.keyRotate[3], overKey.keyRotate[0], overKey.keyRotate[1], overKey.keyRotate[2]);
	glm::quat rotUnder = glm::quat(underKey.keyRotate[3], underKey.keyRotate[0], underKey.keyRotate[1], underKey.keyRotate[2]);

	myLerp(underKey.keyTranslate, overKey.keyTranslate, interpolatedKey.keyTranslate, underAffect);

	myLerp(underKey.keyScale, overKey.keyScale, interpolatedKey.keyScale, underAffect);

	//Lerping the quaternion
	glm::quat resQ = glm::slerp(rotUnder, rotOver, underAffect);
	glm::vec3 endRot = glm::eulerAngles(resQ);
	interpolatedKey.keyRotate[0] = endRot[0];
	interpolatedKey.keyRotate[1] = endRot[1];
	interpolatedKey.keyRotate[2] = endRot[2];
	interpolatedKey.keyRotate[3] = 1;

	//INTERPOLATED TIME == (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect)
	interpolatedKey.keyTime = (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect);

	return interpolatedKey;
}

Importer::sKeyFrame Animation::interpolateKeysForBlending(Importer::sKeyFrame to, Importer::sKeyFrame from, int animationSegment)
{
	/*
	What separetes this from usual interpolateKeys is that the diffKeys variable is dependent on the transition time
	instead of the keyTimes. Need a "maxTransitionTime" and a timer that counts down.
	*/

	//Send in the "percentage" of the way through transitionMaxTime transitionTImer is.
	float underAffect = transitionTimers[animationSegment] / transitionMaxTimes[animationSegment];

	//underAffect = 0.5;
	//underaffect was 1
	Importer::sKeyFrame interpolatedKey;
	glm::vec3 tempRot = glm::make_vec3((to.keyRotate));
	glm::quat rotOver = glm::quat(tempRot);
	tempRot = glm::make_vec3((from.keyRotate));
	glm::quat rotUnder = glm::quat(tempRot);

	//myLerp(from.keyTranslate, to.keyTranslate, interpolatedKey.keyTranslate, underAffect);
	//
	//myLerp(from.keyScale, to.keyScale, interpolatedKey.keyScale, underAffect);

	myLerp(to.keyTranslate, from.keyTranslate, interpolatedKey.keyTranslate, underAffect);

	myLerp(to.keyScale, from.keyScale, interpolatedKey.keyScale, underAffect);

	//QUAT CODE	
	glm::quat resQ = glm::slerp(rotOver, rotUnder, underAffect);
	glm::vec3 endRot = glm::eulerAngles(resQ);
	interpolatedKey.keyRotate[0] = endRot[0];
	interpolatedKey.keyRotate[1] = endRot[1];
	interpolatedKey.keyRotate[2] = endRot[2];

	//TEMP
	//interpolatedKey.keyRotate[0] = resQ[0];
	//interpolatedKey.keyRotate[1] = resQ[1];
	//interpolatedKey.keyRotate[2] = resQ[2];
	//interpolatedKey.keyRotate[3] = resQ[3];

	//EULER CODE using this shows same error
	//let's see what happens if we replace quaternions with eulerangles...
	//glm::vec3 roOver = glm::eulerAngles(rotOver);
	//glm::vec3 roUnder = glm::eulerAngles(rotUnder);
	//myLerp(&roOver[0], &roUnder[0], interpolatedKey.keyRotate, underAffect);

	//INTERPOLATED TIME == (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect)
	interpolatedKey.keyTime = (from.keyTime * (1 - underAffect)) + (to.keyTime * underAffect);

	//Test
	//animationTimer = interpolatedKey.keyTime;

	return interpolatedKey;
}

void Animation::updateJointMatrices(std::vector<sKeyFrame>& keyList)
{
	glm::mat4x4 tMatrices[MAXJOINTCOUNT];

	glm::mat4 translateMat;
	glm::mat4 rotateMat;
	glm::mat4 scaleMat;

	for (int i = 0; i < keyList.size(); i++)
	{
		convertToRotMat(keyList[i].keyRotate, &rotateMat);
		convertToTransMat(keyList[i].keyTranslate, &translateMat);
		convertToScaleMat(keyList[i].keyScale, &scaleMat);

		tMatrices[i] = translateMat * scaleMat * rotateMat;
	}

	int jointIdxOffset = 0;
	hSkeleton* skelPtr = asset->getSkeleton(0);
	hJoint* modelJointPtr = asset->getJointsStart();
	for (int i = 0; i < keyList.size(); i++)
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
}

void Animation::calculateAndSaveJointMatrices(std::vector<sKeyFrame>& keyList, int animationSegment)
{
	glm::mat4x4 tMatrices[MAXJOINTCOUNT];

	for (int i = 0; i < keyList.size(); i++)
	{
		glm::mat4 translateMat;
		glm::mat4 scaleMat;
		glm::mat4 rotateMat;
		convertToRotMat(keyList[i].keyRotate, &rotateMat);
		convertToTransMat(keyList[i].keyTranslate, &translateMat);
		convertToScaleMat(keyList[i].keyScale, &scaleMat);
		tMatrices[i] = translateMat * scaleMat * rotateMat;
	}
	/*
	Make a special case where when the animation of segment is not calculated, use it's root and add it's rotation
	to the other segment's rotation
	*/
	int jointIdxOffset = 0;
	hSkeleton* skelPtr = asset->getSkeleton(0);
	hJoint* modelJointPtr = asset->getJointsStart();
	for (int i = 0; i < keyList.size(); i++)
	{
		if (modelJointPtr->parentJointID >= 0)
		{
			int parentID = modelJointPtr->parentJointID + jointIdxOffset;
			tMatrices[i] = tMatrices[parentID] * tMatrices[i];
		}
		tMatrices[i];

		int checker = modelJointPtr->parentJointID;

		glm::mat4x4 invBPose = glm::make_mat4x4(modelJointPtr->globalBindposeInverse);

		animationMatrixLists[animationSegment][i] = tMatrices[i] * invBPose;

		modelJointPtr = (hJoint*)((char*)modelJointPtr + sizeof(hJoint));

		if (i == skelPtr->jointCount - 1)
		{
			skelPtr = (hSkeleton*)((char*)skelPtr + sizeof(hSkeleton));
			jointIdxOffset = skelPtr->jointOffset / sizeof(hJoint);
		}
	}
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
		glm::mat4(
			cosf(in[1]) * cosf(in[2]), cosf(in[1]) * sinf(in[2]), -sinf(in[1]), 0.f,
			cosf(in[0]) * (-sinf(in[2])) + sinf(in[0]) * sinf(in[1]) * cosf(in[2]), cosf(in[0]) * cosf(in[2]) + sinf(in[0]) * sinf(in[1]) * sinf(in[2]), sinf(in[0]) * cosf(in[1]), 0.f,
			-sinf(in[0]) * (-sinf(in[2])) + cosf(in[0]) * sinf(in[1]) * cosf(in[2]), (-sinf(in[0])) * cosf(in[2]) + cosf(in[0]) * sinf(in[1]) * sinf(in[2]), cosf(in[0]) * cosf(in[1]), 0.f,
			0.f, 0.f, 0.f, 1.f
		);
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
