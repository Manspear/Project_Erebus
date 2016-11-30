#pragma once
#include <vector>
#include <array>
#include "fileEnums.h"

struct sOffset
{
	int joint, vertex, index, skeletonVertex;
};

struct sTransform
{
	float pos[3];
	float rot[3];
	float scale[3];

	eObjectType childType = NOTSET;
	int modelIndex;
	int childID;
};
struct sKeyFrame
{
	float keyTime;
	float keyTranslate[3];
	float keyRotate[3];
	float keyScale[3];
};
struct hAnimationState
{
	int keyCount;
};
//names used to find this joint through the FbxNodes.
struct hJoint
{
	int parentJointID;
	float globalBindposeInverse[16];

	int animationStateCount;
};
struct hSkeleton
{
	int jointCount;
};
struct sPos
{
	float x, y, z;
};

struct sHierarchy
{
	bool hasParentJoint = false;
	bool hasParentMesh = false;
};
struct sJointChild
{
	int parentSkeletonIndex;
	int parentJointIndex;
};
struct sMeshChild
{
	int parentMeshIndex;
};

struct sBBox
{
	sPos pos[8];
	sHierarchy parent;
	sJointChild jointParent;
	sMeshChild meshParent;
};

struct sVertex
{
	std::array<float, 3>  pos;
	std::array<float, 3>  normal;
	std::array<float, 2>  UV;
	std::array<float, 3>  tangent;
};
struct sSkeletonVertex
{
	sVertex vert;
	float influences[4];
	float weights[4];
};

struct hSpawn
{
	float pos[3];
	float rot[3];
	float scale[3];
	int numIndices;
	int numVertices;
};

struct hMesh
{
	int materialID;
	sHierarchy parent;
	sJointChild parentJoint;
	sMeshChild parentMesh;
	//This mesh's local transform
	float pos[3];
	float rot[3];
	float scale[3];

	int numAnimVertices;
	int numVertices;
	int numIndexes;
};

/*
Each Model is the keeper of models and skeletons.
If no vertices of any contained mesh is animated,
type is STATIC
*/
struct hModel
{
	int numMeshes;
	int numBBoxes;
	int numSkeletons;
	int numJoints;
	int numAnimationStates;
	int numKeyframes;
	int numVertices;
	int numSkeletonVertices;
	int numIndices;

	eModelType TYPE = eModelType::STATIC;
};

struct sExpMaterial
{
	int materialID;

	float ambientColor[3];

	float diffuseColor[3];

	float specularColor[3];

	float shinyFactor;

	char diffuseTextureFilePath[256];

	char specularTextureFilePath[256];

	char normalTextureFilePath[256];
};
struct sLight
{
	eLightType TYPE;

	float lightPos[3];
	float lightRot[3];
	float lightScale[3];

	float color[3];
	float intensity;
};
struct hScene
{
	int numTransforms;
	int numModels;
	int numSpawns;
	int numLights;
	int numMaterials;
	int numMeshes;
	int numBBoxes;
	int numSkeletons;
	int numJoints;
	int numAnimationStates;
	int numKeyFrames;
	int numMeshIndices;
	int numMeshVertices;
	int numMeshSkeletalVertices;
	int numSpawnIndices;
	int numSpawnVertices;
};