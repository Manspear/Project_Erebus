#include "MFileImporter.h"

void MFileImporter::importFbx(const char * filePath, float animationFramerate)
{
	this->animationFramerate = animationFramerate;
	/*Initialize memory allocator.*/
	FbxManager* pmManager = FbxManager::Create();

	/*Initialize settings for the import.*/
	FbxIOSettings* pmSettings = FbxIOSettings::Create(pmManager, IOSROOT);

	/*Settings the options manually, by default it is true.*/
	pmSettings->SetBoolProp(IMP_FBX_MATERIAL, true);
	pmSettings->SetBoolProp(IMP_FBX_TEXTURE, true);
	pmSettings->SetBoolProp(IMP_FBX_LINK, true);
	pmSettings->SetBoolProp(IMP_FBX_SHAPE, true);
	pmSettings->SetBoolProp(IMP_FBX_GOBO, true);
	pmSettings->SetBoolProp(IMP_FBX_ANIMATION, true);
	pmSettings->SetBoolProp(IMP_FBX_GLOBAL_SETTINGS, true);

	/*Setting the importing settings.*/
	pmManager->SetIOSettings(pmSettings);

	FbxImporter* fbxImporter = FbxImporter::Create(pmManager, "");

	bool importStatus = fbxImporter->Initialize(filePath, -1, pmManager->GetIOSettings());
	/*Abort if the importer can't be intitialized.*/
	if (importStatus == false) {
		FBXSDK_printf("Error: Can't initialize the importer. Aborting...\n");
		exit(1);
	}

	pmScene = FbxScene::Create(pmManager, "MyScene");

	importStatus = fbxImporter->Import(pmScene);
	/*Abort if the scene can't be imported.*/
	if (importStatus == false) {
		FBXSDK_printf("Error: Can't import the scene. Aborting...\n");
		exit(1);
	}
	fbxImporter->Destroy();

	/*Get the handle to all of the objects in the scene.*/
	FbxNode* fbxRootNode = pmScene->GetRootNode();

	//Looping through all direct children in the scene-graph.
	for (int childIndex = 0; childIndex < fbxRootNode->GetChildCount(); childIndex++)
	{
		FbxNode* childNode = fbxRootNode->GetChild(childIndex);
		FbxNodeAttribute::EType attributeType = childNode->GetNodeAttribute()->GetAttributeType();

		/*No attributes, then skip!*/
		if (childNode->GetNodeAttribute() == NULL)
			continue;

		/*To make sure we only want to import meshes, lights and cameras.*/
		if (attributeType != FbxNodeAttribute::eMesh && attributeType != FbxNodeAttribute::eLight &&
			attributeType != FbxNodeAttribute::eCamera)
			continue;

		if (attributeType == FbxNodeAttribute::eMesh)
		{
			FbxMesh* currMesh = (FbxMesh*)childNode->GetNodeAttribute();

			FbxProperty tag = childNode->FindProperty(SPAWNTAG, false);
			if (tag.IsValid())
			{
				imScene.spawnList.push_back(sImSpawn());
				processSpawnObject(currMesh);
			}
			else
			{
				/*Pushing back an empty model so thah imScene.modelLiust.back()
				can be used in all processMesh-functions*/
				sImModel initModel;
				initModel.name = currMesh->GetNode()->GetName();
				imScene.modelList.push_back(initModel);
				sImMesh initMesh;
				initMesh.uniqueID = currMesh->GetUniqueID();
				/*Mesh push-backed for the same purpose.*/
				imScene.modelList.back().meshList.push_back(sImMesh());
				/*When called from here processMesh is considered a model*/
				const char* debugName = currMesh->GetName();
				processMesh(currMesh, eObjectType::MODEL);
				/*Only called once per model*/
				recursiveProcessHierarchyData(childNode);
			}
		}

		if (attributeType == FbxNodeAttribute::eLight)
		{
			processLight((FbxLight*)childNode->GetNodeAttribute());
		}
	}
}

