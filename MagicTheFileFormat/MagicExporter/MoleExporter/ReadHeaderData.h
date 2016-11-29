#pragma once
#include <vector>

struct read_sMainHeader
{
	unsigned int meshCount;
	unsigned int materialCount;
	unsigned int lightCount;
	unsigned int cameraCount;
};

struct  read_sVertex
{
	float vertexPos[3];
	float vertexNormal[3];
	float vertexUV[2];
	float tangentNormal[3];
	float biTangentNormal[3];
};

struct  read_sMesh
{
	char meshName[256];

	unsigned int materialID;

	float translate[3];
	float rotation[3];
	float scale[3];

	bool isBoundingBox;
	bool isAnimated;

	unsigned int vertexCount;

	//unsigned int skelAnimVertexCount;
	//unsigned int jointCount;
};

struct read_sMeshChildIndex
{
	int meshID;
	/**
	Hmm... What if you read two files..? 
	The meshID will then point at the wrong mesh.
	Handle this in the fileImporter? I could. 
	Since we cannot handle that case here. (or can we?)
	What if meshID is a "reference" aka pointer to the mesh-object in question?
	**/
};


static std::vector< read_sMesh>  read_meshList;

struct  read_m
{
	std::vector< read_sVertex> vList;
};

static std::vector< read_m>  read_mList;

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

static std::vector< read_sMaterial>  read_materialList;

struct  read_sLight
{
	float lightPos[3];
	float lightRot[3];
	float lightScale[3];

	float color[3];
	float intensity;
};

static std::vector< read_sLight>  read_mLightList;

struct  read_sCamera
{
	float camPos[3];
	float upVector[3];

	float fieldOfView;
	float nearPlane;
	float farPlane;
};

static std::vector<read_sCamera>  read_mCameraList;

//Struct objects
read_sMainHeader read_gMainHeader;
read_sVertex read_gVertex;
read_sMaterial read_gMaterialData;
read_sLight read_gLightData;
read_sCamera read_gCamData;