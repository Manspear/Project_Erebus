#pragma once
#include "CollisionHandler.h"
#include "Debug.h"
class CollisionsDraw
{
public:
	CollisionsDraw();
	CollisionsDraw(Debug* debugger);
	~CollisionsDraw();

	//setters
	void setDebugger(Debug* debugger);
	void setDefaultColor(const glm::vec3& color);
	void setDeactivatedColor(const glm::vec3& color);

	//drawing
	void draw(Collisions::CollisionHandler* collisionHandler);
	void draw(Collisions::AABBCollider* aabb);
	void draw(Collisions::SphereCollider* sphere);
	void draw(Collisions::OBBCollider* obb);
	void draw(Collisions::RayCollider* ray);

	

private:
	Debug* debugger;
	glm::vec3 colors[64]; // 64 colors to use on hitbox layers
	glm::vec3 defaultColor;
	glm::vec3 deactivatedColor;

	//helper functions
	void recursiveDraw(Collisions::HitBox * hitbox, glm::vec3 color);
	void initializeColors();
};

