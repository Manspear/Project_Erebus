#pragma once
#include"BaseIncludes.h"
#include"AGI.h"

class RadiusInfluenceNode
{
public:
	AGI_API RadiusInfluenceNode()
	{
		this->pos = glm::vec3(0,0,0);
		this->radius = 1;
	};

	AGI_API RadiusInfluenceNode(glm::vec3 * pos,float radius)
	{
		this->pos = *pos;
		this->radius = radius;
	};

	AGI_API ~RadiusInfluenceNode()
	{

	};
	AGI_API void setPos(glm::vec3 inPos)
	{
		// pos = inPos;
	}
	AGI_API bool withinRange(glm::vec3 inPos)
	{
		if (this->radius > getDistance(inPos))
			return true;

		return false;
	};
	AGI_API glm::vec3 getDir(glm::vec3 inPos)
	{
		return pos- inPos;
	}

	AGI_API float getRadius()
	{
		return radius;
	};

	AGI_API float getDistance(glm::vec3 inPos)
	{
		return glm::distance(pos, inPos);
	}

private:
	glm::vec3 pos;
	float radius;
};