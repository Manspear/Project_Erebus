#include "Exporter.h"
#include <fstream>
Exporter::Exporter()
{
	assamble = new ModelAssembler(); // get the data
	
	assembleMeshes = assamble->GetMeshVector();
	if (assembleMeshes.size() > 0)
	{
	//	prepareMeshData(assembleMeshes.at(0)); //problemet ligger i att det inte finns en mesh
	}

	//prepareMaterialData();


}

Exporter::~Exporter()
{
	delete assamble;
}

void Exporter::writeModelsToFile(string outFilePath)
{
	int jointCounter = 0;
	int keyCounter = 0;
	int animationLayerCounter = 0;

	//There are no "Models" right now

	std::vector<assembleStructs::Material> mat = assamble->GetMaterialVector();
	std::vector<assembleStructs::Mesh> meshes = assamble->GetMeshVector();
	std::vector<sBBox> BoundingBoxes = assamble->GetBoundingBoxVector();
	std::vector<assembleStructs::Skeleton> skel = assamble->GetSkeletonVector();

	std::string outPath = outFilePath + std::string(&meshes.at(0).name[0]) + ".model";
	std::ofstream outFile(outFilePath + std::string(&meshes.at(0).name[0]) + ".model", std::ofstream::binary); //output file stream

	//Dataheader
	#pragma region dataHeader

	int dataSize = 0;
	int bufferSize = 0;
	outFile.write((const char*)&dataSize, sizeof(int));
	outFile.write((const char*)&bufferSize, sizeof(int));

	#pragma endregion END OF DATAHEADER

	//Modelheader

	hModel expModel = hModel{};
	expModel.numMeshes = assamble->GetMeshVector().size();
	expModel.numBBoxes = assamble->GetBoundingBoxVector().size();
	expModel.numSkeletons = assamble->GetSkeletonVector().size();
	

	for (Skeleton& skeleton1 : assamble->GetSkeletonVector())
	{
		expModel.numJoints += skeleton1.jointVector.size();
		for (Joint& joint : skeleton1.jointVector)
		{
			expModel.numAnimationStates += joint.animationState.size();
			for (sImAnimationState& state: joint.animationState)
			{
				expModel.numKeyframes += state.keyList.size();
			}
		}
	}
	for (assembleStructs::Mesh mesh:assamble->GetMeshVector())
	{
		expModel.numVertices += mesh.vertList.size();
		expModel.numSkeletonVertices += mesh.skelVertList.size();
		expModel.numIndices += mesh.indexList.size();
	}
	expModel.TYPE = assamble->GetType();


	//Materials are in the importer stored in meshes, for the engine they are stored in models.


	
	memcpy(&expModel.materialName, meshes.at(0).material.name.asChar(), meshes.at(0).material.name.length()); 
	//expModel.materialName += ".material";
	//meshes.at(0).material.name;
	//char koko[256] = meshes[0].material.name;
	//memcpy(expModel.materialName, (char*)meshes.at(0).material.name, 22);
	//memcpy(expModel.materialName, &meshes.at(0).material.name[0], 22);
	memcpy(&expModel.materialName[strlen(expModel.materialName)], ".material", 10);

	outFile.write((const char*)&expModel, sizeof(hModel));

	#pragma endregion END OF MODELHEADER



	//Offsets
	sOffset currOffset = {};
	
	for (assembleStructs::Mesh mesh : meshes)
	{
		dataSize += sizeof(sOffset);
		outFile.write((const char*)&currOffset, sizeof(sOffset));
		currOffset.vertex += mesh.vertList.size();
		currOffset.skeletonVertex += mesh.skelVertList.size();
		currOffset.index += mesh.indexList.size();
	}

	//Meshes
	hMesh expMesh;
	for (assembleStructs::Mesh& mesh : meshes)
	{
		dataSize += sizeof(hMesh);
		expMesh.numAnimVertices = mesh.skelVertList.size();
		expMesh.numVertices = mesh.vertList.size();
		expMesh.numIndexes = mesh.indexList.size();
		expMesh.parent = mesh.parent;
			
		//expMesh.pos = mesh.transform.pos;
		memcpy(&expMesh.pos, mesh.transform.pos.data(), sizeof(float[3]));
		memcpy(&expMesh.rot, mesh.transform.rot.data(), sizeof(float[3]));
		memcpy(&expMesh.scale,mesh.transform.scale.data(), sizeof(float[3]));

		expMesh.parentJoint = mesh.parentJoint;
		expMesh.parentMesh = mesh.parentMesh;

		outFile.write((const char*)&expMesh, sizeof(hMesh));
	}

	//Boundingboxes
	outFile.write((const char*)BoundingBoxes.data(), BoundingBoxes.size() * sizeof(sBBox));
	dataSize += BoundingBoxes.size() * sizeof(sBBox);
	
	//Skeletons
	hSkeleton expSkeleton;
	for (Skeleton& skeleton2 : skel)
	{
		expSkeleton.jointOffset = jointCounter * sizeof(hJoint);
		expSkeleton.jointCount = skeleton2.jointVector.size();
		outFile.write((const char*)&expSkeleton, sizeof(hSkeleton));
		dataSize += sizeof(hSkeleton);
		jointCounter += skeleton2.jointVector.size();
	}

	//Joints
	for (Skeleton skeleton3 : skel)
	{
		hJoint expJoint;
		for (Joint& joint : skeleton3.jointVector)
		{
			expJoint.animationStateCount = joint.animationState.size();
			memcpy(&expJoint.globalBindposeInverse, joint.globalBindPoseInverse.data(), sizeof(float[16]));
			//expJoint.globalBindposeInverse = joint.globalBindPoseInverse.data();
			expJoint.parentJointID = joint.parentID;
			expJoint.animationStateOffset = animationLayerCounter * sizeof(hAnimationState);
			
			outFile.write((const char*)&expJoint, sizeof(hJoint));
			dataSize += sizeof(hJoint);
			animationLayerCounter += joint.animationState.size();
		}
	}


	//Animation states
	for (Skeleton& skeleton4 : skel)
	{
		for (Joint& joint : skeleton4.jointVector)
		{
			hAnimationState expState;
			for(sImAnimationState state: joint.animationState)
			{
				expState.keyOffset = keyCounter * sizeof(sKeyFrame);
				expState.keyCount = state.keyList.size();

				outFile.write((const char*)&expState, sizeof(hAnimationState));
				dataSize += sizeof(hAnimationState);
				keyCounter += state.keyList.size();
			}
		}
	}

	//Keyframes
	for (Skeleton& skeleton5 : skel)
	{
		for(Joint& joint : skeleton5.jointVector)
		{
			for (sImAnimationState& state : joint.animationState)
			{
				outFile.write((const char*)state.keyList.data(),state.keyList.size() * sizeof(sKeyFrame));
				dataSize += state.keyList.size() * sizeof(sKeyFrame);
			}
		}
	}

	//Vertices
	for (assembleStructs::Mesh& mesh : meshes)
	{
		if (mesh.vertList.size() > 0)
		{
			outFile.write((const char*)mesh.vertList.data(), sizeof(sVertex) * mesh.vertList.size());
			bufferSize += sizeof(sVertex) * sizeof(sVertex) * mesh.vertList.size();
		}
	}
	//skeletal vertice
	for (assembleStructs::Mesh& mesh : meshes)
	{
		if (mesh.skelVertList.size() > 0)
		{
			outFile.write((const char*)mesh.skelVertList.data(), sizeof(sSkeletonVertex) * mesh.skelVertList.size());
			bufferSize += sizeof(sSkeletonVertex) * sizeof(sSkeletonVertex) * mesh.skelVertList.size();
		}
	}

	//Indices
	for (assembleStructs::Mesh& mesh : meshes)
	{
		outFile.write((const char*)mesh.indexList.data(), sizeof(int) * mesh.indexList.size());
		bufferSize += sizeof(int) * mesh.indexList.size();
	}
	

	//update dataHeader

	outFile.seekp(std::ios::beg);
	outFile.write((const char*)&dataSize, sizeof(int));
	outFile.write((const char*)&bufferSize, sizeof(int));

	outFile.close();
}


