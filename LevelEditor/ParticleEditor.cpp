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
	
	TwAddVarRW(particleBar, "test", TW_TYPE_BOOL32, &test, "label = 'testlabel'");
	TwAddVarRW(particleBar, "Position", TW_TYPE_DIR3F, &part.pos, " label='Pos'");
	TwAddVarRW(particleBar, "Duration", TW_TYPE_FLOAT, &part.duration, " label='Duration'");
	TwAddVarRW(particleBar, "Speed", TW_TYPE_FLOAT, &part.speed, " label='Speed'");
	TwAddVarRW(particleBar, "Angle", TW_TYPE_FLOAT, &part.angle, " label='Angle'");
	TwAddVarRW(particleBar, "Color", TW_TYPE_COLOR3F, &part.color, " label='Color'");
}

void ParticleEditor::createParticles()
{



}

