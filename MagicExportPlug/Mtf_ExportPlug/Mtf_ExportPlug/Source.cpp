///To be replacing the fbxExporter
///This plugin's main purpose is to gather all the object in the scene and send them as one model.
///The model will then be made into a binary file Ready to be loaded by an importer.

#include <maya/MFnPlugin.h>
#include "ModelAssembler.h"
#include "Exporter.h"
#include <fstream>
using namespace std;


EXPORT MStatus initializePlugin(MObject obj)
{
	MStatus res = MS::kSuccess;

	MFnPlugin myPlugin(obj, "Maya plugin", "1.0", "Any", &res);
	if (MFAIL(res)) {
		CHECK_MSTATUS(res);
		return res; //Plugin not loaded
	}

	Exporter Export;
	string outfileMesh = "C:/Git/MagicExportPlug/Exports/";
	//put a for loop going trough every material in export
	string outfileModel = "C:/Git/MagicExportPlug/Exports/";

	Export.writeModelsToFile(outfileMesh);
	Export.writeMaterialsToFile(outfileModel);

	MGlobal::displayInfo("Maya plugin loaded!");
	return MS::kSuccess;
	
}


EXPORT MStatus uninitializePlugin(MObject obj)
{
	ModelAssembler Assembler();
	// simply initialize the Function set with the MObject that represents
	// our plugin
	MFnPlugin plugin(obj);

	// if any resources have been allocated, release and free here before
	// returning...

	MGlobal::displayInfo("Maya plugin unloaded!");

	return MS::kSuccess;
}