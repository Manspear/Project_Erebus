#pragma once

#include <vector>
#include <assert.h>
#include <iostream>
#include <string>
#include "fbxsdk.h"
#include <fstream>
#include <Windows.h>

#include "HeaderData.h"

using namespace std;
#define PI 3.14159265359
#define DELTA 0.0001
#define EQUAL(A,B) (abs((A)-(B)) < DELTA) ? true:false

class FbxImport
{
public:

	/*Structs*/

	struct sImportKeyFrame
	{
		float keyTime;
		float keyPos[3];
		float keyRotate[3];
		float keyScale[3];
	};

	struct sImportAnimationState
	{
		std::vector<sImportKeyFrame> keyList;
	};

	/**
	Note: bBoxID has to be changed later on in the importerAPI
	in order to make it work. This since the "index" of the mesh
	in question may change depending on if you read in several files
	with the same class instance.
	**/
	struct sImportJointData
	{
		//Name helps with debugging
		const char* name;
		char* bboxMeshName;
		int bBoxID;

		int jointID;
		int parentJointID;

		float pos[3];
		float rot[3];
		float scale[3];

		float bindPoseInverse[16];
		float globalBindPoseInverse[16];
		std::vector<int> childMeshList;
		std::vector<sImportAnimationState> animationState;
	};

	struct sImportMeshData
	{
		const char* meshName; //The meshname is used for finding bboxmeshes. Use a function like "findMeshIDByName" when all of the meshi are processed.
		char storeName[256];
		unsigned int meshID; //The "order that the meshes are read" is the mesh ID. 0-based.

		unsigned int materialID;

		float translate[3];
		float rotation[3];
		float scale[3];

		bool isBoundingBox;
		bool isAnimated;
		bool isIndexed;

		int parentMeshID = -1337;
		int parentJointID = -1337;
		std::vector<int> childMeshList;
		std::vector<int> mIndexList;
		std::vector<sVertex> mVertexList;
		std::vector<sSkelAnimVertex> mSkelVertexList;
		std::vector<sImportJointData> jointList;
	};


	struct sBlendData
	{
		int jointID, controlPointIndex;
		float blendingWeight;
	};

	/*Functions*/

	void initializeImporter(const char* filePath, float animationFramerate);
	void processMesh(FbxMesh* inputMesh);

	void processVertices(FbxMesh* inputMesh);
	void processNormals(FbxMesh* inputMesh);
	void processTangents(FbxMesh* inputMesh);
	void processBiTangents(FbxMesh* inputMesh);
	void processUVs(FbxMesh* inputMesh);
	void processMaterials(FbxMesh* inputMesh);
	/**
	Looks puts jointdata from Fbx and std::vector<sImportJointData> pmSceneJoints;
	into the current-mesh-struct.
	**/
	void processJoints(FbxMesh* inputMesh);
	void processBoundingBoxes();

	void processTextures(FbxMesh* inputMesh);
	void processDiffuseMaps(FbxProperty inputProp);
	void processSpecularMaps(FbxProperty inputProp);
	void processNormalMaps(FbxProperty inputProp);

	void copyTextures(char* srcPath, char* destPath);

	void processTransformations(FbxMesh* inputMesh);

	void processLight(FbxLight* inputLight);
	void processCamera(FbxCamera* inputCamera);

	bool checkMaterialName(const char* materialName);

	sBlendData* findBlendDataForControlPoint(std::vector<sBlendData>& inputVector, unsigned int controlPointIndex);

	void assignToHeaderData();

	void WriteToBinary(const char* fileName);

	void convertFbxMatrixToFloatArray(FbxAMatrix inputMatrix, float inputArray[16]);

	/*Lists*/
	std::vector<sImportMeshData> mTempMeshList;
	//want to have mTempMeshList 

	//**
	sImportMeshData importMeshData;

	/*Constructor and destructor*/
	FbxImport();
	~FbxImport();

private:

	//Initially filled inside the initlalizeImporter function.
	//You fill this with the processJointHierarchy-function. You fill this some more in
	//processJoints. In there you find the "current joint" by using findJointIndexByName()
	std::vector<sImportJointData> pmSceneJoints;

	FbxNode* pmRootNode;
	fbxsdk::FbxManager* pmManager;
	FbxIOSettings* pmSettings;
	FbxScene* pmScene;

	int meshCounter;

	int animationFramerate;

	bool firstProcess;
	/**
	FUNCTION DEVELOPMENT ON HOLD - Indexing an FBX-file takes up too much time.
	Goes through mappingmodes for pos, nor, tangent, bitangent and uv.
	For UV, mappingmode is not functional, so a logical solution is made
	**/
	bool determineIfIndexed(FbxMesh* inputMesh);
	/**
	If the model is indexed, result gotten from determineIfIndexed(FbxMesh* inputMesh)
	Loop through each vertex, for each polygon, and query it's index from FBX.
	Indices are put into the sImportMeshData::mIndexData - vector.
	**/
	void processIndices(FbxMesh* inputMesh);
	/**
	A function that loops through all of the child-Nodes of the FbxScene-root-node.
	Each child is sent into void recursiveJointHierarchyTraversal(FbxNode* inNode, int currIndex, int inNodeParentIndex)
	**/
	void processJointHierarchy(FbxNode* inputRoot);
	/**
	A function called upon by void processJointHierarchy(FbxNode* inputRoot).
	It checks if the attribute of the incoming FbxNode is FbxNodeAttribute::eSkeleton
	If it is, relationship-data of that joint is pushed into the "all-joints-in-scene-vector"
	called std::vector<sImportJointData> pmSceneJoints
	**/
	void recursiveJointHierarchyTraversal(FbxNode* inNode, int currIndex, int inNodeParentIndex);
	/**
	Looks through the std::vector<sImportJointData> pmSceneJoints vector for a name matching the
	input parameter jointName.
	**/
	unsigned int findJointIndexByName(const char* jointName);
	void findBBoxByName(const char* bBoxName, int meshIndex, int jointIndex);

	void recursiveChildTraversal(FbxNode* inputNode);
};