void MFileImporter::writeToBinary(const char * fileDestination)
{
	/*
	To make loading quicker: Export all things in chunks sorted by type. Like:
	scene, transform, model,model,model, mesh, mesh, mesh, mesh...
	This is data oriented, as opposed to object-oriented. The engine will
	separate between individual objects by using offsets.
	*/

	/*
	One Scene-file containing transforms for models, lights, and such

	Potentially numerous model-files containing several meshes and materials.
	*/

	std::string path = fileDestination;

	/*
	The MODEL file order:
	DATAHEADER -> MODELHEADER -> OFFSETS ->
	MESHES -> BOUNDINGBOXES -> SKELETONS ->
	JOINTS -> ANIMATION STATES -> KEYFRAMES ->
	VERTICES -> SKELETAL VERTICES -> INDICES
	*/
	//Export the models

	//One per skeleton, "gathered" stats for all joints
	//struct sSkelOffset
	//{
	//	int skeletonJointOffset; //Where to look for this skeleton's joints
	//	int animationLayerOffset; //Where to find this skeleton's animation layers
	//	int keyFrameOffset; //Where to find this skeleton's keyframes
	//};
	////One per joint
	//struct sJointOffset
	//{
	//	int animationLayerOffset;
	//	int animationLayerKeyOffset; 
	//};
	//
	////The first of anything shouldn't have any offset! First skeleton -> no offset! Second skeleton -> it's offset is that of the previous skeleton!
	///*
	//user case:
	//offsets[joint][animationState] <-- Gets the number of keys previous to this joint's keys.
	//*/

	//std::vector<sSkelOffset> skelOffsets;
	//std::vector<sJointOffset> jointOffsets;

	//sSkelOffset fillSkelOffset = {};
	//sJointOffset fillJointOffset = {};



	//int keyCounter = 0; 
	//int animationLayerCounter = 0;
	//int jointCounter = 0;

	//for (int i = 0; i < imScene.modelList.size(); i++)
	//{
	//	for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
	//	{
	//		//Per skeleton
	//		fillSkelOffset.skeletonJointOffset = jointCounter;
	//		fillSkelOffset.animationLayerOffset = animationLayerCounter;
	//		fillSkelOffset.keyFrameOffset = keyCounter;

	//		skelOffsets.push_back(fillSkelOffset);

	//		jointCounter += imScene.modelList[i].skeletonList[j].jointList.size();

	//		for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
	//		{
	//			for (int l = 0; l < imScene.modelList[i].skeletonList[j].jointList[j].animationState.size(); l++)
	//			{					
	//				//Animation layers are per-joint! Keyframes are per-animation layer! To get keys, need keyframe-offsets from previous animation states!
	//				fillJointOffset.animationLayerOffset = animationLayerCounter;
	//				fillJointOffset.animationLayerKeyOffset = keyCounter;
	//				jointOffsets.push_back(fillJointOffset);

	//				animationLayerCounter += 1;
	//				keyCounter += imScene.modelList[i].skeletonList[j].jointList[j].animationState[l].keyList.size();
	//			}
	//		}
	//	}
	//}

	/*
	joints: where do my animation layers START? Have an offset into the animation-layer list
	animation layers: where do my keyframes START? Have an offset into the keyframe list

	Store these things in the actually used structs (change the headers)
	*/
	for (int i = 0; i < imScene.materialList.size(); i++)
	{
		//Shit out material files
		std::ofstream outFile(path + std::string(imScene.materialList[i].materialName) + ".material", std::ofstream::binary);

		sExpMaterial expMat;
		memcpy(expMat.ambientColor, imScene.materialList[i].ambientColor, 3 * sizeof(float));
		memcpy(expMat.diffuseColor, imScene.materialList[i].diffuseColor, 3 * sizeof(float));
		memcpy(expMat.diffuseTextureFilePath, imScene.materialList[i].diffuseTextureFilePath, 256);

		//	expMat.materialID[strlen(imScene.materialList[i].materialName)] = '\0';

		memcpy(expMat.normalTextureFilePath, imScene.materialList[i].normalTextureFilePath, 256);
		memcpy(&expMat.shinyFactor, &imScene.materialList[i].shinyFactor, 1 * sizeof(float));
		memcpy(&expMat.specularColor, imScene.materialList[i].specularColor, 3 * sizeof(float));
		memcpy(&expMat.specularTextureFilePath, imScene.materialList[i].specularTextureFilePath, 256);

		char num[25];
		std::string txt;
		std::string str;

		txt = "Ambient color: ";
		sprintf(num, "%f", expMat.ambientColor[0]);
		str = txt + num + " ";
		sprintf(num, "%f", expMat.ambientColor[1]);
		str += std::string(num) + " ";
		sprintf(num, "%f", expMat.ambientColor[2]);
		str += std::string(num) + "\r\n";

		outFile.write(str.c_str(), str.length());

		txt = "Diffuse color: ";
		sprintf(num, "%f", expMat.diffuseColor[0]);
		str = txt + num + " ";
		sprintf(num, "%f", expMat.diffuseColor[1]);
		str += std::string(num) + " ";
		sprintf(num, "%f", expMat.diffuseColor[2]);
		str += std::string(num) + "\r\n";

		outFile.write(str.c_str(), str.length());

		txt = "Specular color: ";
		sprintf(num, "%f", expMat.specularColor[0]);
		str = txt + num + " ";
		sprintf(num, "%f", expMat.specularColor[1]);
		str += std::string(num) + " ";
		sprintf(num, "%f", expMat.specularColor[2]);
		str += std::string(num) + "\r\n";

		outFile.write(str.c_str(), str.length());


		txt = "Shinyfactor: ";
		sprintf(num, "%f", expMat.shinyFactor);
		str = txt + std::string(num) + "\r\n";
		outFile.write(str.c_str(), str.length());

		txt = "Diffuse texture: ";
		str = txt + std::string(expMat.diffuseTextureFilePath) + "\r\n";
		outFile.write(str.c_str(), str.length());


		txt = "Specular texture: ";
		str = txt + std::string(expMat.specularTextureFilePath) + "\r\n";
		outFile.write(str.c_str(), str.length());


		txt = "Normal texture: ";
		str = txt + std::string(expMat.normalTextureFilePath) + "\n";
		outFile.write(str.c_str(), str.length());

		//str = std::string(txt +  + '\n');

		//outFile.write((char*)&expMat, sizeof(sExpMaterial));

		outFile.close();
	}

	//char materialName[256];

	//float ambientColor[3];

	//float diffuseColor[3];

	//float specularColor[3];

	//float shinyFactor;

	//char diffuseTextureFilePath[256];

	//char specularTextureFilePath[256];

	//char normalTextureFilePath[256];

	int jointCounter = 0;
	int keyCounter = 0;
	int animationLayerCounter = 0;

	for (int i = 0; i < imScene.modelList.size(); i++)
	{
		std::ofstream outFile(path + std::string(imScene.modelList[i].name) + ".model", std::ofstream::binary);

		//Dataheader
		int dataSize = 0;
		int bufferSize = 0;
		outFile.write((const char*)&dataSize, sizeof(int));
		outFile.write((const char*)&bufferSize, sizeof(int));

		//Modelheader
		hModel expModel = hModel{};
		expModel.numMeshes = imScene.modelList[i].meshList.size();
		expModel.numBBoxes = imScene.modelList[i].bBoxList.size();
		expModel.numSkeletons = imScene.modelList[i].skeletonList.size();
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			expModel.numJoints += imScene.modelList[i].skeletonList[j].jointList.size();
			for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
			{
				expModel.numAnimationStates += imScene.modelList[i].skeletonList[j].jointList[k].animationState.size();
				for (int l = 0; l < imScene.modelList[i].skeletonList[j].jointList[k].animationState.size(); l++)
					expModel.numKeyframes += imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size();
			}
		}
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			expModel.numVertices += imScene.modelList[i].meshList[j].vertList.size();
			expModel.numSkeletonVertices += imScene.modelList[i].meshList[j].animVertList.size();
			expModel.numIndices += imScene.modelList[i].meshList[j].indexList.size();
		}
		expModel.TYPE = imScene.modelList[i].TYPE;

		//Materials are in the importer stored in meshes, for the engine they are stored in models.
		memcpy(expModel.materialName, imScene.materialList[imScene.modelList[i].meshList[0].materialID].materialName, 22);
		memcpy(&expModel.materialName[strlen(imScene.materialList[imScene.modelList[i].meshList[0].materialID].materialName)], ".material", 10);

		outFile.write((const char*)&expModel, sizeof(hModel));

		//Offsets
		sOffset currOffset = {};
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			dataSize += sizeof(sOffset);
			outFile.write((const char*)&currOffset, sizeof(sOffset));
			currOffset.vertex += imScene.modelList[i].meshList[j].vertList.size();
			currOffset.skeletonVertex += imScene.modelList[i].meshList[j].animVertList.size();
			currOffset.index += imScene.modelList[i].meshList[j].indexList.size();
		}

		//Meshes
		hMesh expMesh;
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			dataSize += sizeof(hMesh);
			memcpy((char*)&expMesh, &imScene.modelList[i].meshList[j], sizeof(hMesh) - 3 * sizeof(int));
			expMesh.numAnimVertices = imScene.modelList[i].meshList[j].animVertList.size();
			expMesh.numVertices = imScene.modelList[i].meshList[j].vertList.size();
			expMesh.numIndexes = imScene.modelList[i].meshList[j].indexList.size();

			outFile.write((const char*)&expMesh, sizeof(hMesh));
		}
		//Boundingboxes
		outFile.write((const char*)imScene.modelList[i].bBoxList.data(), imScene.modelList[i].bBoxList.size() * sizeof(sBBox));
		dataSize += imScene.modelList[i].bBoxList.size() * sizeof(sBBox);
		//Skeletons
		hSkeleton expSkeleton;
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			expSkeleton.jointOffset = jointCounter * sizeof(hJoint);
			expSkeleton.jointCount = imScene.modelList[i].skeletonList[j].jointList.size();
			outFile.write((const char*)&expSkeleton, sizeof(hSkeleton));
			dataSize += sizeof(hSkeleton);
			jointCounter += imScene.modelList[i].skeletonList[j].jointList.size();
		}
		//Joints
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			hJoint expJoint;
			for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
			{
				memcpy((char*)&expJoint, &imScene.modelList[i].skeletonList[j].jointList[k], sizeof(hJoint) - 2 * sizeof(int));
				expJoint.animationStateCount = imScene.modelList[i].skeletonList[j].jointList[k].animationState.size();

				expJoint.animationStateOffset = animationLayerCounter * sizeof(hAnimationState);

				outFile.write((const char*)&expJoint, sizeof(hJoint));
				dataSize += sizeof(hJoint);
				animationLayerCounter += imScene.modelList[i].skeletonList[j].jointList[k].animationState.size();;
			}
		}
		imScene.modelList;
		//Animation states
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
			{
				hAnimationState expState;
				for (int l = 0; l < imScene.modelList[i].skeletonList[j].jointList[k].animationState.size(); l++)
				{
					expState.keyOffset = keyCounter * sizeof(sKeyFrame);
					expState.keyCount = imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size();
					outFile.write((const char*)&expState, sizeof(hAnimationState));
					dataSize += sizeof(hAnimationState);
					keyCounter += imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size();
				}
			}
		}
		//Keyframes
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
			{
				for (int l = 0; l < imScene.modelList[i].skeletonList[j].jointList[k].animationState.size(); l++)
				{
					outFile.write((const char*)imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.data(),
						imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size() * sizeof(sKeyFrame));
					dataSize += imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size() * sizeof(sKeyFrame);
				}
			}
		}
		//Vertices
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			if (imScene.modelList[i].meshList[j].vertList.size() > 0)
			{
				outFile.write((const char*)imScene.modelList[i].meshList[j].vertList.data(), sizeof(sVertex) * imScene.modelList[i].meshList[j].vertList.size());
				bufferSize += sizeof(sVertex) * imScene.modelList[i].meshList[j].vertList.size();
			}
		}
		//Skeletal vertices
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			if (imScene.modelList[i].meshList[j].animVertList.size() > 0)
			{
				outFile.write((const char*)imScene.modelList[i].meshList[j].animVertList.data(), sizeof(sSkeletonVertex) * imScene.modelList[i].meshList[j].animVertList.size());
				bufferSize += sizeof(sSkeletonVertex) * imScene.modelList[i].meshList[j].animVertList.size();
			}
		}
		//Indices
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			outFile.write((const char*)imScene.modelList[i].meshList[j].indexList.data(), sizeof(int) * imScene.modelList[i].meshList[j].indexList.size());
			bufferSize += sizeof(int) * imScene.modelList[i].meshList[j].indexList.size();
		}
		//Now dataHeader is updated
		outFile.seekp(std::ios::beg);
		outFile.write((const char*)&dataSize, sizeof(int));
		outFile.write((const char*)&bufferSize, sizeof(int));

		outFile.close();
	}
}

void MFileImporter::processMesh(FbxMesh * inputMesh, eObjectType TYPE)
{
	std::vector<FbxNode*> rootList;

	std::vector<size_t> influenceOffset;

	unsigned int deformerCount = inputMesh->GetDeformerCount(FbxDeformer::eSkin);
	if (deformerCount > 0)
	{
		//Since not all meshes contained in the model are static, the model is animated.
		imScene.modelList.back().TYPE = eModelType::ANIMATED;
		imScene.modelList.back().meshList.back().isAnimated = true;
	}
	else
		imScene.modelList.back().meshList.back().isAnimated = false;

	int index;
	if (TYPE == eObjectType::MODEL)
		index = imScene.modelList.size() - 1;
	if (TYPE == eObjectType::MESH)
		index = imScene.modelList.back().meshList.size() - 1;

	/*Reading all the information for a mesh in FBX.*/
	processVertices(inputMesh);

	processNormals(inputMesh);

	processTangents(inputMesh);

	processUVs(inputMesh);

	processMaterials(inputMesh);

	processTextures(inputMesh);

	processTransformations(inputMesh->GetNode(), TYPE, index);

	processJoints(inputMesh, rootList, influenceOffset);

	//processVertices2(inputMesh, influenceOffset);
	processBlendWeightsAndIndices(inputMesh, influenceOffset);
	//Performed last since blendweight-processing in joints need vertices to be in "per-vertex-per-triangle"

	//Takes too long
	//processIndexes();
	for (int i = 0; i < imScene.modelList.back().meshList.back().animVertList.size(); i++)
		imScene.modelList.back().meshList.back().indexList.push_back(i);
	for (int i = 0; i < imScene.modelList.back().meshList.back().vertList.size(); i++)
		imScene.modelList.back().meshList.back().indexList.push_back(i);

	/*CALLS ITSELF INFINITELY*/
	//For eventual mesh-hierarchy
	recursiveProcessHierarchyData(inputMesh->GetNode());
	//For the joint-hierarchy
	for (int i = 0; i < rootList.size(); i++)
	{
		recursiveProcessHierarchyData(rootList[i]);
	}
}
void MFileImporter::processVertices2(FbxMesh * inputMesh, std::vector<size_t>& influenceOffset)
{
	//Gets vertex indexes into the control-point array. All UV, normal and tangent data index into this array
	int* indexArray = inputMesh->GetPolygonVertices();
	int indexCount = inputMesh->GetPolygonVertexCount(); //for a cube indexCount == 24
														 //polygonVertices == getTriangles
														 //Need triangle offsets
	int polysize = inputMesh->mPolygonVertices.Size();
	//Need something that actually has a size of 24... Or lower.

	//Positions
	FbxVector4* points = inputMesh->GetControlPoints();
	int pointsCount = inputMesh->GetControlPointsCount();

	//UVs
	FbxStringList UVSetNames;
	inputMesh->GetUVSetNames(UVSetNames);
	FbxArray<fbxsdk::FbxVector2> UVs;
	inputMesh->GetPolygonVertexUVs(UVSetNames[0], UVs);
	int numUV = UVs.Size();

	//This could maybe be used for faster idnexing...!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//inputMesh->GetPolygonVertexIndex(int index);

	//UV ELEMENTZ LOL
	FbxGeometryElementUV* uvele = inputMesh->GetElementUV(UVSetNames[0]);
	int kiss = uvele->GetDirectArray().GetCount();

	//So.. The fact of the matter seems to point to there being no "true" values or indices to use.
	//Either it's 

	//tangents
	FbxGeometryElementTangent* tangentElement = inputMesh->GetElementTangent();
	tangentElement->SetMappingMode(FbxLayerElement::eByControlPoint);
	int tanCount = tangentElement->GetDirectArray().GetCount();
	tangentElement->RemapIndexTo(FbxLayerElement::EMappingMode::eByPolygonVertex);
	int uoo = tangentElement->GetIndexArray().GetCount();

	FbxGeometryElementTangent* tangentElement2 = inputMesh->GetLayer(0)->GetTangents();
	int wololo = tangentElement2->GetDirectArray().GetCount();

	//normals
	FbxArray<FbxVector4> normals;
	inputMesh->GetPolygonVertexNormals(normals);
	int numNormals = normals.Size();

	FbxGeometryElementNormal* shit = inputMesh->GetElementNormal(0);
	int lol = shit->GetDirectArray().GetCount();
	int lpp = shit->GetIndexArray().GetCount();



	//IF we have a hard-edge-cube, every control point will have three normals each. Making it unique from all angles...
	//But this should mean only 24 normals, but I get 36. Something somewhere is off. The only explanation would be 
	//if the normals were stored per-vertex-per-polygon. But if that is the case, how can I change it to show the "true"
	//normal values (24)?
	/*
	Okay. So: We know that the first 8 control-point-vertices read into a cube are unrelated to one another, and therefore doesn't need
	a "check against other vertices". Maybe do this checking while you're reading in new vertices! Doing that would save
	memcps.
	Can I make sure that the first vertices that are read are unique control points? Kinda. The first three vertices are always guaranteed to be
	unique.
	*/
	FbxLayerElement::EMappingMode thing = shit->GetMappingMode();

	FbxLayerElement::EReferenceMode logia = shit->GetReferenceMode();



	if (thing == FbxLayerElement::EMappingMode::eByPolygonVertex)
	{
		int pongpong = 9;
	}
	if (thing == FbxLayerElement::EMappingMode::eByControlPoint)
	{
		int lili = 99;
	}
	//Why does everything have size 36???

	//Now build the index and vertex list
	if (imScene.modelList.back().meshList.back().isAnimated)
	{
		std::vector<std::vector<sBlendData>> bd;

		bd.resize(inputMesh->GetControlPointsCount());

		//Does this work if you have more than one skeleton bound per mesh?
		//It should, since we now loop through all skeletons before adding weight to the vertices

		for (int o = 0; o < inputMesh->GetDeformerCount(); o++)
		{
			FbxSkin* currSkin = reinterpret_cast<FbxSkin*>(inputMesh->GetDeformer(o, FbxDeformer::eSkin));
			if (!currSkin)
				continue;

			//Save the blendweights for the entire skeleton
			const unsigned int clusterCount = currSkin->GetClusterCount();
			for (unsigned int clusterCounter = 0; clusterCounter < clusterCount; ++clusterCounter)
			{
				sBlendData temp;
				FbxCluster* currCluster = currSkin->GetCluster(clusterCounter);
				//First loop through the skeleton to get blendindices
				const unsigned int controlPointIndicesCount = currCluster->GetControlPointIndicesCount();
				for (int i = 0; i < controlPointIndicesCount; i++)
				{
					//The control point that this joint affects
					int controlPointIndex = currCluster->GetControlPointIndices()[i];
					//The weight from this joint that the control point get
					float blendingWeight = currCluster->GetControlPointWeights()[i];

					temp.blendingWeight = blendingWeight;
					temp.jointID = clusterCounter + influenceOffset[o];

					bd[controlPointIndex].push_back(temp);
				}
			}
		}

		//Clearing to get rid of "bad blood"
		imScene.modelList.back().meshList.back().animVertList.clear();
		imScene.modelList.back().meshList.back().indexList.clear();
		for (int i = 0; i < indexCount; i++)
			imScene.modelList.back().meshList.back().indexList.push_back(i);

		imScene.modelList.back().meshList.back().animVertList.resize(indexCount);

		for (int i = 0; i < indexCount; i++)
		{
			//HOPEFULLY the tangent is indexed directly into the control points... Otherwise we will get problems. It's most likely
			//a problem if the mesh is exported with hardened edges
			FbxVector4 tangent;
			if (tangentElement)
				tangent = tangentElement->GetDirectArray().GetAt(indexArray[i]);

			imScene.modelList.back().meshList.back().animVertList[i].vert.UV[0] = UVs[indexArray[i]][0];
			imScene.modelList.back().meshList.back().animVertList[i].vert.UV[1] = UVs[indexArray[i]][1];
			for (int j = 0; j < 4; j++)
			{
				imScene.modelList.back().meshList.back().animVertList[i].influences[j] = bd[indexArray[i]][j].jointID;
				imScene.modelList.back().meshList.back().animVertList[i].weights[j] = bd[indexArray[i]][j].blendingWeight;
			}

			for (int j = 0; j < 3; j++)
			{
				imScene.modelList.back().meshList.back().animVertList[i].vert.pos[j] = points[indexArray[i]][j];

				imScene.modelList.back().meshList.back().animVertList[i].vert.normal[j] = normals[indexArray[i]][j];

				imScene.modelList.back().meshList.back().animVertList[i].vert.tangent[j] = tangent[j];
			}
		}
	}
	else
	{
		//Clearing to get rid of "bad blood"
		imScene.modelList.back().meshList.back().vertList.clear();
		imScene.modelList.back().meshList.back().indexList.clear();
		for (int i = 0; i < indexCount; i++)
			imScene.modelList.back().meshList.back().indexList.push_back(i);

		imScene.modelList.back().meshList.back().vertList.resize(indexCount);

		for (int i = 0; i < indexCount; i++)
		{
			//HOPEFULLY the tangent is indexed directly into the control points... Otherwise we will get problems. It's most likely
			//a problem if the mesh is exported with hardened edges
			FbxVector4 tangent;
			if (tangentElement)
				tangent = tangentElement->GetDirectArray().GetAt(indexArray[i]);

			imScene.modelList.back().meshList.back().vertList[i].UV[0] = UVs[i][0];
			imScene.modelList.back().meshList.back().vertList[i].UV[1] = UVs[i][1];

			for (int j = 0; j < 3; j++)
			{
				imScene.modelList.back().meshList.back().vertList[i].pos[j] = points[indexArray[i]][j];

				imScene.modelList.back().meshList.back().vertList[i].normal[j] = normals[i][j];

				imScene.modelList.back().meshList.back().vertList[i].tangent[j] = tangent[j];
			}
		}
	}

	/*
	So how do you make the "check every vertex against every previous vertex"-problem "go away"?
	Maybe vertices should be sorted into "polygons". When you check against previous vertices,
	you only look at vertices belonging to neighbouring polygons.
	*/

}
void MFileImporter::processVertices(FbxMesh * inputMesh)
{
	unsigned int deformerCount = inputMesh->GetDeformerCount(FbxDeformer::eSkin);

	if (imScene.modelList.back().meshList.back().isAnimated)
		processSkeletalVertices(inputMesh);
	else
		processStaticVertices(inputMesh, imScene.modelList.back().meshList.back().vertList);
}

void MFileImporter::processNormals(FbxMesh * inputMesh)
{
	FbxGeometryElementNormal* normalElement = inputMesh->GetElementNormal();

	if (normalElement) /*If there is normal element then proceed.*/
	{
		/*Obtain normal of each vertex.*/
		if (normalElement->GetMappingMode() == FbxGeometryElement::eByControlPoint)
		{
			processCtrlPntMapNormals(inputMesh, normalElement);
		}
		else if (normalElement->GetMappingMode() == FbxGeometryElement::eByPolygonVertex)
		{
			processByPolyVtxNormals(inputMesh, normalElement);
		}
	}
}
/*This differs from the reference implementation! Be wary.*/
void MFileImporter::processTangents(FbxMesh * inputMesh)
{
	FbxGeometryElementTangent* tangentElement = inputMesh->GetElementTangent();
	if (tangentElement)
	{
		if (tangentElement->GetMappingMode() == FbxGeometryElement::eByControlPoint)
		{
			processCtrlPntMapTangents(inputMesh, tangentElement);
		}
		else if (tangentElement->GetMappingMode() == FbxGeometryElement::eByPolygonVertex)
		{
			processByPolyVtxTangents(inputMesh, tangentElement);
		}
	}
}

void MFileImporter::processUVs(FbxMesh * inputMesh)
{
	FbxStringList UVSetNameList;
	inputMesh->GetUVSetNames(UVSetNameList);
	for (int i = 0; i < UVSetNameList.GetCount(); i++)
	{
		const char* UVSetName = UVSetNameList.GetStringAt(i);
		const FbxGeometryElementUV* UVElement = inputMesh->GetElementUV(UVSetName);

		if (!UVElement) //If the are no UV element then exit the loop. 
			continue;

		/*If the mapping modes for the UV element are not of these two modes,
		then return from the function.*/
		if (UVElement->GetMappingMode() != FbxGeometryElement::eByPolygonVertex &&
			UVElement->GetMappingMode() != FbxGeometryElement::eByControlPoint)
			return;

		if (UVElement->GetMappingMode() == FbxGeometryElement::eByControlPoint)
		{
			processCtrlPntMapUVs(inputMesh, UVElement);
		}
		if (UVElement->GetMappingMode() == FbxGeometryElement::eByPolygonVertex)
		{
			processByPolyVtxUVs(inputMesh, UVElement);
		}
	}
}

