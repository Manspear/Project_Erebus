#pragma once
#include "../Transform.h"
#include "Gear.h"
class LevelTransformHandler
{
private:

	const int nrOfTransforms = 10000;
	//The current amount of transforms, which also references the index of the next 
	//Transform to be bound
	int boundTransforms;
	Transform* transforms = new Transform[nrOfTransforms];
	TransformStruct* allTransforms = new TransformStruct[nrOfTransforms];

public:
	LevelTransformHandler();
	LevelTransformHandler(Gear::GearEngine* engineRef);
	~LevelTransformHandler();

	Transform* getAllTransforms();
	TransformStruct* getAllTransformStructs();

	int bindTransform(ModelInstance* model);

	Transform* getTransformAt(const int &bindIndex);

public:
	static LevelTransformHandler* t_instance;

	static void createInstance(Gear::GearEngine* gearRef) {
		t_instance = new LevelTransformHandler(gearRef);
	}

	static LevelTransformHandler* getInstance() {
		return t_instance;
	}

	static void deleteInstance() {
		if (t_instance != nullptr)
			delete t_instance;
	}

	static void resetInstance(Gear::GearEngine* gearRef) {
		if (t_instance)
			delete t_instance;
		t_instance = new LevelTransformHandler(gearRef);
	}
};