#include "CollisionLayers.h"



CollisionLayers::CollisionLayers(int size)
{
	this->layerMatrixSize = size;
	this->layerMatrix = new bool*[layerMatrixSize];
	this->createCollisionCheckedMatrix(layerMatrixSize);

	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		this->layerMatrix[i] = new bool[layerMatrixSize];

		for (unsigned int j = 0; j < layerMatrixSize; j++)
		{
			this->layerMatrix[i][j] = true;
		}
	}

	this->resetLayerCollisionCheckedMatrix(); // all layer collisions are set to false

	this->sphereColliders.resize(layerMatrixSize); // resize to fit the amount of layers we have, fake 2d array
	this->aabbColliders.resize(layerMatrixSize);
}


CollisionLayers::~CollisionLayers()
{
	this->deleteLayerCollisionMatrices();
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

std::vector<SphereCollider*>* CollisionLayers::getSphereColliders(int layer)
{
	std::vector<SphereCollider*>* colliders = nullptr;

	if(layer < this->layerMatrixSize) // if there is a layer
		colliders = &this->sphereColliders[layer];

	return colliders;
}

std::vector<AABBCollider*>* CollisionLayers::getAABBColliders(int layer)
{
	std::vector<AABBCollider*>* colliders = nullptr;

	colliders = &this->aabbColliders[layer];

	return colliders;
}

bool CollisionLayers::getIsLayerChecked(int layer1, int layer2) const
{
	return this->collisionCheckedMatrix[layer1][layer2];
}

void CollisionLayers::checkLayer(int layer1, int layer2)
{
	this->collisionCheckedMatrix[layer1][layer2] = true;
	this->collisionCheckedMatrix[layer2][layer1] = true;
}

//Resets the matrix checking whether the layers have checked collision against eachother
void CollisionLayers::resetLayerCollisionCheckedMatrix() // set all old collisions to false
{
	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		for (unsigned int j = 0; j < layerMatrixSize; j++)
		{
			this->collisionCheckedMatrix[i][j] = false;
		}
	}
}

bool CollisionLayers::deleteHitbox(unsigned int ID)
{
	bool deleted = false;

	for (unsigned int i = 0; i < this->sphereColliders.size(); i++) //check if it is a sphere collider and delete
	{
		for (unsigned int j = 0; j < this->sphereColliders[i].size(); j++)
		{
			if (this->sphereColliders[i][j]->getID() == ID)
			{
				this->sphereColliders[i].erase(this->sphereColliders[i].begin() + j);
				deleted = true;
				j = this->sphereColliders[i].size(); // end loop
			}
		}
		if (deleted)
			i = this->sphereColliders[i].size();

	}

	if (!deleted)
	{
		for (unsigned int i = 0; i < this->aabbColliders.size(); i++) //check if it is a AABB collider and delete
		{
			for (unsigned int j = 0; j < this->aabbColliders[i].size(); j++)
			{
				if (this->aabbColliders[i][j]->getID() == ID)
				{
					this->aabbColliders[i].erase(this->aabbColliders[i].begin() + j);
					deleted = true;
					j = this->aabbColliders[i].size();
				}

			}
			if (deleted)
				i = this->aabbColliders[i].size();

		}
	}

	return deleted;
}

std::vector<int> CollisionLayers::getLayerCollisions(int layer) const
{
	std::vector<int> layerCollisions;

	for (unsigned int i = 0; i < this->layerMatrixSize; i++)
	{
		bool derrr = false;
		derrr = this->layerMatrix[layer][i];
		if (this->layerMatrix[layer][i] == true) // if the layermatrix says that these two layers should collide add it to vector
		{
			layerCollisions.push_back(i);
		}
		
	}

	return layerCollisions;
}

// returns a vector with all the layers that this layer have not yet collided with
std::vector<int> CollisionLayers::getUncheckedLayerCollisions(int layer) const
{
	std::vector<int> layerCollisions;
	layerCollisions.reserve(this->layerMatrixSize);

	for (unsigned int i = 0; i < this->layerMatrixSize; i++)
	{
		bool derrr = false;
		derrr = this->layerMatrix[layer][i];
		derrr = this->collisionCheckedMatrix[layer][i];
		if (this->layerMatrix[layer][i] == true && this->collisionCheckedMatrix[layer][i] == false) // if the layermatrix says that these two layers should collide AND it is not checked add it to vector
		{
			layerCollisions.push_back(i);
		}

	}

	return layerCollisions;
}

unsigned int CollisionLayers::getLayerMatrixSize()
{
	return this->layerMatrixSize;
}

void CollisionLayers::setLayerCollisionMatrix(bool ** layerMatrix, unsigned int layerMatrixSize)
{
	this->deleteLayerCollisionMatrices();
	this->layerMatrix = layerMatrix;
	this->layerMatrixSize = layerMatrixSize;
	this->createCollisionCheckedMatrix(layerMatrixSize);

	this->sphereColliders.resize(layerMatrixSize); // resize to fit the amount of layers we have, fake 2d array
	this->aabbColliders.resize(layerMatrixSize);
}

void CollisionLayers::setLayerCollisionMatrix(int layer1, int layer2, bool canCollide)
{
	this->layerMatrix[layer1][layer2] = canCollide;
	this->layerMatrix[layer2][layer1] = canCollide;
}

void CollisionLayers::deleteLayerCollisionMatrices()
{
	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		delete[] layerMatrix[i];
		delete[] collisionCheckedMatrix[i];
	}
	delete[] layerMatrix;
	delete[] collisionCheckedMatrix;
}

void CollisionLayers::createCollisionCheckedMatrix(int size)
{
	this->collisionCheckedMatrix = new bool*[size];

	for (unsigned int i = 0; i < layerMatrixSize; i++)
	{
		this->collisionCheckedMatrix[i] = new bool[layerMatrixSize];
	}
	this->resetLayerCollisionCheckedMatrix();
}
