#include "PlayerAnimation.h"

PlayerAnimation::PlayerAnimation()
{
}

PlayerAnimation::~PlayerAnimation()
{
}

void PlayerAnimation::updateState(float dt, int state)
{
	//You have to be able to "lock" appending until a transition is done.
	//When the transition is done, and the input-state is still the same, no need to blend. 
	//Pop everything but the top element.

	PlayerStates inputState = (PlayerStates)state;
	if (animationStack.back() == inputState)
	{
		//When the transition is done
		if (isTransitionComplete)
		{
			//Just repeat the same animation
			if (animationStack.size() > 1)
			{
				//Wipes the stack, and sets in the looping animation
				animationStack.clear();
				animationStack.push_back(inputState);
			}
		}
		//When it's not done
		else
		{
			//Blend the animations
			int from = animationStack.back();
			int to = animationStack[animationStack.size() - 2];
			
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
		}
	}
	else
	{
		animationStack.push_back(inputState);
		
		if (animationStack.size() > 1)
		{
			//Blend the animations
		}
		else
		{
			//Run the lone animation
		}
	}
	/*
	What do I blend between? The animations at back() and back() - 1
	When do I blend?
	When the stack is at least size == 2, and the transition is not complete
	*/
}

void PlayerAnimation::blendAnimations(int blendTo, int blendFrom, float transitionTimer, float dt)
{
	//Blend
	/*
	Need the "finished" matrices of both of these animations.
	Modify the animation-function to return a list of matrices.
	*/

	blendFromKeys = updateAnimationForBlending(dt, blendFrom, fromAnimationTimer);
	blendToKeys = updateAnimationForBlending(dt, blendFrom, toAnimationTimer);
	std::vector<sKeyFrame> blendedList;
	for (int i = 0; i < blendToKeys.size(); i++)
	{
		blendedList.push_back(interpolateKeysForBlending(blendToKeys[i], blendFromKeys[i]));
	}

	//Now update the matrix list with the blended keys

	//When blended
	transitionTimer -= dt;
	if(transitionTimer < 0.01)
		isTransitionComplete = true;
}
