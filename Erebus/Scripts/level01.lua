props = {}
heightmaps = {}
colliders = {}
triggers = {}

local ID2name = {}
ID2name.model = Assets.LoadModel('Models/tile1.model')
ID2name.transformID = Gear.BindStaticInstance(ID2name.model)
Transform.SetPosition(ID2name.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(ID2name.transformID, 1, 1, 1)
Transform.SetRotation(ID2name.transformID, {x=0, y=0, z=0})
ID2name.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
ID2name.asset:SetPosition({x=0, y=3, z=128})
ID2name.heightMultiplier = (36.5-3) / 255
ID2name.asset:SetHeightMultiplier(ID2name.heightMultiplier)
ID2name.surrounding = { 2 }
heightmaps[1] = ID2name
ID2name = nil

local ID4name = {}
Transform.SetPosition(player.transformID, {x=47.3438, y=13.7729, z=137.75})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,ID4name)
ID4name = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)