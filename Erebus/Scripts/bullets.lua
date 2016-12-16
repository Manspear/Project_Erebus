MAX_BULLETS = 5
bullets = {}
bulletIndex = 1
activeBullets = 0

grabagePosition = {x = -10000, y = -10000, z = -10000}
function LoadBullets()
	for i=1, MAX_BULLETS do
		bullets[i] = {}
		bullets[i].transformID = Transform.Bind()
		bullets[i].movementSpeed = 100
		bullets[i].lifeLeft = 2
		bullets[i].alive = false
		bullets[i].sphereCollider = SphereCollider.Create(bullets[i].transformID)
		CollisionHandler.AddSphere(bullets[i].sphereCollider)
		Transform.SetPosition(bullets[i].transformID, grabagePosition)
	end

	local asset = Assets.LoadModel("Models/testGuy.model")
	for i=1, MAX_BULLETS do
		Gear.AddStaticInstance(asset, bullets[i].transformID)
	end
end

function UnloadBullets()
end

function UpdateBullets(dt)
	for i=1, MAX_BULLETS do
		bullets[i].lifeLeft = bullets[i].lifeLeft - dt

		if bullets[i].alive then
			pos = Transform.GetPosition(bullets[i].transformID)
			
			if pos.y < heightmap:GetHeight(pos.x,pos.z) then
				bullets[i].alive = false
				activeBullets = activeBullets - 1
			end
			if bullets[i].lifeLeft < 0 then
				bullets[i].alive = false
				activeBullets = activeBullets - 1
				Transform.SetPosition(bullets[i].transformID, grabagePosition)
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
		bullets[bulletIndex].lifeLeft = 2
		Transform.Shoot(bullets[bulletIndex].transformID, playerTransformID)
		bulletIndex = ( bulletIndex % MAX_BULLETS ) + 1
		activeBullets = activeBullets + 1
	end
end

return { Load = LoadBullets, Unload = UnloadBullets, Update = UpdateBullets }