#include "Animation.h"

Animation::Animation()
{
	animationTimer = 0;
	fromAnimationTimer = 0;
	toAnimationTimer = 0;
	for (int i = 0; i < finalList.size(); i++)
		shaderMatrices[i] = glm::mat4();

	/*FOR TESTING PURPOSES*/
	float* aids = new float[9];
	for (int i = 0; i < 9; i++)
		aids[i] = 0.5;
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
	updateJointMatrices(finalList);
}

GEAR_API std::vector<sKeyFrame> Animation::updateAnimationForBlending(float dt, int layer, float animTimer)
{
	/*
	The MODEL file order:
	DATAHEADER -> MODELHEADER -> OFFSETS ->
	MESHES -> BOUNDINGBOXES -> SKELETONS ->
	JOINTS -> ANIMATION STATES -> KEYFRAMES ->
	VERTICES -> SKELETAL VERTICES -> INDICES
	*/
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

GEAR_API void Animation::updateState(float dt, int state)
{
	//You have to be able to "lock" appending until a transition is done.
	//When the transition is done, and the input-state is still the same, no need to blend. 
	//Pop everything but the top element.

	//If it's the same input as before
	if (animationStack.back() == state)
	{
		if (animationStack.size() > 1)
		{
			//When the transition is done
			if (isTransitionComplete)
			{
				//Just repeat the same animation
				if (animationStack.size() > 1)
				{
					//Wipes the stack, and sets in the looping animation
					animationStack.clear();
					animationStack.push_back(state);
				}
			}
			//When it's not done
			else
			{
				//Blend the animations
				int from = animationStack[animationStack.size() - 2];
				int to = animationStack.back();

				if (oldFrom != from && oldTo != to)
				{
					//Gets the right element according to the formula:
					//column + vectorLength * row = element
					//Same as writing array[column][element]
					transitionTimer = transitionTimeArray[to + numStates * from];
					transitionMaxTime = transitionTimer;
				}
				blendAnimations(to, from, transitionTimer, dt);

				oldFrom = from;
				oldTo = to;

				/*
				ONE generic animation-function, or several?
				We want it to be as easy as possible to add a new asset to the game.
				The only thing that separates each animation-blending-implementation
				is the types of states, and the transition times.

				How do you know which transition time to get?
				You get an array of transition times. That array
				corresponds to a list of enums. Could you send in a list of enum-numbers too?
				If you can, can you dynamically "pick" the transition time to pick? Yes?

				If you have the previous state, and the now-state, you have your to-from.
				It's "mapped" to the 2D transition time list sent in, and as such you know
				which transition time to pick from that list!

				For this to work though, you need there to be as many animations as states.
				Unless you make the states have "indexes" to the right animations. Which might be
				too much overhead.
				*/

				/*
				HUM! You are supposed to be able to stay in a perpetual blend state, and
				not be forced to blend to the "newest" animation. For this to work you
				kinda need a vector that tells you where you "are" in the blending. Or at least
				a value that gets changed depending and can stay in "changing".

				Or... When you press both W then D you first attempt to blend between those two
				for a few milliseconds, and then the "WD" state is set. From how I've coded now
				the blending will be treated like the "latest" button pressed will be blended from to "WD".
				Here we want the first pressed to be the one blended from.
				*/
			}
		}
		else
		{
			//Run the same animation
			updateAnimation(dt, state);
		}
	}
	//if it's a new input
	else
	{
		animationStack.push_back(state);

		if (animationStack.size() > 1)
		{
			//Blend the animations
			int from = animationStack[animationStack.size() - 2];
			int to = animationStack.back();

			if (oldFrom != from && oldTo != to)
			{
				//Gets the right element according to the formula:
				//column + vectorLength * row = element
				//Same as writing array[column][element]
				transitionTimer = transitionTimeArray[to + numStates * from];
				transitionMaxTime = transitionTimer;
			}
			blendAnimations(to, from, transitionTimer, dt);


			oldFrom = from;
			oldTo = to;
		}
		else
		{
			//Run the lone animation
			updateAnimation(dt, state);
		}
	}
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

	blendFromKeys = updateAnimationForBlending(dt, blendFrom, fromAnimationTimer);
	blendToKeys = updateAnimationForBlending(dt, blendTo, toAnimationTimer);
	bool isDifferent = false;
	for (int i = 0; i < blendToKeys.size(); i++)
	{
		if (!isDifferent)
		{
			for (int j = 0; j < 4; j++)
			{
				if (blendFromKeys[i].keyRotate[j] != blendToKeys[i].keyRotate[j])
				{
					isDifferent = true;
					break;
				}
			}

		}
	}

	std::vector<sKeyFrame> blendedList;
	for (int i = 0; i < blendToKeys.size(); i++)
	{
		blendedList.push_back(interpolateKeysForBlending(blendToKeys[i], blendFromKeys[i]));
	}

	//Now update the matrix list with the blended keys
	updateJointMatrices(blendedList);

	//When blended
	transitionTimer -= dt;
	if (transitionTimer < 0.01)
		isTransitionComplete = true;
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

Importer::sKeyFrame Animation::interpolateKeysForBlending(Importer::sKeyFrame to, Importer::sKeyFrame from)
{
	/*
		What separetes this from usual interpolateKeys is that the diffKeys variable is dependent on the transition time 
		instead of the keyTimes. Need a "maxTransitionTime" and a timer that counts down.
	*/

	//Send in the "percentage" of the way through transitionMaxTime transitionTImer is.
	float diffKeys = transitionTimer / transitionMaxTime;

	float underAffect = diffKeys;

	Importer::sKeyFrame interpolatedKey;

	glm::quat rotOver = glm::make_quat(to.keyRotate);
	glm::quat rotUnder = glm::make_quat(from.keyRotate);

	myLerp(from.keyTranslate, to.keyTranslate, interpolatedKey.keyTranslate, underAffect);

	myLerp(from.keyScale, to.keyScale, interpolatedKey.keyScale, underAffect);

	//Lerping the quaternion
	glm::quat resQ = glm::slerp(rotUnder, rotOver, underAffect);
	glm::vec3 endRot = glm::eulerAngles(resQ);
	interpolatedKey.keyRotate[0] = endRot[0];
	interpolatedKey.keyRotate[1] = endRot[1];
	interpolatedKey.keyRotate[2] = endRot[2];

	//INTERPOLATED TIME == (underKey.keyTime * (1 - underAffect)) + (overKey.keyTime * underAffect)
	interpolatedKey.keyTime = to.keyTime;//(from.keyTime * (1 - underAffect)) + (to.keyTime * underAffect);

	return interpolatedKey;
}

void Animation::updateJointMatrices(std::vector<sKeyFrame>& keyList)
{
	glm::mat4x4 tMatrices[MAXJOINTCOUNT];

	for (int i = 0; i < keyList.size(); i++)
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

		//degRot[0] = finalList[i].keyRotate[0] * 180 / 3.14159265359;
		//degRot[1] = finalList[i].keyRotate[1] * 180 / 3.14159265359;
		//degRot[2] = finalList[i].keyRotate[2] * 180 / 3.14159265359;
		glm::mat4 translateMat;
		glm::mat4 rotateMat;
		glm::mat4 scaleMat;


		//convertToRotMat(finalList[i].keyRotate, &rotateMat);
		convertToRotMat(keyList[i].keyRotate, &rotateMat);
		convertToTransMat(keyList[i].keyTranslate, &translateMat);
		convertToScaleMat(keyList[i].keyScale, &scaleMat);

		tMatrices[i] = translateMat * scaleMat * rotateMat;
	}
	/*It looks like only the root is moving... But it should not*/
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
