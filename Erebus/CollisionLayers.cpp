#include "CollisionLayers.h"



CollisionLayers::CollisionLayers(int size)
{
	this->layerMatrixSize = size;
	this->layerMatrix = new bool*[layerMatrixSize];
	this->collisionCheckedMatrix = new bool*[layerMatrixSize];

	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		this->layerMatrix[i] = new bool[layerMatrixSize];
		this->collisionCheckedMatrix[i] = new bool[layerMatrixSize];
	}

	this->resetCollisionCheckedMatrix();

	this->sphereColliders.resize(layerMatrixSize); // resize to fit the amount of layers we have, fake 2d array
	this->aabbColliders.resize(layerMatrixSize);
}


CollisionLayers::~CollisionLayers()
{
	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		delete[] layerMatrix[i];
		delete[] collisionCheckedMatrix[i];
	}
	delete[] layerMatrix;
	delete[] collisionCheckedMatrix;
}

void CollisionLayers::addHitbox(AABBCollider * aabbCollider) 
{
	this->aabbColliders[0].push_back(aabbCollider); // default layer is 0
}

void CollisionLayers::addHitbox(SphereCollider * sphereCollider)
{
	this->sphereColliders[0].push_back(sphereCollider);
}

void CollisionLayers::addHitbox(AABBCollider * aabbCollider, unsigned int layer)
{
	this->aabbColliders[layer].push_back(aabbCollider);
}

void CollisionLayers::addHitbox(SphereCollider * sphereCollider, unsigned int layer)
{
	this->sphereColliders[layer].push_back(sphereCollider);
}

void CollisionLayers::resetCollisionCheckedMatrix()
{
	for (unsigned int i = 0; i < layerMatrixSize; i++) // collisionCheckedMatrix ska va false överallt tills någon kollision gjorts
	{
		for (unsigned int j = 0; j < layerMatrixSize; j++)
		{
			this->collisionCheckedMatrix[i][j] = false;
		}
	}
}
