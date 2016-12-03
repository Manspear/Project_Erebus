MAX_ENEMIES = 39
enemies = {}

function LoadEnemies()
	for i=1, MAX_ENEMIES do
		enemies[i] = {}
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = math.random(5,20)
		enemies[i].sphereCollider = SphereCollider.Create(i, enemies[i].transformID, 0,0,0, 1)
		
		CollisionHandler.AddSphere(enemies[i].sphereCollider)
	end

	local asset = Assets.LoadModel("Models/molerat.model")
	Gear.AddModelInstance(asset,MAX_ENEMIES)
end

function UnloadEnemies()
end

function UpdateEnemies(dt)
	for i=1, MAX_ENEMIES do
		Transform.Follow(player.transformID, enemies[i].transformID, enemies[i].movementSpeed, dt)
	end
end

return { Load = LoadEnemies, Unload = UnloadEnemies, Update = UpdateEnemies }