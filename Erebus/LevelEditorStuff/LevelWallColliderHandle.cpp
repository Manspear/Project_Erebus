#include "LevelWallColliderHandle.h"

LevelWallColliderHandle* LevelWallColliderHandle::g_instance = nullptr;

LevelWallColliderHandle::LevelWallColliderHandle()
{
	checker = new CollisionChecker();
	this->currentSelectedCorner = nullptr;
	this->lastSelectedCorner = nullptr;
	this->lastCreatedColider = nullptr;
	this->currentCreatedColider = nullptr;
	this->selectedHeightMap = nullptr;

	col_width = 1;
	col_height = 5;
	col_offset = 2;
	this->resetColor = { 75,0,130 };
}


LevelWallColliderHandle::~LevelWallColliderHandle()
{
	delete checker;
}

LevelWallColliderHandle* LevelWallColliderHandle::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelWallColliderHandle();
	return g_instance;
}
void LevelWallColliderHandle::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}
void LevelWallColliderHandle::resetInstance() {

}

void LevelWallColliderHandle::clicked(Camera* camera, Inputs* inputs)
{
	LevelActor* selectedActor = LevelActorHandler::getInstance()->getSelected();

	if (selectedActor != nullptr) {
		LevelHeightmap* heightMapComponent = selectedActor->getComponent<LevelHeightmap>();

		if (heightMapComponent != nullptr) {
			this->selectedHeightMap = heightMapComponent;
			LevelHeightmap::CornerObjects* clickedCollider = selectHitboxFromHM(camera, inputs);

			if (clickedCollider != nullptr) {
				this->assignedNewCorner(clickedCollider);

				createColiderObject();
			}

		}
	}

	//if (currentSelectedCorner != nullptr) {
	//	this->lastSelectedCorner = this->currentSelectedCorner;
	//	this->currentSelectedCorner = nullptr;
	//}

}

void LevelWallColliderHandle::assignedNewCorner(LevelHeightmap::CornerObjects* newCorner) {

	if (this->lastSelectedCorner != nullptr)
		this->lastSelectedCorner->drawColor = resetColor;

	this->lastSelectedCorner = this->currentSelectedCorner;
	this->currentSelectedCorner = newCorner;

	if (this->lastSelectedCorner != nullptr)
		this->lastSelectedCorner->drawColor = { 128,0,0 };
	this->currentSelectedCorner->drawColor = { 0,0,128 };
}

OBBCollider* LevelWallColliderHandle::createOBBColider() {
	glm::vec3 startPos = lastSelectedCorner->colider->getMinPos() + glm::vec3(.5f);
	glm::vec3 endPos = currentSelectedCorner->colider->getMinPos() + glm::vec3(.5f);


	float minY = startPos.y, maxY = startPos.y;
	if (endPos.y < minY)
		minY = endPos.y;
	if (endPos.y > maxY)
		maxY = endPos.y;

	float highDiffrence = maxY - minY;


	glm::vec3 vectorBetween = glm::vec3(endPos.x, 0, endPos.z) - glm::vec3(startPos.x, 0, startPos.z);

	float lengthToCenter = (glm::length(vectorBetween) / 2);
	glm::vec3 normVectorBetween = glm::normalize(vectorBetween);

	glm::vec3 centerPos = startPos + (lengthToCenter*normVectorBetween);
	// centerPos.y -= col_offset;

	glm::vec3 halfLengths = glm::vec3(col_width, col_height + highDiffrence, lengthToCenter);

	OBBCollider* testCol = new OBBCollider(centerPos, halfLengths.x, halfLengths.y, halfLengths.z);
	testCol->setZAxis(normVectorBetween);

	return testCol;

	//debug->drawOBB(testCol.getPos(), testCol.getXAxis(), testCol.getYAxis(), testCol.getZAxis(), testCol.getHalfLengths());

}

void LevelWallColliderHandle::createColiderObject()
{
	if (this->currentSelectedCorner != nullptr && this->lastSelectedCorner != nullptr && this->currentSelectedCorner != this->lastSelectedCorner) {
		this->currentCreatedColider = createOBBColider();

		tweakOBBToLastCreated();

		createActorWithCollider(this->currentCreatedColider);
		delete this->currentCreatedColider;
		this->currentCreatedColider = nullptr;
		std::cout << "Time to create a colider YAO!" << std::endl;
	}
}

void LevelWallColliderHandle::tweakOBBToLastCreated()
{
	if (this->lastCreatedColider != nullptr) {

	}
}

