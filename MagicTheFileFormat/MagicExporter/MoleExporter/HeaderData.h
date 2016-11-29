#pragma once
#include <vector>

struct sMainHeader
{
	unsigned int meshCount;
	unsigned int materialCount;
	unsigned int lightCount;
	unsigned int cameraCount;
};

struct sMesh
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

static std::vector<sMesh> meshList;

struct sMeshChild
{
	int meshChildID;
};

/**
WIll be held in a vector the same length as mTempMeshList.size();
Holds a vector containing meshChildren.
**/
struct sMChildHolder
{
	std::vector<sMeshChild> meshChildList;
};

static std::vector<sMChildHolder> meshChildHolder;

struct sVertex
{
	float vertexPos[3];
	float vertexNormal[3];
	float vertexUV[2];
	float tangentNormal[3];
	float biTangentNormal[3]; //Bitangent not needed. For anything. But can be used.
};

struct m
{
	std::vector<sVertex> vList;
};

static std::vector<m> mList;

struct sSkelAnimVertex
{
	float vertexPos[3];
	float vertexNormal[3];
	float vertexUV[2];
	float tangentNormal[3];
	float biTangentNormal[3];

	/*Set to -1337 in FbxImport::processVertices(FbxMesh * inputMesh)
	to say "this is not a set value"*/
	int influences[4];
	float weights[4];
};

struct mk
{
	std::vector<sSkelAnimVertex> vskList;
};

static std::vector<mk> mkList;

struct sJoint
{
	int jointID;
	int parentJointID;
	//int bBoxID;

	float pos[3];
	float rot[3];
	float scale[3];

	float bindPoseInverse[16];
	float globalBindPoseInverse[16];

	int meshChildCount;
	int animationStateCount;
};

struct sKeyFrame
{
	float keyTime;
	float keyPos[3];
	float keyRotate[3];
	float keyScale[3];
};


struct sAnimationStateTracker
{
	int keyCount;
};

struct sAnimationState
{
	std::vector<sKeyFrame> keyFrames;
};

/**
JointHolder --> Holds things for on per-joint basis
**/
struct sJHolder
{
	std::vector<sMeshChild> meshChildren; //resize(mesh[0].joint[0].meshChildCount)
	std::vector<sAnimationStateTracker> animationStateTracker; //resize(mesh[0].joint[0].animationStateCount);
	std::vector<sAnimationState> animationStates;
};
/**
Held per mesh.
Used as such:
vector<sMJHolder> thing;
thing.resize(mTempMeshList.size());
thing[0].jointList.resize(mTempMeshList[0].jointList.size());
**/
struct sMJHolder
{
	std::vector<sJoint> jointList; // .resize(mesh[0].jointCount)
	std::vector<sJHolder> perJoint;
};

static std::vector<sMJHolder> meshJointHolder;

/**
Used as such:
vector<sMJHolder> thing;
thing.resize(mTempMeshList.size());
thing[0].jointList.resize(mTempMeshList[0].jointList.size());
//Fills the thing.jointList

vector<sMJHolder2> thing2;
thing2.resize(thing[0].jointList.size());
thing2[0].perJoint.resize(thing[0].jointList.size();
thing2.perJoint[0].meshChildren.resize(thing[0].jointList.meshChildCount);
**/
//struct sMJ2Holder
//{
//	std::vector<sJHolder> perJoint;
//};

//static std::vector<sJoint> jointList;




//static std::vector<sKeyFrame> keyList;

struct sMaterial
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

static std::vector<sMaterial> mMaterialList;

struct sLight
{
	int lightID; 

	float lightPos[3];
	float lightRot[3];
	float lightScale[3];

	float color[3];
	float intensity;
};

static std::vector<sLight> mLightList;

struct sCamera
{
	float camPos[3];
	float upVector[3];

	float fieldOfView;
	float nearPlane;
	float farPlane;
};

static std::vector<sCamera> mCameraList;

/*Struct objects*/
sMainHeader static gMainHeader;
sMaterial static gMaterialData;
sLight static gLightData;
sCamera static gCamData;
