#include "LevelGizmo.h"
#include "glm/gtx/string_cast.hpp"

LevelGizmo::LevelGizmo() {

	this->checker = new CollisionChecker();

	bigVal = std::numeric_limits<float>::max();

	setColors();
	setDirections();
	setPlanes();
	this->actorHandlerRef = LevelActorHandler::getInstance();
	this->selectedGizmo = NUM_LOC;

	this->cameraOldPos = glm::vec3(0);

}

void LevelGizmo::setPlanes() {
	this->gizmoPlanes[X].direction = { 0,1,0 };
	this->gizmoPlanes[Y].direction = { 1,0,0 };
	this->gizmoPlanes[Z].direction = { 0,1,0 };
	for (size_t i = 0; i < GizmoLocation::NUM_LOC; i++)
	{
		//this->gizmoPlanes[i].direction = this->directions[i];
		this->gizmoPlanes[i].center = glm::vec3(0);
	}
}

void LevelGizmo::setDirections() {
	this->directions[X] = glm::vec3(1, 0, 0);
	this->directions[Y] = glm::vec3(0, 1, 0);
	this->directions[Z] = glm::vec3(0, 0, 1);


}

bool LevelGizmo::checkRay() {
	GizmoLocation closest = GizmoLocation::NUM_LOC;
	float closestDistance = this->bigVal;
	glm::vec3 intersectionPoint;
	glm::vec3 closestHitPointOffset;
	for (size_t i = 0; i < NUM_LOC; i++)
	{
		if (this->checker->collisionCheck(&rayGizmos[i], &obbGizmos[i])) {
			if (std::abs(rayGizmos[i].hitdistance()) < closestDistance) {
				closestDistance = std::abs(rayGizmos[i].hitdistance());

				closest = (GizmoLocation)i;
			}
		}
	}

	setSelectedGizmo(closest);

	return closest != GizmoLocation::NUM_LOC;
}


void LevelGizmo::setColors() {
	this->colorLinkerBase[X] = glm::vec3(1,0,0);
	this->colorLinkerBase[Y] = glm::vec3(0, 1, 0);
	this->colorLinkerBase[Z] = glm::vec3(0, 0, 1);

	for (size_t i = 0; i < GizmoLocation::NUM_LOC; i++)
	{
		this->colorLinker[i] = this->colorLinkerBase[i];
	}

	colorSelected = glm::vec3(1, 1, 0);

}
LevelGizmo::~LevelGizmo() {
	delete checker;
}

void LevelGizmo::drawGizmo() {
	if (LevelActorHandler::getInstance()->getSelected() != nullptr) {
		for (size_t i = 0; i < NUM_LOC; i++)
		{
			this->debugRef->drawOBB(this->obbGizmos[i].getPos(), this->obbGizmos[i].getXAxis(), this->obbGizmos[i].getYAxis(),
				this->obbGizmos[i].getZAxis(), this->obbGizmos[i].getHalfLengths(), colorLinker[i]);
		}
	}

}

void LevelGizmo::update()
{
	LevelActor* selectedActor = this->actorHandlerRef->getSelected();

	if (selectedActor) {
		
		//Updates the orientation of the gizmo UI
		updateFromCameraPos(selectedActor);

		//Updates the planes that the rays intersects with while moing the mouse
		updateGizmoPlanes();

		//Update the translation of the planes, ex moving
		updateGizmoTranslation(selectedActor);

	}

}

bool LevelGizmo::rayPlaneIntersection(glm::vec3& intersectionPoint) {
	
	float denom = glm::dot(this->gizmoPlanes[selectedGizmo].direction, this->rayGizmos[selectedGizmo].getDirection());
	float distance = 0;
	if (std::fabs(denom) > this->gizmoEpsilon) {
		distance = glm::dot((this->gizmoPlanes[selectedGizmo].center - this->rayGizmos[selectedGizmo].getPosition()), this->gizmoPlanes[selectedGizmo].direction) / denom;
		if (distance >= 0) {

			intersectionPoint = this->rayGizmos[selectedGizmo].getPosition() + (this->rayGizmos[selectedGizmo].getDirection()* distance);

			return true;
		}
	}
	return false;
}

