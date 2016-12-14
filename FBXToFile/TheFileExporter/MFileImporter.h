#pragma once
#include "fbxsdk.h"
#include "fileEnums.h"
#include "ImportStructs.h"
#include "ExportStructs.h"
#include <assert.h>
#include <iostream>
#include <fstream>
#include <string>
#include <thread>

class MFileImporter
{
public:
	void importFbx(const char* filePath, float animationFramerate);
	void writeToBinary(const char* fileDestination);
private:
	/*Definitions of the custom attributes in maya used as tags*/
#define BOUNDINGBOXTAG "BOUNDINGBOX"
#define SPAWNTAG "SPAWN"

	struct sBlendData
	{
		int jointID;
		float blendingWeight;
	};

	/*This calls all functions necessary to process a mesh*/
	void processMesh(FbxMesh* inputMesh, eObjectType TYPE);
	/*These get called by processMesh*/
	//Call this AFTER the processJoints-function.
	void processVertices2(FbxMesh * inputMesh, std::vector<size_t>& influenceOffset);
	void processVertices(FbxMesh* inputMesh);
	void processNormals(FbxMesh* inputMesh);
	void processTangents(FbxMesh* inputMesh);
	void processUVs(FbxMesh* inputMesh);
	/*Checks if the material already exists, if it doesn't, add it to the materialList
	then, assign the index of the material to the mesh being processed*/
	void processMaterials(FbxMesh* inputMesh);
	void processTextures(FbxMesh* inputMesh);
	void processIndexes();
	/*node can be either the root joint, or the node of the mesh itself, depending on where this function's called*/
	void processTransformations(FbxNode* node, eObjectType TYPE, int index);
	void processJoints(FbxMesh * inputMesh, std::vector<FbxNode*>& rootList, std::vector<size_t>& influenceOffset);
	//Hierarchy Traversal
	//Used on the root-joint, AND all mesh-nodes.
	void recursiveHierarchyTraversal(FbxNode * inNode, int inMeshParentIndex, sJointChild inJointParentIndex);
	void recursiveProcessHierarchyData(FbxNode * inputRoot);
	/*Processes a spawn-object*/
	void processSpawnObject(FbxMesh* inputMesh);
	void processSpawnIndexes();
	/*Processes lights*/
	void processLight(FbxLight * inputLight);

	/*Add stuff to hScene-object*/
	hScene finishScene();

	/*Readability functions*/
	//Hierarchy
	sJointChild findJointIndexByID(FbxUInt64 uniqueID);
	int findMeshIndexByID(FbxUInt64 uniqueID);
	void processBoundingBox(FbxMesh* mesh, int inMeshParentIndex, sJointChild inJointParentIndex);
	void processParentedMesh(FbxMesh* mesh, int inMeshParentIndex, sJointChild inJointParentIndex);
	//Vertices
	void processSkeletalVertices(FbxMesh* inputMesh);
	void processStaticVertices(FbxMesh * inputMesh, std::vector<sVertex> &vertList);
	//Normals
	void processCtrlPntMapNormals(FbxMesh* inputMesh, FbxGeometryElementNormal* normalElement);
	void processByPolyVtxNormals(FbxMesh* inputMesh, FbxGeometryElementNormal* normalElement);
	//Tangents
	void processCtrlPntMapTangents(FbxMesh* inputMesh, FbxGeometryElementTangent* tangentElement);
	void processByPolyVtxTangents(FbxMesh* inputMesh, FbxGeometryElementTangent* tangentElement);
	//UVs
	void processCtrlPntMapUVs(FbxMesh* inputMesh, const FbxGeometryElementUV* UVElement);
	void processByPolyVtxUVs(FbxMesh* inputMesh, const FbxGeometryElementUV* UVElement);
	//Materials
	void processPhongMaterial(FbxSurfaceMaterial* material);
	void processLambertMaterial(FbxSurfaceMaterial* material);
	bool checkMaterialName(const char* materialName);
	//Textures
	void processTextureMap(FbxProperty propNormal, char* texName);
	void copyTextures(char * srcPath, char * destPath);	//Copies the texture from the original filepath to the new directory
														//Skeleton & Joints
	void processInverseBindpose(FbxCluster* currCluster);
	void processAnimationLayers(FbxNode* currJoint);
	//Do this only once per skeleton, loops through all joints.
	void processBlendWeightsAndIndices(FbxMesh * inputMesh, std::vector<size_t>& influenceOffset);

	/*When you process the second skeleton of a model, this offsets by the number of joints in the skeleton*/
	//size_t influenceOffset;
	/*This is the scene-object. Holds all data before export to the binary format*/
	sImScene imScene;
	//Used in processAnimationLayers to get animationlayers.
	FbxScene* pmScene;
	FbxAnimEvaluator* animationEvaluator;

	int animationFramerate;
};