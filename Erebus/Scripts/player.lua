local MOLERAT_OFFSET = 2
local PLAYER_MAX_SPELLS = 2
player = {}

function LoadPlayer()
	-- set basic variables for the player
	player.transformID = Transform.Bind()
	player.moveSpeed = 20
	player.verticalSpeed = 0
	player.canJump = false
	player.reachedGoal = false
	player.health = 100
	player.animation = Animation.Create()
	player.animationState = 1
	-- set spells for player
	player.spells = {}
	--player.spells[1] = dofile( "Scripts/projectile.lua" )
	player.spells[1] = {}
	player.spells[2] = {}
	for i = 1,  10 do	--create the projectile instances
		table.insert(player.spells[1], CreateProjectile())
	end
	for i = 1,  10 do	--create the arc instances
		table.insert(player.spells[2], CreateArc())
	end
	player.currentSpell = 1
	-- add a sphere collider to the player
	player.sphereCollider = SphereCollider.Create(player.transformID)
	CollisionHandler.AddSphere(player.sphereCollider)
	player.sphereCollider:GetCollisionIDs()

	Transform.SetPosition(player.transformID, {x=0, y=0, z=0})

	-- load and set a model for the player
	local model = Assets.LoadModel("Models/testGuy.model")
	--Gear.AddStaticInstance(model, player.transformID)
	Gear.AddAnimatedInstance(model, player.transformID, player.animation)

	Erebus.SetControls(player.transformID)
	
end

function UnloadPlayer()
end

function UpdatePlayer(dt)
	forward, left = 0, 0
	player.testCamera = false
	local position = Transform.GetPosition(player.transformID)
	local direction = Transform.GetLookAt(player.transformID)

	player.animationState = 1
	if Controls[Keys.WDown] then forward = player.moveSpeed
		player.animationState = 2
	end
	if Controls[Keys.SDown] then forward = -player.moveSpeed 
		player.animationState = 2
	end
	if Controls[Keys.ADown] then left = player.moveSpeed 
		player.animationState = 2
	end
	if Controls[Keys.DDown] then left = -player.moveSpeed 
		player.animationState = 2
	end
	if Controls[Keys.SpacePressed] and player.canJump then
		player.verticalSpeed = 0.5
		player.canJump = false
		player.animationState = 2
	end
	if Controls[Keys.TabPressed] then print("Tab pressed") end
	if Controls[Keys.LMBDown] then
		player.testCamera = true;
		player.animationState = 3
	end
	if Controls[Keys.LMBReleased] then
		player.animationState = 1
		for _,j in ipairs(player.spells[player.currentSpell]) do
			if(j.alive ~= true) then
				j:Cast()
				break
			end
		end
	end
	if Controls[Keys.OnePressed] then player.currentSpell = 1 end
	if Controls[Keys.TwoPressed] then player.currentSpell = 2 end

	Transform.Move(player.transformID, forward, player.verticalPosition, left, dt)

	position = Transform.GetPosition(player.transformID)
	position.y = position.y + player.verticalSpeed
	player.verticalSpeed = player.verticalSpeed - 0.982 * dt

	local height = heightmap:GetHeight(position.x,position.z)--+MOLERAT_OFFSET
	if position.y <= height then
		position.y = height
		player.canJump = true
		player.verticalSpeed = 0
	end

	Transform.SetPosition(player.transformID, position)

	-- update the current player spell
	for i=1, #player.spells do 
		for _,j in ipairs(player.spells[i]) do
			if j.alive then
				j:BaseUpdate(dt)
			end
		end
	end

	player.animation:Update(dt, player.animationState)

	-- check collision against the goal
	local collisionIDs = player.sphereCollider:GetCollisionIDs()
	for curID=1, #collisionIDs do
		if collisionIDs[curID] == goal.collider:GetID() then
			player.reachedGoal = true
		end
	end

	if player.reachedGoal then Gear.Print("You win!", 560, 100) end
	--print("x:"..position.x.." y:"..position.y.." z:"..position.z)
end

return { Load = LoadPlayer, Unload = UnloadPlayer, Update = UpdatePlayer }