void MFileImporter::processMaterials(FbxMesh * inputMesh)
{
	int materialCount = inputMesh->GetNode()->GetMaterialCount();

	if (materialCount > 0)
	{
		FbxSurfaceMaterial* material = inputMesh->GetNode()->GetMaterial(0);

		if (material->GetClassId().Is(FbxSurfacePhong::ClassId))
		{
			processPhongMaterial(material);
		}
		else if (material->GetClassId().Is(FbxSurfaceLambert::ClassId))
		{
			processLambertMaterial(material);
		}
	}
}

void MFileImporter::processTextures(FbxMesh * inputMesh)
{
	FbxProperty propDiffuse, propSpecular, propNormal;

	int materialCount = inputMesh->GetNode()->GetSrcObjectCount<FbxSurfaceMaterial>();

	/*One material per mesh*/
	if (materialCount > 0)
	{
		FbxSurfaceMaterial* material = inputMesh->GetNode()->GetSrcObject<FbxSurfaceMaterial>(0);

		if (material)
		{
			/*The game engine supports diffuse-, specular- and normal maps.*/
			propDiffuse = material->FindProperty(FbxSurfaceMaterial::sDiffuse);
			propSpecular = material->FindProperty(FbxSurfaceMaterial::sSpecular);
			propNormal = material->FindProperty(FbxSurfaceMaterial::sNormalMap);

			/*Processing the three different type of textures in these functions.*/
			processTextureMap(propDiffuse, imScene.materialList.at(imScene.modelList.back().meshList.back().materialID).diffuseTextureFilePath);

			processTextureMap(propSpecular, imScene.materialList.at(imScene.modelList.back().meshList.back().materialID).specularTextureFilePath);

			processTextureMap(propNormal, imScene.materialList.at(imScene.modelList.back().meshList.back().materialID).normalTextureFilePath);
		}
	}
}
//if isUnique false the main thread will have a modified duplicateIndex, if true main thread will push_back the unique vertex into the vertex buffer
void checkIndexAgainstIndexedSkeletonList(bool& isUnique, int& offset, int& duplicateIndex, std::vector<sSkeletonVertex>& indexedList, sVertex& sceneVertex)
{
	isUnique = true;
	for (int j = offset; j < indexedList.size(); j++)
	{
		if (indexedList[j].vert.pos == sceneVertex.pos)
		{
			if (indexedList[j].vert.normal == sceneVertex.normal)
			{
				if (indexedList[j].vert.UV == sceneVertex.UV)
				{
					duplicateIndex = j;
					isUnique = false;
					return;
				}
			}
		}
	}
	return;
}
//if isUnique false the main thread will have a modified duplicateIndex, if true main thread will push_back the unique vertex into the vertex buffer
void checkIndexAgainstIndexedList(bool& isUnique, int& offset, int& duplicateIndex, std::vector<sVertex>& indexedList, sVertex& sceneVertex)
{
	isUnique = true;
	for (int j = offset; j < indexedList.size(); j++)
	{
		if (indexedList[j].pos == sceneVertex.pos)
		{
			if (indexedList[j].normal == sceneVertex.normal)
			{
				if (indexedList[j].UV == sceneVertex.UV)
				{
					duplicateIndex = j;
					isUnique = false;
					return;
				}
			}
		}
	}
	return;
}

void MFileImporter::processIndexes()
{
	if (imScene.modelList.back().meshList.back().isAnimated)
	{
		std::vector<sSkeletonVertex> indexedList;

		//Split each of these "loop through everything-calls" into four, for four processors. Making it 4x as quick.
		//If all threads say "isUnique", then the value is unique.

		for (int i = 0; i < imScene.modelList.back().meshList.back().animVertList.size(); i++)
		{
			if (indexedList.size() > 4)
			{
				bool isUnique1;
				bool isUnique2;
				bool isUnique3;
				bool isUnique4;
				int duplicateIndex1 = -1;
				int duplicateIndex2 = -1;
				int duplicateIndex3 = -1;
				int duplicateIndex4 = -1;
				int rest = 4 % indexedList.size();
				int fourth = indexedList.size() / 4;
				int offset = fourth;

				std::thread t1(checkIndexAgainstIndexedSkeletonList, std::ref(isUnique1), std::ref(offset), std::ref(duplicateIndex1),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().animVertList[i].vert));
				offset += fourth;
				std::thread t2(checkIndexAgainstIndexedSkeletonList, std::ref(isUnique2), std::ref(offset), std::ref(duplicateIndex2),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().animVertList[i].vert));
				offset += fourth;
				std::thread t3(checkIndexAgainstIndexedSkeletonList, std::ref(isUnique3), std::ref(offset), std::ref(duplicateIndex3),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().animVertList[i].vert));
				offset += fourth + rest;
				std::thread t4(checkIndexAgainstIndexedSkeletonList, std::ref(isUnique4), std::ref(offset), std::ref(duplicateIndex4),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().animVertList[i].vert));

				t1.join();
				t2.join();
				t3.join();
				t4.join();

				if (isUnique1 && isUnique2 && isUnique3 && isUnique4)
				{
					indexedList.push_back(imScene.modelList.back().meshList.back().animVertList[i]);
					imScene.modelList.back().meshList.back().indexList.push_back(indexedList.size() - 1);
				}
				else
				{
					if (duplicateIndex1 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex1);
					}
					else if (duplicateIndex2 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex2);
					}
					else if (duplicateIndex3 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex3);
					}
					else
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex4);
					}
				}
			}
			else
			{
				//OLD BUT USABLE
				bool isUnique = true;
				for (int j = 0; j < indexedList.size(); j++)
				{
					if (indexedList[j].vert.pos == imScene.modelList.back().meshList.back().animVertList[i].vert.pos)
					{
						if (indexedList[j].vert.normal == imScene.modelList.back().meshList.back().animVertList[i].vert.normal)
						{
							if (indexedList[j].vert.UV == imScene.modelList.back().meshList.back().animVertList[i].vert.UV)
							{
								imScene.modelList.back().meshList.back().indexList.push_back(j);
								isUnique = false;
							}
						}
					}
					if (isUnique == false)
						break;
				}
				if (isUnique == true)
				{
					indexedList.push_back(imScene.modelList.back().meshList.back().animVertList[i]);
					imScene.modelList.back().meshList.back().indexList.push_back(indexedList.size() - 1);
				}
			}
		}
		imScene.modelList.back().meshList.back().animVertList = indexedList;
	}
	else
	{
		std::vector<sVertex> indexedList;
		for (int i = 0; i < imScene.modelList.back().meshList.back().vertList.size(); i++)
		{
			if (indexedList.size() > 4)
			{
				bool isUnique1;
				bool isUnique2;
				bool isUnique3;
				bool isUnique4;
				int duplicateIndex1 = -1;
				int duplicateIndex2 = -1;
				int duplicateIndex3 = -1;
				int duplicateIndex4 = -1;

				int rest = 4 % indexedList.size();
				int fourth = indexedList.size() / 4;
				int offset = fourth;
				std::thread t1(checkIndexAgainstIndexedList, std::ref(isUnique1), std::ref(offset), std::ref(duplicateIndex1),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().vertList[i]));
				offset += fourth;
				std::thread t2(checkIndexAgainstIndexedList, std::ref(isUnique2), std::ref(offset), std::ref(duplicateIndex2),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().vertList[i]));
				offset += fourth;
				std::thread t3(checkIndexAgainstIndexedList, std::ref(isUnique3), std::ref(offset), std::ref(duplicateIndex3),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().vertList[i]));
				offset += fourth + rest;
				std::thread t4(checkIndexAgainstIndexedList, std::ref(isUnique4), std::ref(offset), std::ref(duplicateIndex4),
					std::ref(indexedList), std::ref(imScene.modelList.back().meshList.back().vertList[i]));

				t1.join();
				t2.join();
				t3.join();
				t4.join();

				if (isUnique1 && isUnique2 && isUnique3 && isUnique4)
				{
					indexedList.push_back(imScene.modelList.back().meshList.back().vertList[i]);
					imScene.modelList.back().meshList.back().indexList.push_back(indexedList.size() - 1);
				}
				else
				{
					if (duplicateIndex1 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex1);
					}
					else if (duplicateIndex2 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex2);
					}
					else if (duplicateIndex3 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex3);
					}
					else if (duplicateIndex4 != -1)
					{
						imScene.modelList.back().meshList.back().indexList.push_back(duplicateIndex4);
					}
				}
			}
			else
			{
				bool isUnique = true;
				for (int j = 0; j < indexedList.size(); j++)
				{
					if (indexedList[j].pos == imScene.modelList.back().meshList.back().vertList[i].pos)
					{
						if (indexedList[j].normal == imScene.modelList.back().meshList.back().vertList[i].normal)
						{
							if (indexedList[j].UV == imScene.modelList.back().meshList.back().vertList[i].UV)
							{
								//This vertex is a copy
								imScene.modelList.back().meshList.back().indexList.push_back(j);
								isUnique = false;
							}
						}
					}
					if (isUnique == false)
						break;
				}
				if (isUnique == true)
				{
					indexedList.push_back(imScene.modelList.back().meshList.back().vertList[i]);
					imScene.modelList.back().meshList.back().indexList.push_back(indexedList.size() - 1);
				}

			}
		}
		imScene.modelList.back().meshList.back().vertList = indexedList;
	}

	int skelvertNum = imScene.modelList.back().meshList.back().animVertList.size();
	int vertNum = imScene.modelList.back().meshList.back().vertList.size();
	int indexNum = imScene.modelList.back().meshList.back().indexList.size();
	int wolo = 0;
}

void MFileImporter::processTransformations(FbxNode * node, eObjectType TYPE, int index)
{
	sTransform trans;
	if (TYPE == eObjectType::MODEL || TYPE == eObjectType::LIGHT || TYPE == eObjectType::SPAWN)
	{
		FbxTime time;
		time.SetMilliSeconds(0);
		FbxAMatrix meshGlobalTransform = node->EvaluateGlobalTransform(time);

		FbxVector4 T = meshGlobalTransform.GetT();
		FbxVector4 R = meshGlobalTransform.GetR();
		FbxVector4 S = meshGlobalTransform.GetS();

		trans.childID = index;
		trans.childType = TYPE;
		for (int i = 0; i < 3; i++)
		{
			trans.pos[i] = (float)T[i];
			trans.rot[i] = (float)R[i];
			trans.scale[i] = (float)S[i];
		}
		imScene.transformList.push_back(trans);

		if (TYPE == eObjectType::LIGHT)
		{
			memcpy(imScene.lightList[index].lightPos, trans.pos, 3);
			memcpy(imScene.lightList[index].lightRot, trans.rot, 3);
			memcpy(imScene.lightList[index].lightScale, trans.scale, 3);
		}
		if (TYPE == eObjectType::MODEL)
		{
			//do nothing
		}
		if (TYPE == eObjectType::SPAWN)
		{
			memcpy(imScene.spawnList[index].pos, trans.pos, 3);
			memcpy(imScene.spawnList[index].rot, trans.rot, 3);
			memcpy(imScene.spawnList[index].scale, trans.scale, 3);
		}
	}

	if (TYPE == eObjectType::MESH)
	{
		FbxTime time;
		time.SetMilliSeconds(0);
		FbxAMatrix meshLocalTransform = node->EvaluateLocalTransform(time);

		FbxVector4 T = meshLocalTransform.GetT();
		FbxVector4 R = meshLocalTransform.GetR();
		FbxVector4 S = meshLocalTransform.GetS();

		for (int i = 0; i < 3; i++)
		{
			trans.pos[i] = (float)T[i];
			trans.rot[i] = (float)R[i];
			trans.scale[i] = (float)S[i];
		}

		trans.modelIndex = imScene.modelList.size() - 1;
		memcpy(imScene.modelList[trans.modelIndex].meshList[index].pos, trans.pos, 3);
		memcpy(imScene.modelList[trans.modelIndex].meshList[index].rot, trans.rot, 3);
		memcpy(imScene.modelList[trans.modelIndex].meshList[index].scale, trans.scale, 3);

		imScene.transformList.push_back(trans);
	}
}

void MFileImporter::processJoints(FbxMesh * inputMesh, std::vector<FbxNode*>& rootList, std::vector<size_t>& influenceOffset)
{
	unsigned int deformercount = inputMesh->GetDeformerCount(FbxDeformer::eSkin);
	size_t miniInfluenceOffset = 0;
	for (int i = 0; i < deformercount; i++)
	{
		sImSkeleton skel;
		imScene.modelList.back().skeletonList.push_back(skel);

		FbxSkin* currSkin = reinterpret_cast<FbxSkin*>(inputMesh->GetDeformer(i, FbxDeformer::eSkin));

		bool isRoot = true;

		if (!currSkin)
			continue;

		const unsigned int clusterCount = currSkin->GetClusterCount();

		for (int j = 0; j < clusterCount; j++)
		{
			imScene.modelList.back().skeletonList.back().jointList.push_back(sImJoint());
			//imScene.modelList.back().skeletonList.back().jointList.back().jointID = imScene.modelList.back().skeletonList.back().jointList.size() - 1 + influenceOffset;

			FbxCluster* currCluster = currSkin->GetCluster(j);
			FbxNode* currJoint = currCluster->GetLink();
			animationEvaluator = currJoint->GetAnimationEvaluator();

			imScene.modelList.back().skeletonList.back().jointList.back().uniqueID = currJoint->GetUniqueID();

			processInverseBindpose(currCluster);

			processAnimationLayers(currJoint);

			if (isRoot == true)
			{
				isRoot = false;
				rootList.push_back(currJoint);
			}
		}
		influenceOffset.push_back(miniInfluenceOffset);
		miniInfluenceOffset += imScene.modelList.back().skeletonList.back().jointList.size();

	}
}

void MFileImporter::recursiveHierarchyTraversal(FbxNode * inNode, int inMeshParentIndex, sJointChild inJointParentIndex)
{
	//If this is a joint
	if (inNode->GetNodeAttribute() && inNode->GetNodeAttribute()->GetAttributeType() == FbxNodeAttribute::eSkeleton)
	{
		//Now I know what joint this is.
		sJointChild jointIndex = findJointIndexByID(inNode->GetUniqueID());
		if (jointIndex.parentJointIndex == NOTSET)
		{
			//Not found, but should be found.
		}
		else
		{
			imScene.modelList.back().skeletonList[jointIndex.parentSkeletonIndex].jointList[jointIndex.parentJointIndex].parentJointID = inJointParentIndex.parentJointIndex;
		}
	}

	if (inNode->GetNodeAttribute() && inNode->GetNodeAttribute()->GetAttributeType() == FbxNodeAttribute::eMesh)
	{
		int meshIndex = findMeshIndexByID(inNode->GetUniqueID());
		if (meshIndex == NOTSET)
		{
			//This mesh hasn't been processed before, since it's "hidden" in a hierarchy. Use the processMesh-function
			FbxMesh* mesh = inNode->GetMesh();
			FbxProperty p = inNode->FindProperty(BOUNDINGBOXTAG, false);
			if (p.IsValid())
			{
				processBoundingBox(mesh, inMeshParentIndex, inJointParentIndex);
			}
			else
			{
				processParentedMesh(mesh, inMeshParentIndex, inJointParentIndex);
			}
		}
		else
		{
			//What do we do if we found it? If it's already part of the model? Nothing?
		}
	}
	int childCount = inNode->GetChildCount();
	for (int i = 0; i < childCount; i++)
	{
		sJointChild jointIdx = findJointIndexByID(inNode->GetUniqueID());
		int meshIdx = findMeshIndexByID(inNode->GetUniqueID());
		recursiveHierarchyTraversal(inNode->GetChild(i), meshIdx, jointIdx);
	}
}

void MFileImporter::recursiveProcessHierarchyData(FbxNode * inputRoot)
{
	sJointChild jnt = findJointIndexByID(inputRoot->GetUniqueID());
	int mesh = findMeshIndexByID(inputRoot->GetUniqueID());
	int childCount = inputRoot->GetChildCount();
	for (int childIndex = 0; childIndex < childCount; ++childIndex) {
		FbxNode* currNode = inputRoot->GetChild(childIndex);
		recursiveHierarchyTraversal(currNode, mesh, jnt);
	}
}

void MFileImporter::processSpawnObject(FbxMesh * inputMesh)
{
	processTransformations(inputMesh->GetNode(), eObjectType::SPAWN, imScene.spawnList.size() - 1);
	processStaticVertices(inputMesh, imScene.spawnList.back().vertices);
	processSpawnIndexes();
}

void MFileImporter::processSpawnIndexes()
{
	imScene.spawnList.back();

	std::vector<sVertex> indexedList;

	for (int i = 0; i < imScene.spawnList.back().vertices.size(); i++)
	{
		bool isUnique = true;
		for (int j = 0; j < indexedList.size(); j++)
		{
			if (indexedList[j].pos == imScene.spawnList.back().vertices[i].pos)
			{
				if (indexedList[j].normal == imScene.spawnList.back().vertices[i].normal)
				{
					if (indexedList[j].UV == imScene.spawnList.back().vertices[i].UV)
					{
						//This vertex is a copy
						imScene.spawnList.back().indices.push_back(j);
						isUnique = false;
					}
				}
			}
			if (isUnique == false)
				break;
		}
		if (isUnique == true)
		{
			indexedList.push_back(imScene.spawnList.back().vertices[i]);
			imScene.spawnList.back().indices.push_back(indexedList.size() - 1);
		}
	}
	imScene.spawnList.back().vertices = indexedList;
}

void MFileImporter::processLight(FbxLight * inputLight)
{
	processTransformations((FbxNode*)inputLight, eObjectType::LIGHT, imScene.lightList.size() - 1);

	FbxString lightName = inputLight->GetNode()->GetName();
	sLight light;
	int lightType = inputLight->LightType.Get();

	if (lightType == 0 || lightType == 1) /*If the lighttype is a Pointlight or a DirectionalLight.*/
	{
		light.TYPE = (eLightType)lightType;

		FbxVector4 lightColor = inputLight->Color.Get();

		light.color[0] = lightColor.mData[0];
		light.color[1] = lightColor.mData[1];
		light.color[2] = lightColor.mData[2];

		float lightIntensity = inputLight->Intensity.Get();

		light.intensity = lightIntensity;

		FbxAMatrix lightPosition = inputLight->GetNode()->EvaluateGlobalTransform();

		FbxVector4 trans, rot, scal;

		trans = lightPosition.GetT();
		rot = lightPosition.GetR();
		scal = lightPosition.GetS();

		light.lightPos[0] = trans.mData[0];
		light.lightPos[1] = trans.mData[1];
		light.lightPos[2] = trans.mData[2];

		light.lightScale[0] = rot.mData[0];
		light.lightScale[1] = rot.mData[1];
		light.lightScale[2] = rot.mData[2];

		light.lightRot[0] = scal.mData[0];
		light.lightRot[0] = scal.mData[1];
		light.lightRot[0] = scal.mData[2];

		imScene.lightList.push_back(light);
	}
}

