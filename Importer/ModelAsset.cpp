#include "ModelAsset.h"

namespace Importer
{
	ModelAsset::ModelAsset()
		: dataptr(nullptr), material( nullptr )
	{
		//header.meshCount = header.materialCount = 0;
		header.numMeshes = header.numSkeletons = header.numBBoxes = 0;
	}

	ModelAsset::~ModelAsset()
	{
		unload();
	}

	bool ModelAsset::load(std::string path, Assets* assets)
	{
		bool result = false;

		FILE* file;
		fopen_s(&file, path.c_str(), "rb");
		if (file)
		{
			int datasize, buffersize;
			fread(&datasize, sizeof(int), 1, file);
			fread(&buffersize, sizeof(int), 1, file);

			fread(&header, sizeof(hModel), 1, file);

			dataptr = malloc(datasize + sizeof(GLuint)*header.numMeshes * 3);
			bufferptr = malloc(buffersize);

			fread(dataptr, 1, datasize, file);
			fread(bufferptr, 1, buffersize, file);

			fclose(file);

			char* ptr = (char*)dataptr;
			offsets = (sOffset*)ptr;
			ptr += sizeof(sOffset)*header.numMeshes;

			meshes = (hMesh*)ptr;
			ptr += sizeof(hMesh)*header.numMeshes;

			boundingBoxes = (sBBox*)ptr;
			ptr += sizeof(sBBox)*header.numBBoxes;

			skeletons = (hSkeleton*)ptr;
			ptr += sizeof(hSkeleton)*header.numSkeletons;

			joints = (hJoint*)ptr;
			ptr += sizeof(hJoint)*header.numJoints;

			animationStates = (hAnimationState*)ptr;
			ptr += sizeof(hAnimationState)*header.numAnimationStates;

			keyFrames = (sKeyFrame*)ptr;
			ptr += sizeof(sKeyFrame)*header.numKeyframes;

			vertexBuffers = (GLuint*)ptr;
			ptr += sizeof(GLuint)*header.numMeshes;

			indexBuffers = (GLuint*)ptr;
			ptr += sizeof(GLuint)*header.numMeshes;

			bufferSizes = (int*)ptr;
			ptr += sizeof(int)*header.numMeshes;

			// calculate max and min positions
			glm::vec3 curMin( std::numeric_limits<float>().max() );
			glm::vec3 curMax( std::numeric_limits<float>().min() );

			if( header.TYPE == STATIC )
			{
				sVertex* vertices = (sVertex*)bufferptr;
				for( int curMesh = 0; curMesh < header.numMeshes; curMesh++ )
				{
					for( int curVertex = 0; curVertex < meshes[curMesh].numVertices; curVertex++ )
					{
						glm::vec3 vertexPos = *(glm::vec3*)vertices[curVertex].position;

						if( vertexPos.x < curMin.x )
							curMin.x = vertexPos.x;
						if( vertexPos.y < curMin.y )
							curMin.y = vertexPos.y;
						if( vertexPos.z < curMin.z )
							curMin.z = vertexPos.z;

						if( vertexPos.x > curMax.x )
							curMax.x = vertexPos.x;
						if( vertexPos.y > curMax.y )
							curMax.y = vertexPos.y;
						if( vertexPos.z > curMax.z )
							curMax.z = vertexPos.z;
					}
				}
			}
			else
			{
				sSkeletonVertex* vertices = (sSkeletonVertex*)bufferptr;
				for( int curMesh = 0; curMesh < header.numMeshes; curMesh++ )
				{
					for( int curVertex = 0; curVertex < meshes[curMesh].numAnimVertices; curVertex++ )
					{
						glm::vec3 vertexPos = *(glm::vec3*)vertices[curVertex].position;

						if( vertexPos.x < curMin.x )
							curMin.x = vertexPos.x;
						if( vertexPos.y < curMin.y )
							curMin.y = vertexPos.y;
						if( vertexPos.z < curMin.z )
							curMin.z = vertexPos.z;

						if( vertexPos.x > curMax.x )
							curMax.x = vertexPos.x;
						if( vertexPos.y > curMax.y )
							curMax.y = vertexPos.y;
						if( vertexPos.z > curMax.z )
							curMax.z = vertexPos.z;
					}
				}
			}

			float smallestComponent = curMin.x;
			if( curMin.y < smallestComponent )
				smallestComponent = curMin.y;
			if( curMin.z < smallestComponent )
				smallestComponent = curMin.z;
			
			float biggestComponent = curMax.x;
			if( curMax.y > biggestComponent )
				biggestComponent = curMax.y;
			if( curMax.z > biggestComponent )
				biggestComponent = curMax.z;

			minPosition = glm::vec3( smallestComponent );
			maxPosition = glm::vec3( biggestComponent );

			minPosition = curMin;
			maxPosition = curMax;

			material = assets->load<MaterialAsset>( "Materials/" + std::string(header.materialName) );

			if( material ) 
				result = true;
		}

		return result;
	}

