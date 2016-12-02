#pragma once
#include "BaseIncludes.h"
#include "Camera.h"
//#include "Model.h"
#include "Particles.h"
#include "RenderQueue.h"
#include "Particles.h"
#include "Light.h"
#include "Inputs.h"
#include "staticNonModels.h"

namespace Gear
{




	class GearEngine {
	public:
		GEAR_API GearEngine();
		GEAR_API ~GearEngine();
		GEAR_API void draw(Camera* camera);
		

		GEAR_API bool isRunning();
		//Temporay debug function
		GEAR_API void setDrawMode(int drawMode);

		// TEMPORARY: Vi ska inte ha det såhär
		// För att rita ut modellen från importern
		RenderQueue renderQueue;
		std::vector<RenderQueueElement*> renderElements;
		
	/*	std::vector<RenderQueueElement*> renderParticles;*/
	/*	std::vector<ShaderProgram*> allShaders;*/
		GEAR_API void addStaticNonModel(staticNonModels* model);
	private:
		std::vector<staticNonModels*> statModels;
		//DebugQuad
		GLuint quadVAO = 0;
		GLuint quadVBO;
		ShaderProgram *quadShader;
		ShaderProgram *lightPassShader;
		//Window* window;
		ShaderProgram gBuffer;
		std::vector<Lights::PointLight> pointLights;
		std::vector<Lights::DirLight> dirLights;
		//temp debug variable
		int drawMode = 1;

		void drawQuad();
	};
}