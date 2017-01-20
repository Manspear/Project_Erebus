#include"ModelAssembler.h"

ModelAssembler::ModelAssembler()
{
	
	AssembleSkeletonsAndMeshes();
	AssembleMaterials();
	AssembleBoundingBoxes();
	ConnectMaterialsToMeshes();

	for (Mesh& mesh : this->Meshes)
	{
		assambleHierarki(mesh.object, mesh.parent, mesh.parentJoint, mesh.parentMesh);
	}
	

	
}

ModelAssembler::~ModelAssembler()
{
}

vector<Mesh>& ModelAssembler::GetMeshVector()
{
	return Meshes;
}


vector<Skeleton>& ModelAssembler::GetSkeletonVector()
{
	return Skeletons;
}

vector<Material>& ModelAssembler::GetMaterialVector()
{
	return materials;
}

vector<sBBox>& ModelAssembler::GetBoundingBoxVector()
{
	return BBoxes;
}

vector<Joint>& ModelAssembler::GetallModelJoints()
{
	return allModelJoints;
}

eModelType & ModelAssembler::GetType()
{
	return TYPE;
}

void ModelAssembler::AssembleMesh(MObject MObjectMeshNode,MObject Parent)
{
	MFnMesh meshNode(MObjectMeshNode);
	MFnTransform transform(Parent); //the parent is the transform


	if (!meshNode.hasAttribute("BOUNDINGBOX")&&!transform.hasAttribute("BOUNDINGBOX")) //if mesh is not a boundingbox
	{

		//names
		Mesh tempMesh;

		//tempMesh.dagNode = hello;
		
		memcpy(&tempMesh.name, meshNode.name().asChar(), sizeof(const char[256]));//MeshName
		tempMesh.nameMString = meshNode.name();

		tempMesh.object = MObjectMeshNode;

		

		//transform
		
		tempMesh.transform_Name_Mstring = transform.name();
		tempMesh.transform = GetTransform(transform);

		//Mesh
		vector<sVertex>nodeVertices;
		MFloatPointArray pts;
		MIntArray vertexCounts;
		MIntArray polygonVertexIDs;
		MFloatArray u, v;
		MIntArray uvCounts;
		MIntArray uvIDs;
		MFloatVectorArray normals;
		MFloatVectorArray tangents;
		MIntArray triangleCountsOffsets;
		MIntArray triangleIndices;
		MIntArray triangleCounts;
		MIntArray triangleVertexIDs;
		MVector vertexNormal;
		MIntArray normalList, normalCount;
		MIntArray tangentList, tangentCount;

		meshNode.getPoints(pts, MSpace::kObject);
		meshNode.getUVs(u, v, 0);
		meshNode.getAssignedUVs(uvCounts, uvIDs); //indices for UV:s

		meshNode.getTriangleOffsets(triangleCountsOffsets, triangleIndices);
		meshNode.getVertices(vertexCounts, polygonVertexIDs); //get vertex polygon indices


		meshNode.getNormals(normals, MSpace::kObject);
		meshNode.getTangents(tangents, MSpace::kObject);
		nodeVertices.resize(triangleIndices.length());
		meshNode.getNormalIds(normalCount, normalList);
		
		for (unsigned int i = 0; i < triangleIndices.length(); i++)
		{ //for each triangle index (36) in a box

			nodeVertices.at(i).pos[0] = pts[polygonVertexIDs[triangleIndices[i]]].x;
			nodeVertices.at(i).pos[1] = pts[polygonVertexIDs[triangleIndices[i]]].y;
			nodeVertices.at(i).pos[2] = pts[polygonVertexIDs[triangleIndices[i]]].z;

			//first is faceId then is vertex id.
			// i need to know what face i am on...
			//nodeVertices.at(i).tan[0] = tangents[polygonVertexIDs[triangleIndices[i]]].x;


			nodeVertices.at(i).normal[0] = normals[normalList[triangleIndices[i]]].x;
			nodeVertices.at(i).normal[1] = normals[normalList[triangleIndices[i]]].y;
			nodeVertices.at(i).normal[2] = normals[normalList[triangleIndices[i]]].z;

			nodeVertices.at(i).UV[0] = u[uvIDs[triangleIndices[i]]];
			nodeVertices.at(i).UV[1] = v[uvIDs[triangleIndices[i]]];


			//indexing: if the tempMesh contains current vertex we list the earlier one in the indexlist;
			bool VertexIsUnique = true;
			for (size_t j = 0; j < tempMesh.vertList.size(); j++)
			{

				if (nodeVertices.at(i) == tempMesh.vertList.at(j))
				{
					tempMesh.indexList.push_back(j);
					VertexIsUnique = false;
					break; // get out of loop
				}

			}
			if (VertexIsUnique == true)
			{
				tempMesh.indexList.push_back(tempMesh.vertList.size());
				tempMesh.vertList.push_back(nodeVertices.at(i));
			}
			//end of indexing
		}//Vertex END

		this->Meshes.push_back(tempMesh);

	}
}