	void ModelAsset::unload()
	{
		free(dataptr);
		dataptr = nullptr;
	}

	void ModelAsset::upload()
	{
		if( bufferptr )
		{
			char* ptr = (char*)bufferptr;
			sVertex* vertices = (sVertex*)ptr;
			ptr += sizeof(sVertex)*header.numVertices;

			sSkeletonVertex* skeletonVertices = (sSkeletonVertex*)ptr;
			ptr += sizeof(sSkeletonVertex)*header.numSkeletonVertices;

			GLuint* indices = (GLuint*)ptr;
			ptr += sizeof(GLuint)*header.numIndices;

			for (int curMesh = 0; curMesh < header.numMeshes; curMesh++)
			{
				glGenBuffers(1, &vertexBuffers[curMesh]);
				glBindBuffer(GL_ARRAY_BUFFER, vertexBuffers[curMesh]);
				if (meshes[curMesh].numVertices > 0)
				{
					glBufferData(GL_ARRAY_BUFFER, sizeof(sVertex)*meshes[curMesh].numVertices, vertices + offsets[curMesh].vertex, GL_STATIC_DRAW);
				}
				else
				{
					glBufferData(GL_ARRAY_BUFFER, sizeof(sSkeletonVertex)*meshes[curMesh].numAnimVertices, skeletonVertices + offsets[curMesh].skeletonVertex, GL_STATIC_DRAW);
				}
				glBindBuffer(GL_ARRAY_BUFFER, 0);

				glGenBuffers(1, &indexBuffers[curMesh]);
				glBindBuffer(GL_ARRAY_BUFFER, indexBuffers[curMesh]);
				glBufferData(GL_ARRAY_BUFFER, sizeof(GLuint)*meshes[0].numIndices, indices, GL_STATIC_DRAW);
				glBindBuffer(GL_ARRAY_BUFFER, 0);
				bufferSizes[curMesh] = meshes[curMesh].numIndices;
			}

			free( bufferptr );
			bufferptr = nullptr;
		}
	}

	hModel* ModelAsset::getHeader()
	{
		return &header;
	}

	hMesh* ModelAsset::getMesh(int index) const
	{
		return (hMesh*)((char*)meshes + sizeof(hMesh)*index);
	}

	sBBox* ModelAsset::getBoundingBox(int joint) const
	{
		return nullptr;
	}

	hSkeleton* ModelAsset::getSkeleton(int index) const
	{
		return (hSkeleton*)((char*)skeletons + sizeof(hSkeleton)*index);
	}

	hJoint* ModelAsset::getJoints(int skeleton) const
	{
		hSkeleton* skel = (hSkeleton*)((char*)skeletons + sizeof(hSkeleton) * skeleton);
		hJoint* jnt = (hJoint*)((char*)joints + skel->jointOffset);
		return jnt;
	}

	hJoint * ModelAsset::getJointsStart() const
	{
		return joints;
	}

	hAnimationState* ModelAsset::getAnimationState(int skeleton, int joint, int animState) const
	{
		hSkeleton* skel = (hSkeleton*)((char*)skeletons + sizeof(hSkeleton) * skeleton);
		hJoint* jnt = (hJoint*)((char*)joints + skel->jointOffset + (joint * sizeof(hJoint)));
		hAnimationState* animSt8t = (hAnimationState*)((char*)animationStates + jnt->animationStateOffset + animState * sizeof(hAnimationState));
		return animSt8t;
	}

	sKeyFrame* ModelAsset::getKeyFrames(int skeleton, int joint, int animationState) const
	{
		hSkeleton* skel = skeletons + sizeof(hSkeleton) * skeleton;
		hJoint* jnt;
		jnt = (hJoint*)((char*)joints + skel->jointOffset + (joint * sizeof(hJoint)));

		hAnimationState* animSt8t = (hAnimationState*)((char*)animationStates + jnt->animationStateOffset + animationState * sizeof(hAnimationState));
		//Look into how animation state offsets are made in the FbxToFile - program
		sKeyFrame* retFrames = (sKeyFrame*)((char*)keyFrames + animSt8t->keyOffset);

		return retFrames;
	}

	sKeyFrame * ModelAsset::getKeyFrameStart() const
	{
		return keyFrames;
	}

	GLuint ModelAsset::getVertexBuffer(int mesh) const
	{
		return vertexBuffers[mesh];
	}

	GLuint ModelAsset::getIndexBuffer(int mesh) const
	{
		return indexBuffers[mesh];
	}

	int ModelAsset::getBufferSize(int mesh) const
	{
		return bufferSizes[mesh];
	}

	MaterialAsset* ModelAsset::getMaterial () const
	{
		return material;
	}

	const glm::vec3& ModelAsset::getMinPosition() const
	{
		return minPosition;
	}

	const glm::vec3& ModelAsset::getMaxPosition() const
	{
		return maxPosition;
	}
};