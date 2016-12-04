player = {}

function LoadPlayer()
	player.transformID = Transform.Bind()
	player.moveSpeed = 40
	player.verticalSpeed = 0
	player.canJump = false
	player.health = 100

	player.sphereCollider = SphereCollider.Create(0, player.transformID, 100,10,100, 1)
	CollisionHandler.AddSphere(player.sphereCollider)

	Transform.SetPosition(player.transformID, {x=100, y=10, z=100})

	local asset = Assets.LoadModel("Models/molerat.model")
	Gear.AddModelInstance(asset)
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	forward, left = 0, 0

	if Controls[Keys.W] then forward = player.moveSpeed end
	if Controls[Keys.S] then forward = -player.moveSpeed end
	if Controls[Keys.A] then left = player.moveSpeed end
	if Controls[Keys.D] then left = -player.moveSpeed end
	if Controls[Keys.Space] and player.canJump then
		player.verticalSpeed = 0.5
		player.canJump = false
	end
	if Controls[Keys.LMB] then Shoot(player.transformID) end

	local position = Transform.GetPosition(player.transformID)
	position.y = position.y + player.verticalSpeed
	player.verticalSpeed = player.verticalSpeed - 0.982 * dt
	Transform.SetPosition(player.transformID, position)

	Transform.Move(player.transformID, forward, player.verticalPosition, left, dt)

	if Transform.ToHeightmap(player.transformID) then
		player.verticalSpeed = 0.0
		player.canJump = true
	end
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }