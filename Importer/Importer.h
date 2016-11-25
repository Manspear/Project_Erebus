#pragma once


#include "BaseIncludes.h"
#ifdef IMPORTER_EXPORT
#define IMPORTER_API __declspec(dllexport)   
#else  
#define IMPORTER_API __declspec(dllimport)   
#endif

namespace Importer
{
	/*struct sHeader
	{
		unsigned int meshCount;
		unsigned int materialCount;
	};

	struct sDataHeader
	{
		int datasize;
		int buffersize;
		int meshes;
		int materials;
		int joints;
		int keycounts;
		int keyframes;
		int vertices;
		int indexes;
		int skeletonVertices;
	};

	struct sMesh
	{
		unsigned int materialID;
		int parentMeshID, parentJointID;
		float translation[3], rotation[3], scale[3];
		bool isBoundingBox, isAnimated;

		unsigned int meshChildCount;
		unsigned int vertexCount;
		unsigned int indexCount;
		unsigned int skeletonVertexCount;
		unsigned int jointCount;
	};

	struct sVertex
	{
		float vertexPos[3];
		float vertexNormal[3];
		float vertexUV[2];
		float tangentNormal[3];
		float biTangentNormal[3];
	};

	struct sSkeletonVertex
	{
		float vertexPos[3];
		float vertexNormal[3];
		float vertexUV[2];
		float tangentNormal[3];
		float biTangentNormal[3];
		float influences[4];
		float weights[4];
	};

	struct sJoint
	{
		int ID, parentID;
		float position[3], rotation[3], scale[3];
		float bindPoseInverse[16], globalBindPoseInverse[16];
		int meshChildCount; // TODO: Remove. We don't need.
		int animationStateCount;
	};

	struct sKeyFrame
	{
		float time, position[3], rotation[3], scale[3];
	};

	struct sMaterial
	{
		float ambientColor[3];
		float diffuseColor[3];
		float specularColor[3];
		float shinyFactor;

		char diffuseTexture[256];
		char specularTexture[256];
		char normalTexture[256];
	};

	struct sOffset
	{
		int joint, vertex, index, skeletonVertex;
	};*/

	struct sOffset
	{
		int joint, vertex, index, skeletonVertex;
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

	struct hModel
	{
		int numMeshes;
		int numBBoxes;
		int numSkeletons;
		int numJoints;
		int numAnimationStates;
		int numKeyFrames;
		int numVertices;
		int numSkeletonVertices;
		int numIndices;
		//eModelType TYPE = eModelType::STATIC;
		int TYPE;
	};

	struct hMesh
	{
		int materialID;
		sHierarchy parent;
		sJointChild parentJoint;
		sMeshChild parentMesh;

		int numAnimVertices;
		int numVertices;
		int numIndices;
	};

	struct sVertex
	{
		/*std::array<float, 3>  pos;
		std::array<float, 3>  normal;
		std::array<float, 3>  tangent;
		std::array<float, 2>  UV;*/
		float position[3], normal[3], tangent[3], UV[3];
	};
	struct sSkeletonVertex
	{
		float position[3], normal[3], tangent[3], UV[3];
		float influences[4];
		float weights[4];
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
		float position[8*3];
		sHierarchy parent;
		sJointChild jointParent;
		sMeshChild meshParent;
	};

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
};