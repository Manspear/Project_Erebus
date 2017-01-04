#include "Animation.h"

Animation::Animation()
{
	animationTimer = 0;
	fromAnimationTimer = 0;
	toAnimationTimer = 0;
	oldTo = -1;
	oldFrom = -1;
	for (int i = 0; i < finalList.size(); i++)
		shaderMatrices[i] = glm::mat4();

	/*FOR TESTING PURPOSES*/
	float* aids = new float[9];
	for (int i = 0; i < 9; i++)
		aids[i] = 1;
	transitionTimeArray = aids;
	transitionTimeArraySize = 9;
	numStates = 3;
	animationStack.push_back(0);
}

Animation::~Animation()
{
	delete[] transitionTimeArray;
}

void Animation::setAsset(Importer::ModelAsset * asset)
{
	this->asset = asset;
	Importer::hModel* model = asset->getHeader();
	finalList.resize(model->numJoints);
}

void Animation::updateAnimation(float dt, int layer)
{
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
	updateJointMatrices(finalList);
}

GEAR_API std::vector<sKeyFrame> Animation::updateAnimationForBlending(float dt, int layer, float& animTimer)
{
	animTimer += dt;
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
			finalList[j + jointOffset] = interpolateKeys(overKey, underKey);
		}
		jointOffset += skeleton->jointCount;
	}
	return finalList;
}

//GEAR_API void Animation::updateState(float dt, int state)
//{
//	//You have to be able to "lock" appending until a transition is done.
//	//When the transition is done, and the input-state is still the same, no need to blend. 
//	//Pop everything but the top element.
//
//	//If it's the same input as before
//	if (animationStack.back() == state)
//	{
//		if (animationStack.size() > 1)
//		{
//			//When the transition is done
//			if (isTransitionComplete)
//			{
//				//Just repeat the same animation
//				if (animationStack.size() > 1)
//				{
//					//Wipes the stack, and sets in the looping animation
//					animationStack.clear();
//					animationStack.push_back(state);
//				}
//				toAnimationTimer = 0;
//				fromAnimationTimer = 0;
//				isTransitionComplete = false;
//			}
//			//When it's not done
//			else
//			{
//				//Blend the animations
//				int from = animationStack[animationStack.size() - 2];
//				int to = animationStack.back();
//
//				if (oldFrom != from && oldTo != to)
//				{
//					//Gets the right element according to the formula:
//					//column + vectorLength * row = element
//					//Same as writing array[column][element]
//					transitionTimer = transitionTimeArray[to + numStates * from];
//					transitionMaxTime = transitionTimer;
//				}
//				//blendAnimations(to, from, transitionTimer, dt);
//
//				blendAnimations(to, from, transitionTimer, dt);
//				oldFrom = from;
//				oldTo = to;
//			}
//		}
//		else
//		{
//			int from = 1;
//			int to = 2;
//			
//			if (oldFrom != from && oldTo != to)
//			{
//				//Gets the right element according to the formula:
//				//column + vectorLength * row = element
//				//Same as writing array[column][element]
//				transitionTimer = transitionTimeArray[to + numStates * from];
//				transitionMaxTime = transitionTimer;
//			}
//			//blendAnimations(1, 2, transitionTimer, dt);
//			
//			oldFrom = from;
//			oldTo = to;
//			
//			blendAnimations(2, 1, transitionTimer, dt);
//			
//			if (isTransitionComplete)
//			{
//				oldFrom = 11;
//				oldTo = 11;
//			}
//
//			//Run the same animation
//			//updateAnimation(dt, state);
//			//toAnimationTimer = 0;
//		}
//	}
//	//if it's a new input
//	else
//	{
//		animationStack.push_back(state);
//
//		if (animationStack.size() > 1)
//		{
//			//Blend the animations
//			int from = animationStack[animationStack.size() - 2];
//			int to = animationStack.back();
//
//			if (oldFrom != from && oldTo != to)
//			{
//				//Gets the right element according to the formula:
//				//column + vectorLength * row = element
//				//Same as writing array[column][element]
//				transitionTimer = transitionTimeArray[to + numStates * from];
//				transitionMaxTime = transitionTimer;
//			}
//			//blendAnimations(to, from, transitionTimer, dt);
//			blendAnimations(to, from, transitionTimer, dt);
//
//			oldFrom = from;
//			oldTo = to;
//		}
//		else
//		{
//			int from = 1;
//			int to = 2;
//			
//			if (oldFrom != from && oldTo != to)
//			{
//				//Gets the right element according to the formula:
//				//column + vectorLength * row = element
//				//Same as writing array[column][element]
//				transitionTimer = transitionTimeArray[to + numStates * from];
//				transitionMaxTime = transitionTimer;
//			}
//			blendAnimations(2, 1, transitionTimer, dt);
//			
//			oldFrom = from;
//			oldTo = to;
//			
//			if (isTransitionComplete)
//			{
//				oldFrom = 11;
//				oldTo = 11;
//			}
//
//			//Run the lone animation
//			//updateAnimation(dt, state);
//			//toAnimationTimer = 0;
//		}
//	}
//}

