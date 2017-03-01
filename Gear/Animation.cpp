#include "Animation.h"

Animation::Animation()
{
	fromAnimationTimer = 0;
	toAnimationTimer = 0;
	animationSegments = 0;

	transitionTimeArray = nullptr;

	transitionTimeArraySize = 9;

	quickBlendFrom = 0;
	quickBlendTo = 0;
	quickBlendSegment = -1;
	quickBlendTime = 0;
	quickBlendingDone = true;
	blendFromKeys = NULL;
	blendToKeys = NULL;
	finalList = NULL;
	blendedList = NULL;

	culled = false;
}

Animation::~Animation()
{
	reset();
}

void Animation::setAsset(Importer::ModelAsset * asset)
{
	this->asset = asset;
	Importer::hModel* model = asset->getHeader();

	numJoints = model->numJoints;
	finalList = new sKeyFrame[numJoints];
	blendFromKeys = new sKeyFrame[numJoints];
	blendToKeys = new sKeyFrame[numJoints];
	blendedList = new sKeyFrame[numJoints];
}

void Animation::updateAnimation(float dt, int layer, int animationSegment)
{
	animationTimers[animationSegment] += dt;

	Importer::hModel* model = asset->getHeader();
	int jointOffset = 0;
	;
	float diff;
	Importer::sKeyFrame* currKey;

	float timeOverCompare;
	float timeUnderCompare;

	//Get the maxtime for this layer
	//get animation layer
	Importer::hAnimationState* stateRoot = asset->getAnimationState(0, 0, layer);
	//Importer::hJoint* joint;
	Importer::sKeyFrame* keysRoot = asset->getKeyFrames(0, 0, layer);

	float maxTime = ((sKeyFrame*)((char*)keysRoot + (stateRoot->keyCount - 1) * sizeof(Importer::sKeyFrame)))->keyTime; //-1 to make keys end at the start of the adress of the last keyFrame instead of where the last keyframe ends

	for (int i = 0; i < model->numSkeletons; i++)
	{
		//layer gives the current animation layer/state
		Importer::hSkeleton* skeleton = asset->getSkeleton(i);

		for (int j = 0; j < skeleton->jointCount; j++)
		{
			//get animation layer
			Importer::hAnimationState* state = asset->getAnimationState(i, j, layer);

			//Importer::hJoint* joint;
			Importer::sKeyFrame* keys = asset->getKeyFrames(i, j, layer);
																												  //resets itself wohahaha
			animationTimers[animationSegment] = abs(std::fmod(animationTimers[animationSegment], maxTime));

			timeOverCompare = (float)INT_MAX;
			timeUnderCompare = -(float)INT_MAX;

			Importer::sKeyFrame overKey;
			Importer::sKeyFrame underKey;

			for (int k = 0; k < state->keyCount; k++)
			{
				currKey = (sKeyFrame*)((char*)keys + k * sizeof(Importer::sKeyFrame));
				diff = animationTimers[animationSegment] - currKey->keyTime;

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
}

void Animation::updateAnimationForBlending(float dt, int layer, float& animTimer, Importer::sKeyFrame* fillArr)
{
	if (animTimer >= 0.0f)
		animTimer += dt;
	Importer::hModel* model = asset->getHeader();
	Importer::sKeyFrame* keys;
	Importer::hAnimationState* state;
	int jointOffset = 0;
	float maxTime;
	float timeOverCompare;
	float timeUnderCompare;
	Importer::sKeyFrame overKey;
	Importer::sKeyFrame underKey;
	Importer::sKeyFrame* currKey;
	for (int i = 0; i < model->numSkeletons; i++)
	{
		//layer gives the current animation layer/state
		Importer::hSkeleton* skeleton = asset->getSkeleton(i);

		for (int j = 0; j < skeleton->jointCount; j++)
		{
			//get animation layer
			state = asset->getAnimationState(i, j, layer);

			//Importer::hJoint* joint;
			keys = asset->getKeyFrames(i, j, layer);

			//Get the maxtime for this layer
			maxTime = ((sKeyFrame*)((char*)keys + (state->keyCount - 1) * sizeof(Importer::sKeyFrame)))->keyTime; //-1 to make keys end at the start of the adress of the last keyFrame instead of where the last keyframe ends
																												  //resets itself wohahaha
			animTimer = abs(std::fmod(animTimer, maxTime));

			timeOverCompare = (float)INT_MAX;
			timeUnderCompare = -(float)INT_MAX;

			for (int k = 0; k < state->keyCount; k++)
			{
				currKey = (sKeyFrame*)((char*)keys + k * sizeof(Importer::sKeyFrame));
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
	memcpy(fillArr, finalList, numJoints * sizeof(Importer::sKeyFrame));
}

GEAR_API void Animation::updateState(float dt, int state, int animationSegment)
{
	//Do not append if the animation already exists 
	if (animationStack[animationSegment][backIdx] == state)
	{
		if (animationStack[animationSegment][frontIdx] == EMPTYELEMENT)
		{
			updateAnimation(dt, state, animationSegment);
		}
		else if (animationStack[animationSegment][frontIdx] != EMPTYELEMENT)
		{
			int from = animationStack[animationSegment][frontIdx];
			int to = animationStack[animationSegment][backIdx];

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
				animationStack[animationSegment][frontIdx] = EMPTYELEMENT;
				isTransitionCompletes[animationSegment] = false;
			}
		}
	}
	//Append if the animation doesn't exist
	else //backIdx != state
	{
		int back = animationStack[animationSegment][backIdx];
		animationStack[animationSegment][frontIdx] = back;

		animationStack[animationSegment][backIdx] = state;
	}



	//The last thing, calculate the timeMultiplier so that the player's attack animations are timed to the spells' "cooldown" or castTime
	//make sure to reset the timeMultiplier after the attack is done. It is crucial. Or else the animation will get faster and faster.
	if (animationPlayTime[animationSegment] > 0 && modifyAnimationLength[animationSegment] == true)
	{
		Importer::hAnimationState* stater = asset->getAnimationState(0, 5, state);
		Importer::sKeyFrame* keys = asset->getKeyFrames(0, 5, state);
		float animMaxTime = ((sKeyFrame*)((char*)keys + (stater->keyCount - 1) * sizeof(Importer::sKeyFrame)))->keyTime;
		timeMultiplier[animationSegment] = animMaxTime / animationPlayTime[animationSegment];
		pAnimMaxTime[animationSegment] = animMaxTime;
		//std::cout << "animMax: " << animMaxTime << " " << "animPlayTime: " << animationPlayTime[animationSegment] << std::endl;
	}
	else
	{
		timeMultiplier[animationSegment] = 1.f;
	}
}

void Animation::updateStateForQuickBlend(float dt, int state, int animationSegment, float transitionTime)
{
	if (animationStack[animationSegment][backIdx] == state)
	{
		if (animationStack[animationSegment][frontIdx] == EMPTYELEMENT)
		{
			updateAnimation(dt, state, animationSegment);
		}
		else if (animationStack[animationSegment][frontIdx] != EMPTYELEMENT)
		{
			int from = animationStack[animationSegment][frontIdx];
			int to = animationStack[animationSegment][backIdx];

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
				animationStack[animationSegment][frontIdx] = EMPTYELEMENT;
				animationStack[animationSegment][backIdx] = to;
				isTransitionCompletes[animationSegment] = false;
			}
		}
	}
	//Append if the animation doesn't exist
	else
	{
		//If the blending got interrupted
		if (animationStack[animationSegment][frontIdx] != EMPTYELEMENT)
		{
			int back = animationStack[animationSegment][backIdx];
			animationStack[animationSegment][frontIdx] = back;
		}
		animationStack[animationSegment][backIdx] = state;
	}
}

GEAR_API bool Animation::quickBlend(float dt, int originState, int transitionState, float blendTime, int animationSegment)
{
	if (quickBlendJustEntered)
	{
		quickBlendJustEntered = false;
		animationStack[quickBlendSegment][frontIdx] = quickBlendFrom;
		animationStack[quickBlendSegment][backIdx] = quickBlendTo;
	}
	float halfTime = blendTime / 2.f;

	if (quickBlendStates[animationSegment] == true)
	{
		transitionState = originState;
	}
 	updateStateForQuickBlend(dt, transitionState, animationSegment, halfTime);
	
	//When it has switched back and forth, and the timer is at or beyond the blendTime.
	if (animationTimers[animationSegment] >= blendTime && quickBlendStates[animationSegment] == true)
	{
		animationTimers[animationSegment] = 0;
		int wolo = animationStack[animationSegment][backIdx];
		animationStack[animationSegment][frontIdx] = animationStack[animationSegment][backIdx];
		animationStack[animationSegment][backIdx] = EMPTYELEMENT;
		quickBlendStates[animationSegment] = false;

		updateAnimation(dt, wolo, animationSegment);
		
		quickBlendJustEntered = true;

		return true;
	}
	
	if (animationTimers[animationSegment] >= halfTime && quickBlendStates[animationSegment] == false)
	{
		quickBlendStates[animationSegment] = true;
	}

	return false;
}

GEAR_API void Animation::setAnimationSegments(int numberOfSegments)
{
	this->animationSegments = numberOfSegments;

	for (int i = 0; i < animationSegments; i++)
	{
		timeMultiplier[i] = 1;
		animationPlayTime[i] = -1;

		isTransitionCompletes[i] = true;
		oldTos[i] = EMPTYELEMENT;
		oldFroms[i] = EMPTYELEMENT;

		transitionMaxTimes[i] = 0;
		transitionTimers[i] = 0;
		animationTimers[i] = 0;

		animationStack[i][frontIdx] = EMPTYELEMENT;
		animationStack[i][backIdx] = EMPTYELEMENT;

		quickBlendStates[i] = false;

		glm::mat4x4* allahu = new glm::mat4x4[MAXJOINTCOUNT];
		animationMatrixLists[i] = allahu;

		currentSegmentStates[i] = 0;

		modifyAnimationLength[i] = false;
	}
}

void Animation::setMatrixIndex(int index)
{
	matrixIndex = index;
}

int Animation::getMatrixIndex()
{
	return matrixIndex;
}

void Animation::setTint(const glm::vec4 & tint)
{
	modelTint = tint;
}

void Animation::removeTint()
{
	modelTint.a = 0;
}

glm::vec4 Animation::getTint()
{
	return modelTint;
}

void Animation::reset()
{
	delete[] blendFromKeys;
	delete[] blendToKeys;
	delete[] blendedList;
	delete[] transitionTimeArray;
	delete[] finalList;
	for (int i = 0; i < animationSegments; i++)
		delete[] animationMatrixLists[i];

	//animTimer = 0.0f;
	fromAnimationTimer = 0;
	toAnimationTimer = 0;
	animationSegments = 0;

	transitionTimeArray = nullptr;

	transitionTimeArraySize = 9;

	quickBlendFrom = 0;
	quickBlendTo = 0;
	quickBlendSegment = -1;
	quickBlendTime = 0;
	quickBlendingDone = true;
	blendFromKeys = nullptr;
	blendToKeys = nullptr;
	finalList = nullptr;
	blendedList = nullptr;
}

void Animation::setCulled(bool c)
{
	this->culled = c;
}

bool Animation::getCulled()
{
	return this->culled;
}

GEAR_API void Animation::setTransitionTimes(float * transitionTimeArray, int numStates)
{
	assert(this->transitionTimeArray == nullptr);

	this->transitionTimeArray = new float[numStates * numStates];
	memcpy((char*)this->transitionTimeArray, (char*)transitionTimeArray, sizeof(float) * numStates * numStates);
	this->transitionTimeArraySize = numStates * numStates;
	setStates(numStates);
}

GEAR_API void Animation::setSegmentPlayTime(float animTime, int animationSegment)
{
	modifyAnimationLength[animationSegment] = true;
	animationPlayTime[animationSegment] = animTime;
}

GEAR_API void Animation::resetSegmentAnimationClock(int segment)
{
	animationTimers[segment] = 0;
}

GEAR_API void Animation::resetSegmentPlayTime(int animationSegment)
{
	modifyAnimationLength[animationSegment] = false;
	animationPlayTime[animationSegment] = pAnimMaxTime[animationSegment];
}

GEAR_API void Animation::setStates(int numStates)
{
	this->numStates = numStates;
}

GEAR_API void Animation::assembleAnimationsIntoShadermatrices()
{
	if (animationSegments > 1)
	{
		//animationMatrixLists is a MAXJOINTCOUNT long mat4 list, where each matrix is a finalized joint transform
		memcpy(shaderMatrices, animationMatrixLists[0], MAXJOINTCOUNT * sizeof(glm::mat4x4));

		for (int i = 1; i < animationSegments; i++)
		{
			//if the whole animation is full of identity matrices, skip it.
			if (memcmp(&animationMatrixLists[i][0], &identityMatrixList, sizeof(glm::mat4x4) * MAXJOINTCOUNT) != 0)
			{
				for (int j = 0; j < MAXJOINTCOUNT; j++)
				{
					//If the new matrix isn't an identity matrix, do the multiplication. 
					if (memcmp(&animationMatrixLists[i][j], &glm::mat4x4(), sizeof(glm::mat4x4)) != 0)
						shaderMatrices[j] *= animationMatrixLists[i][j]; //* popo;
				}
			}
		}
	}
	else
	{
		//64 slots each with 64 matrices
		memcpy(shaderMatrices, animationMatrixLists[0], MAXJOINTCOUNT * sizeof(glm::mat4));
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

	//use memcpy on new memory area.
	updateAnimationForBlending(dt, blendFrom, fromAnimationTimer, blendFromKeys);
	updateAnimationForBlending(dt, blendTo, toAnimationTimer, blendToKeys);

	for (int i = 0; i < numJoints; i++)
	{
		blendedList[i] = interpolateKeysForBlending(blendToKeys[i], blendFromKeys[i], animationSegment);
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

//void Animation::updateJointMatrices(std::vector<sKeyFrame>& keyList)
//{
//	glm::mat4x4 tMatrices[MAXJOINTCOUNT];
//
//	glm::mat4 translateMat;
//	glm::mat4 rotateMat;
//	glm::mat4 scaleMat;
//
//	for (int i = 0; i < keyList.size(); i++)
//	{
//		convertToRotMat(keyList[i].keyRotate, &rotateMat);
//		convertToTransMat(keyList[i].keyTranslate, &translateMat);
//		convertToScaleMat(keyList[i].keyScale, &scaleMat);
//
//		tMatrices[i] = translateMat * scaleMat * rotateMat;
//	}
//
//	int jointIdxOffset = 0;
//	hSkeleton* skelPtr = asset->getSkeleton(0);
//	hJoint* modelJointPtr = asset->getJointsStart();
//	for (int i = 0; i < keyList.size(); i++)
//	{
//		if (modelJointPtr->parentJointID >= 0)
//		{
//			int parentID = modelJointPtr->parentJointID + jointIdxOffset;
//
//			tMatrices[i] = tMatrices[parentID] * tMatrices[i];
//		}
//
//		glm::mat4x4 invBPose = glm::make_mat4x4(modelJointPtr->globalBindposeInverse);
//
//		shaderMatrices[i] = tMatrices[i] * invBPose;
//
//		modelJointPtr = (hJoint*)((char*)modelJointPtr + sizeof(hJoint));
//		if (i == skelPtr->jointCount - 1)
//		{
//			skelPtr = (hSkeleton*)((char*)skelPtr + sizeof(hSkeleton));
//			jointIdxOffset = skelPtr->jointOffset / sizeof(hJoint);
//		}
//	}
//}

void Animation::calculateAndSaveJointMatrices(sKeyFrame* keyList, int animationSegment)
{
	glm::mat4x4 tMatrices[MAXJOINTCOUNT];
	glm::mat4 translateMat;
	glm::mat4 scaleMat;
	glm::mat4 rotateMat;

	for (int i = 0; i < numJoints; i++)
	{
		//rotations are expressed in degrees / euler
		//convertToRotMat(keyList[i].keyRotate, &rotateMat);
		//convertToTransMat(keyList[i].keyTranslate, &translateMat);
		//convertToScaleMat(keyList[i].keyScale, &scaleMat);
		//tMatrices[i] = translateMat * scaleMat * rotateMat;
		makeTRSMatrix(keyList[i].keyTranslate, keyList[i].keyRotate, keyList[i].keyScale, &tMatrices[i]);
	}

	/*
	Make a special case where when the animation of segment is not calculated, use it's root and add it's rotation
	to the other segment's rotation
	*/
	int jointIdxOffset = 0;
	hSkeleton* skelPtr = asset->getSkeleton(0);
	hJoint* modelJointPtr = asset->getJointsStart();
	glm::mat4x4 invBPose;
	int parentID;
	for (int i = 0; i < numJoints; i++)
	{
		if (modelJointPtr->parentJointID >= 0)
		{
			parentID = modelJointPtr->parentJointID + jointIdxOffset;
			tMatrices[i] = tMatrices[parentID] * tMatrices[i];
		}

		int checker = modelJointPtr->parentJointID;

		invBPose = glm::make_mat4x4(modelJointPtr->globalBindposeInverse);

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
	fillArr[0] = glm::mix(arr1[0], arr2[0], iVal);
	fillArr[1] = glm::mix(arr1[1], arr2[1], iVal);
	fillArr[2] = glm::mix(arr1[2], arr2[2], iVal);
	//fillArr[0] = (arr1[0] * (1 - iVal)) + (arr2[0] * (iVal));
	//fillArr[1] = (arr1[1] * (1 - iVal)) + (arr2[1] * (iVal));
	//fillArr[2] = (arr1[2] * (1 - iVal)) + (arr2[2] * (iVal));
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
	glm::mat4 aids = glm::rotate(in[0], glm::vec3(1, 0, 0)) * glm::rotate(in[1], glm::vec3(0, 1, 0)) * glm::rotate(in[2], glm::vec3(0, 0, 1));
}

void Animation::makeTRSMatrix(float inTranslation[3], float inRotation[3], float inScale[3], glm::mat4x4* result)
{
	glm::mat4 translation = glm::translate(glm::vec3(inTranslation[0], inTranslation[1], inTranslation[2]));

	glm::mat4 rotation = glm::rotate(inRotation[2], glm::vec3(0, 0, 1))  * glm::rotate(inRotation[1], glm::vec3(0, 1, 0)) * glm::rotate(inRotation[0], glm::vec3(1, 0, 0));

	glm::mat4 scale = glm::scale(glm::vec3(inScale[0], inScale[1], inScale[2]));

	*result = translation * scale  * rotation;
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

void Animation::setSegmentState(int state, int segment)
{
	currentSegmentStates[segment] = state;
}

void Animation::setQuickBlend(int from, int to, float blendTime, int segment)
{
	quickBlendFrom = from;
	quickBlendTo = to;
	quickBlendTime = blendTime;
	quickBlendSegment = segment;
	quickBlendingDone = false;
}

void Animation::update(float dt)
{
	if (numJoints <= 0)
		return;

	for (int i = 0; i< animationSegments; i++)
	{

		if (i == quickBlendSegment)
		{
			if (!quickBlendingDone)
			{
				quickBlendingDone = quickBlend(dt * timeMultiplier[i], quickBlendFrom, quickBlendTo, quickBlendTime, quickBlendSegment);
			}
		}
		else
			updateState(dt * timeMultiplier[i], currentSegmentStates[i], i);
	}

	assembleAnimationsIntoShadermatrices();
}