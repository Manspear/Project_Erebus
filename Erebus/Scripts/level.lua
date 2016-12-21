-- add heightmap
heightmap = Assets.LoadHeightmap("Textures/mikael_stor2_heights_128a.png")
heightmap.transformID = Transform.Bind()

local model = Assets.LoadModel("Models/firstTile.model")
Gear.AddStaticInstance(model, heightmap.transformID)
--Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

--AI
widthTest = heightmap:GetMapWidth()
heightTest = heightmap:GetMapHeight()
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