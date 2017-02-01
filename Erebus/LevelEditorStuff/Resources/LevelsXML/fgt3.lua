props = {}
heightmaps = {}
local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
temp.model = Assets.LoadModel('Models/tile1_game_x1.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
temp.model = Assets.LoadModel('Models/tile1_game_x1_assets.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=131.082, y=56.2813, z=37.5938})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=97.8125, y=33.8505, z=73.0168})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=21.0658, y=7.48623, z=219.905})
Transform.SetScaleNonUniform(temp.transformID, 272, 10, 30)
Transform.SetRotation(temp.transformID, 0, 0, 0)
temp.model = Assets.LoadModel('Models/testGuy.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=-14.2734, y=-7.47656, z=207.75})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
temp.collider = OBBCollider.Create(temp.transformID)
CollisionHandler.AddOBB(temp.collider)
temp.collider:SetOffset(0,0,0)
temp.collider:SetZAxis(0,0,-1)
temp.collider:SetHalfLengths(0.5,0.5,0.5)
temp1.collider = OBBCollider.Create(-1)
temp1.collider:SetOffset(0,0,0)
temp1.collider:SetZAxis(0,0,-1)
temp1.collider:SetHalfLengths(0.5,0.5,0.5)
temp.collider:AddChild(temp1.collider)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=16.4531, y=-7.47266, z=188.25})
Transform.SetScaleNonUniform(temp.transformID, 1, 1, 1)
Transform.SetRotation(temp.transformID, 0, 0, 0)
temp.collider = temp = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
