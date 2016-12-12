MAX_ENEMIES = 10
enemies = {}

function LoadEnemies()
	for i=1, MAX_ENEMIES do
		enemies[i] = {}
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = math.random(5,20)

		Transform.SetPosition(enemies[i].transformID, {x = math.random(10, 255), y = math.random(15, 30), z = math.random(10, 245)})

		enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
		CollisionHandler.AddSphere(enemies[i].sphereCollider)
	end

	local model = Assets.LoadModel("Models/moleman5.model")
	for i=1, MAX_ENEMIES do
		Gear.AddModelInstance(model, enemies[i].transformID)
	end
end

function UnloadEnemies()
end

function UpdateEnemies(dt)
	for i=1, MAX_ENEMIES do
		Transform.Follow(player.transformID, enemies[i].transformID, enemies[i].movementSpeed, dt)
	end
end

return { Load = LoadEnemies, Unload = UnloadEnemies, Update = UpdateEnemies }