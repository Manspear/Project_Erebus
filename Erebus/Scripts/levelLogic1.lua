TUTORIAL_DONE = false
TUTORIAL_START_ANIM = false
TUTORIAL_COUNTER = 0 
TUTORIAL_OBJECT = {}
TUTORIAL_OBJECT.position = 0

loadedStream = false

function UpdateLogic(dt)
	if loadedLake then UnloadLogic2() end
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
	Gear.SetUniformValue(StreamID.blendingIndex, StreamID.blendValue.x , StreamID.blendValue.y)
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
	--local pos = Transform.GetPosition(object.transformID)
	TUTORIAL_OBJECT.position.y = TUTORIAL_OBJECT.position.y - (dt * 8)
	TUTORIAL_COUNTER = TUTORIAL_COUNTER + dt
	Transform.SetPosition(object.transformID, TUTORIAL_OBJECT.position)
	if TUTORIAL_COUNTER > 0.85 then
		OBBCollider.SetActive(object.collider,false)
		TUTORIAL_START_ANIM=false
	end
end


function TutorialBarrier(TutorialObject,dt)
	
	--this is triggered upon both players
	if TUTORIAL_DONE == false then
		local pos = Transform.GetPosition(TutorialObject.transformID,pos) 
		showCombineBarrierImage(dt,pos.x,pos.y,pos.z)
		if player2.position.x==0 then
			TUTORIAL_DONE = true
			TUTORIAL_START_ANIM = true
			TUTORIAL_OBJECT = TutorialObject
			TUTORIAL_OBJECT.position = pos
			hideCombinationImage()
		end
	
		if player.isCombined == true or player2.isCombined == true then
			TUTORIAL_DONE = true
			TUTORIAL_START_ANIM = true
			TUTORIAL_OBJECT = TutorialObject
			TUTORIAL_OBJECT.position = pos
			hideCombinationImage()
		end			
	end
end


function LoadLogic1()
	StreamID = {}
	StreamID.model = Assets.LoadModel('Models/Stream.model')
	StreamID.transformID, StreamID.blendingIndex  = Gear.BindForwardInstance(StreamID.model, 1)
	StreamID.blendValue = {x = 0, y = 0}
	Transform.ActiveControl(StreamID.transformID, true)
	loadedStream = true
end

function UnloadLogic1()
	if StreamID then
		Gear.UnbindInstance(StreamID.transformID)
		Assets.UnloadModel('Models/Stream.model')
		Gear.UnbindForward()
	end
	StreamID = nil
	loadedStream = false
end

return { Load = LoadLogic1, Unload = UnloadLogic1, Update = UpdateLogic }