void ModelAssembler::AssembleSkeletonsAndMeshes()
{

	Skeleton skeleton;
	MPlugArray skinClusterArray;
	MObject parent;
	MItDag it(MItDag::kDepthFirst);


	for (; it.isDone() == false; it.next())
	{
		MFnDependencyNode testNode(it.currentItem());
		MString testName = testNode.name();
		MFnDagNode dagNode(it.currentItem());
		int childCount = dagNode.childCount();
		for (size_t i = 0; i < childCount; i++)
		{
			MObject child = dagNode.child(i);
			MFnDependencyNode childNode(child);
			MString childName = childNode.name();

			if (child.hasFn(MFn::kTransform))
			{
				MString model = childNode.name(); //well this is basicaly all things.

			}

		}
		
		int parentCount = dagNode.parentCount();
		for (size_t i = 0; i < parentCount; i++)
		{
			MObject parent = dagNode.parent(i);
			MFnDependencyNode parentNode(parent);
			MString parentName = parentNode.name();
		}

		//problemet kan lösa sig om jag kan hitta mina parents istället för mina barn.
		if (it.currentItem().hasFn(MFn::kMesh)) // is this not kind of the issue?
		{
			if (parent.hasFn(MFn::kTransform))
			{

				MFnDependencyNode parentNode(parent);
				MFnDependencyNode depNode(it.currentItem());
				MPlug inMesh = depNode.findPlug("inMesh", &res);
				inMesh.connectedTo(skinClusterArray, true, false, &res);
				//if we want several skinClusters. We could probably make a loop here
				MFnSkinCluster skinCluster(skinClusterArray[0].node(), &res); //maybe we should make this loop trough all until it finds a skinCluster
				if (res == true)
				{
					this->TYPE = eModelType::ANIMATED;
					MString name = skinCluster.name(&res);

				


					ProcessInverseBindpose(skinCluster, skeleton, parentNode);
					ProcessKeyframes2(skinCluster, skeleton);
				
					ProcessSkeletalVertex(skinCluster, skeleton);
					for (size_t i = 0; i < skeleton.MeshVector.size(); i++)
					{
						skeleton.MeshVector.at(i).skeletonIndex = Skeletons.size();
						ProcessSkeletalIndexes(skeleton.MeshVector.at(i).skelVertList, skeleton.MeshVector.at(i).indexList);
						MFnTransform transform= skeleton.MeshVector.at(i).Meshpath.transform();
						skeleton.MeshVector.at(i).transform = GetTransform(transform);
						this->Meshes.push_back(skeleton.MeshVector.at(i));
					}
					
					for(Joint& joint : skeleton.jointVector)
					{
						joint.skeletonID = Skeletons.size() - 1;
						allModelJoints.push_back(joint);
					}

					this->Skeletons.push_back(skeleton);
				}
				else //check if there is no skinCluster
				{
					AssembleMesh(it.currentItem(),parent); //make this assamble mesh instead
				}
			} //End of Mesh
		}
		parent = it.currentItem();
	} //End of Node

}

void ModelAssembler::ProcessInverseBindpose(MFnSkinCluster& skinCluster, Skeleton& skeleton, MFnDependencyNode& parentNode)
{
	MDagPathArray jointArray;
	skinCluster.influenceObjects(jointArray, &res);

	for (size_t i = 0; i < jointArray.length(); i++)
	{
		Joint joint;
		MFnDependencyNode jointDep(jointArray[i].node());
		joint.name = jointDep.name();
		MString parentName = parentNode.name();

		MFnDagNode dagNode(jointDep.object());
		MString testName = dagNode.name();

		
		MPlug bindPosePlug = jointDep.findPlug("bindPose", &res);
		MPlug modelTransformMatrixPlug = parentNode.findPlug("matrix", &res);

	
		//Bindpose
		MObject data;
		res = bindPosePlug.getValue(data);
		MFnMatrixData bindPoseData(data,&res);
		MMatrix bindPose = bindPoseData.matrix();

		
		
		//ModelBindPose
		MObject data2;
		MFnMatrixData tempParentBindMatrix;
		res = modelTransformMatrixPlug.getValue(data2);
		MFnMatrixData ModelMatrixData(data2, &res); //HERE is danger

	
		MMatrix inverseGlobalBindPose = bindPose.inverse() * ModelMatrixData.matrix();


		//MMatrix transfered to Joints float[16]
		unsigned int localCounter = 0;
		for (size_t i = 0; i < 4; i++) 
		{
			for (size_t j = 0; j < 4; j++)
			{
				joint.globalBindPoseInverse[localCounter] = inverseGlobalBindPose[i][j];
				localCounter++;
			}
		}

		GetJointParentID(jointDep, joint,skeleton.jointVector); //FIX ME MAYBE;
		skeleton.jointVector.push_back(joint);
	} // end of joint
}


void ModelAssembler::GetJointParentID(MFnDependencyNode & jointDep, Joint & currentJoint,vector<Joint>OtherJoints)
{
	//if we want child index that is possible too. using scale instead of inverse scale
	MPlugArray jointArray;
	MPlug inverseScale = jointDep.findPlug("inverseScale", &res); //just inorder to get parent
	MString parentName;
	currentJoint.ID = OtherJoints.size();
	

	inverseScale.connectedTo(jointArray, true, false, &res);

	if (jointArray.length() > 0) //this gets the parent
	{
		MFnDependencyNode parent(jointArray[0].node());
		parentName = parent.name();
	}

	for (size_t i = 0; i < OtherJoints.size(); i++)
	{
		if ((parentName == OtherJoints.at(i).name))
		{
			currentJoint.parentID = OtherJoints.at(i).ID;
			break;
		}
	}


}

vector<vertexDeform> ModelAssembler::GetSkinWeightsList(MDagPath skinPath,MFnSkinCluster& skinCluster, vector<Joint>joints)
{
	vector<vertexDeform> vertexDeformVector;
	MItGeometry geometryIterator(skinPath, &res);

	for (size_t VertexIndex = 0; geometryIterator.isDone() == false; geometryIterator.next(), VertexIndex++)
	{
		MObject comp = geometryIterator.component(&res);
		MDoubleArray weights;
		unsigned int infCount;
		res = skinCluster.getWeights(skinPath, comp, weights, infCount);

		vertexDeform deform;
		for (size_t i = 0, influenceIndex = 0; i < joints.size(); i++)
		{
			
			if (weights[i] > 0)
			{
				deform.influences[influenceIndex] = i;
				deform.weights[influenceIndex] = weights[i];
				influenceIndex++;
				if (influenceIndex >= 4) //Currently dont support only 4 influences 
				{
					break;
				}

			}
		}
		vertexDeformVector.push_back(deform);

	}// This gives a list of indexes. We probably can use this with the vertexes that give position.
	return vertexDeformVector;
}

