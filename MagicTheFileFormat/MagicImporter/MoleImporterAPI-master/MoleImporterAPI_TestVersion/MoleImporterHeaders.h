#pragma once
#include <vector>

struct read_sMainHeader
{
	unsigned int meshCount;
	unsigned int materialCount;
	unsigned int lightCount;
	unsigned int cameraCount;
};

struct  read_sMesh
{
	char meshName[256];

	unsigned int materialID;
	int parentMeshID;
	int parentJointID;

	float translate[3];
	float rotation[3];
	float scale[3];

	bool isBoundingBox;
	bool isAnimated;

	unsigned int meshChildCount = 0;
	unsigned int vertexCount = 0;
	unsigned int skelAnimVertexCount = 0;
	unsigned int jointCount = 0;
};

struct  read_sVertex
{
	float vertexPos[3];
	float vertexNormal[3];
	float vertexUV[2];
	float tangentNormal[3];
	float biTangentNormal[3];
};

struct read_sMeshChild
{
	int meshChildID;
};

/**
WIll be held in a vector the same length as mTempMeshList.size();
Holds a vector containing meshChildren.
**/
struct read_sMChildHolder
{
	std::vector<read_sMeshChild> meshChildList;
};

/**
This struct is used to be "parallell" to the
mesh struct. They are connected implicitly.
**/
struct  read_m
{
	std::vector<read_sVertex> vList;
};

struct  read_sSkelAnimVertex
{
	float vertexPos[3];
	float vertexNormal[3];
	float vertexUV[2];
	float tangentNormal[3];
	float biTangentNormal[3];
	float influences[4];
	float weights[4];
};

struct read_mk
{
	std::vector<read_sSkelAnimVertex> vskList;
};

struct read_sJoint
{
	int jointID;
	int parentJointID;

	float pos[3];
	float rot[3];
	float scale[3];

	float bindPoseInverse[16];
	float globalBindPoseInverse[16];

	int meshChildCount;
	int animationStateCount;
};

struct read_sKeyFrame
{
	float keyTime;
	float keyPos[3];
	float keyRotate[3];
	float keyScale[3];
};

struct read_sAnimationStateTracker
{
	int keyCount;
};

struct read_sAnimationState
{
	std::vector<read_sKeyFrame> keyFrames;
};

/**
JointHolder --> Holds things for on per-joint basis
**/
struct read_sJHolder
{
	std::vector<read_sMeshChild> meshChildren; //resize(mesh[0].joint[0].meshChildCount)
	std::vector<read_sAnimationStateTracker> animationStateTracker; //resize(mesh[0].joint[0].animationStateCount);
	std::vector<read_sAnimationState> animationStates;
};
/**
Held per mesh.
Used as such:
vector<sMJHolder> thing;
thing.resize(mTempMeshList.size());
thing[0].jointList.resize(mTempMeshList[0].jointList.size());
**/
struct read_sMJHolder
{
	std::vector<read_sJoint> jointList; // .resize(mesh[0].jointCount)
	std::vector<read_sJHolder> perJoint;
};

struct  read_sMaterial
{
	char materialName[256];

	float ambientColor[3];
	float diffuseColor[3];
	float specularColor[3];

	float shinyFactor;

	char diffuseTexture[256];
	char specularTexture[256];
	char normalTexture[256];
};

struct  read_sLight
{
	int lightID;

	float lightPos[3];
	float lightRot[3];
	float lightScale[3];

	float color[3];
	float intensity;
};

struct  read_sCamera
{
	float camPos[3];
	float upVector[3];

	float fieldOfView;
	float nearPlane;
	float farPlane;
};