#include <fstream>
#include <vector>
#include <iostream>
//#include "ReadHeaderData.h"
#include "MoleReader.h"

using namespace std;

void MoleReader::readFromBinary(const char* filePath)
{
	/*Reading the binary file that we just have been written to.*/

	std::ifstream infile(filePath, std::ifstream::binary);

	cout << ">>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<" << "\n" << "\n" << endl;
	cout << "Binary Reader" << endl;
	cout << "\n" << endl;

	/*Reading the first block of memory that is the main header. This will read
	information about how much of each node type we have from a imported scene and
	how memory they will take up in the binary file.*/

	infile.read((char*)&pmRead_mainHeader, sizeof(read_sMainHeader));

	cout << "______________________" << endl;
	cout << "Main Header" << endl;
	cout << "meshCount: " << pmRead_mainHeader.meshCount << endl;
	cout << "materialCount: " << pmRead_mainHeader.materialCount << endl;
	cout << "lightCount: " << pmRead_mainHeader.lightCount << endl;
	cout << "cameraCount: " << pmRead_mainHeader.cameraCount << endl;

	cout << "______________________" << endl;

	if (pmRead_mainHeader.meshCount >= 1)
	{
		pmRead_meshList.resize(pmRead_mainHeader.meshCount + prevMeshes);

		//Reize to be the same length as the mesh list. Must be this way to work "in parallell" 
		//with the mesh list
		pmRead_meshJointHolder.resize(pmRead_mainHeader.meshCount + prevMeshes);
		pmRead_meshChildList.resize(pmRead_mainHeader.meshCount + prevMeshes);

		//The vertex lists will be filled so that they are the same length as the mesh list.
		pmRead_mList.resize(pmRead_mainHeader.meshCount + prevMeshes);
		pmRead_mkList.resize(pmRead_mainHeader.meshCount + prevMeshes);

		for (int i = 0; i < pmRead_mainHeader.meshCount; i++)
		{
			/*Reading the block of memory that is the meshes. The information from the meshes
			will be read here, that includes for example vertex count for a normal mesh
			and a skinned mesh. What we do is reserving memory for all the data that is in the
			struct. For example, Vertex count is a integer and will take up to 4 bytes in the
			memory when reading.*/

			infile.read((char*)&pmRead_meshList[i + prevMeshes], sizeof(read_sMesh));

			int currMeshIndex = i + prevMeshes;
			{
				cout << "Mesh: " << currMeshIndex << endl;

				cout << "Name: " << pmRead_meshList[currMeshIndex].meshName << endl;

				cout << "\t";
				cout << "Material ID: ";
				cout << pmRead_meshList[currMeshIndex].materialID << endl;

				cout << "Mesh vector: " << endl;

				cout << "\t";
				cout << "xyz: ";
				cout << pmRead_meshList[currMeshIndex].translate[0] << " ";
				cout << pmRead_meshList[currMeshIndex].translate[1] << " ";
				cout << pmRead_meshList[currMeshIndex].translate[2] << " " << endl;

				cout << "\t";
				cout << "rot: ";
				cout << pmRead_meshList[currMeshIndex].rotation[0] << " ";
				cout << pmRead_meshList[currMeshIndex].rotation[1] << " ";
				cout << pmRead_meshList[currMeshIndex].rotation[2] << " " << endl;

				cout << "\t";
				cout << "scale: ";
				cout << pmRead_meshList[currMeshIndex].scale[0] << " ";
				cout << pmRead_meshList[currMeshIndex].scale[1] << " ";
				cout << pmRead_meshList[currMeshIndex].scale[2] << " " << endl;

				cout << "\t";
				cout << "Vertex Count: ";
				cout << pmRead_meshList[currMeshIndex].vertexCount << endl;

				cout << "\t";
				cout << "SkelAnimVert Count: ";
				cout << pmRead_meshList[currMeshIndex].skelAnimVertexCount << endl;

				cout << "\t";
				cout << "Joint Count: ";
				cout << pmRead_meshList[currMeshIndex].jointCount << endl;
			}


			if (pmRead_meshList[currMeshIndex].isAnimated == true)
			{
				{
					cout << "\n";
					cout << "Skeleton Vertex vector: " << endl;

					cout << "mkList: " << endl;
					pmRead_mkList[currMeshIndex].vskList.resize(pmRead_meshList[currMeshIndex].skelAnimVertexCount);
					cout << "\t";
					cout << pmRead_mkList[currMeshIndex].vskList.data();

					cout << "\t";
					cout << "Allocated memory for: " << pmRead_meshList[i].skelAnimVertexCount << " skel vertices" << endl << endl;
				}
				const int jointCount = pmRead_meshList[currMeshIndex].jointCount;
				/*Reading all the vertex lists for each mesh. For example if a mesh have 200 vertices,
				we can multiply the count of vertices with the sizes in bytes that the sVertex struct have.
				This means that we will be reading the pos, nor, uv, tan, bitan 200 times.*/
				infile.read((char*)pmRead_mkList[currMeshIndex].vskList.data(), sizeof(read_sSkelAnimVertex) * pmRead_meshList[currMeshIndex].skelAnimVertexCount);

				/*Reading the joint list for each mesh. Every joint in the list have individual data
				that we have to process when reading from the file.*/
				pmRead_meshJointHolder[currMeshIndex].jointList.resize(jointCount);
				pmRead_meshJointHolder[currMeshIndex].perJoint.resize(jointCount);
				
				{ 
					cout << "\n";
					cout << "Joint vector: " << endl;

					cout << "\t";
				//	cout << pmRead_jointList.data() << endl;

					cout << "\t";
					cout << "Allocated memory for: " << pmRead_meshList[currMeshIndex].jointCount << " joints" << endl;
				}
				/*Reading the data for all the joints that a skinned mesh have.*/
				
				infile.read((char*)pmRead_meshJointHolder[currMeshIndex].jointList.data(), sizeof(read_sJoint) * jointCount);
		
				for (int jointCounter = 0; jointCounter < jointCount; jointCounter++)
				{
					//pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].meshChildren.resize()
					const int animStateCount = pmRead_meshJointHolder[currMeshIndex].jointList[jointCounter].animationStateCount;
					pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStateTracker.resize(animStateCount);

					infile.read((char*)pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStateTracker.data(), sizeof(read_sAnimationStateTracker) * animStateCount);

					const int meshChildCount = pmRead_meshJointHolder[currMeshIndex].jointList[jointCounter].meshChildCount;
					//here crash
					infile.read((char*)pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].meshChildren.data(), sizeof(int) * meshChildCount);
					
					pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStates.resize(animStateCount);

					for (int animStateCounter = 0; animStateCounter < animStateCount; animStateCounter++)
					{
						const int keyCount = pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStateTracker[animStateCounter].keyCount;
						pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStates[animStateCounter].keyFrames.resize(keyCount);

						infile.read((char*)pmRead_meshJointHolder[currMeshIndex].perJoint[jointCounter].animationStates[animStateCounter].keyFrames.data(), sizeof(read_sKeyFrame) * keyCount);
					}
				}
			}

			else
			{
				pmRead_mList[currMeshIndex].vList.resize(pmRead_meshList[currMeshIndex].vertexCount);
				cout << "\n";
				cout << "Vertex vector: " << endl;
				cout << "mList: " << endl;
				cout << "\t";
				cout << pmRead_mList[currMeshIndex].vList.data() << endl;

				cout << "\t";
				cout << "Allocated memory for " << pmRead_meshList[currMeshIndex].vertexCount << " vertices" << endl << endl;

				pmRead_mList[currMeshIndex].vList.resize(pmRead_meshList[currMeshIndex].vertexCount);

				/*Reading all the vertex lists for each mesh. For example if a mesh have 200 vertices,
				we can multiply the count of vertices with the sizes in bytes that the sVertex struct have.
				This means that we will be reading the pos, nor, uv, tan, bitan 200 times.*/
				infile.read((char*)pmRead_mList[currMeshIndex].vList.data(), sizeof(read_sVertex) * pmRead_meshList[currMeshIndex].vertexCount);
			}
			const int childMeshCount = pmRead_meshList[currMeshIndex].meshChildCount;
			
			pmRead_meshChildList[currMeshIndex].meshChildList.resize(childMeshCount);
			infile.read((char*)pmRead_meshChildList[currMeshIndex].meshChildList.data(), sizeof(read_sMeshChild) * childMeshCount);
		}
		prevMeshes += pmRead_mainHeader.meshCount;
	}

	if (pmRead_mainHeader.materialCount >= 1)
	{
		pmRead_materialList.resize(pmRead_mainHeader.materialCount + prevMaterials);

		for (int i = 0; i < pmRead_mainHeader.materialCount; i++)
		{
			int currIndex = i + prevMaterials;

			/*Reading all the materials from the list with the size in bytes in mind.*/
			infile.read((char*)&pmRead_materialList[currIndex], sizeof(read_sMaterial));
			{
				cout << "Material: " << i << " Name: " << pmRead_materialList[currIndex].materialName << endl;

				cout << "Material vector: " << endl;
				cout << "\t";
				cout << &pmRead_materialList[currIndex] << endl;

				cout << "\t";
				cout << "Allocated memory for " << pmRead_mainHeader.materialCount << " materials" << endl;

				cout << "\t";
				cout << "Ambient color: ";
				cout << pmRead_materialList[currIndex].ambientColor[0] << " "
					<< pmRead_materialList[currIndex].ambientColor[1] << " "
					<< pmRead_materialList[currIndex].ambientColor[2] << " " << endl;

				cout << "\t";
				cout << "Diffuse color: ";
				cout << pmRead_materialList[currIndex].diffuseColor[0] << " "
					<< pmRead_materialList[currIndex].diffuseColor[1] << " "
					<< pmRead_materialList[currIndex].diffuseColor[2] << " " << endl;

				cout << "\t";
				cout << "Specular color: ";
				cout << pmRead_materialList[currIndex].specularColor[0] << " "
					<< pmRead_materialList[currIndex].specularColor[1] << " "
					<< pmRead_materialList[currIndex].specularColor[2] << " " << endl;

				cout << "\t";
				cout << "Shiny factor: ";
				cout << pmRead_materialList[currIndex].shinyFactor << endl;

				cout << "\t";
				cout << "Diffuse texture: " << pmRead_materialList[currIndex].diffuseTexture << endl;

				cout << "\t";
				cout << "Specular texture: " << pmRead_materialList[currIndex].specularTexture << endl;

				cout << "\t";
				cout << "Normal texture: " << pmRead_materialList[currIndex].normalTexture << endl;


				cout << "______________________" << endl;
			}
		}

		prevMaterials += pmRead_mainHeader.materialCount;

	}

	if (pmRead_mainHeader.lightCount >= 1)
	{
		pmRead_lightList.resize(pmRead_mainHeader.lightCount + prevLights);

		for (int i = 0; i < pmRead_mainHeader.lightCount; i++)
		{
			int currIndex = i + prevLights;

			/*Reading all the lights from the list with the size in bytes in mind.*/
			infile.read((char*)&pmRead_lightList[currIndex], sizeof(read_sLight));
			{
				cout << "Light: " << i << endl;

				cout << "Light vector: " << endl;

				cout << "\t";
				cout << &pmRead_lightList[currIndex] << endl;

				cout << "\t";
				cout << "Allocated memory for " << pmRead_mainHeader.lightCount << " lights" << endl;

				cout << "\t";
				cout << "Light ID: " << pmRead_lightList[currIndex].lightID << endl;

				cout << "\t";
				cout << "Light position: " << pmRead_lightList[currIndex].lightPos[0] << " "
					<< pmRead_lightList[currIndex].lightPos[1] << " "
					<< pmRead_lightList[currIndex].lightPos[2] << endl;

				cout << "\t";
				cout << "Light rotation: " << pmRead_lightList[currIndex].lightRot[0] << " "
					<< pmRead_lightList[currIndex].lightRot[1] << " "
					<< pmRead_lightList[currIndex].lightRot[2] << endl;

				cout << "\t";
				cout << "Light scale: " << pmRead_lightList[currIndex].lightScale[0] << " "
					<< pmRead_lightList[currIndex].lightScale[1] << " "
					<< pmRead_lightList[currIndex].lightScale[2] << endl;

				cout << "\t";
				cout << "Light color: " << pmRead_lightList[currIndex].color[0] << " "
					<< pmRead_lightList[currIndex].color[1] << " "
					<< pmRead_lightList[currIndex].color[2] << " " << endl;

				cout << "\t";
				cout << "Light intensity: " << pmRead_lightList[currIndex].intensity << endl;

				cout << "______________________" << endl;
			}
		}
		prevLights = pmRead_mainHeader.lightCount;
	}

	if (pmRead_mainHeader.cameraCount >= 1)
	{
		pmRead_cameraList.resize(pmRead_mainHeader.cameraCount + prevCameras);

		for (int i = 0; i < pmRead_mainHeader.cameraCount; i++)
		{
			int currIndex = i + prevCameras;

			/*Reading all the cameras from the list with the size in bytes in mind.*/
			infile.read((char*)&pmRead_cameraList[currIndex], sizeof(read_sCamera));
			{
				cout << "Camera: " << i << endl;

				cout << "Camera vector: " << endl;

				cout << "\t";
				cout << &pmRead_cameraList[currIndex] << endl;

				cout << "\t";
				cout << "Allocated memory for " << pmRead_mainHeader.cameraCount << " cameras" << endl;

				cout << "\t";
				cout << "Camera position: " << pmRead_cameraList[currIndex].camPos[0] << " "
					<< pmRead_cameraList[currIndex].camPos[1] << " "
					<< pmRead_cameraList[currIndex].camPos[2] << endl;

				cout << "\t";
				cout << "Camera Up vector: " << pmRead_cameraList[currIndex].upVector[0] << " "
					<< pmRead_cameraList[currIndex].upVector[1] << " "
					<< pmRead_cameraList[currIndex].upVector[2] << endl;

				cout << "\t";
				cout << "FOV: " << pmRead_cameraList[currIndex].fieldOfView << endl;

				cout << "\t";
				cout << "Near plane: " << pmRead_cameraList[currIndex].nearPlane << endl;

				cout << "\t";
				cout << "Far plane: " << pmRead_cameraList[currIndex].farPlane << endl;

				cout << "______________________" << endl;
			}
		}
		prevCameras += pmRead_mainHeader.cameraCount;
	}
	//contains the meshes
	pmRead_meshList;
	//Contains the vertices for each mesh
	pmRead_mList;
	//contains skeletal vertices for each mesh
	pmRead_mkList;
	//contains mesh children for each mesh
	pmRead_meshChildList;
	//Contains joint and animLayer-data
	pmRead_meshJointHolder;
	//contains the cameras
	pmRead_cameraList;
	//contains the lights
	pmRead_lightList;
	//contains the materials
	pmRead_materialList;

	infile.close();
}

