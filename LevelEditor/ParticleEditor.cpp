#include "ParticleEditor.h"

ParticleEditor::ParticleEditor()
{
}

ParticleEditor::~ParticleEditor()
{
}

void ParticleEditor::particleEditorBar()
{
	particleBar = TwNewBar("Particle Editor Bar");
	
	//TwAddVarRW(particleBar, "Position", TW_TYPE_DIR3F, &part->pos, " label='Pos'");
	//TwAddVarRW(particleBar, "Duration", TW_TYPE_FLOAT, &part->duration, " label='Duration' min=0 max=10 step=0.01");
	//TwAddVarRW(particleBar, "Speed", TW_TYPE_FLOAT, &part->speed, " label='Speed' min=1 max=10 step=0.1");
	//TwAddVarRW(particleBar, "Angle", TW_TYPE_FLOAT, &part->angle, " label='Angle' min=0 max=180 step=1");
	//TwAddVarRW(particleBar, "Color", TW_TYPE_COLOR3F, &part->color, " label='Color'");
}