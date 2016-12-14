local scripts = {}
local scriptFiles = 
{
	"Scripts/player.lua",
	"Scripts/enemies.lua",
	--"Scripts/bullets.lua",
	"Scripts/camera.lua"
}

local timestamps = {}

function Load()
	-- TEMP: Make a level script?
	heightmap = Assets.LoadHeightmap("Textures/molerat_texturemap4.png")
	heightmap.transformID = Transform.Bind()

	Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

	-- run scripts
	for i=1, #scriptFiles do
		scripts[i] = dofile(scriptFiles[i])
		timestamps[i] = GetLastWriteTime(scriptFiles[i])
	end

	-- call their load function
	for key,value in pairs(scripts) do
		if value.Load then
			value.Load()
		end
	end
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

	-- check hotloading
	for i=1, #scriptFiles do
		local curTime = GetLastWriteTime(scriptFiles[i])
		if curTime ~= timestamps[i] then
			scripts[i] = dofile(scriptFiles[i])
			timestamps[i] = curTime
		end
	end
end