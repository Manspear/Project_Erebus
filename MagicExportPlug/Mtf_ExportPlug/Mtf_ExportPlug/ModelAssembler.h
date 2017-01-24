#ifndef MODEL_ASSEMBLER_H
#define MODEL_ASSEMBLER_H

#include "maya_includes.h"
#include <iostream>
#include <vector>
#include <array>
#include <sstream>
#include "ExportHeaders.h"


using namespace std;


namespace assembleStructs
{
	struct vertexDeform
	{
		std::array<int, 4> influences;
		std::array<float, 4> weights;
	};


	struct sImAnimationState
	{
		std::vector<sKeyFrame> keyList;
	};

	
	struct Joint
	{
		int	parentID = NOTSET;
		int ID = NOTSET;
		int skeletonID = NOTSET;
		std::array<float, 16> globalBindPoseInverse;
		
		int animationStateCount = NOTSET;
		std::vector<sImAnimationState> animationState;
		MDagPath dagPath;
		MString name;
	};

	

	//Vertex Compare Used for indexing
	bool operator==(const sVertex& left, const sVertex& right);
	bool operator == (const sSkeletonVertex& left, const sSkeletonVertex& right);

	struct Material
	{
		//std::array<char, 256> name;
		MString name;
		vector<MString> boundMeshes;
		std::array<char, 256> textureFilepath;
		std::array<char, 256> specularFilepath;
		std::array<char, 256> diffuseFilepath;
		std::array<char, 256> normalFilepath;

		float diffuse;
		float shinyFactor;
		std::array <float,3> color;
		std::array <float, 3> specularColor;
	};

	struct Transform
	{
		std::array <float, 3> pos;
		std::array <float, 3> rot;
		std::array <float, 3> scale;

		double Qrotation[4];
	};


	struct Mesh
	{
		int skeletonIndex = NOTSET;
		int materialID = NOTSET;

		
		sHierarchy parent;
		sJointChild parentJoint;
		sMeshChild parentMesh;


		std::array<char, 256> name;
		MString nameMString;
		MString transform_Name_Mstring;

		//This mesh's local transform
		Transform transform;
		Material material;

		MObject object;

		std::vector<sVertex> vertList;
		std::vector<sSkeletonVertex> skelVertList;
		std::vector<int> indexList;
		bool isAnimated = false;
		MDagPath Meshpath; //to be used only in assambler

	};

	struct Skeleton
	{
		vector<Mesh> MeshVector;
		vector<Joint> jointVector;

	};
	

	
}//End of assembleStructs
using namespace assembleStructs;

class ModelAssembler
{

public:
	ModelAssembler();
	~ModelAssembler();

	vector<Mesh>&GetMeshVector();
	vector<Skeleton>&GetSkeletonVector();
	vector<Material>&GetMaterialVector();
	vector<sBBox>&GetBoundingBoxVector();
	vector<Joint>& GetallModelJoints();
	eModelType& GetType();

private:
	//Variables
	MStatus res;
	vector<Mesh> Meshes; 
	vector<Skeleton> Skeletons;
	vector<Joint> allModelJoints;
	vector<Material> materials;
	vector<sBBox> BBoxes;


	eModelType TYPE = eModelType::STATIC;
	//Functions
	void AssembleMesh(MObject MObjectMeshNode,MObject Parent);
	void AssembleSkeletonsAndMeshes();
	void AssembleMaterials();
	void ConnectMaterialsToMeshes();
	void assambleHierarki(MObject object, sHierarchy& parent, sJointChild& parentJoint,sMeshChild& parentMesh);
	void AssembleBoundingBoxes();
	MString getBaseAnimationName(MFnSkinCluster& skinCluster);

	void ProcessInverseBindpose(MFnSkinCluster&, Skeleton&, MFnDependencyNode& parentNode); //gets inversebindPose and globalInverseBindpose
	void ProcessSkeletalVertex (MFnSkinCluster& skinCluster, Skeleton& skeleton); //Gets vertices and weights for each triangleIndex
	void ProcessSkeletalIndexes(vector<sSkeletonVertex>& vertexVector, vector<int>& indexes); //Modifys vertexList and Adds indexes
	void GetJointParentID(MFnDependencyNode & jointDep, Joint & currentJoint, vector<Joint>OtherJoints); //gets the JointList index index of the joints parent

	vector<vertexDeform> GetSkinWeightsList(MDagPath skinPath, MFnSkinCluster& skinCluster, vector<Joint>joints);
	void ProcessKeyframes (MFnSkinCluster& skinCluster, Skeleton& skeleton);
	void ProcessKeyframes2(MFnSkinCluster& skinCluster, Skeleton& skeleton);

	bool GetAnimationCurveScale(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);
	bool GetAnimationCurveScaleRecurse(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);

	bool GetAnimationCurveTranslate(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);
	bool GetAnimationCurveTranslateRecurse(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);

	bool GetAnimationCurveRotate(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);
	bool GetAnimationCurveRotateRecurse(MObject& reference, MString animationAttribute, MFnDependencyNode& jointDep);
	std::array<char, 256> GetTexture(MPlugArray);
	
	
	vector<MString> GetAnimLayers(const MString baseLayer);
	void lockUnlockAllLayers(vector<MString>allLayers,bool lock);
	//void animLayerWeightEdit(MString);
	void soloLayer(MString layerToSolo, bool makeSolo);


	Transform GetTransform(MFnTransform &transform);

};
#endif