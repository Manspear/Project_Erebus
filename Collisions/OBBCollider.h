#pragma once
#include "HitBox.h"
//inspiration for separating axis theorem
//http://www.jkh.me/files/tutorials/Separating%20Axis%20Theorem%20for%20Oriented%20Bounding%20Boxes.pdf

namespace Collisions
{
	class OBBCollider : public HitBox
	{
	public:
		COLLISIONS_EXPORTS OBBCollider();
		COLLISIONS_EXPORTS OBBCollider(int transformID);
		COLLISIONS_EXPORTS OBBCollider(glm::vec3 pos, float xHalfLength, float yHalfLength, float zHalfLength);
		COLLISIONS_EXPORTS OBBCollider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength);
		COLLISIONS_EXPORTS virtual ~OBBCollider();

		COLLISIONS_EXPORTS void rotateAroundX(float radianAngle);
		COLLISIONS_EXPORTS void rotateAroundY(float radianAngle);
		COLLISIONS_EXPORTS void rotateAroundZ(float radianAngle);

		//setters
		COLLISIONS_EXPORTS void setSize(float xHalfLength, float yHalfLength, float zHalfLength);
		COLLISIONS_EXPORTS void setSize(glm::vec3 size);
		COLLISIONS_EXPORTS void setXHalfLength(float length);
		COLLISIONS_EXPORTS void setYHalfLength(float length);
		COLLISIONS_EXPORTS void setZHalfLength(float length);
		COLLISIONS_EXPORTS void setXAxis(glm::vec3 xAxis);
		COLLISIONS_EXPORTS void setYAxis(glm::vec3 yAxis);
		COLLISIONS_EXPORTS void setZAxis(glm::vec3 zAxis);

		//Overrides
		COLLISIONS_EXPORTS virtual int getID() const override;
		COLLISIONS_EXPORTS virtual int getIDTransform() const override;
		COLLISIONS_EXPORTS virtual std::vector<int>* getIDCollisionsRef() override;

		//getters
		COLLISIONS_EXPORTS const glm::vec3& getPos() const;
		COLLISIONS_EXPORTS const glm::vec3& getXAxis() const;
		COLLISIONS_EXPORTS const glm::vec3& getYAxis() const;
		COLLISIONS_EXPORTS const glm::vec3& getZAxis() const;
		COLLISIONS_EXPORTS const glm::vec3& getHalfLengths() const;

	private:
		glm::vec3 xAxis, yAxis, zAxis;
		glm::vec3 halfLengths;
		const int FLAG = 2;
	};


}