void Exporter::writeMaterialsToFile(string outFilePath)
{
	std::vector<Material> materials = assamble->GetMaterialVector();
	for (int i = 0; i < materials.size(); i++)
	{
		if (materials.at(i).boundMeshes.size() != 0)
		{
			//const char* popo = &materials.at(i).name[0];
			const char* popo = materials.at(i).name.asChar();
			string shit = popo;
			std::ofstream outFile(outFilePath + shit + ".material", std::ofstream::binary);

			char num[25];
			std::string txt;
			std::string str;

			txt = "Ambient color: ";
			sprintf(num, "%f", materials.at(i).color[0]);
			str = txt + num + " ";
			sprintf(num, "%f", materials.at(i).color[1]);
			str += std::string(num) + " ";
			sprintf(num, "%f", materials.at(i).color[2]);
			str += std::string(num) + "\r\n";

			outFile.write(str.c_str(), str.length());

			txt = "Diffuse color: ";
			sprintf(num, "%f", materials.at(i).diffuse * materials.at(i).color[0]);
			str = txt + num + " ";
			sprintf(num, "%f", materials.at(i).diffuse * materials.at(i).color[1]);
			str += std::string(num) + " ";
			sprintf(num, "%f", materials.at(i).diffuse * materials.at(i).color[2]);
			str += std::string(num) + "\r\n";

			outFile.write(str.c_str(), str.length());

			txt = "Specular color: ";
			sprintf(num, "%f", materials.at(i).specularColor[0]);
			str = txt + num + " ";
			sprintf(num, "%f", materials.at(i).specularColor[1]);
			str += std::string(num) + " ";
			sprintf(num, "%f", materials.at(i).specularColor[2]);
			str += std::string(num) + "\r\n";

			outFile.write(str.c_str(), str.length());

			txt = "Shiny factor: ";
			sprintf(num, "%f", 1.0);
			str = txt + std::string(num) + "\r\n";
			outFile.write(str.c_str(), str.length());

			popo = &materials.at(i).diffuseFilepath[0];
			txt = "Diffuse texture: ";
			str = txt + std::string(popo) + "\r\n";
			outFile.write(str.c_str(), str.length());

			popo = &materials.at(i).specularFilepath[0];
			txt = "Specular texture: ";
			str = txt + std::string(popo) + "\r\n";
			outFile.write(str.c_str(), str.length());

			popo = &materials.at(i).normalFilepath[0];
			txt = "Normal texture: ";
			str = txt + std::string(popo);
			outFile.write(str.c_str(), str.length());

			outFile.close();
		}
	}
}




