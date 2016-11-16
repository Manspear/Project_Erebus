#pragma once
#include <vector>
#include <string>
//#include "MoleImporterHeaders.h"

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

class MoleReader {
public :
	void readFromBinary(const char* filePath);
	/**
	Gets a vector containing the entire list of meshes.
	**/
	const std::vector<read_sMesh>* getMeshList();
	/**
	Gets a vector containing vectors of mesh-child-indices of meshes.
	**/
	const std::vector<read_sMChildHolder>* getMeshChildList();
	/**
	Gets a vector containing the entire list of materials.
	**/
	const std::vector< read_sMaterial>* getMaterialList();
	/**
	Gets a vector containing the entire list of cameras.
	**/
	const std::vector<read_sCamera>* getCameraList();
	/**
	Gets a vector containing the entire list of lights.
	**/
	const std::vector<read_sLight>* getLightList();
	/**
	Gets a vector containing vectors of joints and "joint related stuff".
	Inside the "joint related stuff" are vectors containing meshChildren
	and animationStates. Animationstates are what separates animations from
	one another for each joint.
	**/
	const std::vector<read_sMJHolder>* getJointKeyList();

	const read_sMainHeader* getMainHeader();

	/**
	Get the index of the mesh with the queried name. 
	If no matching mesh is found, -1337 is returned.
	Use this function sparingly, it's algorithm loops
	through ALL of the meshi and compare their names.
	**/
	const int getMeshIndex(std::string meshName);
	/**
	Gets the mesh at the given meshIndex.
	Usage of this mesh is neccessary for getting
	a bunch of mesh-related data.
	Examples are:
	JointCount
	skelVertexCount
	vertexCount
	isAnimated
	**/
	const read_sMesh* getMesh(int meshIndex);
	/**
	Gets the vector containing keyframes for an animationstate in a joint in a mesh. 
	Animationstates are "groups" that encapsulate keyFrames. Each animationstate represents
	a different animation. Examples of different animationstates are "walking cycle", 
	"attack animation", "idle animation" etc. 
	**/
	const std::vector<read_sKeyFrame>* getKeyList(int meshIndex, int jointIndex, int animationState);
	/**
	Gets the vector containing indexes to meshChildren belonging to a mesh. 
	**/
	const std::vector<read_sMeshChild>* getMeshChildList(int meshIndex);

	const read_sMaterial* getMaterial(int materialIndex);
	/**
	Only useful if mesh has isAnimated == true
	**/
	const read_sJoint* getJoint(int meshIndex, int jointIndex);
	/**
	Gets the vector containing indexes to meshChildren belonging to 
	a joint.
	**/
	const std::vector<read_sMeshChild> getJointMeshChildList(int meshIndex, int jointIndex);
	/**
	Gets the vector containing skeletal vertices belonging to a mesh.
	What separates a skeletal vertex from a regular vertex is that a 
	skeletal vertex has influences and weights.
	An influence is an index to the joint affecting the skeletal vertex.
	A weight is how high of a "percentage" of the joint's transform affects 
	the skeletal vertex, expressed in numbers between 0 and 1.
	Our skeletal vertices will have a maximum of 4 influences and 4 weights.
	The sum of the weights must always be 1, making it "100%".
	**/
	const std::vector<read_sSkelAnimVertex>* getSkelVertexList(int meshIndex);
	/**
	Gets the vector containing vertices belonging to a mesh.
	**/
	const std::vector<read_sVertex>* getVertexList(int meshIndex);

	MoleReader();
	~MoleReader();

private:

	int prevMeshes;
	int prevCameras;
	int prevLights;
	int prevMaterials;
	int prevJoints;


	//Vectors holding all of the data.
	std::vector<read_sMesh> pmRead_meshList;
	//Holds the meshChildren of meshes.
	std::vector<read_sMChildHolder> pmRead_meshChildList;
	std::vector<read_sMJHolder> pmRead_meshJointHolder;
	std::vector<read_sCamera> pmRead_cameraList;
	std::vector<read_sLight> pmRead_lightList;
	std::vector< read_sMaterial> pmRead_materialList;
	std::vector<read_m> pmRead_mList;
	std::vector<read_mk> pmRead_mkList;
	//std::vector<read_sJoint> pmRead_jointList;
	//std::vector<read_sKeyFrame> pmRead_KeyList;
	//std::vector<read_sAnimationStateTracker> pmRead_animSTrackerList;
	//std::vector<read_sAnimationState> pmRead_animStateList;
	
	//Struct objects
	read_sMainHeader pmRead_mainHeader;
	//read_sVertex gRead_vertex;
	//read_sMaterial gRead_materialData;
	//read_sLight gRead_lightData;
	//read_sCamera gRead_camData;
};