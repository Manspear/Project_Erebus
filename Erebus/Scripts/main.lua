local scripts = {}
local scriptFiles = 
{
	"Scripts/player.lua",
	"Scripts/enemies.lua",
	--"Scripts/bullets.lua",
	"Scripts/camera.lua",
	"Scripts/projectile.lua",
	"Scripts/arc.lua"
}
local drawHitboxes = false

function Load()
	-- TEMP: Make a level script?
	heightmap = Assets.LoadHeightmap("Textures/hmap_heights.png")
	heightmap.transformID = Transform.Bind()

	Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

	-- run scripts
	for i=1, #scriptFiles do
		scripts[i] = dofile(scriptFiles[i])
	end

	-- call their load function
	for key,value in pairs(scripts) do
		if value.Load then value.Load() end
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

	if Controls[Keys.FourPressed] then drawHitboxes = not drawHitboxes end
	if drawHitboxes then CollisionHandler.DrawHitboxes() end
end