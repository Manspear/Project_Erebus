MAX_ENEMIES = 39
enemies = {}

function LoadEnemies()
	for i=1, MAX_ENEMIES do
		enemies[i] = {}
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = math.random(5,20)

		--NOTE: Collisions are really expensive right now
		--enemies[i].sphereCollider = SphereCollider.Create(i, enemies[i].transformID, 0,0,0, 1)
		enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
		CollisionHandler.AddSphere(enemies[i].sphereCollider)
	end

	local model = Assets.LoadModel("Models/molerat.model")
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