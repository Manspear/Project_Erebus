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
	"Scripts/HUD.lua"
}

local gameStarted = false
local loadedGameplay = false

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
		if Inputs.KeyReleased("B") then
		gamestate.ChangeState(GAMESTATE_SPELLBOOK)
	end

	if player.health <= 0 then
		gamestate.ChangeState(GAMESTATE_DEATH)
	end

	for key,value in pairs(scripts) do
		value.Update(dt)
	end

	if Inputs.KeyReleased("E") then
		local collisionIDs = RayCollider.GetCollisionIDs(player.rayCollider)
		local dir = Camera.GetDirection()
		local pos = Transform.GetPosition(player.transformID)
		RayCollider.SetActive(player.rayCollider, true)
		RayCollider.SetRayDirection(player.rayCollider, dir.x, dir.y, dir.z)
		for curID = 1, #collisionIDs do
		print(collisionIDs[curID])
			if collisionIDs[curID] == 0 then
			
				gamestate.ChangeState(GAMESTATE_SPELLBOOK)
				print("hit")
				break
			end
		end
		--RayCollider.SetActive(player.rayCollider, false)
	end

	CollisionHandler.DrawHitboxes()
end

function EnterGameplay()
	if loadedGameplay == false then 
		-- call their load function
		for key,value in pairs(scripts) do
			if value.Load then value.Load() end
		end

		dofile( "Scripts/level01.lua" )
		loadedGameplay = true
	end

	Gear.QueueModels(true)
	CollisionHandler.Enable()
	Gear.CursorVisible(false)
	gameStarted = true
end

function ExitGameplay()
end

return { Load = LoadGameplay, Unload = UnloadGameplay, Update = UpdateGameplay, Enter = EnterGameplay, Exit = ExitGameplay }