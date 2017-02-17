print("MERP IT")
levels = {}
heightmaps = {}

---------------------------------Heightmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1.png")
Heightmap1.asset:SetPosition({x=0, y=3, z=0})
Heightmap1.asset:SetHeightMultiplier(0.131373)
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
Heightmap2.asset:SetPosition({x=128, y=31.5, z=-128})
Heightmap2.asset:SetHeightMultiplier(0.113725)
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
Heightmap3.asset:SetPosition({x=384, y=40, z=0})
Heightmap3.asset:SetHeightMultiplier(0.131373)
heightmaps[3] = Heightmap3
Heightmap3 = nil

---------------------------------Heightmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.props.FirstTile2ID = {}
level01.props.FirstTile2ID.model = Assets.LoadModel('Models/tile1.model')
level01.props.FirstTile2ID.transformID = Gear.BindStaticInstance(level01.props.FirstTile2ID.model)
print("01 got transform " .. level01.props.FirstTile2ID.transformID)
Transform.SetPosition(level01.props.FirstTile2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.FirstTile2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.FirstTile2ID.transformID, {x=0, y=0, z=0})
level01.props.PlayerSettings5ID = {}
Transform.SetPosition(player.transformID, {x=41.3438, y=11.0827, z=14.5859})
player:ChangeHeightmap(1)
end
level01.unload = function()
print("01 unbinding " .. level01.props.FirstTile2ID.transformID)
Gear.UnbindInstance(level01.props.FirstTile2ID.transformID)
level01.props.FirstTile2ID = nil
level01.props.PlayerSettings5ID = nil
level01.props = nil
level01.colliders = nil
level01.triggers = nil
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.surrounding = { 1, 3 }
level02.load = function()
level02.props = {}
level02.colliders = {}
level02.triggers = {}
level02.props.SecondTile3ID = {}
level02.props.SecondTile3ID.model = Assets.LoadModel('Models/tile2.model')
level02.props.SecondTile3ID.transformID = Gear.BindStaticInstance(level02.props.SecondTile3ID.model)
Transform.SetPosition(level02.props.SecondTile3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.SecondTile3ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.SecondTile3ID.transformID, {x=0, y=0, z=0})
end
level02.unload = function()
print("INSIDE level02.unload")
Gear.UnbindInstance(level02.props.SecondTile3ID.transformID)
level02.props.SecondTile3ID = nil
level02.props = nil
level02.colliders = nil
level02.triggers = nil
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.surrounding = { 2 }
level03.load = function()
level03.props = {}
level03.colliders = {}
level03.triggers = {}
level03.props.ThirdTile4ID = {}
level03.props.ThirdTile4ID.model = Assets.LoadModel('Models/tile1.model')
level03.props.ThirdTile4ID.transformID = Gear.BindStaticInstance(level03.props.ThirdTile4ID.model)
print("03 got transform " .. level03.props.ThirdTile4ID.transformID)
Transform.SetPosition(level03.props.ThirdTile4ID.transformID, {x=384, y=37, z=0})
Transform.SetScaleNonUniform(level03.props.ThirdTile4ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.ThirdTile4ID.transformID, {x=0, y=0, z=0})
end
level03.unload = function()
print("03 unbind " .. level03.props.ThirdTile4ID.transformID)
Gear.UnbindInstance(level03.props.ThirdTile4ID.transformID)
level03.props.ThirdTile4ID = nil
level03.props = nil
level03.colliders = nil
level03.triggers = nil
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
AI.AddHeightMap(heightmaps[i].asset,i)
end
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)
