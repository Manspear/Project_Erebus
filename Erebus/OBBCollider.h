#pragma once
#include "HitBox.h"
//inspiration for separating axis theorem
//http://www.jkh.me/files/tutorials/Separating%20Axis%20Theorem%20for%20Oriented%20Bounding%20Boxes.pdf

class OBBCollider : public HitBox
{
public:
	OBBCollider();
	OBBCollider(int transformID);
	OBBCollider(glm::vec3 pos,float xHalfLength, float yHalfLength, float zHalfLength);
	OBBCollider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength);
	~OBBCollider();

	void rotateAroundX(float radianAngle);
	void rotateAroundY(float radianAngle);
	void rotateAroundZ(float radianAngle);

	//setters
	void setSize(float xHalfLength, float yHalfLength, float zHalfLength);
	void setSize(glm::vec3 size);
	void setXHalfLength(float length);
	void setYHalfLength(float length);
	void setZHalfLength(float length);

	//Overrides
	virtual unsigned int getID() const override;
	virtual int getIDTransform() const override;
	virtual std::vector<unsigned int>* getIDCollisionsRef() override;
	virtual void insertCollisionID(unsigned int collisionID) override;
	virtual void clearCollisionIDs() override;
	virtual void setPos(glm::vec3 pos) override;

	bool checkCollision(OBBCollider* collider);

	//getters
	const glm::vec3& getPos() const;
	const glm::vec3& getXAxis() const;
	const glm::vec3& getYAxis() const;
	const glm::vec3& getZAxis() const;
	const glm::vec3& getHalfLengths() const;
	
private:
	glm::vec3 pos;
	glm::vec3 xAxis, yAxis, zAxis;
	glm::vec3 halfLengths;
};

