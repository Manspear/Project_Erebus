levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
Heightmap1.asset:SetPosition({x=0, y=3, z=128})
Heightmap1.asset:SetHeightMultiplier(0.131373)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
Heightmap2.asset:SetPosition({x=128, y=30, z=0})
Heightmap2.asset:SetHeightMultiplier(0.117647)
Heightmap2.surrounding = { 1 }
heightmaps[2] = Heightmap2
Heightmap2 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = {}
colliders = {}
triggers = {}
local TileAssets2ID = {}
TileAssets2ID.transformID = Transform.Bind()
Transform.SetPosition(TileAssets2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(TileAssets2ID.transformID, 1, 1, 1)
Transform.SetRotation(TileAssets2ID.transformID, {x=0, y=0, z=0})
TileAssets2ID.model = Assets.LoadModel('Models/tile_assets.model')
Gear.AddStaticInstance(TileAssets2ID.model, TileAssets2ID.transformID)
table.insert(props,TileAssets2ID)
TileAssets2ID = nil

local TilePlaceholder3ID = {}
TilePlaceholder3ID.transformID = Transform.Bind()
Transform.SetPosition(TilePlaceholder3ID.transformID, {x=0, y=500, z=0})
Transform.SetScaleNonUniform(TilePlaceholder3ID.transformID, 1, 1, 1)
Transform.SetRotation(TilePlaceholder3ID.transformID, {x=0, y=0, z=0})
TilePlaceholder3ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
Gear.AddStaticInstance(TilePlaceholder3ID.model, TilePlaceholder3ID.transformID)
table.insert(props,TilePlaceholder3ID)
TilePlaceholder3ID = nil

local tile14ID = {}
tile14ID.transformID = Transform.Bind()
Transform.SetPosition(tile14ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile14ID.transformID, 1, 1, 1)
Transform.SetRotation(tile14ID.transformID, {x=0, y=0, z=0})
tile14ID.model = Assets.LoadModel('Models/tile1.model')
Gear.AddStaticInstance(tile14ID.model, tile14ID.transformID)
table.insert(props,tile14ID)
tile14ID = nil

local TileSettings5ID = {}
Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,TileSettings5ID)
TileSettings5ID = nil

local OakTree7ID = {}
OakTree7ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree7ID.transformID, {x=25.117, y=7.51172, z=140.226})
Transform.SetScaleNonUniform(OakTree7ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree7ID.transformID, {x=0, y=0.131111, z=0})
OakTree7ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree7ID.model, OakTree7ID.transformID)
table.insert(props,OakTree7ID)
OakTree7ID = nil

local OakTree18ID = {}
OakTree18ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree18ID.transformID, {x=40.0571, y=9.20313, z=156.531})
Transform.SetScaleNonUniform(OakTree18ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree18ID.transformID, {x=0, y=-1.05977, z=0})
OakTree18ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree18ID.model, OakTree18ID.transformID)
table.insert(props,OakTree18ID)
OakTree18ID = nil

