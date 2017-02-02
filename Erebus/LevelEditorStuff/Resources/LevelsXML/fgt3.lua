props = {}
heightmaps = {}
colliders = {}
local ID2name = {}
ID2name.transformID = Transform.Bind()
Transform.SetPosition(ID2name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID2name.transformID, 1, 1, 1)
Transform.SetRotation(ID2name.transformID, {x=0, y=0, z=0})
ID2name.model = Assets.LoadModel('Models/tile1_game_x1.model')
Gear.AddStaticInstance(ID2name.model, ID2name.transformID)
table.insert(props,ID2name)
ID2name = nil

local ID3name = {}
ID3name.transformID = Transform.Bind()
Transform.SetPosition(ID3name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID3name.transformID, 1, 1, 1)
Transform.SetRotation(ID3name.transformID, {x=0, y=0, z=0})
ID3name.model = Assets.LoadModel('Models/tile1_game_x1_assets.model')
Gear.AddStaticInstance(ID3name.model, ID3name.transformID)
table.insert(props,ID3name)
ID3name = nil

local ID4name = {}
ID4name.transformID = Transform.Bind()
Transform.SetPosition(ID4name.transformID, {x=131.082, y=56.2813, z=37.5938})
Transform.SetScaleNonUniform(ID4name.transformID, 1, 1, 1)
Transform.SetRotation(ID4name.transformID, {x=0, y=0, z=0})
table.insert(props,ID4name)
ID4name = nil

local ID5name = {}
ID5name.transformID = Transform.Bind()
Transform.SetPosition(ID5name.transformID, {x=97.8125, y=33.8505, z=73.0168})
Transform.SetScaleNonUniform(ID5name.transformID, 1, 1, 1)
Transform.SetRotation(ID5name.transformID, {x=0, y=0, z=0})
table.insert(props,ID5name)
ID5name = nil

local ID6name = {}
ID6name.transformID = Transform.Bind()
Transform.SetPosition(ID6name.transformID, {x=21.0658, y=7.48623, z=219.905})
Transform.SetScaleNonUniform(ID6name.transformID, 272, 10, 30)
Transform.SetRotation(ID6name.transformID, {x=0, y=0, z=0})
ID6name.model = Assets.LoadModel('Models/testGuy.model')
Gear.AddStaticInstance(ID6name.model, ID6name.transformID)
table.insert(props,ID6name)
ID6name = nil

local ID7name = {}
ID7name.transformID = Transform.Bind()
Transform.SetPosition(ID7name.transformID, {x=52.5938, y=8.33188, z=43.0625})
Transform.SetScaleNonUniform(ID7name.transformID, 1, 1, 1)
Transform.SetRotation(ID7name.transformID, {x=0, y=0, z=0})
ID7name.collider = AABBCollider.Create(ID7name.transformID)
ID7name.collider:SetOffset(0,0,0)
ID7name.collider:SetMinPos(-2,-2,-2)
ID7name.collider:SetMaxPos(2,2,2)
ID7name1 = {}
ID7name1.collider = AABBCollider.Create(-1)
ID7name1.collider:SetOffset(0.03125,0.378127,0.0777626)
ID7name1.collider:SetMinPos(-1,-1,-1)
ID7name1.collider:SetMaxPos(1,1,1)
ID7name.collider:AddChild(ID7name1.collider)
table.insert(colliders,ID7name1)
CollisionHandler.AddAABB(ID7name.collider, 3)
ID7name1 = nil
table.insert(colliders,ID7name)
ID7name = nil

