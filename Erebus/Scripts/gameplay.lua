local scripts = {}
local scriptFiles =
{
	"Scripts/reusable.lua",
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
	"Scripts/knockbackEffect.lua"
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
	if Inputs.KeyReleased(Keys.Escape) then
		gamestate.ChangeState(GAMESTATE_PAUSEMENU)
	end

	if Inputs.KeyReleased("B") and not player.charging then
		gamestate.ChangeState(GAMESTATE_SPELLBOOK)
	end

	if player.health <= 0 then
		gamestate.ChangeState(GAMESTATE_DEATH)
	end

	for key,value in pairs(scripts) do
		value.Update(dt)
	end

	if SETTING_DEBUG then 
		CollisionHandler.DrawHitboxes()
	end
end

function EnterGameplay()
	if loadedGameplay == false then 
		-- call their load function
		for key,value in pairs(scripts) do
			if value.Load then value.Load() end
		end

		dofile( "Scripts/level01.lua" )
		levels[1].load()
		levels[2].load()
		levels[3].load()
		levels[4].load()
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