//const std::vector<read_sMesh>* MoleReader::getMeshList()
//{
//	return nullptr;
//}



const std::vector<read_sMesh>* MoleReader::getMeshList()
{
	return &pmRead_meshList;
}

const std::vector<read_sMChildHolder>* MoleReader::getMeshChildList()
{
	return &pmRead_meshChildList;
}

//const std::vector<read_m>* MoleReader::getVertexList()
//{
//	return &pmRead_mList;
//}
//
//const std::vector<read_mk>* MoleReader::getSkeletalVertexList()
//{
//	return &pmRead_mkList;
//}

const std::vector<read_sMaterial>* MoleReader::getMaterialList()
{
	return &pmRead_materialList;
}

const std::vector<read_sCamera>* MoleReader::getCameraList()
{
	return &pmRead_cameraList;
}

const std::vector<read_sLight>* MoleReader::getLightList()
{
	return &pmRead_lightList;
}

const std::vector<read_sMJHolder>* MoleReader::getJointKeyList()
{
	return &pmRead_meshJointHolder;
}

const read_sMainHeader * MoleReader::getMainHeader()
{
	return &pmRead_mainHeader;
}

const int MoleReader::getMeshIndex(string meshName)
{
	for (int meshIndex = 0; meshIndex < pmRead_mainHeader.meshCount; meshIndex++)
	{
		int check = meshName.compare(pmRead_meshList[meshIndex].meshName);
		if (check == 0)
		{
			return meshIndex;
		}
	}
	return -1337;
}