void LevelGizmo::updateGizmoPlanes() {
	for (size_t i = 0; i < NUM_LOC; i++) {
		this->gizmoPlanes[i].center = this->obbGizmos[i].getPos();
		this->gizmoPlanes[i].direction = glm::normalize(this->cameraRef->getPosition() - this->gizmoPlanes[i].center);
	}
}

void LevelGizmo::updateFromCameraPos(LevelActor* selectedActor)
{
	if (selectedActor) {
			Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
			this->cameraOldPos = this->cameraRef->getPosition();
			float distanceBetween = std::abs(glm::length(this->cameraOldPos - selectedTransform->getPos()));
			float percentageFromBase = distanceBetween / this->baseCamDistance;

			for (size_t i = 0; i < NUM_LOC; i++) {

				this->obbGizmos[i].setXHalfLength(percentageFromBase * this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::X) ? basePercGrow : 1));
				this->obbGizmos[i].setYHalfLength(percentageFromBase * this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::Y) ? basePercGrow : 1));
				this->obbGizmos[i].setZHalfLength(percentageFromBase * this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::Z) ? basePercGrow : 1));
				
				this->obbGizmos[X].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[X]*this->baseDiffDistace)));
				this->obbGizmos[Y].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[Y] *this->baseDiffDistace)));
				this->obbGizmos[Z].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[Z] *this->baseDiffDistace)));
			}
	}

}

void LevelGizmo::updateGizmoTranslation(LevelActor* selectedActor) {
	if (this->selectedGizmo != GizmoLocation::NUM_LOC) {
		createNewRays();
		glm::vec3 intersection;
		if (rayPlaneIntersection(intersection)) {
			//std::cout << glm::to_string(intersection) << std::endl;

			Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
			glm::vec3 newPos = selectedTransform->getPos();

			this->cameraOldPos = this->cameraRef->getPosition();
			float distanceBetween = std::abs(glm::length(this->cameraOldPos - selectedTransform->getPos()));
			float percentageFromBase = distanceBetween / this->baseCamDistance;
			newPos[selectedGizmo] = intersection[selectedGizmo] - (percentageFromBase * (directions[selectedGizmo] * this->baseDiffDistace)[selectedGizmo]);
			selectedTransform->setPos(newPos);
			//selectedTransform->setPos(selectedTransform->getPos() * )

		}
	}
}

bool LevelGizmo::onMouseDown() {
	createNewRays();
	return checkRay();
}

void LevelGizmo::onMouseUp() {
	deSelectGizmo();
}

void LevelGizmo::setSelectedGizmo(GizmoLocation location)
{
	if (location != GizmoLocation::NUM_LOC) {
		deSelectGizmo();
		this->selectedGizmo = location;
		this->colorLinker[this->selectedGizmo] = colorSelected;
	}
}

void LevelGizmo::deSelectGizmo() {
	if (this->selectedGizmo != GizmoLocation::NUM_LOC) {
		this->colorLinker[this->selectedGizmo] = this->colorLinkerBase[this->selectedGizmo];
		this->selectedGizmo = GizmoLocation::NUM_LOC;
	}
}


void LevelGizmo::addVariables(Debug * debug, Camera * camera, Inputs * input)
{
	this->debugRef = debug;
	this->cameraRef = camera;
	this->inputRef = input;
}

void LevelGizmo::createNewRays()
{ 
	glm::vec3 ray_ndc, ray_world;
	glm::vec4 ray_clip, ray_eye;
	ray_ndc = glm::vec3((2.f*inputRef->getMousePos().x / WINDOW_WIDTH - 1.f),
		1.f - (2.f*inputRef->getMousePos().y) / WINDOW_HEIGHT,
		1.f);
	
	ray_clip = glm::vec4(ray_ndc.x, ray_ndc.y, -1.f, 1.f);
	ray_eye = glm::inverse(this->cameraRef->getProjectionMatrix()) * ray_clip;
	ray_eye = glm::vec4(ray_eye.x, ray_eye.y, -1.f, 0.f);
	ray_world = glm::vec3(glm::inverse(cameraRef->getViewMatrix())* ray_eye);
	ray_world = glm::normalize(ray_world);

	for (size_t i = 0; i < GizmoLocation::NUM_LOC; i++)
	{
		rayGizmos[i].setDirection(ray_world);
		rayGizmos[i].setPosition(this->cameraRef->getPosition());
	}
}