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
		//Don't push
	}
	else
	{
		
		//need to access the value not at the top
		animationStack.push_back(inputState);

		if (animationStack.size() > 1)
		{
			animationStack.pop_back();
		}
	}
}