void ModelAssembler::ProcessSkeletalVertex(MFnSkinCluster& skinCluster, Skeleton& skeleton)
{
	unsigned int geometryCount = skinCluster.numOutputConnections();

	for (size_t i = 0; i < geometryCount; ++i) //if several meshes are connected go trough them all.
	{
		unsigned int index = skinCluster.indexForOutputConnection(i, &res);

		MDagPath skinPath;  res = skinCluster.getPathAtIndex(index, skinPath); //get weights for each vertex {8 in a cube}
		MFnMesh meshNode(skinPath.node()); //the meshNode
		MFnTransform transform(meshNode.parent(0));

		if (!meshNode.hasAttribute("BOUNDINGBOX")&& !transform.hasAttribute("BOUNDINGBOX")) //If not boundingBox
		{
			Mesh animMesh;
			animMesh.Meshpath = skinPath;

			animMesh.isAnimated = true;



			//MESHNAME
			MFnDependencyNode meshnode(skinPath.node());
			MString meshName = animMesh.nameMString = meshnode.name(); //for debuging purposes

			memcpy(&animMesh.name, meshName.asChar(), meshName.length() * sizeof(char)+1);

			//weights
			vector<vertexDeform>VertexDeformVector = GetSkinWeightsList(skinPath, skinCluster, skeleton.jointVector);

			//Positions Normals UVs.
			vector<sSkeletonVertex>nodeVertices;
			MFloatPointArray pts; //this is used for positions
			MIntArray vertexCounts;
			MIntArray polygonVertexIDs;
			MFloatArray u, v;
			MIntArray uvCounts;
			MIntArray uvIDs;
			MFloatVectorArray normals;
			MIntArray triangleCounts;
			MIntArray triangleVertexIDs;
			MVector vertexNormal;
			MIntArray normalList, normalCount; // here is the normals

			meshNode.getPoints(pts, MSpace::kObject);
			meshNode.getUVs(u, v, 0);
			meshNode.getAssignedUVs(uvCounts, uvIDs); //indices for UV:s

			meshNode.getVertices(vertexCounts, polygonVertexIDs); //get vertex polygon indices

			meshNode.getNormals(normals, MSpace::kObject);

			meshNode.getNormalIds(normalCount, normalList);

			//indices
			MIntArray triangleIndices;
			MIntArray triangleCountsOffsets;
			meshNode.getTriangleOffsets(triangleCountsOffsets, triangleIndices);
			nodeVertices.resize(triangleIndices.length());
			//now lets get all triangleVertexes.
			for (unsigned int i = 0; i < triangleIndices.length(); i++)
			{

				nodeVertices.at(i).vert.pos[0] = pts[polygonVertexIDs[triangleIndices[i]]].x;
				nodeVertices.at(i).vert.pos[1] = pts[polygonVertexIDs[triangleIndices[i]]].y;
				nodeVertices.at(i).vert.pos[2] = pts[polygonVertexIDs[triangleIndices[i]]].z;

				nodeVertices.at(i).vert.normal[0] = normals[normalList[triangleIndices[i]]].x;
				nodeVertices.at(i).vert.normal[1] = normals[normalList[triangleIndices[i]]].y;
				nodeVertices.at(i).vert.normal[2] = normals[normalList[triangleIndices[i]]].z;

				nodeVertices.at(i).vert.UV[0] = u[uvIDs[triangleIndices[i]]];
				nodeVertices.at(i).vert.UV[1] = v[uvIDs[triangleIndices[i]]];

				memcpy(&nodeVertices.at(i).weights, VertexDeformVector[polygonVertexIDs[triangleIndices[i]]].weights.data(),sizeof(float[4]));
				memcpy(&nodeVertices.at(i).influences, VertexDeformVector[polygonVertexIDs[triangleIndices[i]]].influences.data(), sizeof(float[4]));
				//nodeVertices.at(i).weights = VertexDeformVector[polygonVertexIDs[triangleIndices[i]]].weights;
				//nodeVertices.at(i).influences = VertexDeformVector[polygonVertexIDs[triangleIndices[i]]].influences;

				//Vi kollar till vilken vertex trianglen pekar på och hämtar den vikten
			}
			animMesh.skelVertList = nodeVertices;
			skeleton.MeshVector.push_back(animMesh);
		}
	} //End of Current Mesh Looping to next
}



void ModelAssembler::ProcessSkeletalIndexes(vector<sSkeletonVertex>& unfilteredVertexVector, vector<int>& indexes)
{
	//vector<sSkeletonVertex> UniqueVertexes;

	//for (unsigned int i = 0; i < unfilteredVertexVector.size(); i++)
	//{
	//	bool VertexIsUnique = true; //if this remains true the vertex needs to be saved.

	//	for (size_t j = 0; j < UniqueVertexes.size(); j++)
	//	{	
	//		if (unfilteredVertexVector.at(i) == UniqueVertexes.at(j))
	//		{
	//			indexes.push_back(j);
	//			VertexIsUnique = false;
	//			break;
	//			//if there unfiltered i is not the same as any of the uiniques add it.
	//			//else put a note to the index it was the same as-
	//		}
	//	}
	//	if (VertexIsUnique == true)
	//	{
	//		indexes.push_back(UniqueVertexes.size());
	//		UniqueVertexes.push_back(unfilteredVertexVector.at(i));
	//	}
	//}
	//unfilteredVertexVector = UniqueVertexes;
	for (size_t i = 0; i < unfilteredVertexVector.size(); i++)
	{
		indexes.push_back(i);
	}
}

