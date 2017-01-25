//void ModelAssembler::AssembleSkeletalMesh()
//{
//	MStatus res;
//	MItDag it(MItDag::kDepthFirst);
//	MObject parent;
//
//	for (; it.isDone() == false; it.next())
//	{
//
//		if (it.currentItem().hasFn(MFn::kMesh))
//		{
//
//			MFnMesh meshNode(it.currentItem()); //the meshNode
//			Mesh tempMesh;
//
//			memcpy(&tempMesh.MeshName, meshNode.name().asChar(), sizeof(const char[256]));//MeshName
//
//			vector<vertex>nodeVertices;
//			MFloatPointArray pts;
//			MIntArray vertexCounts;
//			MIntArray polygonVertexIDs;
//			MFloatArray u, v;
//			MIntArray uvCounts;
//			MIntArray uvIDs;
//			MFloatVectorArray normals;
//			MIntArray triangleCountsOffsets;
//			MIntArray triangleIndices;
//			MIntArray triangleCounts;
//			MIntArray triangleVertexIDs;
//			MVector vertexNormal;
//			MIntArray normalList, normalCount;
//
//
//			meshNode.getPoints(pts, MSpace::kObject);
//			meshNode.getUVs(u, v, 0);
//			meshNode.getAssignedUVs(uvCounts, uvIDs); //indices for UV:s
//
//			meshNode.getTriangleOffsets(triangleCountsOffsets, triangleIndices);
//			meshNode.getVertices(vertexCounts, polygonVertexIDs); //get vertex polygon indices
//
//
//			meshNode.getNormals(normals, MSpace::kObject);
//
//			nodeVertices.resize(triangleIndices.length());
//
//			meshNode.getNormalIds(normalCount, normalList);
//
//
//			for (unsigned int i = 0; i < triangleIndices.length(); i++)
//			{ //for each triangle index (36)
//
//				nodeVertices.at(i).pos[0] = pts[polygonVertexIDs[triangleIndices[i]]].x;
//				nodeVertices.at(i).pos[1] = pts[polygonVertexIDs[triangleIndices[i]]].y;
//				nodeVertices.at(i).pos[2] = pts[polygonVertexIDs[triangleIndices[i]]].z;
//
//				nodeVertices.at(i).nor[0] = normals[normalList[triangleIndices[i]]].x;
//				nodeVertices.at(i).nor[1] = normals[normalList[triangleIndices[i]]].y;
//				nodeVertices.at(i).nor[2] = normals[normalList[triangleIndices[i]]].z;
//
//				nodeVertices.at(i).uv[0] = u[uvIDs[triangleIndices[i]]];
//				nodeVertices.at(i).uv[1] = v[uvIDs[triangleIndices[i]]];
//
//			}
//
//			MFnDependencyNode depNode(it.currentItem());
//			MPlugArray skinClusterArray;
//
//			//iterera igenom geometry filter och hitta control punkterna
//			//Hämta ut joints
//			//hämta ut viktli
//
//
//
//
//
//
//
//
//			///////////////////////////////// HERE
//
//			try
//			{
//
//
//				//control points
//
//				//skin cluster
//				MPlug inMesh = depNode.findPlug("inMesh", &res);
//				inMesh.connectedTo(skinClusterArray, true, false, &res);
//
//				MFnDependencyNode SkinCluster(skinClusterArray[0].node());
//
//				MFnSkinCluster cluster(skinClusterArray[0].node(), &res);
//				MString name = cluster.name(&res);
//				//end of cluster
//
//
//				//get bindpose!
//
//				MDagPath path;
//				it.getPath(path);
//				MObject components; //components to returnweihts for
//				unsigned int influenceCount;
//				MFloatArray weights;
//				cluster.getWeights(path, components, weights, influenceCount); //this currently returns trash
//
//
//																			   //get joints
//				MDagPathArray pathArray;
//
//				MSelectionList list;
//				MDoubleArray doubleArray;
//				MDagPath influenspath;
//				double values[50000];
//
//				cluster.influenceObjects(pathArray, &res); //Get the joints
//
//
//
//
//														   //for (size_t i = 0; i < pathArray.length(); i++) //go trough all the joints and find the influences.
//														   //{
//														   //	MObject joint = pathArray[i].node(); 
//														   //	cluster.getPointsAffectedByInfluence(pathArray[i], list, doubleArray);
//														   //	doubleArray.get(values);
//
//														   //}			
//
//														   // end of joints
//
//
//
//			}
//
//			catch (int e)
//			{
//
//			}
//		}
//	}
//
//