const read_sMesh * MoleReader::getMesh(int meshIndex)
{
	return &pmRead_meshList[meshIndex];
}

const std::vector<read_sKeyFrame>* MoleReader::getKeyList(int meshIndex, int jointIndex, int animationState)
{
	
	return &pmRead_meshJointHolder[meshIndex].perJoint[jointIndex].animationStates[animationState].keyFrames;
}

const std::vector<read_sMeshChild>* MoleReader::getMeshChildList(int meshIndex)
{
	return &pmRead_meshChildList[meshIndex].meshChildList;
}

const read_sMaterial * MoleReader::getMaterial(int materialIndex)
{
	return &pmRead_materialList[materialIndex];
}

const read_sJoint * MoleReader::getJoint(int meshIndex, int jointIndex)
{
	return &pmRead_meshJointHolder[meshIndex].jointList[jointIndex];
}

const std::vector<read_sMeshChild> MoleReader::getJointMeshChildList(int meshIndex, int jointIndex)
{	
	return pmRead_meshJointHolder[jointIndex].perJoint[jointIndex].meshChildren;
}

const std::vector<read_sSkelAnimVertex>* MoleReader::getSkelVertexList(int meshIndex)
{
	return &pmRead_mkList[meshIndex].vskList;
}

const std::vector<read_sVertex>* MoleReader::getVertexList(int meshIndex)
{
	return &pmRead_mList[meshIndex].vList;
}

MoleReader::MoleReader() 
{
	prevMeshes = 0;
	prevCameras = 0;
	prevLights = 0;
	prevMaterials = 0;
	prevJoints = 0;
}
MoleReader::~MoleReader()
{

}


//cout << "______________________" << endl;
//GLuint vertexBuff;


//glGenVertexArrays(1, &vao);
//glBindVertexArray(vao);

//// It wörks
//glEnableVertexAttribArray(0);
//glEnableVertexAttribArray(1);
//glEnableVertexAttribArray(2);
//glEnableVertexAttribArray(3);
//glEnableVertexAttribArray(4);

//glGenBuffers(1, &vertexBuff);
//glBindBuffer(GL_ARRAY_BUFFER, vertexBuff);
//glBufferData(GL_ARRAY_BUFFER, sizeof(read_sVertex) * read_mList[i].vList.size(), read_mList[i].vList.data(), GL_STATIC_DRAW);
//cout << "______________________" << endl;