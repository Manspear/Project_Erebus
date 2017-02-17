levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1.png")
Heightmap1.asset:SetPosition({x=0, y=3, z=128})
Heightmap1.asset:SetHeightMultiplier(0.131373)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
Heightmap2.asset:SetPosition({x=128, y=31.5, z=0})
Heightmap2.asset:SetHeightMultiplier(0.113725)
Heightmap2.surrounding = { 1, 3 }
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
Heightmap3.asset:SetPosition({x=384, y=30.0507, z=128})
Heightmap3.asset:SetHeightMultiplier(0.131373)
Heightmap3.surrounding = { 2 }
heightmaps[3] = Heightmap3
Heightmap3 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = {}
colliders = {}
triggers = {}
FirstTile2ID = {}
--FirstTile2ID.transformID = Transform.Bind()
FirstTile2ID.model = Assets.LoadModel('Models/tile1.model')
FirstTile2ID.transformID = Gear.BindStaticInstance(FirstTile2ID.model)
Transform.SetPosition(FirstTile2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(FirstTile2ID.transformID, 1, 1, 1)
Transform.SetRotation(FirstTile2ID.transformID, {x=0, y=0, z=0})
--FirstTile2ID.model = Assets.LoadModel('Models/tile1.model')
--Gear.AddStaticInstance(FirstTile2ID.model, FirstTile2ID.transformID)
table.insert(props,FirstTile2ID)
FirstTile2ID = nil

PlayerStart5ID = {}
Transform.SetPosition(player.transformID, {x=37.7813, y=11.9941, z=143.375})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,PlayerStart5ID)
PlayerStart5ID = nil

table.insert(level01, props)
table.insert(level01, colliders)
table.insert(level01, triggers)

AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
	AI.AddHeightMap(heightmaps[i].asset,i)
end

local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)

end
level01.unload = function()
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.load = function()
props = {}
colliders = {}
triggers = {}
SecondTile3ID = {}
--SecondTile3ID.transformID = Transform.Bind()
SecondTile3ID.model = Assets.LoadModel('Models/tile2.model')
SecondTile3ID.transformID = Gear.BindStaticInstance(SecondTile3ID.model)
Transform.SetPosition(SecondTile3ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(SecondTile3ID.transformID, 1, 1, 1)
Transform.SetRotation(SecondTile3ID.transformID, {x=0, y=0, z=0})
--SecondTile3ID.model = Assets.LoadModel('Models/tile2.model')
--Gear.AddStaticInstance(SecondTile3ID.model, SecondTile3ID.transformID)
table.insert(props,SecondTile3ID)
SecondTile3ID = nil

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.load = function()
level03.props = {}
level03.colliders = {}
level03.triggers = {}
ThirdTile4ID = {}
--ThirdTile4ID.transformID = Transform.Bind()
ThirdTile4ID.model = Assets.LoadModel('Models/tile1.model')
ThirdTile4ID.transformID = Gear.BindStaticInstance(ThirdTile4ID.model)
Transform.SetPosition(ThirdTile4ID.transformID, {x=384, y=27.0507, z=0})
Transform.SetScaleNonUniform(ThirdTile4ID.transformID, 1, 1, 1)
Transform.SetRotation(ThirdTile4ID.transformID, {x=0, y=0, z=0})
--ThirdTile4ID.model = Assets.LoadModel('Models/tile1.model')
--Gear.AddStaticInstance(ThirdTile4ID.model, ThirdTile4ID.transformID)
table.insert(level03.props,ThirdTile4ID)
ThirdTile4ID = nil

--table.insert(level03, props)
--table.insert(level03, colliders)
--table.insert(level03, triggers)
end
level03.unload = function()
	for _,v in pairs(level03.props) do
		if v.transformID then
			Gear.UnbindInstance(v.transformID)
		end
	end
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------
