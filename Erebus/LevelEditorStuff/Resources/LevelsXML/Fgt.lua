props = {}
heightmaps = {}
local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=0, y=0, z=0})
temp.model = Assets.LoadModel('Models/tile1_game_x1.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=0, y=0, z=0})
temp.model = Assets.LoadModel('Models/tile1_game_x1_assets.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

local temp = {}
--Point light information here
--Not yet implemented in the game
table.insert(props,temp)
temp = nil

local temp = {}
--Point light information here
--Not yet implemented in the game
table.insert(props,temp)
temp = nil

local temp = {}
temp.transformID = Transform.Bind()
Transform.SetPosition(temp.transformID, {x=64.2684, y=128.746, z=169.705})
temp.model = Assets.LoadModel('Models/testGuy.model')
Gear.AddStaticInstance(temp.model, temp.transformID)
table.insert(props,temp)
temp = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
