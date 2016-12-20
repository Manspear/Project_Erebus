#pragma once
#include"BaseIncludes.h"
#include"AGI.h"

class EnemyState
{
public:
	AGI_API EnemyState() {};
	AGI_API virtual ~EnemyState() {};

	AGI_API virtual void update() {};
	AGI_API virtual void enterState() {};
	AGI_API virtual void exitState() {};
};