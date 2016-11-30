#include "Player.h"
#include "glm\matrix.hpp"
#include "glm\gtx\matrix_operation.hpp"


void Player::calcWorldMat()
{
	/*this->model->worldMatrix = {	scale * cosf(rotation.y+3.14),			0,					-sinf(rotation.y + 3.14),			0,
									0,										scale,				0,									0,
									sinf(rotation.y + 3.14),				0,					scale*cosf(rotation.y + 3.14),		0,
									position.x,								position.y,			position.z,							1
						};*/
}

void Player::update(Inputs* inputs, float dt)
{
	//this->position += lookAt *0.01f;
	glm::vec3 tempforward = glm::normalize(glm::vec3(lookAt.x, 0, lookAt.z));
	lookAt = glm::normalize(lookAt);
	if (inputs->keyPressed(GLFW_KEY_LEFT_SHIFT))
		speed = TURBO_SPEED;
	else {
		speed = BASE_SPEED;
	}

	//space = upp, x = ned, w = fram, s = bak, a = vänster, d = höger

	glm::vec3 speeds;

	speeds.y = -5;

	if (inputs->buttonPressedThisFrame(GLFW_MOUSE_BUTTON_LEFT))
   		weperino.shoot(position, lookAt);
	if (inputs->keyPressed(GLFW_KEY_SPACE))
		speeds.y = BASE_SPEED;
	if (inputs->keyPressed(GLFW_KEY_X))
		speeds.y = -BASE_SPEED;
	if (inputs->keyPressed(GLFW_KEY_W))
		speeds.z = BASE_SPEED;
	if (inputs->keyPressed(GLFW_KEY_S))
		speeds.z = -BASE_SPEED;
	if (inputs->keyPressed(GLFW_KEY_A))
		speeds.x = -BASE_SPEED;
	if (inputs->keyPressed(GLFW_KEY_D))
		speeds.x = BASE_SPEED;

	weperino.update(dt);
	

	glm::vec3 right = cross(tempforward, { 0,1,0 });
	glm::mat3 changeOfBasisMat = glm::inverse(glm::mat3(right, {0,1,0},tempforward ));
	this->velocity = velocity + speeds * changeOfBasisMat * dt;

	this->position += this->velocity * speed * dt;

	this->velocity -= this->velocity*dt;

	MousePos dPos = inputs->getDeltaPos();

	rotation.y += (float)dPos.x / 100.f;
	rotation.z += (float)dPos.y / 100.f;
	if (rotation.y > 2 * 3.14f) {
		rotation.y -= 2 * 3.14f;
	}
	if (rotation.z > 3.14f / 2) {
		rotation.z = 3.14f / 2;
	}
	if (rotation.z < -3.14f / 2) {
		rotation.z = -3.14f / 2;
	}

	lookAt = glm::vec3(
		cos(rotation.z) * sin(rotation.y),
		sin(rotation.z),
		cos(rotation.z)*cos(rotation.y)
	);

	this->calcWorldMat();
}

Player::Player()
{
	this->position = {0,0,0};
	this->rotation = {0,0,0};
	this->velocity = {0,0,0};
	this->lookAt = {0,0,1};
	this->scale = 1;
	//calcWorldMat();
}
Player::~Player() {  };