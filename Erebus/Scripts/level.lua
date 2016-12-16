-- add heightmap
heightmap = Assets.LoadHeightmap("Textures/hmap_heights.png")
heightmap.transformID = Transform.Bind()

Gear.AddStaticInstance(heightmap:GetModel(), heightmap.transformID)

-- add enemies
LoadEnemies(2)
Transform.SetPosition(enemies[1].transformID, {x=150, y=0, z=100})
Transform.SetPosition(enemies[2].transformID, {x=100, y=0, z=200})
--Transform.ActiveControl(enemies[2].transformID, false)
--enemies[2]:Kill()

-- set player position
Transform.SetPosition(player.transformID, {x=250, y=0, z=150})

-- set goal
goal = {}
goal.transformID = Transform.Bind()
goal.collider = SphereCollider.Create(goal.transformID)
CollisionHandler.AddSphere(goal.collider)

Transform.SetPosition(goal.transformID, { x = 30, y = 25, z = 130 })