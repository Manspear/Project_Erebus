#pragma once
#include <vector>
#include <array>
#include "fileEnums.h"
#include "ExportStructs.h"
#define NOTSET -1337
//struct sTransform
//{
//	float pos[3];
//	float rot[3];
//	float scale[3];
//
//	eObjectType childType = NOTSET;
//	int childID;
//};
//struct sKeyFrame
//{
//	float keyTime;
//	float keyTranslate[3];
//	float keyRotate[3];
//	float keyScale[3];
//};
struct sImAnimationState
{
	std::vector<sKeyFrame> keyList;
};
//names used to find this joint through the FbxNodes.
struct sImJoint
{
	int parentJointID = NOTSET;
	float globalBindposeInverse[16];

	std::vector<sImAnimationState> animationState;
	FbxUInt64 uniqueID;
};
struct sImSkeleton
{
	std::vector<sImJoint> jointList;
};
//struct sPos
//{
//	float x, y, z;
//};

//struct sHierarchy
//{
//	bool hasParentJoint = false;
//	bool hasParentMesh = false;
//};
//struct sJointChild
//{
//	int parentSkeletonIndex;
//	int parentJointIndex;
//};
//struct sMeshChild
//{
//	int parentMeshIndex;
//};

//struct sBBox
//{
//	sPos pos[8];
//	sHierarchy parent;
//	sJointChild jointParent;
//	sMeshChild meshParent;
//};

//struct sVertex
//{
//	std::array<float, 3>  pos;
//	std::array<float, 3>  normal;
//	std::array<float, 3>  tangent;
//	std::array<float, 2>  UV;
//};
//struct sSkeletonVertex
//{
//	sVertex vert;
//	float influences[4];
//	float weights[4];
//};

struct sImSpawn
{
	float pos[3];
	float rot[3];
	float scale[3];
	std::vector<sVertex> vertices;
	std::vector<int> indices;
};

struct sImMesh
{
	int materialID;
	sHierarchy parent;
	sJointChild parentJoint;
	sMeshChild parentMesh;

	//This mesh's local transform
	float pos[3];
	float rot[3];
	float scale[3];

	std::vector<sSkeletonVertex> animVertList;
	std::vector<sVertex> vertList;
	std::vector<int> indexList;

	FbxUInt64 uniqueID;
	bool isAnimated = false;
};

/*
Each Model is the keeper of models and skeletons.
If no vertices of any contained mesh is animated,
type is STATIC
*/
struct sImModel
{
	std::vector<sImMesh> meshList;
	std::vector<sBBox> bBoxList;
	std::vector<sImSkeleton> skeletonList;

	eModelType TYPE = eModelType::STATIC;

	const char* name;
};

struct sImMaterial
{
	int materialID;

	float ambientColor[3];

	float diffuseColor[3];

	float specularColor[3];

	float shinyFactor;

	char diffuseTextureFilePath[256] = "NOTEXTURE";

	char specularTextureFilePath[256] = "NOTEXTURE";

	char normalTextureFilePath[256] = "NOTEXTURE";

	//Used for finding duplicate materials in this scene. Not to be used when sent.
	const char* materialName;
};
//struct sLight
//{
//	eLightType TYPE;
//
//	float lightPos[3];
//	float lightRot[3];
//	float lightScale[3];
//
//	float color[3];
//	float intensity;
//};
struct sImScene
{
	/*transformList gets set right before any processMesh or processLight function*/
	std::vector<sTransform> transformList;
	std::vector<sImModel> modelList;
	std::vector<sImSpawn> spawnList;
	std::vector<sLight> lightList;
	std::vector<sImMaterial> materialList;
};