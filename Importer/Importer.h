#pragma once


#include "BaseIncludes.h"
#ifdef IMPORTER_EXPORT
#define IMPORTER_API __declspec(dllexport)   
#else  
#define IMPORTER_API __declspec(dllimport)   
#endif

namespace Importer
{
	enum eModelType
	{
		STATIC,
		ANIMATED
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

	struct sOffset
	{
		int joint, vertex, index, skeletonVertex;
	};

	struct sKeyFrame
	{
		float keyTime;
		float keyTranslate[3];
		float keyRotate[4];
		float keyScale[3];
	};
	struct hAnimationState
	{
		int keyCount;
		int keyOffset;
	};

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

		eModelType TYPE;

		char materialName[32];
	};

	struct hMesh
	{
		sHierarchy parent;
		sJointChild parentJoint;
		sMeshChild parentMesh;
		//This mesh's local transform
		float pos[3];
		float rot[3];
		float scale[3];

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
		float position[3], normal[3], UV[2], tangent[3];
	};
	struct sSkeletonVertex
	{
		float position[3], normal[3], UV[2], tangent[3];
		int influences[4];
		float weights[4];
	};

	struct sBBox
	{
		float position[24];
		sHierarchy parent;
		sJointChild jointParent;
		sMeshChild meshParent;
	};

	struct hJoint
	{
		int parentJointID;
		float globalBindposeInverse[16];

		int animationStateCount;
		int animationStateOffset;
	};
	struct hSkeleton
	{
		int jointCount;
		int jointOffset;
	};

	struct Particle
	{
		int numOfParticles;
		float lifeTime;
		float speed;
		float emitPerSecond;
		int nrOfParticlesPerEmit;
		/*float dirX, dirY, dirZ;*/
		char textureName[32];

	};
};