void ModelAssembler::ProcessKeyframes(MFnSkinCluster & skinCluster, Skeleton & skeleton)
{

	MString BaseAnimation = getBaseAnimationName(skinCluster);

	//pymel will be used
	MGlobal::executePythonCommandStringResult("import maya.mel as mel", true, true);
	MGlobal::executePythonCommand("import Keyframes as k");

	vector<MString> animLayers = GetAnimLayers(BaseAnimation);

	lockUnlockAllLayers(animLayers, false);

	for (Joint& joint : skeleton.jointVector)
	{
		for (MString& layer : animLayers)
		{
			soloLayer(layer,true);
			MGlobal::executePythonCommand("keyList = k.GetJointKeyframes(\"" + joint.name + " \")");
			MString amountOfKeyframes = MGlobal::executePythonCommandStringResult("len(keyList)");
			sImAnimationState keyList;


			for (int keyIndex = 0; keyIndex < amountOfKeyframes.asInt(); keyIndex++)
			{
				MString keyIndexStringed; keyIndexStringed = keyIndex;
				sKeyFrame keyframe;

				MString time = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].time");

				MString scaleX = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].Scale[0]");
				MString scaleY = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].Scale[1]");
				MString scaleZ = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].Scale[2]");

				MString translateX = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].translate[0]");
				MString translateY = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].translate[1]");
				MString translateZ = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].translate[2]");

				MString rotationX = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].rotation[0]");
				MString rotationY = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].rotation[1]");
				MString rotationZ = MGlobal::executePythonCommandStringResult("keyList[" + keyIndexStringed + "].rotation[2]");
				MEulerRotation rotation(rotationX.asDouble(), rotationY.asDouble(), rotationZ.asDouble());
				MQuaternion quaternion = rotation.asQuaternion();

				keyframe.keyTime = time.asDouble();
				keyframe.keyScale[0] = scaleX.asFloat();
				keyframe.keyScale[1] = scaleY.asFloat();
				keyframe.keyScale[2] = scaleZ.asFloat();
				keyframe.keyTranslate[0] = translateX.asFloat();
				keyframe.keyTranslate[1] = translateY.asFloat();
				keyframe.keyTranslate[2] = translateZ.asFloat();


				keyframe.keyRotate[0] = quaternion.x;
				keyframe.keyRotate[1] = quaternion.y;
				keyframe.keyRotate[2] = quaternion.z;
				keyframe.keyRotate[3] = quaternion.w;

				keyList.keyList.push_back(keyframe);
			}
			joint.animationState.push_back(keyList);
			soloLayer(layer, false);

		}//end of animation layers
	}//end of joints
	lockUnlockAllLayers(animLayers, true);

}

void ModelAssembler::ProcessKeyframes2(MFnSkinCluster & skinCluster, Skeleton & skeleton)
{
	MGlobal::executePythonCommandStringResult("import maya.mel as mel", true, true);
	MGlobal::executePythonCommand("import Keyframes as k");
	MGlobal::executePythonCommand("k = reload(Keyframes)");

	MDagPathArray jointArray;
	skinCluster.influenceObjects(jointArray, &res);


	MString BaseAnimation = getBaseAnimationName(skinCluster);
	vector<MString> animLayers = GetAnimLayers(BaseAnimation);
	lockUnlockAllLayers(animLayers, false);


	bool result;
	MObject reference, reference2, reference3;
	for (size_t i = 0; i < skeleton.jointVector.size(); i++)
	{ 
		MFnDependencyNode jointDep(jointArray[i].node());

		for (MString& Layer : animLayers)
		{
			soloLayer(Layer, true);

			result = GetAnimationCurveRotate(reference, "rotateX", jointDep);
			if (result == true)
			{
				MFnAnimCurve rotateX(reference);

				result = GetAnimationCurveRotate(reference, "rotateY", jointDep);
				if (result == true)
				{
					MFnAnimCurve rotateY(reference);

					result = GetAnimationCurveRotate(reference, "rotateZ", jointDep);
					if (result == true)
					{
						MFnAnimCurve rotateZ(reference);
						result = GetAnimationCurveTranslate(reference, "translateX", jointDep);
						if (result == true)
						{
							MFnAnimCurve translateX(reference);
							result = GetAnimationCurveTranslate(reference, "translateY", jointDep);
							if (result == true)
							{
								MFnAnimCurve translateY(reference);
								result = GetAnimationCurveTranslate(reference, "translateZ", jointDep);

								if (result == true)
								{
									MFnAnimCurve translateZ(reference);
									result = GetAnimationCurveScale(reference, "scaleX", jointDep);

									if (result == true)
									{
										MFnAnimCurve scaleX(reference);
										result = GetAnimationCurveScale(reference, "scaleY", jointDep);

										if (result == true)
										{
											MFnAnimCurve scaleY(reference);
											result = GetAnimationCurveScale(reference, "scaleZ", jointDep);

											if (result == true)
											{
												int currCurve;

												MFnAnimCurve scaleZ(reference);
												int keyCount = rotateX.numKeys();;
												int potentialKeyCount[9];

												//potentialKeyCount[0] = rotateX.numKeys();
												//potentialKeyCount[1] = rotateY.numKeys();;
												//potentialKeyCount[2] = rotateZ.numKeys();
												//potentialKeyCount[3] = translateX.numKeys();
												//potentialKeyCount[4] = translateY.numKeys();;
												//potentialKeyCount[5] = translateZ.numKeys();
												//potentialKeyCount[6] = scaleX.numKeys();
												//potentialKeyCount[7] = scaleY.numKeys();
												//potentialKeyCount[8] = scaleZ.numKeys();

												//for (size_t i = 0; i < 9; i++)
												//{
												//	if (potentialKeyCount[i] > keyCount)
												//	{
												//		keyCount = potentialKeyCount[i];
												//		currCurve = i; //ho´w should this be used?
												//	}


												//}
												sImAnimationState animationState;
												for (unsigned int i = 0; i < keyCount; i++)
												{
													sKeyFrame temp;
													double rotation[3];
													float translation[3];
													float scale[3];

													rotation[0] = rotateX.value(i); //determines the value of the key at index
													rotation[1] = rotateY.value(i);
													rotation[2] = rotateZ.value(i);

													MEulerRotation eulRotation(rotation[0], rotation[1], rotation[2]);
													MQuaternion quaternion = eulRotation.asQuaternion();



													temp.keyRotate[0] = quaternion.x;
													temp.keyRotate[1] = quaternion.y;
													temp.keyRotate[2] = quaternion.z;
													temp.keyRotate[3] = quaternion.w;

													//redo into quaternion

													translation[0] = translateX.value(i); //determines the value of the key at index
													translation[1] = translateY.value(i);
													translation[2] = translateZ.value(i);
													memcpy(&temp.keyTranslate, &translation, sizeof(float[3]));

													scale[0] = scaleX.value(i);
													scale[1] = scaleY.value(i);
													scale[2] = scaleZ.value(i);
													memcpy(&temp.keyScale, &scale, sizeof(float[3]));


													MTime Time = translateX.time(i, &res).value(); //this should return the time in sek
													float time = Time.as(MTime::kSeconds);
													temp.keyTime = Time.as(MTime::kSeconds);
													animationState.keyList.push_back(temp);

												}
												skeleton.jointVector.at(i).animationState.push_back(animationState);
											}
										}
									}
								}
							}
						}
					}
				}
			
				soloLayer(Layer, false);
			}
		}
	}
	lockUnlockAllLayers(animLayers, true);
}