hScene MFileImporter::finishScene()
{
	hScene ret = {};
	ret.numTransforms = imScene.transformList.size();
	ret.numModels = imScene.modelList.size();
	ret.numSpawns = imScene.spawnList.size();
	ret.numLights = imScene.lightList.size();
	ret.numMaterials = imScene.materialList.size();

	for (int i = 0; i < imScene.spawnList.size(); i++)
	{
		ret.numSpawnIndices += imScene.spawnList[i].indices.size();
		ret.numSpawnVertices += imScene.spawnList[i].vertices.size();
	}
	for (int i = 0; i < imScene.modelList.size(); i++)
	{
		ret.numMeshes += imScene.modelList[i].meshList.size();
		ret.numBBoxes += imScene.modelList[i].bBoxList.size();
		ret.numSkeletons += imScene.modelList[i].skeletonList.size();
		for (int j = 0; j < imScene.modelList[i].meshList.size(); j++)
		{
			ret.numMeshIndices += imScene.modelList[i].meshList[j].indexList.size();
			ret.numMeshVertices += imScene.modelList[i].meshList[j].vertList.size();
			ret.numMeshSkeletalVertices += imScene.modelList[i].meshList[j].animVertList.size();
		}
		for (int j = 0; j < imScene.modelList[i].skeletonList.size(); j++)
		{
			ret.numJoints += imScene.modelList[i].skeletonList[j].jointList.size();
			for (int k = 0; k < imScene.modelList[i].skeletonList[j].jointList.size(); k++)
			{
				ret.numAnimationStates += imScene.modelList[i].skeletonList[j].jointList[k].animationState.size();
				for (int l = 0; l < imScene.modelList[i].skeletonList[j].jointList[k].animationState.size(); l++)
				{
					ret.numKeyFrames += imScene.modelList[i].skeletonList[j].jointList[k].animationState[l].keyList.size();
				}
			}
		}
	}

	return ret;
}

sJointChild MFileImporter::findJointIndexByID(FbxUInt64 uniqueID)
{
	sJointChild ret;

	for (int j = 0; j < imScene.modelList.back().skeletonList.size(); j++)
	{
		for (int k = 0; k < imScene.modelList.back().skeletonList[j].jointList.size(); k++)
		{
			if (imScene.modelList.back().skeletonList[j].jointList[k].uniqueID == uniqueID)
			{
				ret.parentSkeletonIndex = j;
				ret.parentJointIndex = k;
				return ret;
			}
		}
	}
	ret.parentJointIndex = NOTSET;
	ret.parentSkeletonIndex = NOTSET;
	return ret;
}

int MFileImporter::findMeshIndexByID(FbxUInt64 uniqueID)
{
	for (int i = 0; i < imScene.modelList.back().meshList.size(); i++)
	{
		if (imScene.modelList.back().meshList[i].uniqueID == uniqueID)
		{
			return i;
		}
	}
	return NOTSET;
}

void MFileImporter::processBoundingBox(FbxMesh* mesh, int inMeshParentIndex, sJointChild inJointParentIndex)
{
	//This is a boundingbox
	//We're only interested in a boundingbox's controlpoint-positions.
	sBBox bbox;
	if (inMeshParentIndex != NOTSET)
	{
		bbox.meshParent.parentMeshIndex = inMeshParentIndex;
		bbox.parent.hasParentMesh = true;
		bbox.parent.hasParentJoint = false;
	}
	if (inJointParentIndex.parentJointIndex != NOTSET)
	{
		bbox.jointParent = inJointParentIndex;
		bbox.parent.hasParentMesh = false;
		bbox.parent.hasParentJoint = true;
	}
	//Must be 8 else crash, but oh well.
	for (int i = 0; i < mesh->GetControlPointsCount(); i++)
	{
		FbxVector4 pnt = mesh->GetControlPointAt(i);
		bbox.pos[i].x = pnt[0];
		bbox.pos[i].y = pnt[1];
		bbox.pos[i].z = pnt[2];
	}
	imScene.modelList.back().bBoxList.push_back(bbox);
}

void MFileImporter::processParentedMesh(FbxMesh * mesh, int inMeshParentIndex, sJointChild inJointParentIndex)
{
	eObjectType TYPE;
	TYPE = eObjectType::MESH;
	sImMesh initMesh;
	initMesh.uniqueID = mesh->GetUniqueID();

	if (inMeshParentIndex != NOTSET)
	{
		initMesh.parent.hasParentMesh = true;
		initMesh.parent.hasParentJoint = false;
		initMesh.parentMesh.parentMeshIndex = inMeshParentIndex;
	}
	else if (inJointParentIndex.parentJointIndex != NOTSET)
	{
		initMesh.parent.hasParentJoint = true;
		initMesh.parent.hasParentMesh = false;
		initMesh.parentJoint = inJointParentIndex;
	}
	imScene.modelList.back().meshList.push_back(initMesh);
	processMesh(mesh, TYPE);
}

void MFileImporter::processSkeletalVertices(FbxMesh * inputMesh)
{
	/*Array of the control points of mesh.*/
	FbxVector4* vertices = inputMesh->GetControlPoints();

	for (int i = 0; i < inputMesh->GetPolygonCount(); i++)
	{
		/*Getting vertices of a polygon in the mesh.*/
		int numPolygonVertices = inputMesh->GetPolygonSize(i);

		/*If the mesh is not triangulated, meaning that there are quads in the mesh,
		then the program should abort, terminating the process.*/
		assert(numPolygonVertices == 3);

		for (int j = 0; j < numPolygonVertices; j++)
		{
			sSkeletonVertex animVertex;

			/*Getting the index to a control point "vertex".*/
			int polygonVertex = inputMesh->GetPolygonVertex(i, j);

			//Set influences to 0 with weight 0 as a baseline value.
			for (int c = 0; c < 4; c++) {
				animVertex.influences[c] = 0;
				animVertex.weights[c] = 0.0;
			}

			animVertex.vert.pos[0] = (float)vertices[polygonVertex].mData[0];
			animVertex.vert.pos[1] = (float)vertices[polygonVertex].mData[1];
			animVertex.vert.pos[2] = (float)vertices[polygonVertex].mData[2];

			imScene.modelList.back().meshList.back().animVertList.push_back(animVertex);
		}
	}
}

void MFileImporter::processStaticVertices(FbxMesh * inputMesh, std::vector<sVertex> &vertList)
{
	/*Array of the control points of mesh.*/
	FbxVector4* vertices = inputMesh->GetControlPoints();

	for (int i = 0; i < inputMesh->GetPolygonCount(); i++)
	{
		/*Getting vertices of a polygon in the mesh.*/
		int numPolygonVertices = inputMesh->GetPolygonSize(i);

		/*If the mesh is not triangulated, meaning that there are quads in the mesh,
		then the program should abort, terminating the process.*/
		assert(numPolygonVertices == 3);

		for (int j = 0; j < numPolygonVertices; j++)
		{
			sVertex vertex;
			/*Getting the index to a control point "vertex".*/
			int polygonVertex = inputMesh->GetPolygonVertex(i, j);

			vertex.pos[0] = (float)vertices[polygonVertex].mData[0];
			vertex.pos[1] = (float)vertices[polygonVertex].mData[1];
			vertex.pos[2] = (float)vertices[polygonVertex].mData[2];

			//imScene.modelList.back().meshList.back().vertList.push_back(vertex);
			vertList.push_back(vertex);
		}
	}
}

void MFileImporter::processCtrlPntMapNormals(FbxMesh * inputMesh, FbxGeometryElementNormal * normalElement)
{
	/*Obtain the normals of each vertex, because the mapping mode of the normal element is by control point.*/
	for (int vertexIndex = 0; vertexIndex < inputMesh->GetControlPointsCount(); vertexIndex++)
	{
		int normalIndex = 0;

		/*If reference mode is direct, it means that the normal index is the same as a vertex index.*/
		if (normalElement->GetReferenceMode() == FbxGeometryElement::eDirect)
		{
			normalIndex = vertexIndex;
		}

		/*If the reference mode is Index-to-Direct, it means that the normals are obtained by the Index-to-Direct.*/
		if (normalElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect)
		{
			normalIndex = normalElement->GetIndexArray().GetAt(normalIndex);
		}

		/*Normals of each vertex is obtained.*/
		FbxVector4 normals = normalElement->GetDirectArray().GetAt(normalIndex);

		if (imScene.modelList.back().meshList.back().isAnimated)
		{
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.normal[0] = normals.mData[0];
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.normal[1] = normals.mData[1];
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.normal[2] = normals.mData[2];
		}
		else
		{
			imScene.modelList.back().meshList.back().vertList.at(vertexIndex).normal[0] = normals.mData[0];
			imScene.modelList.back().meshList.back().vertList.at(vertexIndex).normal[1] = normals.mData[1];
			imScene.modelList.back().meshList.back().vertList.at(vertexIndex).normal[2] = normals.mData[2];
		}

	}
}

void MFileImporter::processByPolyVtxNormals(FbxMesh * inputMesh, FbxGeometryElementNormal * normalElement)
{
	int indexPolygonVertex = 0;

	/*Obtain normals of each polygon, because the mapping mode of normal element is by Polygon-Vertex.*/
	for (int polygonIndex = 0; polygonIndex < inputMesh->GetPolygonCount(); polygonIndex++)
	{
		/*Get the polygon size, to know how many vertices in current polygon.*/
		int polygonSize = inputMesh->GetPolygonSize(polygonIndex);

		for (int i = 0; i < polygonSize; i++) //Obtain each vertex of the current polygon.
		{
			int normalIndex = 0;

			/*Reference mode is direct because the normal index is same as indexPolygonVertex.*/
			if (normalElement->GetReferenceMode() == FbxGeometryElement::eDirect)
			{
				normalIndex = indexPolygonVertex;
			}
			/*Reference mode is index-to-direct, which means getting normals by index-to-direct.*/
			if (normalElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect)
			{
				normalIndex = normalElement->GetIndexArray().GetAt(indexPolygonVertex);
			}

			FbxVector4 normals = normalElement->GetDirectArray().GetAt(normalIndex); //Obtain normals of each polygon-vertex

			if (imScene.modelList.back().meshList.back().isAnimated)
			{
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.normal[0] = normals.mData[0];
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.normal[1] = normals.mData[1];
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.normal[2] = normals.mData[2];
			}
			else
			{
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).normal[0] = normals.mData[0];
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).normal[1] = normals.mData[1];
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).normal[2] = normals.mData[2];
			}

			indexPolygonVertex++;
		}
	}
}