LevelHeightmap::CornerObjects * LevelWallColliderHandle::selectHitboxFromHM(Camera* camera, Inputs* inputs)
{
	bool coughtHitbox = false;
	LevelHeightmap::CornerObjects* returnHitBox = nullptr;

	LevelHeightmap::CornerObjects* closest = nullptr;
	// CHECK COLLISION IF COLLISOON CHANGE COUGHT HITBOX

	glm::vec3 ray_ndc, ray_world;
	glm::vec4 ray_clip, ray_eye;
	ray_ndc = glm::vec3((2.f*inputs->getMousePos().x / WINDOW_WIDTH - 1.f),
		1.f - (2.f*inputs->getMousePos().y) / WINDOW_HEIGHT,
		1.f);

	ray_clip = glm::vec4(ray_ndc.x, ray_ndc.y, -1.f, 1.f);
	ray_eye = glm::inverse(camera->getProjectionMatrix()) * ray_clip;
	ray_eye = glm::vec4(ray_eye.x, ray_eye.y, -1.f, 0.f);
	ray_world = glm::vec3(glm::inverse(camera->getViewMatrix())* ray_eye);
	ray_world = glm::normalize(ray_world);

	glm::vec3 dir = ray_world;
	glm::vec3 pos = camera->getPosition();

	RayCollider rayStuff = RayCollider(pos, dir);



	std::vector<LevelHeightmap::CornerObjects*> colRef = selectedHeightMap->getCornerColliders();


	//std::vector<AABBCollider*> colRef = selectedHeightMap->getCornerColliders();

	for (size_t i = 0; i < colRef.size(); i++)
	{
		float closestDistance = 10000.f;
		glm::vec3 intersectionPoint;
		glm::vec3 closestHitPointOffset;

		if (checker->collisionCheck(&rayStuff, colRef[i]->colider)) {
			if (std::abs(rayStuff.hitdistance()) < closestDistance) {
				closestDistance = std::abs(rayStuff.hitdistance());

				closest = colRef[i];
			}
		}
	}

	if (closest != nullptr) {
		coughtHitbox = true;
		returnHitBox = closest;
	}


	return returnHitBox;
}




void LevelWallColliderHandle::resetSelection()
{
	if (this->lastSelectedCorner != nullptr)
		this->lastSelectedCorner->drawColor = resetColor;
	this->lastSelectedCorner = nullptr;
	if (this->currentSelectedCorner != nullptr)
		this->currentSelectedCorner->drawColor = resetColor;
	this->currentSelectedCorner = nullptr;
}

void LevelWallColliderHandle::createActorWithCollider(OBBCollider * collider)
{
	int tileID = selectedHeightMap->getHeightmapID();

	LevelActor* tempActor;
	tempActor = LevelActorFactory::getInstance()->createActor();
	LevelCollider* colider;
	colider = (LevelCollider*)LevelActorFactory::getInstance()->getNewComponent(LevelCollider::name);

	tempActor->setTileID(tileID);
	tempActor->setActorDisplayName("OpWall");
	tempActor->setActorType("BestWall");
	tempActor->setExportType(EXPORT_COLLIDER);
	tempActor->addComponent(colider);
	colider->adjustObbCollider(collider);
	colider->setType(ColiderType::COLLIDER_OBB);


	Transform* transformRef = tempActor->getComponent<LevelTransform>()->getTransformRef();
	transformRef->setPos(collider->getPos());

	this->recentCreatedWalls.push_back(tempActor);
	LevelActorHandler::getInstance()->addActor(tempActor);


}


void LevelWallColliderHandle::update(Inputs* inputs, Debug* debug) {
	if (inputs->keyPressedThisFrame(GLFW_KEY_R)) {
		resetSelection();
	}

	if (inputs->keyPressedThisFrame(GLFW_KEY_Z)) {
		if (this->recentCreatedWalls.size() > 0) {
			LevelActorHandler::getInstance()->removeActor(this->recentCreatedWalls.back());
			this->recentCreatedWalls.pop_back();
			resetSelection();
		}

	}

	if (inputs->keyPressedThisFrame(GLFW_KEY_B)) {

		LevelActor* selectedActor = LevelActorHandler::getInstance()->getSelected();

		if (selectedActor != nullptr) {
			LevelHeightmap* heightMapComponent = selectedActor->getComponent<LevelHeightmap>();

			if (heightMapComponent != nullptr) {
				this->selectedHeightMap = heightMapComponent;
				this->selectedHeightMap->changeBoxType();
			}
		}
	}

	if (currentCreatedColider != nullptr) {
		debug->drawOBB(currentCreatedColider->getPos(),
			currentCreatedColider->getXAxis(), currentCreatedColider->getYAxis(),
			currentCreatedColider->getZAxis(), currentCreatedColider->getHalfLengths());
	}
}
