props = {}
heightmaps = {}
colliders = {}
triggers = {}
local ID2name = {}
ID2name.transformID = Transform.Bind()
Transform.SetPosition(ID2name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID2name.transformID, 1, 1, 1)
Transform.SetRotation(ID2name.transformID, {x=0, y=0, z=0})
ID2name.model = Assets.LoadModel('Models/tile_assets.model')
Gear.AddStaticInstance(ID2name.model, ID2name.transformID)
table.insert(props,ID2name)
ID2name = nil

local ID3name = {}
ID3name.transformID = Transform.Bind()
Transform.SetPosition(ID3name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID3name.transformID, 1, 1, 1)
Transform.SetRotation(ID3name.transformID, {x=0, y=0, z=0})
ID3name.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
Gear.AddStaticInstance(ID3name.model, ID3name.transformID)
table.insert(props,ID3name)
ID3name = nil

local ID4name = {}
ID4name.transformID = Transform.Bind()
Transform.SetPosition(ID4name.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(ID4name.transformID, 1, 1, 1)
Transform.SetRotation(ID4name.transformID, {x=0, y=0, z=0})
ID4name.model = Assets.LoadModel('Models/tile1.model')
Gear.AddStaticInstance(ID4name.model, ID4name.transformID)
ID4name.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
ID4name.asset:SetPosition({x=0, y=3, z=128})
ID4name.asset:SetHeightMultiplier(0.131373)
ID4name.surrounding = { 2 }
heightmaps[1] = ID4name
ID4name = nil

local ID5name = {}
Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,ID5name)
ID5name = nil

local ID6name = {}
ID6name.transformID = Transform.Bind()
Transform.SetPosition(ID6name.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(ID6name.transformID, 1, 1, 1)
Transform.SetRotation(ID6name.transformID, {x=0, y=0, z=0})
ID6name.model = Assets.LoadModel('Models/tile2.model')
Gear.AddStaticInstance(ID6name.model, ID6name.transformID)
ID6name.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
ID6name.asset:SetPosition({x=128, y=30, z=0})
ID6name.asset:SetHeightMultiplier(0.117647)
ID6name.surrounding = { 1 }
heightmaps[2] = ID6name
ID6name = nil

local ID8name = {}
ID8name.transformID = Transform.Bind()
Transform.SetPosition(ID8name.transformID, {x=119.078, y=37.8867, z=210.725})
Transform.SetScaleNonUniform(ID8name.transformID, 1, 4.84677, 1)
Transform.SetRotation(ID8name.transformID, {x=0, y=0.19115, z=0})
ID8name.collider = OBBCollider.Create(ID8name.transformID)
ID8name.collider:SetOffset(0,0,0)
ID8name.collider:SetZAxis(0,0,-1)
ID8name.collider:SetHalfLengths(3,9.69353,1)
CollisionHandler.AddOBB(ID8name.collider, 3)
table.insert(colliders,ID8name)
ID8name = nil

local ID9name = {}
ID9name.transformID = Transform.Bind()
Transform.SetPosition(ID9name.transformID, {x=133.5, y=34.3438, z=216.5})
Transform.SetScaleNonUniform(ID9name.transformID, 1, 1, 1)
Transform.SetRotation(ID9name.transformID, {x=0, y=0.19115, z=0})
ID9name.collider = OBBCollider.Create(ID9name.transformID)
ID9name.collider:SetOffset(0,0,0)
ID9name.collider:SetZAxis(0,0,-1)
ID9name.collider:SetHalfLengths(3,2,1)
CollisionHandler.AddOBB(ID9name.collider, 3)
table.insert(colliders,ID9name)
ID9name = nil

local ID10name = {}
ID10name.transformID = Transform.Bind()
Transform.SetPosition(ID10name.transformID, {x=16.4063, y=18.6563, z=153.125})
Transform.SetScaleNonUniform(ID10name.transformID, 1, 1, 1)
Transform.SetRotation(ID10name.transformID, {x=0, y=0.19115, z=0})
ID10name.collider = OBBCollider.Create(ID10name.transformID)
ID10name.collider:SetOffset(0,0,0)
ID10name.collider:SetZAxis(0,0,-1)
ID10name.collider:SetHalfLengths(3,2,1)
ID10name1 = {}
ID10name1.collider = OBBCollider.Create(-1)
ID10name1.collider:SetOffset(-2.6875,-6.66406,4.75)
ID10name1.collider:SetZAxis(0,0,1)
ID10name1.collider:SetHalfLengths(2,5,2)
ID10name.collider:AddChild(ID10name1.collider)
table.insert(colliders,ID10name1)
CollisionHandler.AddOBB(ID10name.collider, 3)
ID10name1 = nil
table.insert(colliders,ID10name)
ID10name = nil

local ID11name = {}
ID11name.transformID = Transform.Bind()
Transform.SetPosition(ID11name.transformID, {x=13.7188, y=6.49219, z=157.875})
Transform.SetScaleNonUniform(ID11name.transformID, 1, 1, 1)
Transform.SetRotation(ID11name.transformID, {x=0, y=0, z=0})
ID11name.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(ID11name.model, ID11name.transformID)
table.insert(props,ID11name)
ID11name = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