bool ModelAssembler::GetAnimationCurveScale(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep)
{

	MPlugArray pathToAnimation;
	MPlug animationAtt = jointDep.findPlug(animationAttribute, &res);
	MString plugName = animationAtt.name();



	animationAtt.connectedTo(pathToAnimation, true, false, &res);
	if (res == true) for (int i = 0; i < pathToAnimation.length(); i++)
	{//Loop to go trough all of the specified animation attribute.

		MFnDependencyNode jointDep = pathToAnimation[i].node();
		MString type = jointDep.typeName();
		if (type == "animBlendNodeAdditiveScale")
		{
			animationAtt = jointDep.findPlug("inputB", &res);
			animationAtt.connectedTo(pathToAnimation, true, true, &res);

			if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
			{//if this is true you are one step closer to finding the curves

				MFnDependencyNode testDep = pathToAnimation[i].node(); //se if the connection is animCurve
				MString type = testDep.typeName();
				if (type == "animCurveTU")
				{
					reference = pathToAnimation[i].node(); //we found the curve
					return true;
				}
			}

			animationAtt = jointDep.findPlug("inputA", &res);
			animationAtt.connectedTo(pathToAnimation, true, true, &res);
			if (res == true && pathToAnimation.length() > 0) // Continue to next node
			{
				MFnDependencyNode recursive = pathToAnimation[0].node();
				bool result = GetAnimationCurveScaleRecurse(reference, animationAttribute, recursive);
				return result;
			}
			else
			{
				return false;
			}
			
		}
	}
	else return false; //This is where you end up if you dont have correctAttribute
}

bool ModelAssembler::GetAnimationCurveScaleRecurse(MObject & reference, MString animationAttribute, MFnDependencyNode & jointDep)
{
	MPlugArray pathToAnimation;
	MPlug animationAtt = jointDep.findPlug(animationAttribute, &res);
	MString type = jointDep.typeName();

	if (type == "animBlendNodeAdditiveScale")
	{
		animationAtt = jointDep.findPlug("inputB", &res);
		animationAtt.connectedTo(pathToAnimation, true, true, &res);

		if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
		{//if this is true you are one step closer to finding the curves

			MFnDependencyNode testDep = pathToAnimation[i].node(); //se if the connection is animCurve
			MString type = testDep.typeName();
			if (type == "animCurveTU")
			{
				reference = pathToAnimation[i].node(); //we found the curve
				return true;
			}
		}

		animationAtt = jointDep.findPlug("inputA", &res);
		animationAtt.connectedTo(pathToAnimation, true, true, &res);
		if (res == true && pathToAnimation.length() > 0) // Continue to next node
		{
			MFnDependencyNode recursive = pathToAnimation[0].node();
			bool result = GetAnimationCurveScaleRecurse(reference, animationAttribute, recursive);
			return result;
		}
		else
		{
			return false;
		}
	}
	else return false; //This is where you end up if you dont have correctAttribute
}

bool ModelAssembler::GetAnimationCurveTranslate(MObject& reference,MString animationAttribute, MFnDependencyNode & jointDep)
{
	MPlugArray pathToAnimation;
	MPlug animationAtt = jointDep.findPlug(animationAttribute, &res);
	MString plugName = animationAtt.name();


	animationAtt.connectedTo(pathToAnimation, true, false, &res);
	if (res == true) for (int i = 0; i < pathToAnimation.length(); i++)
	{//Loop to go trough all of the specified animation attribute.

		
		MFnDependencyNode jointDep = pathToAnimation[i].node();
		MString type = jointDep.typeName();
		if (type == "animBlendNodeAdditiveDL")
		{
			
			animationAtt = jointDep.findPlug("inputB", &res);
			animationAtt.connectedTo(pathToAnimation, true, true, &res);

			if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
			{
				MFnDependencyNode testDep = pathToAnimation[i].node(); //se if the connection is animCurve
				MString type = testDep.typeName();
				if (type == "animCurveTL")
				{
					reference = pathToAnimation[i].node();
					return true;
				}
			}
				
			animationAtt = jointDep.findPlug("inputA", &res);
			animationAtt.connectedTo(pathToAnimation, true, true, &res);
			if (res == true && pathToAnimation.length() > 0) // Continue to next node
			{
					
				MFnDependencyNode recursive = pathToAnimation[0].node();
				bool result = GetAnimationCurveTranslateRecurse(reference, animationAttribute,recursive);
				return result;
			}
			else
			{
				return false;
			}

		
		}
		else return false;
	}
	else return false;
}