void MFileImporter::processCtrlPntMapTangents(FbxMesh * inputMesh, FbxGeometryElementTangent * tangentElement)
{
	for (int vertexIndex = 0; vertexIndex < inputMesh->GetControlPointsCount(); vertexIndex++)
	{
		int tangentIndex = 0;

		if (tangentElement->GetReferenceMode() == FbxGeometryElement::eDirect)
		{
			tangentIndex = vertexIndex;
		}

		if (tangentElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect)
		{
			tangentIndex = tangentElement->GetIndexArray().GetAt(tangentIndex);
		}

		FbxVector4 tangents = tangentElement->GetDirectArray().GetAt(tangentIndex);

		if (imScene.modelList.back().meshList.back().isAnimated)
		{
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.tangent[0] = tangents.mData[0];
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.tangent[1] = tangents.mData[1];
			imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.tangent[2] = tangents.mData[2];
		}
		else
		{
			imScene.modelList.back().meshList.back().vertList.back().tangent[0] = tangents.mData[0];
			imScene.modelList.back().meshList.back().vertList.back().tangent[1] = tangents.mData[1];
			imScene.modelList.back().meshList.back().vertList.back().tangent[2] = tangents.mData[2];
		}
	}
}

void MFileImporter::processByPolyVtxTangents(FbxMesh * inputMesh, FbxGeometryElementTangent * tangentElement)
{
	int indexPolygonVertex = 0;

	for (int polygonIndex = 0; polygonIndex < inputMesh->GetPolygonCount(); polygonIndex++)
	{
		int polygonSize = inputMesh->GetPolygonSize(polygonIndex);

		for (int i = 0; i < polygonSize; i++)
		{
			int tangentIndex = 0;

			if (tangentElement->GetReferenceMode() == FbxGeometryElement::eDirect)
			{
				tangentIndex = indexPolygonVertex;
			}

			if (tangentElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect)
			{
				tangentIndex = tangentElement->GetIndexArray().GetAt(indexPolygonVertex);
			}

			FbxVector4 tangents = tangentElement->GetDirectArray().GetAt(tangentIndex);

			if (imScene.modelList.back().meshList.back().isAnimated)
			{
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.tangent[0] = tangents.mData[0];
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.tangent[1] = tangents.mData[1];
				imScene.modelList.back().meshList.back().animVertList.at(indexPolygonVertex).vert.tangent[2] = tangents.mData[2];
			}
			else
			{
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).tangent[0] = tangents.mData[0];
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).tangent[1] = tangents.mData[1];
				imScene.modelList.back().meshList.back().vertList.at(indexPolygonVertex).tangent[2] = tangents.mData[2];
			}
			indexPolygonVertex++;
		}
	}
}

void MFileImporter::processCtrlPntMapUVs(FbxMesh * inputMesh, const FbxGeometryElementUV * UVElement)
{
	const int polyCount = inputMesh->GetPolygonCount();
	const bool useIndex = UVElement->GetReferenceMode() != FbxGeometryElement::eDirect &&
		UVElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect;

	for (int polyIndex = 0; polyIndex < polyCount; ++polyIndex)
	{
		const int polySize = inputMesh->GetPolygonSize(polyIndex);

		for (int vertexIndex = 0; vertexIndex < polySize; ++vertexIndex)
		{
			FbxVector2 UVs;

			/*Obtain the index of a current vertex in the control points array.*/
			int polyVertexIndex = inputMesh->GetPolygonVertex(polyIndex, vertexIndex);

			/*What UV Index to be used depends on the reference mode.*/
			int UVIndex = useIndex ? UVElement->GetIndexArray().GetAt(polyVertexIndex) : polyVertexIndex;

			UVs = UVElement->GetDirectArray().GetAt(UVIndex); //Getting the UV coordinates.

			if (imScene.modelList.back().meshList.back().isAnimated)
			{

				imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.UV[0] = UVs.mData[0];
				imScene.modelList.back().meshList.back().animVertList.at(vertexIndex).vert.UV[1] = UVs.mData[1];
			}
			else
			{
				imScene.modelList.back().meshList.back().vertList.at(vertexIndex).UV[0] = UVs.mData[0];
				imScene.modelList.back().meshList.back().vertList.at(vertexIndex).UV[1] = UVs.mData[1];
			}

		}
	}
}

void MFileImporter::processByPolyVtxUVs(FbxMesh * inputMesh, const FbxGeometryElementUV * UVElement)
{
	const int polyCount = inputMesh->GetPolygonCount();
	const bool useIndex = UVElement->GetReferenceMode() != FbxGeometryElement::eDirect &&
		UVElement->GetReferenceMode() == FbxGeometryElement::eIndexToDirect;

	int polyIndexCount = 0;
	for (int polyIndex = 0; polyIndex < polyCount; ++polyIndex)
	{
		const int polySize = inputMesh->GetPolygonSize(polyIndex);
		for (int vertexIndex = 0; vertexIndex < polySize; ++vertexIndex)
		{
			FbxVector2 UVs;

			int UVIndex = useIndex ? UVElement->GetIndexArray().GetAt(polyIndexCount) : polyIndexCount;

			UVs = UVElement->GetDirectArray().GetAt(UVIndex);

			if (imScene.modelList.back().meshList.back().isAnimated)
			{
				imScene.modelList.back().meshList.back().animVertList.at(polyIndexCount).vert.UV[0] = UVs.mData[0];
				imScene.modelList.back().meshList.back().animVertList.at(polyIndexCount).vert.UV[1] = UVs.mData[1];
			}
			else
			{
				imScene.modelList.back().meshList.back().vertList.at(polyIndexCount).UV[0] = UVs.mData[0];
				imScene.modelList.back().meshList.back().vertList.at(polyIndexCount).UV[1] = UVs.mData[1];
			}
			polyIndexCount++;
		}
	}
}

void MFileImporter::processPhongMaterial(FbxSurfaceMaterial * material)
{
	FbxDouble3 ambientColor, diffuseColor, specularColor;

	/*The material for the current node is a surface phong.*/
	if (material->GetClassId().Is(FbxSurfacePhong::ClassId))
	{
		const char* materialName = material->GetName();

		bool materialFlag = checkMaterialName(materialName);

		if (materialFlag == false)
		{
			/*Getting the material attributes that are typical for a surface phong.*/
			ambientColor = ((FbxSurfacePhong *)material)->Ambient;
			diffuseColor = ((FbxSurfacePhong *)material)->Diffuse;
			specularColor = ((FbxSurfacePhong *)material)->Specular;

			float shininess = ((FbxSurfacePhong*)material)->Shininess;

			imScene.materialList.back().ambientColor[0] = ambientColor.mData[0];
			imScene.materialList.back().ambientColor[1] = ambientColor.mData[1];
			imScene.materialList.back().ambientColor[2] = ambientColor.mData[2];

			imScene.materialList.back().diffuseColor[0] = diffuseColor.mData[0];
			imScene.materialList.back().diffuseColor[1] = diffuseColor.mData[1];
			imScene.materialList.back().diffuseColor[2] = diffuseColor.mData[2];

			imScene.materialList.back().specularColor[0] = specularColor.mData[0];
			imScene.materialList.back().specularColor[1] = specularColor.mData[1];
			imScene.materialList.back().specularColor[2] = specularColor.mData[2];

			imScene.materialList.back().shinyFactor = shininess;
		}
	}
}

void MFileImporter::processLambertMaterial(FbxSurfaceMaterial * material)
{
	FbxDouble3 ambientColor, diffuseColor, specularColor;

	const char* materialName = material->GetName();

	bool materialFlag = checkMaterialName(materialName);

	if (materialFlag == false)
	{
		/*Getting the material attributes that are typical for a surface lambert.*/
		ambientColor = ((FbxSurfaceLambert *)material)->Ambient;
		diffuseColor = ((FbxSurfaceLambert *)material)->Diffuse;

		imScene.materialList.back().ambientColor[0] = ambientColor.mData[0];
		imScene.materialList.back().ambientColor[1] = ambientColor.mData[1];
		imScene.materialList.back().ambientColor[2] = ambientColor.mData[2];

		imScene.materialList.back().diffuseColor[0] = diffuseColor.mData[0];
		imScene.materialList.back().diffuseColor[1] = diffuseColor.mData[1];
		imScene.materialList.back().diffuseColor[2] = diffuseColor.mData[2];

		/*No specular attributes and shininess can't be found with a lambert material,
		so we simply set the values for the attributes to 0.*/
		imScene.materialList.back().specularColor[0] = 0;
		imScene.materialList.back().specularColor[1] = 0;
		imScene.materialList.back().specularColor[2] = 0;

		imScene.materialList.back().shinyFactor = 0;
	}
}

bool MFileImporter::checkMaterialName(const char * materialName)
{
	bool isMatching = false;
	if (imScene.materialList.size() > 0)
	{
		for (int i = 0; i < imScene.materialList.size(); i++)
		{
			if (strcmp(imScene.materialList[i].materialName, materialName) == 0)
			{
				imScene.modelList.back().meshList.back().materialID = i;
				isMatching = true;
			}
		}
	}
	//If no matches could be found, we add a new material
	if (isMatching == false)
	{
		sImMaterial mat;
		mat.materialName = materialName;
		imScene.materialList.push_back(mat);
	}

	return isMatching;
}

void MFileImporter::processTextureMap(FbxProperty texProp, char * texName)
{
	int textureCount = texProp.GetSrcObjectCount<FbxTexture>();

	/*Return from function if there are no diffuse maps in the material.*/
	if (textureCount <= 0)
		return;

	for (int textureIndex = 0; textureIndex < textureCount; textureIndex++)
	{
		FbxTexture* texture = texProp.GetSrcObject<FbxTexture>(textureIndex);

		FbxFileTexture* fileTexture = FbxCast<FbxFileTexture>(texture);
		FbxString srcFilePath = fileTexture->GetFileName();

		/*Modify the FbxString to match the filepath to the textures folder.*/
		FbxString srcFilePathModified = FbxString("Textures") + srcFilePath.Right(srcFilePath.Size() - srcFilePath.ReverseFind('/'));

		int lolbro = srcFilePath.ReverseFind('\\');
		if (lolbro == -1)
			lolbro = srcFilePath.ReverseFind('/');
		memcpy(texName, &srcFilePath[lolbro + 1], srcFilePath.GetLen() - lolbro + 1);
	}
}

