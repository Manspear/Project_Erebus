#include "LevelGizmo.h"

LevelGizmo::LevelGizmo() {

	this->checker = new CollisionChecker();



	for (size_t i = 0; i < NUM_LOC; i++) {
		this->obbGizmos[i].setXHalfLength(this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::X) ? basePercGrow : 1)) ;
		this->obbGizmos[i].setYHalfLength(this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::Y) ? basePercGrow : 1));
		this->obbGizmos[i].setZHalfLength(this->baseSize* ((i % GizmoLocation::NUM_LOC == GizmoLocation::Z) ? basePercGrow : 1));
	}

	
	bigVal = std::numeric_limits<float>::max();


	setColors();
	this->actorHandlerRef = LevelActorHandler::getInstance();
	this->selectedGizmo = NUM_LOC;
}

bool LevelGizmo::checkRay() {
	GizmoLocation closest = GizmoLocation::NUM_LOC;
	float closestDistance = this->bigVal;
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
	this->colorLinkerBase[Y] = glm::vec3(1, 1, 0);
	this->colorLinkerBase[Z] = glm::vec3(0, 0, 1);

	for (size_t i = 0; i < GizmoLocation::NUM_LOC; i++)
	{
		this->colorLinker[i] = this->colorLinkerBase[i];
	}

	colorSelected = glm::vec3(1, 1, 1);

}
LevelGizmo::~LevelGizmo() {

}

void LevelGizmo::drawGizmo() {
	for (size_t i = 0; i < NUM_LOC; i++)
	{
		this->debugRef->drawOBB(this->obbGizmos[i].getPos(), this->obbGizmos[i].getXAxis(), this->obbGizmos[i].getYAxis(),
			this->obbGizmos[i].getZAxis(), this->obbGizmos[i].getHalfLengths(), colorLinker[i]);
	}
}

void LevelGizmo::update()
{
	LevelActor* selectedActor = this->actorHandlerRef->getSelected();

	if (selectedActor) {
		Transform* selectedTransform = selectedActor->getComponent<LevelTransform>()->getTransformRef();

		this->obbGizmos[X].setPos(selectedTransform->getPos() + (glm::vec3(1, 0, 0)*this->baseDiffDistace));
		this->obbGizmos[Y].setPos(selectedTransform->getPos() + (glm::vec3(0, 1, 0)*this->baseDiffDistace));
		this->obbGizmos[Z].setPos(selectedTransform->getPos() + (glm::vec3(0, 0, 1)*this->baseDiffDistace));
	}


}

bool LevelGizmo::clickUpdate() {
	createNewRays();
	bool clickedGizmo = checkRay();
	if (!clickedGizmo)
		deSelectGizmo();

	return clickedGizmo;
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