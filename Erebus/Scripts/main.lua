local scripts = {}
local scriptFiles = 
{
	"Scripts/player.lua",
	"Scripts/enemies.lua",
	"Scripts/camera.lua",
	"Scripts/particle.lua",
	"Scripts/projectile.lua",
	"Scripts/arc.lua"
}
local drawHitboxes = false

function Load()
	-- TEMP: Make a level script?
	--heightmap = Assets.LoadHeightmap("Textures/nextTile_heights.png")
	heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128.png")
	heightmap.transformID = Transform.Bind()

	--Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

	widthTest = heightmap:GetMapWidth()
	heightTest = heightmap:GetMapHeight()
	AI.SetNav(widthTest,heightTest)

	--local model = Assets.LoadModel("Models/secondTile.model")
	local model = Assets.LoadModel("Models/firstTile.model")
	Gear.AddStaticInstance(model, heightmap.transformID)
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

	--if Controls[Keys.FourPressed] then drawHitboxes = not drawHitboxes end
	--if drawHitboxes then CollisionHandler.DrawHitboxes() end
end