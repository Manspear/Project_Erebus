#include "LevelEditor.h"

LevelEditor::LevelEditor()
{
	this->running = true;
}


LevelEditor::~LevelEditor()
{
	delete this->inputs;
	delete this->camera;
}

void LevelEditor::start() {
	this->engine = new Gear::GearEngine();
	Importer::Assets assets;
	Importer::FontAsset* font = assets.load<FontAsset>("Fonts/System");

	LevelTransformHandler::createInstance(engine);
	LevelModelHandler::createInstance(LevelTransformHandler::getInstance(), engine, &assets);

	std::vector<Lights::PointLight*> lights;// = new std::vector<Lights::PointLight>();

	this->transformHandler = LevelTransformHandler::getInstance();
	modelHandler = LevelModelHandler::getInstance();

	factory = LevelActorFactory::getInstance();
	//std::vector<LevelActor*>* actors = new std::vector<LevelActor*>[actorTypes::NR_ACTOR_TYPES];

	//for (size_t i = 0; i < 100; i++)
	//{
	//	actors.push_back(factory->createActor("TestCharacter"));
	//	float x = rand() % 256;
	//	float y = rand() % 100;
	//	float z = rand() % 256;
	//	Transform* derp = actors[i]->getComponent<LevelTransform>()->getTransformRef();
	//	derp->setPos(derp->getPos() + (glm::vec3(x, y, z)));
	//	
	//	//actors[i]->printAllComponents();
	//}
	//actors.push_back(factory->createActor("TestTerrain"));
	//actors.push_back(factory->createActor("TestTerrain"));
	//LevelActor* tempActor = factory->createActor("test");
	//actors[0]->printAllComponents();
	//std::cout <<  << std::endl;
	
	//factory->saveWorld("Level2", &actors);

	//factory->loadWorld("Level2", &actors);
	factory->loadWorld("Level2");

	engine->setFont(font);

	CollisionHandler collisionHandler;
	collisionHandler.setTransforms(this->transformHandler->getAllTransforms());
	

	glEnable(GL_DEPTH_TEST);
	
	GLFWwindow* w = window.getGlfwWindow();
	this->inputs = new Inputs(w);
	this->camera = new Camera(45.f, WINDOW_WIDTH / WINDOW_HEIGHT, 0.1f, 2000.f, inputs);

	PerformanceCounter counter;
	double deltaTime;
	bool lockMouse = false;
	window.changeCursorStatus(lockMouse);

	this->ui = new LevelUI(w);
	engine->addDebugger(Debugger::getInstance());

	//for (size_t i = 0; i < 10; i++)
	//{
	//	if(i%2)
	//		modelHandler->loadModel("Robot");
	//	else
	//		modelHandler->loadModel("testGuy");
	//
	//
	//}

	HeightMap* hm = assets.load<HeightMap>( "Textures/mikael_stor2_heights_128a.png" );
	glm::vec3 hitPoint;
	bool hasHit = false;
	
	//LevelAssetHandler assetHandler( &assets );
	//assetHandler.load( "Models" );

	//LevelPrefabHandler prefabHandler;
	LevelPrefabHandler::getInstance()->load( "LevelEditorStuff/Resources/ActorsXML" );

	//ps.push_back(new Gear::ParticleSystem(100, 10, 10, 1, 100));

	LevelAssetHandler::getInstance()->setAssets( &assets );
	LevelAssetHandler::getInstance()->load();

	TwBar* componentsBar = TwNewBar( "Components" );
	LevelActorFactory::getInstance()->addToBar( componentsBar );

	while (running && window.isWindowOpen())
	{
		deltaTime = counter.getDeltaTime();
		inputs->update();
		
		camera->updateLevelEditorCamera(deltaTime);

		for (size_t i = 0; i < 100; i++)
		{
			//Transform* derp = actors[i]->getComponent<LevelTransform>()->getTransformRef();
			//derp->setPos(derp->getPos() + (glm::vec3(i/100.f)* deltaTime));
		}

		//for (int i = 0; i < ps.size(); i++)
		//	ps.at(i)->update(deltaTime);

		//for (size_t i = 0; i < actors.size(); i++)
		//{
		//	std::cout << actors.at(i)->id << std::endl;
		//	//std::cout<<actors.at(i)->getComponent<LevelModel>()->
		//}

		

		engine->queueDynamicModels(modelHandler->getModels());
		engine->queueAnimModels(modelHandler->getAnimatedModels());
		engine->queueParticles(&ps);

		collisionHandler.checkCollisions();

		std::string fps = "FPS: " + std::to_string(counter.getFPS());
		engine->print(fps, 0.0f, 0.0f);

		/*for (int n = 0; n < actors.size(); n++)
		{
			actors[n]->update();
		}*/
		LevelActorHandler::getInstance()->updateActors();
		pick();
		engine->draw(camera);
		
		this->ui->Draw();

		if (inputs->keyPressed(GLFW_KEY_ESCAPE))
			running = false;

		if (inputs->keyPressedThisFrame(GLFW_KEY_J))
			engine->setDrawMode(1);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_K))
			engine->setDrawMode(2);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_L))
			engine->setDrawMode(3);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_P))
			engine->setDrawMode(4);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_N))
			engine->setDrawMode(5);
		else if (inputs->keyPressedThisFrame(GLFW_KEY_O))
			engine->setDrawMode(6);
		else if (inputs->keyPressed(GLFW_KEY_R))
		{
			if (lockMouse)
			{
				window.changeCursorStatus(false);
				lockMouse = false;
			}
			else
			{
				window.changeCursorStatus(true);
				lockMouse = true;
			}
		}
		
		if( inputs->buttonReleasedThisFrame(GLFW_MOUSE_BUTTON_1) )
		{
			glm::mat4 proj = camera->getProjectionMatrix();
			Ray ray( w, &proj );
			ray.updateRay( camera->getViewMatrix(), camera->getPosition() );

			hasHit = hm->rayIntersection( ray.rayPosition, ray.rayDirection, &hitPoint );
			if( hasHit )
			{
				LevelActor* newActor = factory->createActor( LevelPrefabHandler::getInstance()->getSelectedPrefab() );
				if( newActor )
				{
					//actors.push_back( newActor );
					LevelActorHandler::getInstance()->addActor( newActor );

					newActor->getComponent<LevelTransform>()->getTransformRef()->setPos(hitPoint);
					//newActor->addComponent(new LevelPointLightComponent());
					//newActor->getComponent<LevelPointLightComponent>()->setPos(glm::vec3(hitPoint.x, hitPoint.y, hitPoint.z));
					//newActor->getComponent<LevelPointLightComponent>()->setRadius(24);

					////Lights::PointLight tempLight;// = new Lights::PointLight;
					//newActor->getComponent<LevelPointLightComponent>()->light.pos = glm::vec4(hitPoint.x, hitPoint.y+20, hitPoint.z,1);
					//newActor->getComponent<LevelPointLightComponent>()->light.radius = glm::vec4(24,0,0,0);
					//newActor->getComponent<LevelPointLightComponent>()->light.color  = glm::vec4(0.4, 0.4, 0.4, 1);
					//lights.push_back(&newActor->getComponent<LevelPointLightComponent>()->light);
					newActor->SetAgent(ui->getMainBar());
					//ui->SetAgent(newActor);
				}
			}
			
		}
		engine->queueLights(&lights);
		if( hasHit )
		{
			Debugger::getInstance()->drawSphere( hitPoint, 0.5f );
		}

		/*for( int x = 0; x<hm->mapWidth-1; x++ )
		{
			for( int y = 0; y<hm->mapHeight-1; y++ )
			{
				glm::vec3 v1( x, hm->getPos(x,y), y );
				glm::vec3 v2( (x+1), hm->getPos(x+1,y), y );
				glm::vec3 v3( x, hm->getPos(x,y+1), (y+1) );
				glm::vec3 v4( x+1, hm->getPos(x+1,y+1), y+1 );

				Debugger::getInstance()->drawLine(v1,v2);
				Debugger::getInstance()->drawLine(v1,v3);
				Debugger::getInstance()->drawLine(v2,v3);
				//Debugger::getInstance()->drawLine(v3,v4);
			}
		}*/

		window.update();
	}
	
	
	delete ui;
	for (int i = 0; i < ps.size(); i++)
		delete ps.at(i);
	delete this->transformHandler;
	delete this->modelHandler;
	LevelActorFactory::deleteInstance();
	/*for (size_t i = 0; i < actors.size(); i++)
	{
		delete actors[i];
	}*/
	glfwTerminate();
	
}

void LevelEditor::pick() {
	
	int pickedActorID = engine->pickActorIDFromColor(modelHandler->getModels(), this->modelHandler->getModelInstanceAgentIDs(), this->camera,
		this->inputs->getMousePos());
	std::cout << pickedActorID << std::endl;
	/*
	Agent Ids
	Static models 
	Anim models

	Model1
	0-5
	52,64,12,42,62
		Arr modelIndex[0-2]
		Arr modelIndice[0-20]
		Arr modelAgentID[0-20]
		agentData[numModelTypes][numWorldMatrixIndices] = agentId
		std::vector<std::vector<int>> derp
		
	*/
}