bool ModelAssembler::GetAnimationCurveTranslateRecurse(MObject & reference, MString animationAttribute, MFnDependencyNode & jointDep)
{

	MPlugArray pathToAnimation;
	MString type = jointDep.typeName();
	if (type == "animBlendNodeAdditiveDL")
	{


		MPlug animationAtt = jointDep.findPlug("inputB", &res);
		animationAtt.connectedTo(pathToAnimation, true, true, &res);

		if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
		{
			MFnDependencyNode testDep = pathToAnimation[i].node(); //se if the connection is animCurve
			MString type = testDep.typeName();
			if (type == "animCurveTL")
			{
				reference = pathToAnimation[i].node();
				return true;
			}
		}
		animationAtt = jointDep.findPlug("inputA", &res);
		animationAtt.connectedTo(pathToAnimation, true, true, &res);
		if (res == true && pathToAnimation.length() > 0) // Continue to next node
		{
			MFnDependencyNode recursive = pathToAnimation[0].node();
			bool result = GetAnimationCurveTranslateRecurse(reference, animationAttribute, recursive);
			return result;
		}
		else
		{
			return false;
		}

	}
	else return false;
}

bool ModelAssembler::GetAnimationCurveRotate(MObject & reference, MString animationAttribute, MFnDependencyNode & jointDep)
{
	
	MPlugArray pathToAnimation;
	MPlug animationAtt = jointDep.findPlug(animationAttribute, &res);
	MString name = animationAtt.name();
	
	MString att ="";
	if (animationAttribute == "rotateX") att += "X";
	else if(animationAttribute == "rotateY") att += "Y";
	else { att += "Z"; }


	animationAtt.connectedTo(pathToAnimation, true, false, &res);
	if (res == true) for (int i = 0; i < pathToAnimation.length(); i++)
	{

		MFnDependencyNode jointDep = pathToAnimation[i].node(); 
		MString type = jointDep.typeName(); //now we have the 
		if (type == "animBlendNodeAdditiveRotation")
		{
			

			MString inputAttB = "inputB" + att;
			animationAtt = jointDep.findPlug(inputAttB, &res);
			animationAtt.connectedTo(pathToAnimation, true, true, &res);
			int count = pathToAnimation.length();
			if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
			{
				MFnDependencyNode testDepth = pathToAnimation[i].node(); //se if the connection is animCurve
				MString type = testDepth.typeName();
				if (type == "animCurveTA")
				{
					reference = pathToAnimation[i].node();
					return true;
				}
			}

			MString inputAttA = "inputA" + att;
			animationAtt = jointDep.findPlug(inputAttA, &res);
			animationAtt.connectedTo(pathToAnimation, true, false, &res);
			count = pathToAnimation.length();
			if (res == true && pathToAnimation.length() > 0) // Continue to next node
			{
				MFnDependencyNode recursive = pathToAnimation[0].node();
				bool result = GetAnimationCurveRotateRecurse(reference, animationAttribute,recursive);
				return result;
			}
			else
			{
				return false;
			}

		}
		else return false;
	}
	else return false;
}

bool ModelAssembler::GetAnimationCurveRotateRecurse(MObject & reference, MString animationAttribute, MFnDependencyNode & jointDep)
{
	MString att = "";
	if (animationAttribute == "rotateX") att += "X";
	else if (animationAttribute == "rotateY") att += "Y";
	else { att += "Z"; }

	MString type = jointDep.typeName(); 
	if (type == "animBlendNodeAdditiveRotation")
	{
		MPlugArray pathToAnimation;

		MString inputAttB = "inputB" + att;
		MPlug animationAtt = jointDep.findPlug(inputAttB, &res);
		animationAtt.connectedTo(pathToAnimation, true, true, &res);
		int count = pathToAnimation.length();

		if (res == true) for (size_t i = 0; i < pathToAnimation.length(); i++)
		{
			MFnDependencyNode testDepth = pathToAnimation[i].node(); //se if the connection is animCurve
			MString type = testDepth.typeName();
			if (type == "animCurveTA")
			{
				reference = pathToAnimation[i].node();
				return true;
			}
		}

		MString inputAttA = "inputA" + att;
		animationAtt = jointDep.findPlug(inputAttA, &res);
		animationAtt.connectedTo(pathToAnimation, true, false, &res);
		count = pathToAnimation.length();

		if (res == true && pathToAnimation.length() > 0) // Continue to next node
		{
			MFnDependencyNode recursive = pathToAnimation[0].node();
			bool result = GetAnimationCurveRotate(reference, animationAttribute, recursive);
			return result;
		}
		else
		{
			return false;
		}
	}
	else return false;
}


