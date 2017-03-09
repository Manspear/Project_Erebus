TUTORIAL_DONE = false
TUTORIAL_START_ANIM = false
TUTORIAL_COUNTER = 0 
TUTORIAL_OBJECT = {}

loadedStream = false

function UpdateLogic(dt)
	if TUTORIAL_START_ANIM == true then
		lowerObject(TUTORIAL_OBJECT,3,dt)
	end 

	if not loadedStream then
		LoadLogic1()
	else
		StreamDaStream(dt)
	end
end

function StreamDaStream(dt)
	StreamID.blendValue.x = StreamID.blendValue.x + 0.05 * dt
	StreamID.blendValue.y = StreamID.blendValue.y - 0.15 * dt
	Gear.SetBlendUniformValue(StreamID.blendingIndex, 1, StreamID.blendValue)
end

function InteractSpellBook()
	local scale = 0.8
	local color = {0.6, 0.9, 0.9, 0.8}
	Gear.Print("Press B to enter SpellBook", 420, 40, scale, color)

	if Inputs.KeyReleased(SETTING_KEYBIND_SPELLBOOK) and not player.charging  then
		gamestate.ChangeState(GAMESTATE_SPELLBOOK)
		player.isControlable = false
	end
end

function lowerObject(object,time,dt)
	local pos = Transform.GetPosition(object.transformID)
	pos.y = pos.y - (dt * 8)
	TUTORIAL_COUNTER = TUTORIAL_COUNTER + dt
	Transform.SetPosition(object.transformID,pos)
	if TUTORIAL_COUNTER > 0.85 then
		OBBCollider.SetActive(object.collider,false)
		TUTORIAL_START_ANIM=false
	end
end


function TutorialBarrier(TutorialObject,dt)
	
	--this is triggered upon both players
	if TUTORIAL_DONE == false then
	pos = Transform.GetPosition(TutorialObject.transformID,pos) 
	showCombineBarrierImage(dt,pos.x,pos.y,pos.z)
		if player2.position.x==0 then
			
			TUTORIAL_DONE = true
			TUTORIAL_START_ANIM = true
			TUTORIAL_OBJECT = TutorialObject
			hideCombinationImage()
		end

		local colID = TutorialObject.collider:GetID()
		local collisionIDs = TutorialObject.collider:GetCollisionIDs()

		for i = 1, #collisionIDs do 
			for curID = 1, 3 do
				if player.spells[curID]:GetCollider()[1] == collisionIDs[i] then				
					if #player.spells[curID].effects == 2 then 
						
						TUTORIAL_DONE = true
						TUTORIAL_START_ANIM = true
						TUTORIAL_OBJECT = TutorialObject

						hideCombinationImage()
					end
				end
				if player2.spells[curID]:GetCollider()[1] == collisionIDs[i] then
					if #player2.spells[curID].effects == 2 then 
						
						TUTORIAL_DONE = true
						TUTORIAL_START_ANIM = true
						TUTORIAL_OBJECT = TutorialObject
						hideCombinationImage()
					end
				end
			end
		end
	end
end

function LoadLogic1()
	StreamID = {}
	StreamID.model = Assets.LoadModel('Models/Stream.model')
	StreamID.transformID = Gear.BindBlendingInstance(StreamID.model)
	StreamID.blendingIndex = Gear.SetBlendTextures(-1, 1, Assets.LoadTexture("Textures/water_albedo.dds"))
	StreamID.blendValue = {x = 0, y = 0}
	Transform.SetPosition(StreamID.transformID, {x=0, y=0, z=0})
	Transform.SetScaleNonUniform(StreamID.transformID, 1, 1, 1)
	Transform.SetRotation(StreamID.transformID, {x=-0, y=0, z=-0})
	loadedStream = true
end

function UnloadLogic1()
	Gear.UnbindInstance(StreamID.transformID)
	Assets.UnloadModel('Models/Stream.model')
	Assets.UnloadTexture( "Textures/water_albedo.dds")
	StreamID = nil
	loadedStream = false
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }