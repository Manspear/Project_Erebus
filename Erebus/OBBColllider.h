#pragma once
#include "HitBox.h"
//inspiration
//http://www.jkh.me/files/tutorials/Separating%20Axis%20Theorem%20for%20Oriented%20Bounding%20Boxes.pdf
class OBBColllider : public HitBox
{
public:
	OBBColllider();
	OBBColllider(int transformID);
	OBBColllider(glm::vec3 pos,float xHalfLength, float yHalfLength, float zHalfLength);
	OBBColllider(int transformID, float xHalfLength, float yHalfLength, float zHalfLength);
	~OBBColllider();

	void rotateAroundX(float radianAngle);
	void rotateAroundY(float radianAngle);
	void rotateAroundZ(float radianAngle);

	//setters
	void setSize(float xHalfLength, float yHalfLength, float zHalfLength);
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

	bool checkCollision(OBBColllider* collider);
	
private:
	glm::vec3 pos;
	glm::vec3 xAxis, yAxis, zAxis;
	float xHalfLength, yHalfLength, zHalfLength;
};