GEAR_API void Animation::updateState(float dt, int state)
{
	printf("Animation stack size: %d \n", animationStack.size());
	if(animationStack.size() > 1)
		printf("Animation stack back: %d next to back: %d \n", animationStack.back(), animationStack[animationStack.size() - 2]);
	
	int lookie = animationStack.size();
	//Do not append if the animation already exists 
	if (animationStack.back() == state)
	{
		if (animationStack.size() == 1)
		{
			updateAnimation(dt, state);
		}
		else if(animationStack.size() > 1)
		{
			int from = animationStack[animationStack.size() - 2];
			int to = animationStack.back();
	
			if (oldTo != to && oldFrom != from)
			{
				transitionTimer = transitionTimeArray[to + numStates * from];
				transitionMaxTime = transitionTimer;
				oldTo = to;
				oldFrom = from;
				toAnimationTimer = 0;
			}
			blendAnimations(to, from, transitionTimer, dt);
			if (isTransitionComplete)
			{
				animationStack.clear();
				animationStack.push_back(to);
				isTransitionComplete = false;
			}
		}
	}
	//Append if the animation doesn't exist
	else
	{
		//If the blending got interrupted
		if (animationStack.size() > 1)
		{
			int back = animationStack.back();
			animationStack.clear();
			animationStack.push_back(back);
			//TEMPTEST
			animationTimer = transitionMaxTime - transitionTimer;
		}
		animationStack.push_back(state);
	}


	//float vario = animationTimer;
	//std::vector<Importer::sKeyFrame> to = updateAnimationForBlending(dt, 2, animationTimer);
	//std::vector<Importer::sKeyFrame> from = updateAnimationForBlending(dt, 1, animationTimer);
	//
	//std::vector<sKeyFrame> blendedList;
	//for (int i = 0; i < to.size(); i++)
	//{
	//	transitionTimer = 0;
	//	transitionMaxTime = 1;
	//	blendedList.push_back(interpolateKeysForBlending(to[i], from[i]));
	//}
	//
	//updateJointMatrices(blendedList);

	//Why do the animations affect each other when one of them has 0 weight?
}



GEAR_API void Animation::setTransitionTimes(float * transitionTimeArray, int arraySize, int numStates)
{
	this->transitionTimeArray = transitionTimeArray;
	this->transitionTimeArraySize = arraySize;
	setStates(numStates);
}

GEAR_API void Animation::setStates(int numStates)
{
	this->numStates = numStates;
}

glm::mat4x4 * Animation::getShaderMatrices()
{
	return shaderMatrices;
}

void Animation::blendAnimations(int blendTo, int blendFrom, float& transitionTimer, float dt)
{
	//Blend
	/*
	Need the "finished" matrices of both of these animations.
	Modify the animation-function to return a list of matrices.
	*/
	//fromAnimationTimer = animationTimer;
	float tempo = 0; //with tempo I am blending to the first keyframe
	blendFromKeys = updateAnimationForBlending(dt, blendFrom, animationTimer);
	//blendFromKeys = updateAnimationForBlending(dt, blendFrom, animationTimer);
	toAnimationTimer = animationTimer;
	//blendToKeys = updateAnimationForBlending(dt, blendTo, toAnimationTimer);
    blendToKeys = updateAnimationForBlending(dt, blendTo, toAnimationTimer);
	//blendToKeys = updateAnimationForBlending(dt, blendTo, animationTimer);
	
	std::vector<sKeyFrame> blendedList;
	for (int i = 0; i < blendToKeys.size(); i++)
	{
		blendedList.push_back(interpolateKeysForBlending(blendToKeys[i], blendFromKeys[i]));
	}

	//Now update the matrix list with the blended keys
	updateJointMatrices(blendedList);

	//When blended
	transitionTimer -= dt;
	if (transitionTimer < 0.001)
	{
		//Shouldn't need this since animationTimer was used in the updateFunction
		animationTimer = toAnimationTimer;
		//animationTimer = 0;
		toAnimationTimer = 0;
		isTransitionComplete = true;
	}
	else
	{
		isTransitionComplete = false;
	}
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
		overKey.keyRotate[3] = 1;

		return overKey;
	}

	float diffUnderTime = abs(animationTimer - underKey.keyTime);
	float underAffect = diffUnderTime / diffKeys;

	Importer::sKeyFrame interpolatedKey;
	glm::quat thing;
	glm::vec3 shit = glm::vec3(0, 1, 1);
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

Importer::sKeyFrame Animation::interpolateKeysForBlending(Importer::sKeyFrame to, Importer::sKeyFrame from)
{
	/*
		What separetes this from usual interpolateKeys is that the diffKeys variable is dependent on the transition time 
		instead of the keyTimes. Need a "maxTransitionTime" and a timer that counts down.
	*/

	//Send in the "percentage" of the way through transitionMaxTime transitionTImer is.
	float diffKeys = transitionTimer / transitionMaxTime;

	float underAffect = diffKeys;
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
