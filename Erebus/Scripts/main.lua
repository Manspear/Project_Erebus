local scripts = {}
local scriptFiles = 
{
	"Scripts/console.lua",
	"Scripts/player.lua",
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
	"Scripts/reusable.lua",
	"Scripts/slowEffect.lua",
	"Scripts/iceGrenade.lua",
	"Scripts/grenadeType.lua",
	"Scripts/blackHole.lua",
	"Scripts/hellPillar.lua",
	"Scripts/rayType.lua",
	"Scripts/staticAoEType.lua"
}
local drawHitboxes = false

function Load()
	-- run scripts
	for i=1, #scriptFiles do
		scripts[i] = dofile(scriptFiles[i])
	end

	-- call their load function
	for key,value in pairs(scripts) do
		if value.Load then value.Load() end
	end
	
	dofile( "Scripts/level.lua" )
end

function Unload()
	for key,value in pairs(scripts) do
		if value.Unload then
			value.Unload()
		end
	end
end

function Update(dt)
	for key,value in pairs(scripts) do
		value.Update(dt)
	end
end