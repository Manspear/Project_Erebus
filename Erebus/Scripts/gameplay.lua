local levelScripts = {}
local scripts = {}
LEVEL_ROUND = 1
local scriptFiles =
{
	"Scripts/camera.lua",
	"Scripts/particle.lua",
	"Scripts/ProjectileType.lua",
	"Scripts/fireEffect.lua",
	"Scripts/timeSlowEffect.lua",
	"Scripts/chronoBall.lua",
	"Scripts/timeOrbWave.lua",
	"Scripts/orbWaveType.lua",
	"Scripts/sunRay.lua",
	"Scripts/Animation_Controllers/playerController.lua",
	"Scripts/Animation_Controllers/meleeGoblinController.lua",
	"Scripts/Animation_Controllers/bossController.lua",
	"Scripts/slowEffect.lua",
	"Scripts/iceGrenade.lua",
	"Scripts/grenadeType.lua",
	"Scripts/blackHole.lua",
	"Scripts/hellPillar.lua",
	"Scripts/rayType.lua",
	"Scripts/staticAoEType.lua",
	"Scripts/player.lua",
	"Scripts/player2.lua",
	"Scripts/enemies.lua",
	"Scripts/spellList.lua",
	"Scripts/HUD.lua",
	"Scripts/spellUtility.lua",
	"Scripts/boss.lua",
	"Scripts/fireball.lua",
	"Scripts/lifeStealEffect.lua",
	"Scripts/siphon.lua",
	"Scripts/polymorphEffect.lua",
	"Scripts/polymorph.lua",
	"Scripts/tumbleThorns.lua",
	"Scripts/windknockback.lua",
	"Scripts/knockbackEffect.lua",
	"Scripts/revive.lua",
	"Scripts/TimeLaser.lua",
	"Scripts/healthOrb.lua",
	"Scripts/reusable.lua",
	"Scripts/sluice.lua",
	"Scripts/rewinder.lua"
}

loadedLevels = {}

gameplayStarted = false
loadedGameplay = false

function LoadGameplay()
	print("LOADING GAMEPLAY")
	-- run scripts
	for i=1, #scriptFiles do
		scripts[i] = dofile(scriptFiles[i])
	end
	for i = 1, 8 do
		levelScripts[i] = dofile("Scripts/levelLogic"..i..".lua")
	end
end

function CreateIM()
	for i = 1, 8 do
		levels[i].load()
		loadedLevels[i] = true
	end

	AI.CreateIM()--,#heightmaps,widthTest,heightTest)

	for i = 1, 8 do
		levels[i].unload()
		loadedLevels[i] = false
	end
	loadedLevels = {}
end

function UnloadGameplay()
	print("unloading gameplay")
	if loadedGameplay then
		-- unload all the loaded levels
		for levelIndex,level in pairs(levels) do
			if loadedLevels[levelIndex] then
				level.unload()
			end
		end

		-- unload all the scripts
		for key,value in pairs(scripts) do
			if value.Unload then
				value.Unload()
			end
		end

		UnInitPolymorphs()
		UnInitTimeSlows()
		UnInitFireEffectParticles()

		loadedGameplay = false
		gameplayStarted = false
		loadedLevels = {}

		Transform.ResetTransforms()
		Gear.ResetAnimations()
		CollisionHandler.Reset()

		collectgarbage()
	end
end

function UpdateGameplay(dt)
	if Inputs.KeyReleased(SETTING_KEYBIND_MENU) then
		print(SETTING_KEYBIND_MENU)
		gamestate.ChangeState(GAMESTATE_PAUSEMENU)
	end

	if not player.isAlive and not player2.isAlive then
		gamestate.ChangeState(GAMESTATE_DEATH)
	end

	for key,value in pairs(scripts) do
		value.Update(dt)
	end

	if Inputs.KeyReleased("Q") then PLAYER_MOVESPEED = PLAYER_MOVESPEED == 10 and 50 or 10 end
	
	levelScripts[player.levelIndex].Update(dt)

	if SETTING_DEBUG then 
		CollisionHandler.DrawHitboxes()
	end
	
	
	local newEndEventValue, endEventId = Network.GetEndEventPacket()
	if newEndEventValue == true then
		if endEventId == 0 then -- other player died
			gamestate.ChangeState(GAMESTATE_DEATH)
		elseif endEventId == 1 then -- other player quit to main menu
			--gamestate.ChangeState(GAMESTATE_MAIN_MENU) 
			gamestate.ChangeState(GAMESTATE_DISCONNECTED)
			Erebus.ShutdownNetwork()
			UnloadGameplay()
		elseif endEventId == 2 then -- player win!
			boss.health = 0
			BOSS_DEAD = true
			gamestate.ChangeState(GAMESTATE_DEATH)
		end
	end
end

function EnterGameplay()
	print("entering gameplay")
	if loadedGameplay == false then 
		InitPolymorphs()
		InitTimeSlows()
		InitFireEffectParticles()

		for key,value in pairs(scripts) do
			if value.Load then value.Load() end
		end

		dofile( "Scripts/MAx_Oscar_test.lua" )

		CreateIM()

		--for i = 1, 7 do
		--	levels[1].unload()
		--end

		levels[1].load()
		loadedLevels[1] = true
		for _,v in pairs(levels[1].surrounding) do
			levels[v].load()
			loadedLevels[v] = true
		end
		--levels[1].load()
		
		loadedGameplay = true

		------------------
			local tempTable = TILE_ATMOSPHERE_TABLE[player.levelIndex]-- = {AMBIENCECOLOR = {r = 0,g=0,b=0}, FOGCOLOR ={r=0,g=0,b=0},SKYBOX = 0}


			Sky.SetAmbient(tempTable.AMBIENCECOLOR.r,tempTable.AMBIENCECOLOR.g,tempTable.AMBIENCECOLOR.b)
			Sky.FogColor(tempTable.FOGCOLOR.r,tempTable.FOGCOLOR.g,tempTable.FOGCOLOR.b)
			Sky.SetBlend(tempTable.SKYBOX)

			print("Dash cool")
			----------------------
	end
	LEVEL_ROUND = 1

	Gear.QueueModels(true)
	CollisionHandler.Enable()
	Gear.CursorVisible(false)
	Erebus.EnableControls(true)
	player.controlsEnabled = true
	gameplayStarted = true
end

function ExitGameplay()
	player.controlsEnabled = false
end

return { Load = LoadGameplay, Unload = UnloadGameplay, Update = UpdateGameplay, Enter = EnterGameplay, Exit = ExitGameplay }