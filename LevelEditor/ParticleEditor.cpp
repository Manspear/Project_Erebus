#include "ParticleEditor.h"

ParticleEditor::ParticleEditor()
{
}

ParticleEditor::~ParticleEditor()
{
}

void ParticleEditor::particleEditorBar()
{
	TwBar *particleBar;

	particleBar = TwNewBar("Particle Editor Bar");
	Particle akfh;

	TwAddVarRW(particleBar, "Position", TW_TYPE_DIR3F, &akfh.pos, " label='Pos'");
	TwAddVarRW(particleBar, "Duration", TW_TYPE_FLOAT, &akfh.duration, " label='Duration'");
	TwAddVarRW(particleBar, "Speed", TW_TYPE_FLOAT, &akfh.speed, " label='Speed'");
	TwAddVarRW(particleBar, "Angle", TW_TYPE_FLOAT, &akfh.angle, " label='Angle'");
	TwAddVarRW(particleBar, "Color", TW_TYPE_COLOR3F, &akfh.color, " label='Color'");
}
