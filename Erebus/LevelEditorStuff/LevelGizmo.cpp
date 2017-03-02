#include "LevelGizmo.h"
#include "glm/gtx/string_cast.hpp"
#include <glm/gtc/quaternion.hpp>
#include <glm/gtx/quaternion.hpp>

LevelGizmo::LevelGizmo() {

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
	shouldSnap = false;
	bool isColider = false;
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
	this->colorLinkerBase[X] = glm::vec3(1, 0, 0);
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
				this->obbGizmos[i].getZAxis(), this->obbGizmos[i].getHalfLengths(), colorLinker[i], true);
		}
		Transform* selectedTransform = LevelActorHandler::getInstance()->getSelected()->getComponent<LevelTransform>()->getTransformRef();
		this->debugRef->drawRay(selectedTransform->getPos(), tempZAxis, 100000, { 0,0,1 });
		this->debugRef->drawRay(selectedTransform->getPos(), tempXAxis, 100000, { 1,0,0 });
		this->debugRef->drawRay(selectedTransform->getPos(), tempYAxis, 100000, { 1,1,0 });
	}



}

void LevelGizmo::checkIfActorIsColider(LevelActor* selectedActor) {
	bool isAColiderType = true;
	for (auto element : selectedActor->getAllComponents())
	{
		if (!(element.second->getName() == LevelCollider::name || element.second->getName() == LevelTransform::name)) {
			isAColiderType = false;
			break;
		}
	}
	this->isColider = isAColiderType;
}

void LevelGizmo::update()
{
	LevelActor* selectedActor = this->actorHandlerRef->getSelected();

	if (selectedActor) {
		checkIfActorIsColider(selectedActor);
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
				xMulti = basePercGrow * 2;
				zMulti = basePercGrow * 2;
				yMulti /= 2;
				break;
			case GizmoLocation::XY:
				xMulti = basePercGrow * 2;
				yMulti = basePercGrow * 2;
				zMulti /= 2;
				break;
			case GizmoLocation::ZY:
				yMulti = basePercGrow * 2;
				zMulti = basePercGrow * 2;
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

		switch (selectedGizmo) {
		case GizmoLocation::X:
			newPos[GizmoLocation::X] = translationUpdate(intersection, selectedGizmo, newPos);
			break;
		case GizmoLocation::Y:
			newPos[GizmoLocation::Y] = translationUpdate(intersection, selectedGizmo, newPos);
			break;
		case GizmoLocation::Z:
			newPos[GizmoLocation::Z] = translationUpdate(intersection, selectedGizmo, newPos);
			break;
		case GizmoLocation::XZ:
			newPos[GizmoLocation::X] = translationUpdate(intersection, GizmoLocation::X, newPos);
			newPos[GizmoLocation::Z] = translationUpdate(intersection, GizmoLocation::Z, newPos);
			break;
		case GizmoLocation::XY:
			newPos[GizmoLocation::X] = translationUpdate(intersection, GizmoLocation::X, newPos);
			newPos[GizmoLocation::Y] = translationUpdate(intersection, GizmoLocation::Y, newPos);
			break;
		case GizmoLocation::ZY:
			newPos[GizmoLocation::Y] = translationUpdate(intersection, GizmoLocation::Y, newPos);
			newPos[GizmoLocation::Z] = translationUpdate(intersection, GizmoLocation::Z, newPos);
			break;
		default:
			break;
		}
		selectedTransform->setPos(newPos);

	}

}
float LevelGizmo::translationUpdate(const glm::vec3&intersection, GizmoLocation location, const glm::vec3& pos) {
	float returnVal = pos[location];
	this->cameraOldPos = this->cameraRef->getPosition();
	float distanceBetween = std::abs(glm::length(this->cameraOldPos - pos));
	float percentageFromBase = distanceBetween / this->baseCamDistance;
	if (!shouldSnap) {
		returnVal = intersection[location] - (percentageFromBase * (directions[location] * this->baseDiffDistace)[location]);
	}
	else {
		int amountSnap;
		amountSnap = (int)(intersection[location] - (percentageFromBase * (directions[location] * this->baseDiffDistace)[location]));
		amountSnap = amountSnap - (fmod(amountSnap, posSnap));
		returnVal = amountSnap;
	}

	return returnVal;
}

