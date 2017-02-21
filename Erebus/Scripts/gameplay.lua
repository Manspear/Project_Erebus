local scripts = {}
local scriptFiles =
{
	"Scripts/console.lua",
	"Scripts/enemies.lua",
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
	"Scripts/slowEffect.lua",
	"Scripts/iceGrenade.lua",
	"Scripts/grenadeType.lua",
	"Scripts/blackHole.lua",
	"Scripts/hellPillar.lua",
	"Scripts/rayType.lua",
	"Scripts/staticAoEType.lua",
	"Scripts/player.lua",
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
	"Scripts/reusable.lua"
}

gameplayStarted = false
loadedGameplay = false

function LoadGameplay()
	-- run scripts
	for i=1, #scriptFiles do
		scripts[i] = dofile(scriptFiles[i])
	end
end

function UnloadGameplay()
	for key,value in pairs(scripts) do
		if value.Unload then
			value.Unload()
		end
	end
end

function UpdateGameplay(dt)
	if Inputs.KeyReleased(SETTING_KEYBIND_MENU) then
		print(SETTING_KEYBIND_MENU)
		gamestate.ChangeState(GAMESTATE_PAUSEMENU)
	end

	if Inputs.KeyReleased(SETTING_KEYBIND_SPELLBOOK) and not player.charging then
		gamestate.ChangeState(GAMESTATE_SPELLBOOK)
	end

	if not player.isAlive and not player2.isAlive then
		gamestate.ChangeState(GAMESTATE_DEATH)
	end

	for key,value in pairs(scripts) do
		value.Update(dt)
	end

	if SETTING_DEBUG then 
		CollisionHandler.DrawHitboxes()
	end
	
	
	local newEndEventValue, endEventId = Network.GetEndEventPacket()
	if newEndEventValue == true then
		if endEventId == 0 then -- other player died
			gamestate.ChangeState(GAMESTATE_DEATH)
		elseif endEventId == 1 then -- other player quit to main menu
			gamestate.ChangeState(GAMESTATE_MAIN_MENU) 
			Erebus.ShutdownNetwork()
		elseif endEventId == 2 then -- player win!
			boss.health = 0
			BOSS_DEAD = true
			gamestate.ChangeState(GAMESTATE_DEATH)
		end
	end
end

function EnterGameplay()
	if loadedGameplay == false then 
		-- call their load function
		for key,value in pairs(scripts) do
			if value.Load then value.Load() end
		end

		dofile( "Scripts/level01Optima.lua" )
		levels[1].load()
		levels[2].load()
		levels[3].load()
		--levels[4].load()
		--levels[5].load()
		--levels[6].load()
		--levels[7].load()
		--levels[8].load()
		loadedGameplay = true
	end

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