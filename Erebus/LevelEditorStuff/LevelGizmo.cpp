#include "LevelGizmo.h"
#include "glm/gtx/string_cast.hpp"

LevelGizmo::LevelGizmo()  {

	this->checker = new CollisionChecker();

	bigVal = std::numeric_limits<float>::max();

	setColors();
	setDirections();
	setPlanes();
	this->actorHandlerRef = LevelActorHandler::getInstance();
	this->selectedGizmo = NUM_LOC;

	this->cameraOldPos = glm::vec3(0);
	this->selectedMode = GizmoMode::ROTATION;
	this->oldIntersectionPoint = glm::vec3(0);
	intersectionPointChangedThisFrame = false;
	rotSnap = glm::pi<float>() / 6.f;
	scaleSnap = .5f;
	posSnap = 1.f;
	for (size_t i = 0; i < 11; i++)
	{
		rotationSnapPlacements[i] = rotSnap * i;
	}
}

void LevelGizmo::setPlanes() {
	this->gizmoPlanes[X].direction = { 0,1,0 };
	this->gizmoPlanes[Y].direction = { 1,0,0 };
	this->gizmoPlanes[Z].direction = { 0,1,0 };
	this->gizmoPlanes[XZ].direction = { 0,1,1 };
	this->gizmoPlanes[XY].direction = { 1,1,0 };
	this->gizmoPlanes[ZY].direction = { 1,0,1 };
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

	this->directions[XZ] = glm::vec3(1, 0, 1);
	this->directions[XY] = glm::vec3(1, 1, 0);
	this->directions[ZY] = glm::vec3(0, 1, 1);

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

	this->colorLinkerBase[XZ] = this->colorLinkerBase[Y];
	this->colorLinkerBase[ZY] = this->colorLinkerBase[X];
	this->colorLinkerBase[XY] = this->colorLinkerBase[Z];

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
		if (this->selectedGizmo != GizmoLocation::NUM_LOC) {
			createNewRays();
			switch (this->selectedMode) {
			case GizmoMode::POSITION:
				updateGizmoTranslation(selectedActor);
				break;
			case GizmoMode::ROTATION:
				updateGizmoRotation(selectedActor);
				break;
			case GizmoMode::SCALE:
				updateGizmoScale(selectedActor);
				break;
			}
		}

		if (!intersectionPointChangedThisFrame && oldIntersectionPoint != glm::vec3(0)) {
			oldIntersectionPoint = glm::vec3(0);
		}
		else
			intersectionPointChangedThisFrame = false;
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

			this->obbGizmos[X].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[X] * this->baseDiffDistace)));
			this->obbGizmos[Y].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[Y] * this->baseDiffDistace)));
			this->obbGizmos[Z].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[Z] * this->baseDiffDistace)));

			this->obbGizmos[XZ].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[XZ] * this->baseDiffDistace)));
			this->obbGizmos[XY].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[XY] * this->baseDiffDistace)));
			this->obbGizmos[ZY].setPos(selectedTransform->getPos() + (percentageFromBase * (directions[ZY] * this->baseDiffDistace)));


			for (size_t i = 0; i < NUM_LOC; i++) {
				float xMulti = 1, yMulti = 1, zMulti = 1;
				switch (i) {
				case GizmoLocation::X:
					xMulti = basePercGrow;
					break;
				case GizmoLocation::Y:
					yMulti = basePercGrow;
					break;
				case GizmoLocation::Z:
					zMulti = basePercGrow;
					break;
				case GizmoLocation::XZ:
					xMulti = basePercGrow*2;
					zMulti = basePercGrow*2;
					yMulti /= 2;
					break;
				case GizmoLocation::XY:
					xMulti = basePercGrow*2;
					yMulti = basePercGrow*2;
					zMulti /= 2;
					break;
				case GizmoLocation::ZY:
					yMulti = basePercGrow*2;
					zMulti = basePercGrow*2;
					xMulti /= 2;
					break;
				default:
					break;
				}

				this->obbGizmos[i].setXHalfLength(percentageFromBase * this->baseSize*xMulti);
				this->obbGizmos[i].setYHalfLength(percentageFromBase * this->baseSize*yMulti);
				this->obbGizmos[i].setZHalfLength(percentageFromBase * this->baseSize*zMulti);
				

			}
	}

}