void ModelAssembler::AssembleMaterials()
{
	MItDependencyNodes itDepNode(MFn::kLambert); //used inorder to go trough materials
	itDepNode.reset(MFn::kLambert); // Nuk computers have an issue- lamberts will not be found.

	while (itDepNode.isDone() == false)
	{
		MObject mNode = itDepNode.item();
		Material tempMaterial;

		MPlugArray textureGroup;
		MPlugArray shadingGoupArray;
		MPlugArray dagSetMemberConnections;
		MPlugArray objInstArray;
		MPlugArray bmpGroup;
		MObject data;

		MFnDependencyNode materialNode(mNode);
		tempMaterial.name = materialNode.name();
		//memcpy(&tempMaterial.name, materialName.asChar(), materialName.length() * sizeof(char))
		//Get MaterialNode Plugs
		MPlug outColor = materialNode.findPlug("outColor"); //to go further in the plugs
		MPlug color = materialNode.findPlug("color"); //to get the color values
		MPlug diffuse = materialNode.findPlug("diffuse"); //to get the diffuse of the material
		MPlug specularColor = materialNode.findPlug("specularColor"); //to get the specular color of the material
		MPlug ShinyFactor = materialNode.findPlug("specularRollOff"); //to get the specular color of the material
		//GetNormalMap plug
		MPlug normalCamera = materialNode.findPlug("normalCamera");
		normalCamera.connectedTo(bmpGroup, true, false, &res);
		if(bmpGroup.length()>0)
		{
			MFnDependencyNode bmpMap(bmpGroup[0].node());
			MPlug bumpValue = bmpMap.findPlug("bumpValue");

			////normal Texture
			bumpValue.connectedTo(textureGroup, true, false, &res);
			tempMaterial.normalFilepath = GetTexture(textureGroup); //make
		}
		else //there where no bumpMap
		{
			memcpy(&tempMaterial.normalFilepath, "NOTEXTURE", sizeof(const char[10]));
		}
		

		//color
		color.getValue(data);
		MFnNumericData nData(data);
		nData.getData(tempMaterial.color[0], tempMaterial.color[1], tempMaterial.color[2]);

		//texture
		color.connectedTo(textureGroup, true, false, &res); 
		tempMaterial.textureFilepath = GetTexture(textureGroup); 
		if (textureGroup.length() == 0)
			memcpy(&tempMaterial.textureFilepath, "NOTEXTURE", sizeof(const char[10]));
	
		//specular color
		specularColor.getValue(data);
		MFnNumericData specularData(data);
		specularData.getData(tempMaterial.specularColor[0], tempMaterial.specularColor[1], tempMaterial.specularColor[2]);
		
		//specularRollOff
		ShinyFactor.getValue(tempMaterial.shinyFactor);

		//diffuse Texture
		diffuse.connectedTo(textureGroup, true, false, &res);
		tempMaterial.diffuseFilepath = GetTexture(textureGroup);
		if (textureGroup.length() == 0)
			memcpy(&tempMaterial.diffuseFilepath, "NOTEXTURE", sizeof(const char[10]));
		//specular texture
		specularColor.connectedTo(textureGroup, true, false, &res); 
		tempMaterial.specularFilepath = GetTexture(textureGroup); 
		if (textureGroup.length() == 0)
			memcpy(&tempMaterial.specularFilepath, "NOTEXTURE", sizeof(const char[10]));
		
		//diffuse
		diffuse.getValue(tempMaterial.diffuse);
		//diffuse Texture
		diffuse.connectedTo(textureGroup, true, false, &res); 
		tempMaterial.diffuseFilepath = GetTexture(textureGroup); 
		if (textureGroup.length() == 0)
			memcpy(&tempMaterial.diffuseFilepath, "NOTEXTURE", sizeof(const char[10]));

		
		
		//Get connected Meshes
		outColor.connectedTo(shadingGoupArray, false, true, &res);
		for (int i = 0; i < shadingGoupArray.length(); i++)  //for all shading groups
		{
			if (shadingGoupArray[i].node().hasFn(MFn::kShadingEngine)) 
			{
				MFnDependencyNode shadingNode(shadingGoupArray[i].node());
				if (strcmp(shadingNode.name().asChar(), "initialParticleSE") != 0) //We want to ignore this shading group 
				{

					MPlug dagSetMember = shadingNode.findPlug("dagSetMembers", &res);
					for (int child = 0; child < dagSetMember.numElements(); child++) 
					{
						dagSetMember[child].connectedTo(dagSetMemberConnections, true, false, &res); //true = connection to destination

						for (int d = 0; d < dagSetMemberConnections.length(); d++) 
						{
							MFnDependencyNode dagSetMemberNode(dagSetMemberConnections[d].node()); //in order to get materials meshes
							if (strcmp(dagSetMemberNode.name().asChar(), "shaderBallGeom1") != 0) 
							{
								//std::array<char, 256> meshName;
								MFnMesh mesh(dagSetMemberNode.object()); //get the mesh in order to get the name of the mesh
								//memcpy(&meshName, mesh.name().asChar(), materialName.length() * sizeof(char) + 1); //get the name of mesh bound to material
								
								tempMaterial.boundMeshes.push_back(mesh.name());

							}
						}
					}
				}
			}
		}
		materials.push_back(tempMaterial);
		itDepNode.next();
	}
}

void ModelAssembler::ConnectMaterialsToMeshes()
{

	for (Material material : materials)
	{
		for (MString boundMeshName : material.boundMeshes)
		{
			for (size_t j = 0; j < Meshes.size(); j++)
			{
				if (boundMeshName == Meshes.at(j).nameMString)
				{
					Meshes.at(j).material = material;
				}
			}//end of standard meshes
		}
	}
}

void ModelAssembler::assambleHierarki(MObject object, sHierarchy & parent, sJointChild & parentJoint, sMeshChild & parentMesh)
{
	MFnDagNode node(object);
	MFnDagNode transform = node.parent(0); //yepp 

	unsigned int parentCount = node.parentCount();
	for (size_t i = 0; i < parentCount; i++)
	{
		MFnDagNode parentNode = transform.parent(i);
		MString parentName = parentNode.name();
		MString parentNodetype = parentNode.typeName();

		if (parentNodetype == "joint")
		{
			parent.hasParentJoint = true;
			for (Joint joint : allModelJoints)
			{
				if (parentNodetype == joint.name)
				{
					parentJoint.parentSkeletonIndex = joint.skeletonID;
					parentJoint.parentJointIndex = joint.ID;
				}
			}
		}
		if (parentNodetype == "transform")
		{
			parent.hasParentMesh = true;
			for (size_t index = 0; index < Meshes.size(); index++)
			{
				//the reason for this is that parenting is always done to transforms not meshes.
				if (parentName == Meshes.at(index).transform_Name_Mstring)
				{
					parentMesh.parentMeshIndex = index;

				}
			}
		}
	}
}