void convertToRotMat(float in[3], glm::mat4* result)
{
	*result =
		glm::mat4(
			cosf(in[1]) * cosf(in[2]), cosf(in[1]) * sinf(in[2]), -sinf(in[1]), 0.f,
			cosf(in[0]) * (-sinf(in[2])) + sinf(in[0]) * sinf(in[1]) * cosf(in[2]), cosf(in[0]) * cosf(in[2]) + sinf(in[0]) * sinf(in[1]) * sinf(in[2]), sinf(in[0]) * cosf(in[1]), 0.f,
			-sinf(in[0]) * (-sinf(in[2])) + cosf(in[0]) * sinf(in[1]) * cosf(in[2]), (-sinf(in[0])) * cosf(in[2]) + cosf(in[0]) * sinf(in[1]) * sinf(in[2]), cosf(in[0]) * cosf(in[1]), 0.f,
			0.f, 0.f, 0.f, 1.f
		);
}

void LevelGizmo::updateGizmoRotation(LevelActor* selectedActor) {

	Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();


	glm::vec3 intersection;
	if (rayPlaneIntersection(intersection)) {
		//std::cout << glm::to_string(intersection) << std::endl;

		//Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();
		glm::vec3 oldRot = selectedTransform->getRotation();


		const float rotMulti = .05f;
		float xDiff = 0, yDiff = 0, zDiff = 0;
		intersectionPointChangedThisFrame = true;
		if (oldIntersectionPoint != glm::vec3(0)) {
			xDiff = (oldIntersectionPoint.x - intersection.x)*rotationMulti;
			yDiff = (oldIntersectionPoint.y - intersection.y)*rotationMulti;
			zDiff = (oldIntersectionPoint.z - intersection.z)*rotationMulti;

		}
		oldIntersectionPoint = intersection;

		switch (selectedGizmo) {
		case GizmoLocation::X:
			oldRot[GizmoLocation::Z] = rotationUpdate(xDiff, GizmoLocation::Z, oldRot);
			
			//oldRot[GizmoLocation::X] = oldRot[GizmoLocation::X] - xDiff;

			break;
		case GizmoLocation::Y:
			//oldRot[GizmoLocation::Y] = oldRot[GizmoLocation::Y] - yDiff;
			oldRot[GizmoLocation::Y] = rotationUpdate(yDiff, GizmoLocation::Y, oldRot);
			break;
		case GizmoLocation::Z:
			oldRot[GizmoLocation::X] = rotationUpdate(zDiff, GizmoLocation::X, oldRot);
			break;
		case GizmoLocation::XZ:
			oldRot[GizmoLocation::X] = rotationUpdate(xDiff, GizmoLocation::X, oldRot);
			oldRot[GizmoLocation::Z] = rotationUpdate(zDiff, GizmoLocation::Z, oldRot);
			break;
		case GizmoLocation::XY:
			oldRot[GizmoLocation::Z] = rotationUpdate(xDiff, GizmoLocation::Z, oldRot);
			oldRot[GizmoLocation::Y] = rotationUpdate(yDiff, GizmoLocation::Y, oldRot);
			break;
		case GizmoLocation::ZY:
			oldRot[GizmoLocation::Y] = rotationUpdate(yDiff, GizmoLocation::Y, oldRot);
			oldRot[GizmoLocation::X] = rotationUpdate(zDiff, GizmoLocation::X, oldRot);
			break;
		default:
			break;
		}


		selectedTransform->setRotation(oldRot);
	}
}

