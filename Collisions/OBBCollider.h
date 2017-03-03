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
		COLLISIONS_EXPORTS OBBCollider(const int & transformID);
		COLLISIONS_EXPORTS OBBCollider(const glm::vec3 & pos, const float & xHalfLength, const float & yHalfLength, const float & zHalfLength);
		COLLISIONS_EXPORTS OBBCollider(const int & transformID, const float & xHalfLength, const float & yHalfLength, const float & zHalfLength);
		COLLISIONS_EXPORTS virtual ~OBBCollider();

		COLLISIONS_EXPORTS void rotateAroundX(const float & radianAngle);
		COLLISIONS_EXPORTS void rotateAroundY(const float & radianAngle);
		COLLISIONS_EXPORTS void rotateAroundZ(const float & radianAngle);

		//setters
		COLLISIONS_EXPORTS void setSize(const float & xHalfLength, const float & yHalfLength, const float & zHalfLength);
		COLLISIONS_EXPORTS void setSize(const glm::vec3 & size);
		COLLISIONS_EXPORTS void setXHalfLength(const float & length);
		COLLISIONS_EXPORTS void setYHalfLength(const float & length);
		COLLISIONS_EXPORTS void setZHalfLength(const float & length);
		COLLISIONS_EXPORTS void setXAxis(const glm::vec3 & xAxis);
		COLLISIONS_EXPORTS void setYAxis(const glm::vec3 & yAxis);
		COLLISIONS_EXPORTS void setZAxis(const glm::vec3 & zAxis);
		//All of the axes need to create a coordinate system with axes perpendicular
		COLLISIONS_EXPORTS void setAllAxis(const glm::vec3 & xAxis, const glm::vec3 & yAxis, const glm::vec3 & zAxis);

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