local ID9name = {}
ID9name.transformID = Transform.Bind()
Transform.SetPosition(ID9name.transformID, {x=49.4688, y=7.68359, z=41.7188})
Transform.SetScaleNonUniform(ID9name.transformID, 1, 1, 1)
Transform.SetRotation(ID9name.transformID, {x=0, y=0, z=0})
ID9name.collider = OBBCollider.Create(ID9name.transformID)
ID9name.collider:SetOffset(0,0,0)
ID9name.collider:SetZAxis(0,0,-1)
ID9name.collider:SetHalfLengths(1,1,1)
ID9name1 = {}
ID9name1.collider = OBBCollider.Create(-1)
ID9name1.collider:SetOffset(-0.59375,0.0195313,6.90625)
ID9name1.collider:SetZAxis(0,0,-1)
ID9name1.collider:SetHalfLengths(1,1,1)
ID9name.collider:AddChild(ID9name1.collider)
table.insert(colliders,ID9name1)
CollisionHandler.AddOBB(ID9name.collider, 3)
ID9name1 = nil
table.insert(colliders,ID9name)
ID9name = nil

local ID11name = {}
ID11name.transformID = Transform.Bind()
Transform.SetPosition(ID11name.transformID, {x=53.4326, y=9.42254, z=42.625})
Transform.SetScaleNonUniform(ID11name.transformID, 1, 1, 1)
Transform.SetRotation(ID11name.transformID, {x=0, y=0, z=0})
ID11name.collider = SphereCollider.Create(ID11name.transformID)
ID11name.collider:SetOffset(0,0,0)
ID11name.collider:SetRadius(5)
ID11name1 = {}
ID11name1.collider = SphereCollider.Create(-1)
ID11name1.collider:SetOffset(-8.99513,-1.81707,8)
ID11name1.collider:SetRadius(5)
ID11name.collider:AddChild(ID11name1.collider)
table.insert(colliders,ID11name1)
CollisionHandler.AddSphere(ID11name.collider, 3)
ID11name1 = nil
table.insert(colliders,ID11name)
ID11name = nil

local ID13name = {}
ID13name.transformID = Transform.Bind()
Transform.SetPosition(ID13name.transformID, {x=22.5781, y=-1.46636, z=194.375})
Transform.SetScaleNonUniform(ID13name.transformID, 1, 1, 1)
Transform.SetRotation(ID13name.transformID, {x=0, y=0, z=0})
table.insert(props,ID13name)
ID13name = nil

local ID14name = {}
ID14name.transformID = Transform.Bind()
Transform.SetPosition(ID14name.transformID, {x=6.42969, y=-1.55465, z=206.375})
Transform.SetScaleNonUniform(ID14name.transformID, 1, 1, 1)
Transform.SetRotation(ID14name.transformID, {x=0, y=0, z=0})
table.insert(props,ID14name)
ID14name = nil

local ID15name = {}
ID15name.transformID = Transform.Bind()
Transform.SetPosition(ID15name.transformID, {x=40, y=10, z=20})
Transform.SetScaleNonUniform(ID15name.transformID, 1, 1, 1)
Transform.SetRotation(ID15name.transformID, {x=0, y=0, z=0})
ID15name.collider = OBBCollider.Create(ID15name.transformID)
ID15name.collider:SetOffset(0,0,0)
ID15name.collider:SetZAxis(0,0,-1)
ID15name.collider:SetHalfLengths(1,1,1)
ID15name1 = {}
ID15name1.collider = OBBCollider.Create(-1)
ID15name1.collider:SetOffset(0,2,0)
ID15name1.collider:SetZAxis(0,0,-1)
ID15name1.collider:SetHalfLengths(1,1,1)
ID15name.collider:AddChild(ID15name1.collider)
table.insert(colliders,ID15name1)
ID15name2 = {}
ID15name2.collider = OBBCollider.Create(-1)
ID15name2.collider:SetOffset(0,2,0)
ID15name2.collider:SetZAxis(0,0,-1)
ID15name2.collider:SetHalfLengths(1,1,1)
ID15name1.collider:AddChild(ID15name2.collider)
table.insert(colliders,ID15name2)
CollisionHandler.AddOBB(ID15name.collider, 3)
ID15name1 = nil
ID15name2 = nil
table.insert(colliders,ID15name)
ID15name = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
