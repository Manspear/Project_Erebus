-- add heightmap
--heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
--heightmap.transformID = Transform.Bind()
-- In lua you start counting from 1
heightmaps = {}
heightmaps[1] = {}
heightmaps[1].asset = Assets.LoadHeightmap("Textures/tile1_heights_33.png")-- skicka in här. problem hos Assets.load. hmap maste ha en egen load da. Ett alternativ vore att gora en hmapHandlar i c++
heightmaps[1].transformID = Transform.Bind()
heightmaps[1].offset = 0

heightmaps[2] = {}
heightmaps[2].asset = Assets.LoadHeightmap("Textures/secondTile_hieghts128_heights.png")-- skicka in heightmapIndex här
heightmaps[2].transformID = Transform.Bind()
heightmaps[2].offset = 0

heightmaps[3] = {}
heightmaps[3].asset = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[3].transformID = Transform.Bind()
heightmaps[3].offset = 0

heightmaps[4] = {}
heightmaps[4].asset = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[4].transformID = Transform.Bind()
heightmaps[4].offset = 0

--local firstTileModel = Assets.LoadModel("Models/tile1_game_skew.model")
--local secondTileModel = Assets.LoadModel("Models/tile1_game_skew_assets.model")
local firstTileModel = Assets.LoadModel("Models/tile1_game_x1.model")
local firstTileModel_assets = Assets.LoadModel("Models/tile1_game_x1_assets.model")
local goblin = Assets.LoadModel("Models/Goblin.model")
Gear.AddStaticInstance(firstTileModel, heightmaps[1].transformID)
--Gear.AddStaticInstance(secondTileModel, heightmaps[2].transformID)
Gear.AddStaticInstance(firstTileModel_assets, heightmaps[1].transformID)
Gear.AddStaticInstance(goblin, heightmaps[2].transformID)
--Gear.AddStaticInstance(secondTileModel, heightmaps[2].transformID)
--Gear.AddStaticInstance(firstTileModel, heightmaps[3].transformID)
--Gear.AddStaticInstance(firstTileModel, heightmaps[4].transformID)
--Gear.AddStaticInstance(heightmaps[1]:GetModel(), heightmaps[1].transformID)

Transform.SetPosition(heightmaps[2].transformID, {x=20, y=6.72, z=27})
--Transform.SetPosition(heightmaps[3].transformID, {x=0, y=0, z=512})
--.SetPosition(heightmaps[4].transformID, {x=512, y=0, z=512})

--AI
print(heightmaps[1].asset)
widthTest = heightmaps[1].asset:GetMapWidth()
heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)

-- add enemies
LoadEnemies(5)
Transform.SetPosition(enemies[1].transformID, {x=37, y=9, z=75})
Transform.SetPosition(enemies[2].transformID, {x=110, y=28, z=102})
Transform.SetPosition(enemies[3].transformID, {x=100, y=26, z=64})
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

-- set music
Sound.Play("Music/menuBurana.ogg", 17, {31, 8, 12})

Transform.SetPosition(goal.transformID, { x = 335, y = 41, z = 137 })


	-- Setting controller for player
	player.controller = {};
	player.controller = MovementController.Create()
	player.controller:SetHitbox(player.sphereCollider)
	player.controller:SetTransform(player.transformID)
	player.controller:SetCollisionLayer(3) -- the layer the walls is at THIS IS HARDCODED DAMN (Player checks collision against these hitboxes before moving)
	player.controller:SetHeightmap(heightmaps[1].asset);