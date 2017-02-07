-- add heightmap
--heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
--heightmap.transformID = Transform.Bind()
-- In lua you start counting from 1
heightmaps = {}
heightmaps[1] = {}
heightmaps[1].asset = Assets.LoadHeightmap("Textures/tile1_128.png")-- skicka in här. problem hos Assets.load. hmap maste ha en egen load da. Ett alternativ vore att gora en hmapHandlar i c++
heightmaps[1].transformID = Transform.Bind()
heightmaps[1].offset = 0
heightmaps[1].asset:SetPosition({x=0, y=0, z=128})
heightmaps[1].asset:SetHeightMultiplier(33.8/255)
heightmaps[1].surrounding = {}

heightmaps[2] = {}
heightmaps[2].asset = Assets.LoadHeightmap("Textures/tile2_heights.png")-- skicka in heightmapIndex här
heightmaps[2].transformID = Transform.Bind()
heightmaps[2].offset = 0
heightmaps[2].asset:SetPosition({x=128, y=0, z=128})
heightmaps[2].asset:SetHeightMultiplier(33.8/255)
heightmaps[2].surrounding = {}

heightmaps[3] = {}
heightmaps[3].asset = Assets.LoadHeightmap("Textures/tile1_128.png")-- skicka in heightmapIndex här
heightmaps[3].transformID = Transform.Bind()
heightmaps[3].offset = 0
heightmaps[3].surrounding = {}

heightmaps[4] = {}
heightmaps[4].asset = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[4].transformID = Transform.Bind()
heightmaps[4].offset = 0
heightmaps[4].surrounding = {}

table.insert(heightmaps[1].surrounding, 2)
table.insert(heightmaps[2].surrounding, 1)

--Tile1----------------------------------------------------------------
local tile1 = Assets.LoadModel("Models/tile1.model")
Gear.AddStaticInstance(tile1, heightmaps[3].transformID)

local tile1_assets = Assets.LoadModel("Models/tile1_assets.model")
Gear.AddStaticInstance(tile1_assets, heightmaps[1].transformID)
Transform.SetPosition(heightmaps[1].transformID, {x=0, y=0, z=128})

--Tile2-----------------------------------------------------------------
local tile2 = Assets.LoadModel("Models/tile2.model")
Gear.AddStaticInstance(tile2, heightmaps[2].transformID)

--Transform.SetPosition(heightmaps[2].transformID, {x=128, y=0, z=128})
Transform.SetPosition(heightmaps[2].transformID, {x=0, y=0, z=0})

--Transform.SetPosition(heightmaps[3].transformID, {x=0, y=0, z=512})
--.SetPosition(heightmaps[4].transformID, {x=512, y=0, z=512})

--TEMP
heightmaps[5] = {}
heightmaps[5].transformID = Transform.Bind()
local goblin = Assets.LoadModel("Models/Goblin.model")
Gear.AddStaticInstance(goblin, heightmaps[5].transformID)
Transform.SetPosition(heightmaps[5].transformID, {x=15, y=6.72, z=158})
Gear.AddStaticInstance(goblin, heightmaps[5].transformID)

heightmaps[6] = {}
heightmaps[6].transformID = Transform.Bind()
local goblin = Assets.LoadModel("Models/PineTree2.model")
Gear.AddStaticInstance(goblin, heightmaps[6].transformID)
Transform.SetPosition(heightmaps[6].transformID, {x=20, y=6.72, z=168})
Gear.AddStaticInstance(goblin, heightmaps[6].transformID)

pointLight = Light.addLight(15, 7.5, 158, 0.54, 0.17, 0.88, 20, 2)

--AI
widthTest = heightmaps[1].asset:GetMapWidth()
heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)

-- add enemies
--[[LoadEnemies(5)
Transform.SetPosition(enemies[1].transformID, {x=37, y=9, z=75})
Transform.SetPosition(enemies[2].transformID, {x=110, y=28, z=102})
Transform.SetPosition(enemies[3].transformID, {x=100, y=26, z=64})
Transform.SetPosition(enemies[4].transformID, {x=330, y=0, z=102})
Transform.SetPosition(enemies[5].transformID, {x=352, y=0, z=70})--]]

-- set player position
Transform.SetPosition(player.transformID, {x=44, y=0, z=140})

-- set music
sid = Sound.Play("Music/Area1.ogg", 48)
Sound.SetVolume(sid, 0.06)
Sound.Resume(sid)

player.controller:SetHeightmap(heightmaps[1].asset)

player.currentHeightmap = heightmaps[1]
player.controller:SetHeightmap(player.currentHeightmap.asset)

player.controller:SetTransform(player.transformID)
player.controller:SetCollisionLayer(3) -- the layer the walls is at THIS IS HARDCODED DAMN (Player checks collision against these hitboxes before moving)
player.controller:SetHeightmap(heightmaps[1].asset);