void ModelAssembler::AssembleBoundingBoxes()
{
	MObject parent;
	MItDag it(MItDag::kDepthFirst);
	for (; it.isDone() == false; it.next())
	{
		if (parent.hasFn(MFn::kTransform))
		{
			MFnTransform transform(parent);
			if (it.currentItem().hasFn(MFn::kMesh))
			{
				MFnMesh meshNode(it.currentItem());
				//if the mesh or the transform of the mesh has the attribute BoundingBox
				if (meshNode.hasAttribute("BOUNDINGBOX")||transform.hasAttribute("BOUNDINGBOX"))
				{
					sBBox boundingBox;
					MFloatPointArray bPts;
					meshNode.getPoints(bPts, MSpace::kObject);

					//Get the 8 corners of the BB
					for (size_t i = 0; i < 8; i++)
					{
						MFloatPoint point = bPts[i];
						boundingBox.pos[i].x = point.x;
						boundingBox.pos[i].y = point.y;
						boundingBox.pos[i].z = point.z;
					}

					assambleHierarki(it.currentItem(), boundingBox.parent, boundingBox.jointParent, boundingBox.meshParent);
					BBoxes.push_back(boundingBox);

					}
				}
			}
		parent = it.currentItem();
	}
}

MString ModelAssembler::getBaseAnimationName(MFnSkinCluster& skinCluster)
{
	MDagPathArray jointArray;
	skinCluster.influenceObjects(jointArray, &res);
	MFnDependencyNode jointDep(jointArray[0].node());
	MPlugArray pathToBaseAnimation;
	for (size_t i = 0; i < 10; i++)
	{
		MPlug test = jointDep.findPlug("rotateX", &res);
		test.connectedTo(pathToBaseAnimation, true, true, &res);
		if (res == true)
		{
			MString plugName = test.name();
			if (pathToBaseAnimation.length() > 0)
			{
				MFnDependencyNode jointDep = pathToBaseAnimation[0].node();
				MString type = jointDep.typeName();
				if (type == "animLayer")
				{
					test = jointDep.findPlug("parentLayer", &res);
					test.connectedTo(pathToBaseAnimation, true, true, &res);
					if (pathToBaseAnimation.length() > 0)
					{
						MFnDependencyNode jointDep = pathToBaseAnimation[0].node();
						return jointDep.name();
					}

				}
			}
		}
	}
}






std::array<char, 256> ModelAssembler::GetTexture(MPlugArray textureGroup)
{
	std::array<char, 256> result = {0};

	for (int i = 0; i < textureGroup.length(); i++) //this is basicaly a check if there is any texture
	{
		MFnDependencyNode textureNode(textureGroup[i].node());
		MString filename;
		textureNode.findPlug("fileTextureName").getValue(filename);
		memcpy(&result, filename.asChar(), filename.length() * sizeof(const char));
	}
	return result;
}

vector<MString> ModelAssembler::GetAnimLayers(const MString baseLayer)
{
	MStatus res;
	vector<MString> Layers;

	Layers.push_back(baseLayer);

	MGlobal::executePythonCommand("Layers = mel.eval('animLayer - query - children \"" + baseLayer + "\";')", true, true);
	MString animationLayerCount = MGlobal::executePythonCommandStringResult("len(Layers)", true, true, &res);

	
	for (int i = 0; i < animationLayerCount.asInt(); i++)
	{
		MString index; index += i;
		MString temp = MGlobal::executePythonCommandStringResult("Layers["+ index +"]");
		Layers.push_back(temp);
	}
	
	return Layers;
	

	
}

void ModelAssembler::lockUnlockAllLayers(vector<MString> allLayers,bool lock)
{
	if (lock == true)
	{
		for (MString layer : allLayers)
		{
			MGlobal::executeCommand("animLayer -edit -lock 1 " + layer + ";");
			MGlobal::executeCommand("animLayer - edit - mute true " + layer + ";");
			MGlobal::executeCommand("animLayerEditorOnSelect \"" + layer + "\" 0;");
			MGlobal::executeCommand("sets - remove highlightList " + layer + ";");
			MGlobal::executeCommand("animLayerSoloCallBack \"" + layer + "\" 0;");
		}
	}
	else
	{
		for (MString layer : allLayers)
		{
			MGlobal::executeCommand("animLayer -edit -lock 0 " + layer + ";");
			MGlobal::executeCommand("animLayer - edit - mute false " + layer + ";");
			MGlobal::executeCommand("animLayerEditorOnSelect \"" + layer + "\" 0;");
		}
	}
}




void ModelAssembler::soloLayer(MString layerToSolo,bool makeSolo)
{
	if(makeSolo == true) 
		MGlobal::executeCommand("animLayerSoloCallBack \"" + layerToSolo + "\" 1;");
	else
		MGlobal::executeCommand("animLayerSoloCallBack \"" + layerToSolo + "\" 0;");

	

}

Transform ModelAssembler::GetTransform(MFnTransform & transform)

{
	Transform result;
	result.pos[0] = transform.getTranslation(MSpace::kTransform).x;
	result.pos[1] = transform.getTranslation(MSpace::kTransform).y;
	result.pos[2] = transform.getTranslation(MSpace::kTransform).z;

	double dScale[3]; float fScale[3];
	transform.getScale(dScale);
	MEulerRotation eulerRotation;
	transform.getRotation(eulerRotation);

	result.rot[0] = eulerRotation.x;
	result.rot[1] = eulerRotation.y;
	result.rot[2] = eulerRotation.z;

	result.scale[0] = dScale[0];
	result.scale[1] = dScale[1];
	result.scale[2] = dScale[2];

	transform.getRotationQuaternion(result.Qrotation[0], result.Qrotation[1], result.Qrotation[2], result.Qrotation[3], MSpace::kTransform);

	return result;
}


bool assembleStructs::operator==(const sVertex & left, const sVertex & right)
{
	if (left.pos == right.pos)
	{
		if (left.normal == right.normal)
		{
			if (left.UV == right.UV)
				return true;
		}
	}

	return false;
}


bool assembleStructs::operator==(const sSkeletonVertex & left, const sSkeletonVertex & right)
{
	if (left.vert.pos == right.vert.pos)
	{
		if (left.vert.normal == right.vert.normal)
		{
			if (left.vert.UV == right.vert.UV)
			{
				if (left.influences == right.influences)
				{
					if (left.weights == right.weights)
					{
						//Deformer check may be uneccesary- need to be proven first
						return true;
					}
				}
			}
		}
	}

	return false;
}