local Tile1Colider9ID = {}
Tile1Colider9ID.transformID = Transform.Bind()
Transform.SetPosition(Tile1Colider9ID.transformID, {x=64, y=0, z=180})
Transform.SetScaleNonUniform(Tile1Colider9ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile1Colider9ID.transformID, {x=0, y=0, z=0})
Tile1Colider9ID.collider = AABBCollider.Create(Tile1Colider9ID.transformID)
Tile1Colider9ID.collider:SetOffset(0,0,0)
Tile1Colider9ID.collider:SetMinPos(-64,-64,-64)
Tile1Colider9ID.collider:SetMaxPos(64,64,64)
Tile1Colider9ID1 = {}
Tile1Colider9ID1.collider = AABBCollider.Create(-1)
Tile1Colider9ID1.collider:SetOffset(-19.4748,23.8791,-27.9189)
Tile1Colider9ID1.collider:SetMinPos(-25,-25,-25)
Tile1Colider9ID1.collider:SetMaxPos(15,15,15)
Tile1Colider9ID.collider:AddChild(Tile1Colider9ID1.collider)
table.insert(colliders,Tile1Colider9ID1)
Tile1Colider9ID2 = {}
Tile1Colider9ID2.collider = OBBCollider.Create(-1)
Tile1Colider9ID2.collider:SetOffset(-19.4082,-9.36739,-10.3549)
Tile1Colider9ID2.collider:SetZAxis(0.130736,0,0.991417)
Tile1Colider9ID2.collider:SetHalfLengths(3,7,3)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID2.collider)
table.insert(colliders,Tile1Colider9ID2)
Tile1Colider9ID3 = {}
Tile1Colider9ID3.collider = OBBCollider.Create(-1)
Tile1Colider9ID3.collider:SetOffset(-4.46806,-7.67599,5.94949)
Tile1Colider9ID3.collider:SetZAxis(-0.872241,0,0.489077)
Tile1Colider9ID3.collider:SetHalfLengths(3,7,3)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID3.collider)
table.insert(colliders,Tile1Colider9ID3)
Tile1Colider9ID4 = {}
Tile1Colider9ID4.collider = OBBCollider.Create(-1)
Tile1Colider9ID4.collider:SetOffset(-5.30645,-12.7828,-25.5964)
Tile1Colider9ID4.collider:SetZAxis(0.0349481,0.0578398,0.997714)
Tile1Colider9ID4.collider:SetHalfLengths(2.66922,2.9525,0.443932)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID4.collider)
table.insert(colliders,Tile1Colider9ID4)
Tile1Colider9ID5 = {}
Tile1Colider9ID5.collider = OBBCollider.Create(-1)
Tile1Colider9ID5.collider:SetOffset(0.269505,-11.864,-23.012)
Tile1Colider9ID5.collider:SetZAxis(-0.582335,0.0567007,0.810969)
Tile1Colider9ID5.collider:SetHalfLengths(4.15336,3.60338,0.327835)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID5.collider)
table.insert(colliders,Tile1Colider9ID5)
Tile1Colider9ID6 = {}
Tile1Colider9ID6.collider = OBBCollider.Create(-1)
Tile1Colider9ID6.collider:SetOffset(7.74073,-9.64345,-15.0529)
Tile1Colider9ID6.collider:SetZAxis(-0.821942,0.0539659,0.567008)
Tile1Colider9ID6.collider:SetHalfLengths(6.73815,5.67209,0.5)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID6.collider)
table.insert(colliders,Tile1Colider9ID6)
Tile1Colider9ID7 = {}
Tile1Colider9ID7.collider = OBBCollider.Create(-1)
Tile1Colider9ID7.collider:SetOffset(12.0861,-8.70999,-6.58107)
Tile1Colider9ID7.collider:SetZAxis(-0.995028,0.0617313,0.0781564)
Tile1Colider9ID7.collider:SetHalfLengths(2.89062,6.34563,0.64592)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID7.collider)
table.insert(colliders,Tile1Colider9ID7)
Tile1Colider9ID8 = {}
Tile1Colider9ID8.collider = OBBCollider.Create(-1)
Tile1Colider9ID8.collider:SetOffset(8.25052,-10.5374,0.885361)
Tile1Colider9ID8.collider:SetZAxis(-0.731274,0.0593824,-0.679494)
Tile1Colider9ID8.collider:SetHalfLengths(6.10459,4.64871,0.5)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID8.collider)
table.insert(colliders,Tile1Colider9ID8)
Tile1Colider9ID9 = {}
Tile1Colider9ID9.collider = OBBCollider.Create(-1)
Tile1Colider9ID9.collider:SetOffset(-0.389645,-10.2704,5.64914)
Tile1Colider9ID9.collider:SetZAxis(-0.116549,0.128259,-0.984869)
Tile1Colider9ID9.collider:SetHalfLengths(4.91498,4.58745,0.5)
Tile1Colider9ID1.collider:AddChild(Tile1Colider9ID9.collider)
table.insert(colliders,Tile1Colider9ID9)
CollisionHandler.AddAABB(Tile1Colider9ID.collider, 3)
Tile1Colider9ID1 = nil
Tile1Colider9ID2 = nil
Tile1Colider9ID3 = nil
Tile1Colider9ID4 = nil
Tile1Colider9ID5 = nil
Tile1Colider9ID6 = nil
Tile1Colider9ID7 = nil
Tile1Colider9ID8 = nil
Tile1Colider9ID9 = nil
table.insert(colliders,Tile1Colider9ID)
Tile1Colider9ID = nil

