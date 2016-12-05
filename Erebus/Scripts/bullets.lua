MAX_BULLETS = 10
bullets = {}
bulletIndex = 1
activeBullets = 0

function LoadBullets()
	for i=1, MAX_BULLETS do
		bullets[i] = {}
		bullets[i].transformID = Transform.Bind()
		bullets[i].movementSpeed = 100
		bullets[i].lifeLeft = 10
		bullets[i].alive = false

		--bullets[i].sphereCollider = SphereCollider.Create(i+MAX_ENEMIES, bullets[i].transformID, 0,0,0, 1)
		bullets[i].sphereCollider = SphereCollider.Create(bullets[i].transformID)
		CollisionHandler.AddSphere(bullets[i].sphereCollider)
	end

	local asset = Assets.LoadModel("Models/molerat.model")
	for i=1, MAX_BULLETS do
		Gear.AddModelInstance(asset, bullets[i].transformID)
	end
end

function UnloadBullets()
end

function UpdateBullets(dt)
	for i=1, MAX_BULLETS do
		bullets[i].lifeLeft = bullets[i].lifeLeft - dt

		if bullets[i].alive then
			if bullets[i].lifeLeft < 0 then
				bullets[i].alive = false
				activeBullets = activeBullets - 1
			else
				Transform.Fly(bullets[i].transformID, bullets[i].movementSpeed, dt)
			end

			-- check collision against enemies here:
		end
	end
end

function Shoot(playerTransformID)
	if activeBullets < MAX_BULLETS then
		bullets[bulletIndex].alive = true
		bullets[bulletIndex].lifeLeft = 5
		Transform.Shoot(bullets[bulletIndex].transformID, playerTransformID)

		bulletIndex = ( bulletIndex % MAX_BULLETS ) + 1
		activeBullets = activeBullets + 1
	end
end

return { Load = LoadBullets, Unload = UnloadBullets, Update = UpdateBullets }