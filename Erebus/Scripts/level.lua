-- add heightmap
--heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
--heightmap.transformID = Transform.Bind()
-- In lua you start counting from 1
heightmaps = {}
heightmaps[1] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här. problem hos Assets.load. hmap maste ha en egen load da. Ett alternativ vore att gora en hmapHandlar i c++
heightmaps[1].transformID = Transform.Bind()
heightmaps[1].offset = 0

heightmaps[2] = Assets.LoadHeightmap("Textures/secondTile_hieghts128_heights.png")-- skicka in heightmapIndex här
heightmaps[2].transformID = Transform.Bind()
heightmaps[2].offset = 63

heightmaps[3] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[3].transformID = Transform.Bind()
heightmaps[3].offset = 0

heightmaps[4] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")-- skicka in heightmapIndex här
heightmaps[4].transformID = Transform.Bind()
heightmaps[4].offset = 0

local firstTileModel = Assets.LoadModel("Models/firstTile.model")
local secondTileModel = Assets.LoadModel("Models/secondTile_jan4.model")
Gear.AddStaticInstance(firstTileModel, heightmaps[1].transformID)
Gear.AddStaticInstance(secondTileModel, heightmaps[2].transformID)
Gear.AddStaticInstance(firstTileModel, heightmaps[3].transformID)
Gear.AddStaticInstance(firstTileModel, heightmaps[4].transformID)

Transform.SetPosition(heightmaps[2].transformID, {x=0, y=0, z=0})
Transform.SetPosition(heightmaps[3].transformID, {x=0, y=0, z=512})
Transform.SetPosition(heightmaps[4].transformID, {x=512, y=0, z=512})
--Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

--AI
widthTest = heightmaps[1]:GetMapWidth()
heightTest = heightmaps[1]:GetMapHeight()
AI.SetNav(widthTest,heightTest)

-- add enemies
LoadEnemies(2)
Transform.SetPosition(enemies[1].transformID, {x=150, y=0, z=100})
Transform.SetPosition(enemies[2].transformID, {x=100, y=0, z=200})

-- set player position
Transform.SetPosition(player.transformID, {x=80, y=60, z=160})
--Transform.SetPosition(player.transformID, {x=0, y=0, z=0})

-- set goal
goal = {}
goal.transformID = Transform.Bind()
goal.collider = SphereCollider.Create(goal.transformID)
goal.collider:SetRadius(5)
CollisionHandler.AddSphere(goal.collider)

Transform.SetPosition(goal.transformID, { x = 460, y = 92, z = 144 })