void MFileImporter::copyTextures(char * srcPath, char * destPath)
{
	/*The input filepath we read from the texture filepath source.*/
	std::ifstream inputTexture(srcPath, std::ofstream::binary);

	/*The output texture filepath that we write to copy texture to destination.
	A folder we copy the file to have be created before, otherwise this won't work.*/
	std::ofstream outputTexture(destPath, std::ofstream::binary);

	/*Get the length of the input filepath.*/
	inputTexture.seekg(0, inputTexture.end);
	long size = inputTexture.tellg();
	inputTexture.seekg(0);

	/*Allocate pointer for both read and write operations.*/
	char* pBuffer = new char[size];

	inputTexture.read(pBuffer, size);
	outputTexture.write(pBuffer, size);

	/*Delete allocated pointer.*/
	delete[] pBuffer;

	/*Close input/output files.*/
	inputTexture.close();
	outputTexture.close();
}

void MFileImporter::processInverseBindpose(FbxCluster * currCluster)
{
	FbxAMatrix tempBindMatrix;
	FbxAMatrix tempParentBindMatrix;

	currCluster->GetTransformMatrix(tempParentBindMatrix);
	currCluster->GetTransformLinkMatrix(tempBindMatrix);

	FbxAMatrix tempGlobalBindPoseInverse;
	tempGlobalBindPoseInverse = tempBindMatrix.Inverse() * tempParentBindMatrix;

	imScene.modelList.back().skeletonList.back().jointList.back().globalBindposeInverse;

	unsigned int localCounter = 0;
	for (unsigned int g = 0; g < 4; ++g)
	{
		for (unsigned int h = 0; h < 4; ++h)
		{
			imScene.modelList.back().skeletonList.back().jointList.back().globalBindposeInverse[localCounter] = tempGlobalBindPoseInverse.Get(g, h);
			localCounter++;
		}
	}
}

void MFileImporter::processAnimationLayers(FbxNode* currJoint)
{
	const unsigned int stackCount = pmScene->GetSrcObjectCount<FbxAnimStack>();
	for (unsigned int stackCounter = 0; stackCounter < stackCount; ++stackCounter)
	{
		FbxAnimStack* currStack = pmScene->GetSrcObject<FbxAnimStack>(stackCounter);

		int layerCount = currStack->GetMemberCount<FbxAnimLayer>();
		for (int ior = 0; ior < layerCount; ior++)
		{
			FbxAnimLayer* currLayer = currStack->GetMember<FbxAnimLayer>(ior);
			currLayer->Weight = 0;
			currLayer->Mute = false;
			currLayer->Solo = false;
		}

		//Start processing layers, each working as an "key-data source" 
		for (unsigned int layerCounter = 0; layerCounter < layerCount; layerCounter++)
		{
			unsigned int keyCount = 0;

			FbxAnimLayer* currLayer = currStack->GetMember<FbxAnimLayer>(layerCounter);
			currLayer->Weight = 100;
			FbxString stackName = currStack->GetName();
			int currCurve = 0;
			FbxAnimCurve* storeCurve[9];

			const char* namelol = currJoint->GetName();

			storeCurve[0] = currJoint->LclRotation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_X);
			storeCurve[1] = currJoint->LclRotation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Y);
			storeCurve[2] = currJoint->LclRotation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Z);
			storeCurve[3] = currJoint->LclTranslation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_X);
			storeCurve[4] = currJoint->LclTranslation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Y);
			storeCurve[5] = currJoint->LclTranslation.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Z);
			storeCurve[6] = currJoint->LclScaling.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_X);
			storeCurve[7] = currJoint->LclScaling.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Y);
			storeCurve[8] = currJoint->LclScaling.GetCurve(currLayer, FBXSDK_CURVENODE_COMPONENT_Z);

			for (int i = 0; i < 6; i++)
			{
				if (keyCount < storeCurve[i]->KeyGetCount())
				{
					keyCount = storeCurve[i]->KeyGetCount();
					currCurve = i;
				}
			}
			sImAnimationState tempAnim;

			for (unsigned int keyCounter = 0; keyCounter < keyCount; keyCounter++)
			{
				FbxAnimCurveKey currKey = storeCurve[currCurve]->KeyGet(keyCounter);
				float asRadians = 3.14159265359 / 180;
				FbxVector4 tempTranslation;
				FbxVector4 tempRotation;
				FbxVector4 tempScale;
				
				//Rotations converted to radians
				tempRotation = 
					//FbxVector4(storeCurve[0]->KeyGet(keyCounter).GetValue() * asRadians,
					//		   storeCurve[1]->KeyGet(keyCounter).GetValue() * asRadians,
					//		   storeCurve[2]->KeyGet(keyCounter).GetValue() * asRadians);
				    FbxVector4(storeCurve[0]->KeyGet(keyCounter).GetValue(),
				    		   storeCurve[1]->KeyGet(keyCounter).GetValue(),
				    	       storeCurve[2]->KeyGet(keyCounter).GetValue());
				//tempTranslation =
				//	FbxVector4(storeCurve[3]->KeyGet(keyCounter).GetValue(),
				//			   storeCurve[4]->KeyGet(keyCounter).GetValue(),
				//			   storeCurve[5]->KeyGet(keyCounter).GetValue());
				//tempScale =
				//	FbxVector4(storeCurve[6]->KeyGet(keyCounter).GetValue(),
				//			   storeCurve[7]->KeyGet(keyCounter).GetValue(),
				//			   storeCurve[8]->KeyGet(keyCounter).GetValue());

				tempTranslation = animationEvaluator->GetNodeLocalTranslation(currJoint, currKey.GetTime());
				//tempRotation = animationEvaluator->GetNodeLocalRotation(currJoint, currKey.GetTime());
				tempScale = animationEvaluator->GetNodeLocalScaling(currJoint, currKey.GetTime());
				//tempRotation[0] = tempRotation[0] * asRadians;
				//tempRotation[1] = tempRotation[1] * asRadians;
				//tempRotation[2] = tempRotation[2] * asRadians;
				//tempScale = animationEvaluator->GetNodeLocalScaling(currJoint, currKey.GetTime());

				FbxQuaternion quatRot;
				quatRot.ComposeSphericalXYZ(tempRotation);
				
				float keyTime = currKey.GetTime().GetSecondDouble();
				float translation[3] = { tempTranslation[0],  tempTranslation[1], tempTranslation[2] };
				float rotation[4] = { quatRot.GetAt(0), quatRot.GetAt(1), quatRot.GetAt(2), quatRot.GetAt(3) };
				//float rotation[4] = { tempRotation[0], tempRotation[1], tempRotation[2], tempRotation[3] };
				float scale[3] = { tempScale[0], tempScale[1], tempScale[2] };

				//FbxQuaternion::ComposeSphericalXYZ()

				//add these values to a sKey-struct, then append it to the keyFrame vector.
				sKeyFrame tempKey;
				tempKey.keyTime = (keyTime / 24) * animationFramerate;

				for (unsigned int k = 0; k < 3; k++)
				{
					tempKey.keyTranslate[k] = translation[k];
					tempKey.keyRotate[k] = rotation[k];
					tempKey.keyScale[k] = scale[k];
				}
				tempKey.keyRotate[3] = rotation[3];

				tempAnim.keyList.push_back(tempKey);
			}
			imScene.modelList.back().skeletonList.back().jointList.back().animationState.push_back(tempAnim);
			currLayer->Weight = 0;
		}
	}
}

void MFileImporter::processBlendWeightsAndIndices(FbxMesh * inputMesh, std::vector<size_t>& influenceOffset)
{
	std::vector<std::vector<sBlendData>> bd;

	bd.resize(inputMesh->GetControlPointsCount());

	//Does this work if you have more than one skeleton bound per mesh?
	//It should, since we now loop through all skeletons before adding weight to the vertices

	for (int o = 0; o < inputMesh->GetDeformerCount(); o++)
	{
		FbxSkin* currSkin = reinterpret_cast<FbxSkin*>(inputMesh->GetDeformer(o, FbxDeformer::eSkin));
		if (!currSkin)
			continue;

		//Save the blendweights for the entire skeleton
		const unsigned int clusterCount = currSkin->GetClusterCount();
		for (unsigned int clusterCounter = 0; clusterCounter < clusterCount; ++clusterCounter)
		{
			sBlendData temp;
			FbxCluster* currCluster = currSkin->GetCluster(clusterCounter);
			//First loop through the skeleton to get blendindices
			const unsigned int controlPointIndicesCount = currCluster->GetControlPointIndicesCount();
			for (int i = 0; i < controlPointIndicesCount; i++)
			{
				//The control point that this joint affects
				int controlPointIndex = currCluster->GetControlPointIndices()[i];
				//The weight from this joint that the control point get
				float blendingWeight = currCluster->GetControlPointWeights()[i];

				temp.blendingWeight = blendingWeight;
				temp.jointID = clusterCounter + influenceOffset[o];

				bd[controlPointIndex].push_back(temp);
			}
		}
	}
	//Then add the blendweights to the vertex list
	const unsigned int polyCount = inputMesh->GetPolygonCount();
	unsigned int indexCounter = 0;
	for (unsigned int polyCounter = 0; polyCounter < polyCount; polyCounter++)
	{
		const unsigned int polySize = inputMesh->GetPolygonSize(polyCounter);

		for (unsigned int polyCorner = 0; polyCorner < polySize; polyCorner++)
		{
			const unsigned index = inputMesh->GetPolygonVertex(polyCounter, polyCorner);

			for (int i = 0; i < bd[index].size(); i++)
			{
				imScene.modelList.back().meshList.back().animVertList[indexCounter].influences[i] = bd[index][i].jointID;
				imScene.modelList.back().meshList.back().animVertList[indexCounter].weights[i] = bd[index][i].blendingWeight;
			}
			indexCounter++;
		}
	}
}



