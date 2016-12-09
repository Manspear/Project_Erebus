local MOLERAT_OFFSET = 2
player = {}

function LoadPlayer()
	player.transformID = Transform.Bind()
	player.moveSpeed = 40
	player.verticalSpeed = 0
	player.canJump = false
	player.health = 100

	player.sphereCollider = SphereCollider.Create(player.transformID)
	CollisionHandler.AddSphere(player.sphereCollider)

	Transform.SetPosition(player.transformID, {x=100, y=10, z=100})

	local model = Assets.LoadModel("Models/molerat.model")
	Gear.AddModelInstance(model, player.transformID)

	Erebus.SetControls(player.transformID)

	player.projectileSpell = dofile("Scripts/projectile.lua")
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	forward, left = 0, 0

	local position = Transform.GetPosition(player.transformID)
	local direction = Transform.GetLookAt(player.transformID)

	if Controls[Keys.W] then forward = player.moveSpeed end
	if Controls[Keys.S] then forward = -player.moveSpeed end
	if Controls[Keys.A] then left = player.moveSpeed end
	if Controls[Keys.D] then left = -player.moveSpeed end
	if Controls[Keys.Space] and player.canJump then
		player.verticalSpeed = 0.5
		player.canJump = false
	end
	if Controls[Keys.Tab] then print("Tab pressed") end
	--if Controls[Keys.LMB] then Shoot(player.transformID) end
	if Controls[Keys.LMB] then
		player.projectileSpell:Cast(position, direction)
	end

	Transform.Move(player.transformID, forward, player.verticalPosition, left, dt)

	position = Transform.GetPosition(player.transformID)
	position.y = position.y + player.verticalSpeed
	player.verticalSpeed = player.verticalSpeed - 0.982 * dt

	local height = heightmap:GetHeight(position.x,position.z)+MOLERAT_OFFSET
	if position.y <= height then
		position.y = height
		player.canJump = true
		player.verticalSpeed = 0
	end

	Transform.SetPosition(player.transformID, position)

	player.projectileSpell:Update(dt)
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }