local MOLERAT_OFFSET = 2
local PLAYER_MAX_SPELLS = 2
player = {}

function LoadPlayer()
	-- set basic variables for the player
	player.transformID = Transform.Bind()
	player.moveSpeed = 40
	player.verticalSpeed = 0
	player.canJump = false
	player.health = 100

	-- set spells for player
	player.spells = {}
	player.spells[1] = dofile( "Scripts/projectile.lua" )
	player.spells[2] = dofile( "Scripts/arc.lua" )
	player.currentSpell = player.spells[1]

	-- add a sphere collider to the player
	player.sphereCollider = SphereCollider.Create(player.transformID)
	CollisionHandler.AddSphere(player.sphereCollider)

	Transform.SetPosition(player.transformID, {x=100, y=10, z=100})

	-- load and set a model for the player
	local model = Assets.LoadModel("Models/moleman5.model")
	Gear.AddModelInstance(model, player.transformID)

	Erebus.SetControls(player.transformID)
	
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	forward, left = 0, 0
	player.testCamera = false
	local position = Transform.GetPosition(player.transformID)
	local direction = Transform.GetLookAt(player.transformID)

	if Controls[Keys.WDown] then forward = player.moveSpeed end
	if Controls[Keys.SDown] then forward = -player.moveSpeed end
	if Controls[Keys.ADown] then left = player.moveSpeed end
	if Controls[Keys.DDown] then left = -player.moveSpeed end
	if Controls[Keys.SpacePressed] and player.canJump then
		player.verticalSpeed = 0.5
		player.canJump = false
	end
	if Controls[Keys.TabPressed] then print("Tab pressed") end
	if Controls[Keys.LMBDown] then
		player.testCamera = true;
	end
	if Controls[Keys.LMBReleased] then
		player.currentSpell:Cast()
	end
	if Controls[Keys.OnePressed] then player.currentSpell = player.spells[1] end
	if Controls[Keys.TwoPressed] then player.currentSpell = player.spells[2] end

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

	-- update the current player spell
	for i=1, #player.spells do 
		player.spells[i]:BaseUpdate(dt)
	end
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }