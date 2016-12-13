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

	local model = Assets.LoadModel("Models/moleman5.model")
	Gear.AddModelInstance(model, player.transformID)

	Erebus.SetControls(player.transformID)

	player.projectileSpell = dofile("Scripts/projectile.lua")
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	Debug.DrawLine(2,0,0,0,100,100,100)
	forward, left = 0, 0
	player.testCamera = false
	local position = Transform.GetPosition(player.transformID)
	local direction = Transform.GetLookAt(player.transformID)
	Debug.DrawLine(1, position.x, position.y, position.z, position.x+direction.x*10, position.y+direction.y*10, position.z+direction.z*10);
	if Controls[Keys.W] then 
		forward = player.moveSpeed 
		Debug.DrawLine(1, position.x, position.y, position.z, 50, 100, 50);
		Debug.DrawSphere( position.x, position.y, position.z, 4);
	end
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
		player.testCamera = true
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