float LevelGizmo::rotationUpdate(const float& diff, GizmoLocation location, const glm::vec3& rot) {
	float returnVal = rot[location];

	if (!shouldSnap) {
		returnVal = rot[location] - diff;
	}
	else {
		imaginaryRotation[location] = imaginaryRotation[location] - diff;


		float amountRot = fmod(imaginaryRotation[location], rotSnap);
		//glm::vec3 amountRot = glm::vec3(fmod(tempRot.x, rotSnap), fmod(tempRot.y, rotSnap), fmod(tempRot.z, rotSnap));
		float newRot = imaginaryRotation[location] - amountRot;

		returnVal = newRot;
	}

	return returnVal;
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
			//newScale[GizmoLocation::X] = newScale[GizmoLocation::X] - xDiff;
			newScale[GizmoLocation::X] = scaleUpdate(xDiff, GizmoLocation::X, newScale);
			break;
		case GizmoLocation::Y:
			newScale[GizmoLocation::Y] = scaleUpdate(yDiff, GizmoLocation::Y, newScale);
			break;
		case GizmoLocation::Z:
			newScale[GizmoLocation::Z] = scaleUpdate(zDiff, GizmoLocation::Z, newScale);
			break;
		case GizmoLocation::XZ:
			newScale[GizmoLocation::X] = scaleUpdate(xDiff, GizmoLocation::X, newScale);
			newScale[GizmoLocation::Z] = scaleUpdate(zDiff, GizmoLocation::Z, newScale);
			break;
		case GizmoLocation::XY:
			newScale[GizmoLocation::X] = scaleUpdate(xDiff, GizmoLocation::X, newScale);
			newScale[GizmoLocation::Y] = scaleUpdate(yDiff, GizmoLocation::Y, newScale);
			break;
		case GizmoLocation::ZY:
			newScale[GizmoLocation::Y] = scaleUpdate(yDiff, GizmoLocation::Y, newScale);
			newScale[GizmoLocation::Z] = scaleUpdate(zDiff, GizmoLocation::Z, newScale);
			break;
		default:
			break;
		}



		if (!isColider)

			selectedTransform->setScale(newScale);
		else {
			LevelCollider* tempCol = selectedActor->getComponent<LevelCollider>();
			if (tempCol->getType() != ColiderType::COLLIDER_OBB) {
				selectedTransform->setScale(newScale);
			}
			else {
				glm::vec3 oldScale = selectedTransform->getScale();
				glm::vec3 diffrence = (oldScale - newScale);
				glm::vec3 newLocation = selectedTransform->getPos();
				glm::vec3 xDir, yDir, zDir;

				switch (selectedGizmo) {
				case GizmoLocation::X:
					if (xDiff > 0)
						xDir = tempCol->getObbCollider()->getXAxis() * glm::length(diffrence / 2);
					else
						xDir = tempCol->getObbCollider()->getXAxis() * -glm::length(diffrence / 2);
					newLocation += xDir;
					break;
				case GizmoLocation::Y:
					if (yDiff > 0)
						yDir = tempCol->getObbCollider()->getYAxis() * glm::length(diffrence / 2);
					else
						yDir = tempCol->getObbCollider()->getYAxis() * -glm::length(diffrence / 2);
					newLocation += yDir;
					break;
				case GizmoLocation::Z:
					if (zDiff > 0)
						zDir = tempCol->getObbCollider()->getZAxis() * glm::length(diffrence / 2);
					else
						zDir = tempCol->getObbCollider()->getZAxis() * -glm::length(diffrence / 2);
					newLocation += zDir;
					break;
				case GizmoLocation::XZ:
					if (xDiff > 0)
						xDir = tempCol->getObbCollider()->getXAxis() * glm::length(diffrence / 2);
					else
						xDir = tempCol->getObbCollider()->getXAxis() * -glm::length(diffrence / 2);
					newLocation += xDir;
					if (zDiff > 0)
						zDir = tempCol->getObbCollider()->getZAxis() * glm::length(diffrence / 2);
					else
						zDir = tempCol->getObbCollider()->getZAxis() * -glm::length(diffrence / 2);
					newLocation += zDir;
					break;
				case GizmoLocation::XY:
					if (xDiff > 0)
						xDir = tempCol->getObbCollider()->getXAxis() * glm::length(diffrence / 2);
					else
						xDir = tempCol->getObbCollider()->getXAxis() * -glm::length(diffrence / 2);
					newLocation += xDir;
					if (yDiff > 0)
						yDir = tempCol->getObbCollider()->getYAxis() * glm::length(diffrence / 2);
					else
						yDir = tempCol->getObbCollider()->getYAxis() * -glm::length(diffrence / 2);
					newLocation += yDir;
					break;
				case GizmoLocation::ZY:
					if (zDiff > 0)
						zDir = tempCol->getObbCollider()->getZAxis() * glm::length(diffrence / 2);
					else
						zDir = tempCol->getObbCollider()->getZAxis() * -glm::length(diffrence / 2);
					newLocation += zDir;
					if (yDiff > 0)
						yDir = tempCol->getObbCollider()->getYAxis() * glm::length(diffrence / 2);
					else
						yDir = tempCol->getObbCollider()->getYAxis() * -glm::length(diffrence / 2);
					newLocation += yDir;
					break;
				default:
					break;
				}
				if (!inputRef->keyPressed(GLFW_KEY_LEFT_ALT)) {
					selectedTransform->setScale(oldScale + glm::abs(diffrence));
				}

				else {
					selectedTransform->setScale(oldScale - glm::abs(diffrence));
				}

				selectedTransform->setPos(newLocation);
			}





		}

	}
}

