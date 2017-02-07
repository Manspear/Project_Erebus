#pragma once
#include "ModelAssembler.h"
#include "ExportHeaders.h"
class Exporter
{
public:
	Exporter();
	~Exporter();

	void writeModelsToFile(string outFilePath);
	void writeMaterialsToFile(string outFilePath);
	

private:
	//sDataHeader dataHeader;
	//sHeader MainHeader;
	sOffset offsetHeader;

	ModelAssembler* assamble;
	vector<assembleStructs::Mesh> assembleMeshes;

	//vector<sVertexVector> vertexVectors; //this contains all vertexLists
	//vector<sIndexVector> indexVectors; //this contains all indexLists;
	//
	//vector<sMesh> meshVector;
	//vector<sMaterial> MaterialVector;
	//void prepareMeshData(assembleStructs::Mesh);
	//void prepareMaterialData();
	



};