local StartHouseCol10ID = {}
StartHouseCol10ID.transformID = Transform.Bind()
Transform.SetPosition(StartHouseCol10ID.transformID, {x=44.5252, y=23.8791, z=152.081})
Transform.SetScaleNonUniform(StartHouseCol10ID.transformID, 1, 1, 1)
Transform.SetRotation(StartHouseCol10ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,StartHouseCol10ID)
StartHouseCol10ID = nil

local Obb11ID = {}
Obb11ID.transformID = Transform.Bind()
Transform.SetPosition(Obb11ID.transformID, {x=39.2188, y=11.0963, z=126.485})
Transform.SetScaleNonUniform(Obb11ID.transformID, 5.33843, 5.90499, 0.887863)
Transform.SetRotation(Obb11ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb11ID)
Obb11ID = nil

local Obb112ID = {}
Obb112ID.transformID = Transform.Bind()
Transform.SetPosition(Obb112ID.transformID, {x=44.7947, y=12.0151, z=129.069})
Transform.SetScaleNonUniform(Obb112ID.transformID, 8.30671, 7.20676, 0.65567)
Transform.SetRotation(Obb112ID.transformID, {x=0, y=-0.0131889, z=0})
table.insert(colliders,Obb112ID)
Obb112ID = nil

local Obb214ID = {}
Obb214ID.transformID = Transform.Bind()
Transform.SetPosition(Obb214ID.transformID, {x=52.2659, y=14.2357, z=137.028})
Transform.SetScaleNonUniform(Obb214ID.transformID, 13.4763, 11.3442, 1)
Transform.SetRotation(Obb214ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb214ID)
Obb214ID = nil

local Obb316ID = {}
Obb316ID.transformID = Transform.Bind()
Transform.SetPosition(Obb316ID.transformID, {x=56.6113, y=15.1691, z=145.5})
Transform.SetScaleNonUniform(Obb316ID.transformID, 5.78123, 12.6913, 1.29184)
Transform.SetRotation(Obb316ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb316ID)
Obb316ID = nil

local Obb417ID = {}
Obb417ID.transformID = Transform.Bind()
Transform.SetPosition(Obb417ID.transformID, {x=52.7757, y=13.3417, z=152.966})
Transform.SetScaleNonUniform(Obb417ID.transformID, 12.2092, 9.29743, 1)
Transform.SetRotation(Obb417ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb417ID)
Obb417ID = nil

local Obb518ID = {}
Obb518ID.transformID = Transform.Bind()
Transform.SetPosition(Obb518ID.transformID, {x=44.1356, y=13.6087, z=157.73})
Transform.SetScaleNonUniform(Obb518ID.transformID, 9.82996, 9.1749, 1)
Transform.SetRotation(Obb518ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb518ID)
Obb518ID = nil

table.insert(level01, props)
table.insert(level01, colliders)
table.insert(level01, triggers)
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
local tile26ID = {}
tile26ID.transformID = Transform.Bind()
Transform.SetPosition(tile26ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile26ID.transformID, 1, 1, 1)
Transform.SetRotation(tile26ID.transformID, {x=0, y=0, z=0})
tile26ID.model = Assets.LoadModel('Models/tile2.model')
Gear.AddStaticInstance(tile26ID.model, tile26ID.transformID)
table.insert(props,tile26ID)
tile26ID = nil

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
