#include "ParticleEditor.h"

ParticleEditor::ParticleEditor()
{
	part.pos[0] = 0;
	part.pos[1] = 0;
	part.pos[2] = 0;
	part.duration = 0;
	part.speed = 1;
	part.angle = 0;
	part.color[0] = 0;
	part.color[1] = 0;
	part.color[2] = 256;
}

ParticleEditor::~ParticleEditor()
{

}

void ParticleEditor::particleEditorBar()
{
	

	particleBar = TwNewBar("Particle Editor Bar");
	
	TwAddVarRW(particleBar, "Position", TW_TYPE_DIR3F, &part.pos, " label='Pos'");
	TwAddVarRW(particleBar, "Duration", TW_TYPE_FLOAT, &part.duration, " label='Duration' min=0 max=10 step=0.01");
	TwAddVarRW(particleBar, "Speed", TW_TYPE_FLOAT, &part.speed, " label='Speed' min=1 max=10 step=0.1");
	TwAddVarRW(particleBar, "Angle", TW_TYPE_FLOAT, &part.angle, " label='Angle' min=0 max=360 step=1");
	TwAddVarRW(particleBar, "Color", TW_TYPE_COLOR3F, &part.color, " label='Color'");
}

void ParticleEditor::createParticles()
{



}