void LevelGizmo::updateGizmoTranslation(LevelActor* selectedActor) {
	glm::vec3 intersection;
	if (rayPlaneIntersection(intersection)) {
		//std::cout << glm::to_string(intersection) << std::endl;

		Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
		glm::vec3 newPos = selectedTransform->getPos();

		this->cameraOldPos = this->cameraRef->getPosition();
		float distanceBetween = std::abs(glm::length(this->cameraOldPos - selectedTransform->getPos()));
		float percentageFromBase = distanceBetween / this->baseCamDistance;
		switch (selectedGizmo) {
		case GizmoLocation::X:
			newPos[GizmoLocation::X] = intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]);
			break;
		case GizmoLocation::Y:
			newPos[GizmoLocation::Y] = intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]);
			break;
		case GizmoLocation::Z:
			newPos[GizmoLocation::Z] = intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]);
			break;
		case GizmoLocation::XZ:
			newPos[GizmoLocation::X] = intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]);
			newPos[GizmoLocation::Z] = intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]);
			break;
		case GizmoLocation::XY:
			newPos[GizmoLocation::X] = intersection[GizmoLocation::X] - (percentageFromBase * (directions[GizmoLocation::X] * this->baseDiffDistace)[GizmoLocation::X]);
			newPos[GizmoLocation::Y] = intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]);
			break;
		case GizmoLocation::ZY:
			newPos[GizmoLocation::Y] = intersection[GizmoLocation::Y] - (percentageFromBase * (directions[GizmoLocation::Y] * this->baseDiffDistace)[GizmoLocation::Y]);
			newPos[GizmoLocation::Z] = intersection[GizmoLocation::Z] - (percentageFromBase * (directions[GizmoLocation::Z] * this->baseDiffDistace)[GizmoLocation::Z]);
			break;
		default:
			break;
		}
		//newPos[selectedGizmo] = intersection[selectedGizmo] - (percentageFromBase * (directions[selectedGizmo] * this->baseDiffDistace)[selectedGizmo]);
		selectedTransform->setPos(newPos);
		//selectedTransform->setPos(selectedTransform->getPos() * )

	}

}
void LevelGizmo::updateGizmoRotation(LevelActor* selectedActor) {
	
	glm::vec3 intersection;
	if (rayPlaneIntersection(intersection)) {
		//std::cout << glm::to_string(intersection) << std::endl;

		Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
		glm::vec3 oldRot = selectedTransform->getRotation();

		const float rotMulti = .05f;
		float xDiff = 0, yDiff = 0, zDiff = 0;
		intersectionPointChangedThisFrame = true;
		if (oldIntersectionPoint != glm::vec3(0)) {
			xDiff = (oldIntersectionPoint.x - intersection.x)*rotMulti;
			yDiff = (oldIntersectionPoint.y - intersection.y)*rotMulti;
			zDiff = (oldIntersectionPoint.z - intersection.z)*rotMulti;

		}
		oldIntersectionPoint = intersection;

		switch (selectedGizmo) {
		case GizmoLocation::X:
			oldRot[GizmoLocation::X] = oldRot[GizmoLocation::X] - xDiff;
			
			break;
		case GizmoLocation::Y:
			//oldRot[GizmoLocation::Y] = oldRot[GizmoLocation::Y] - yDiff;
			oldRot[GizmoLocation::Y] = roationSnap(oldRot[GizmoLocation::Y], yDiff, GizmoLocation::Y);
			break;
		case GizmoLocation::Z:
			oldRot[GizmoLocation::Z] = oldRot[GizmoLocation::Z] - zDiff;
			break;
		case GizmoLocation::XZ:
			oldRot[GizmoLocation::X] = oldRot[GizmoLocation::X] - xDiff;
			oldRot[GizmoLocation::Z] = oldRot[GizmoLocation::Z] - zDiff;
			break;
		case GizmoLocation::XY:
			oldRot[GizmoLocation::X] = oldRot[GizmoLocation::X] - xDiff;
			oldRot[GizmoLocation::Y] = oldRot[GizmoLocation::Y] - yDiff;
			break;
		case GizmoLocation::ZY:
			oldRot[GizmoLocation::Y] = oldRot[GizmoLocation::Y] - yDiff;
			oldRot[GizmoLocation::Z] = oldRot[GizmoLocation::Z] - zDiff;
			break;
		default:
			break;
		}
		//newPos[selectedGizmo] = intersection[selectedGizmo] - (percentageFromBase * (directions[selectedGizmo] * this->baseDiffDistace)[selectedGizmo]);
		selectedTransform->setRotation(oldRot);
		//selectedTransform->setPos(selectedTransform->getPos() * )

	}
}
void LevelGizmo::updateGizmoScale(LevelActor* selectedActor) {

	glm::vec3 intersection;
	if (rayPlaneIntersection(intersection)) {

		//std::cout << glm::to_string(intersection) << std::endl;

		Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
		glm::vec3 newScale = selectedTransform->getScale();

		float xDiff = 0, yDiff = 0, zDiff = 0;
		intersectionPointChangedThisFrame = true;
		if (oldIntersectionPoint != glm::vec3(0)) {
			xDiff = oldIntersectionPoint.x - intersection.x;
			yDiff = oldIntersectionPoint.y - intersection.y;
			zDiff = oldIntersectionPoint.z - intersection.z;
			
		}
		oldIntersectionPoint = intersection;
		
		switch (selectedGizmo) {
		case GizmoLocation::X:
			newScale[GizmoLocation::X] = newScale[GizmoLocation::X] - xDiff;
			
			break;
		case GizmoLocation::Y:
			newScale[GizmoLocation::Y] = newScale[GizmoLocation::Y] - yDiff;
			break;
		case GizmoLocation::Z:
			newScale[GizmoLocation::Z] = newScale[GizmoLocation::Z] - zDiff;
			break;
		case GizmoLocation::XZ:
			newScale[GizmoLocation::X] = newScale[GizmoLocation::X] - xDiff;
			newScale[GizmoLocation::Z] = newScale[GizmoLocation::Z] - zDiff;
			break;
		case GizmoLocation::XY:
			newScale[GizmoLocation::X] = newScale[GizmoLocation::X] - xDiff;
			newScale[GizmoLocation::Y] = newScale[GizmoLocation::Y] - yDiff;
			break;
		case GizmoLocation::ZY:
			newScale[GizmoLocation::Y] = newScale[GizmoLocation::Y] - yDiff;
			newScale[GizmoLocation::Z] = newScale[GizmoLocation::Z] - zDiff;
			break;
		default:
			break;
		}
		selectedTransform->setScale(newScale);

	}
}

float LevelGizmo::roationSnap(const float oldPos, const float diff, GizmoLocation location) {
	float returnVal = 0;
	realRot[location] += diff;
	float tempSnapRot = fmod(realRot[location], (rotSnap*11.f));
	tempSnapRot -= diff;
	if (realRot[location] > rotSnap) {
		returnVal = rotSnap;
	}
	else if (realRot[location] < rotSnap) {
		returnVal = -rotSnap;
	}
	return returnVal;
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

void LevelGizmo::setGizmoMode(GizmoMode mode) {
	this->selectedMode = mode;
}