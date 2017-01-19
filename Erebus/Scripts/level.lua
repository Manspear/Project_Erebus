-- add heightmap
--heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
--heightmap.transformID = Transform.Bind()
-- In lua you start counting from 1
heightmaps = {}
heightmaps[1] = Assets.LoadHeightmap("Textures/tile1_heights_33.png")-- skicka in här. problem hos Assets.load. hmap maste ha en egen load da. Ett alternativ vore att gora en hmapHandlar i c++
heightmaps[1].transformID = Transform.Bind()
heightmaps[1].offset = 0

heightmaps[2] = Assets.LoadHeightmap("Textures/secondTile_hieghts128_heights.png")-- skicka in heightmapIndex här
heightmaps[2].transformID = Transform.Bind()
heightmaps[2].offset = 0

heightmaps[3] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[3].transformID = Transform.Bind()
heightmaps[3].offset = 0

heightmaps[4] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[4].transformID = Transform.Bind()
heightmaps[4].offset = 0

--local firstTileModel = Assets.LoadModel("Models/tile1_game_skew.model")
--local secondTileModel = Assets.LoadModel("Models/tile1_game_skew_assets.model")
local firstTileModel = Assets.LoadModel("Models/tile1_game_x1.model")
local secondTileModel = Assets.LoadModel("Models/Goblin.model")
Gear.AddStaticInstance(firstTileModel, heightmaps[1].transformID)
Gear.AddStaticInstance(secondTileModel, heightmaps[2].transformID)
--Gear.AddStaticInstance(firstTileModel, heightmaps[3].transformID)
--Gear.AddStaticInstance(firstTileModel, heightmaps[4].transformID)
--Gear.AddStaticInstance(heightmaps[1]:GetModel(), heightmaps[1].transformID)

Transform.SetPosition(heightmaps[2].transformID, {x=0, y=4, z=6})
--Transform.SetPosition(heightmaps[3].transformID, {x=0, y=0, z=512})
--.SetPosition(heightmaps[4].transformID, {x=512, y=0, z=512})

--AI
widthTest = heightmaps[1]:GetMapWidth()
heightTest = heightmaps[1]:GetMapHeight()
AI.SetNav(widthTest,heightTest)

-- add enemies
LoadEnemies(5)
Transform.SetPosition(enemies[1].transformID, {x=155, y=0, z=158})
Transform.SetPosition(enemies[2].transformID, {x=161, y=0, z=112})
Transform.SetPosition(enemies[3].transformID, {x=245, y=0, z=80})
Transform.SetPosition(enemies[4].transformID, {x=330, y=0, z=102})
Transform.SetPosition(enemies[5].transformID, {x=352, y=0, z=70})

-- set player position
Transform.SetPosition(player.transformID, {x=44, y=0, z=14})

-- set goal
goal = {}
goal.transformID = Transform.Bind()
goal.collider = SphereCollider.Create(goal.transformID)
goal.collider:SetRadius(10)
CollisionHandler.AddSphere(goal.collider)

Transform.SetPosition(goal.transformID, { x = 335, y = 41, z = 137 })