float LevelGizmo::scaleUpdate(const float& diff, GizmoLocation location, const glm::vec3& scale) {
	float returnVal = scale[location];

	if (!shouldSnap) {
		returnVal = scale[location] - diff;
	}
	else {
		imaginaryScale[location] = imaginaryScale[location] - diff;


		float amountScale = fmod(imaginaryScale[location], scaleSnap);
		//glm::vec3 amountRot = glm::vec3(fmod(tempRot.x, rotSnap), fmod(tempRot.y, rotSnap), fmod(tempRot.z, rotSnap));
		float newScale = imaginaryScale[location] - amountScale;

		returnVal = newScale;
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

		/*
		
			this->yAxis = glm::normalize(yAxis);
	if (yAxis != glm::vec3(0, 1, 0))
		this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(0, 1, 0)));
	else
		this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(1, 0, 0)));

	this->xAxis = glm::normalize(glm::cross(yAxis, zAxis));
		*/
			

		//if (tempYAxis != glm::vec3(0, 1, 0)) {
		//	tempZAxis = glm::normalize(glm::cross(tempYAxis, glm::vec3(0, 1, 0)));
		//	//this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(0, 1, 0)));
		//}
		//else {
		//	tempZAxis = glm::normalize(glm::cross(tempYAxis, glm::vec3(1, 0, 0)));
		//	//this->zAxis = glm::normalize(glm::cross(yAxis, glm::vec3(1, 0, 0)));
		//}

		//tempXAxis = glm::normalize(glm::cross(tempYAxis, tempZAxis));

		//this->xAxis = glm::normalize(glm::cross(yAxis, zAxis));
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

void LevelGizmo::setSnappingMode(bool mode)
{
	shouldSnap = mode;
	onSnapChange();
}

void LevelGizmo::onSnapChange() {
	LevelActor* actor = LevelActorHandler::getInstance()->getSelected();
	if (actor != nullptr) {
		if (shouldSnap) {
			Transform* transformRef = actor->getComponent<LevelTransform>()->getTransformRef();
			glm::vec3 tempPos = transformRef->getPos();
			glm::vec3 newPos = glm::vec3((int)tempPos.x, (int)tempPos.y, (int)tempPos.z);
			transformRef->setPos(newPos);

			glm::vec3 tempRot = transformRef->getRotation();
			glm::vec3 amountRot = glm::vec3(fmod(tempRot.x, rotSnap), fmod(tempRot.y, rotSnap), fmod(tempRot.z, rotSnap));
			glm::vec3 newRot = tempRot - amountRot;
			transformRef->setRotation(newRot);

			glm::vec3 tempScale = transformRef->getScale();
			glm::vec3 amountScale = glm::vec3(fmod(tempScale.x, scaleSnap), fmod(tempScale.y, scaleSnap), fmod(tempScale.z, scaleSnap));
			glm::vec3 newScale = tempScale - amountScale;
			transformRef->setScale(newScale);

			this->imaginaryRotation = newRot;
			this->imaginaryScale = newScale;
		}
		else {
			this->imaginaryRotation = glm::vec3(0);
			this->imaginaryScale = glm::vec3(0);
		}
	}

}