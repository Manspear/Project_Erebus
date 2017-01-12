-- add heightmap
--heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
--heightmap.transformID = Transform.Bind()
-- In lua you start counting from 1
heightmaps = {}
heightmaps[1] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
heightmaps[1].transformID = Transform.Bind()
heightmaps[1].offset = 0

heightmaps[2] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
heightmaps[2].transformID = Transform.Bind()
heightmaps[2].offset = 25

heightmaps[3] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
heightmaps[3].transformID = Transform.Bind()
heightmaps[3].offset = 0

heightmaps[4] = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
heightmaps[4].transformID = Transform.Bind()
heightmaps[4].offset = 0

local model = Assets.LoadModel("Models/firstTile.model")
Gear.AddStaticInstance(model, heightmaps[1].transformID)
Gear.AddStaticInstance(model, heightmaps[2].transformID)
Gear.AddStaticInstance(model, heightmaps[3].transformID)
Gear.AddStaticInstance(model, heightmaps[4].transformID)

Transform.SetPosition(heightmaps[2].transformID, {x=512, y=heightmaps[2].offset, z=0})
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
Transform.SetPosition(player.transformID, {x=10, y=60, z=10})
--Transform.SetPosition(player.transformID, {x=0, y=0, z=0})

-- set goal
goal = {}
goal.transformID = Transform.Bind()
goal.collider = SphereCollider.Create(goal.transformID)
goal.collider:SetRadius(5)
CollisionHandler.AddSphere(goal.collider)

Transform.SetPosition(goal.transformID, { x = 460, y = 92, z = 144 })