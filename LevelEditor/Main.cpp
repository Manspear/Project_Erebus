#include<AntTweakBar.h>


#include"MenuTest.h"
#include "Gear.h"
#include "BaseIncludes.h"

#include"HeightMapEditor.h"
#include"ParticleEditor.h"

enum EditorState
{
	HEIGHTMAP_EDIT,
	PARTICES_EDIT,

};

int main()
{
	EditorState editorState;
	editorState = HEIGHTMAP_EDIT;

	Gear::GearEngine *engine = new Gear::GearEngine();

	TwInit(TW_OPENGL_CORE, NULL);

	//MenuTest menuTest;
	ParticleEditor particleEditor;
	HeightMapEditor* heightMapEditor;
	particleEditor.particleEditorBar();


	TwWindowSize(500, 500);
	
	while (engine->isRunning())
	{
		switch (editorState)
		{
		case HEIGHTMAP_EDIT:

			break;

		case PARTICES_EDIT:

			break;
		default:
			break;
		}

	#pragma region DRAW
		engine->draw();
		TwDraw();
		engine->updateWindow();
	#pragma endregion
	
	}

	return 0;
}
