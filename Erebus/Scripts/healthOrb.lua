HEALTH_EFFECT_DURATION = 15
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 3

allHealthOrbs = {}
orbsOnField = {}
currentFreeOrb = 0
activeOrbs = 0

function CreateHealthOrb(index)
	local orb = {}
	orb.alive = false
	local model = Assets.LoadModel( "Models/Stone4.model" )
	orb.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(orb.transformID, false)
	orb.collider = SphereCollider.Create(orb.transformID)
	CollisionHandler.AddSphere(orb.collider, 1)
	SphereCollider.SetActive(orb.collider, false)
	orb.particles = createSparklyParticles2()
	orb.YValue = 0
	orb.steadY = false		orb.wallHit = false
	orb.duration = HEALTH_EFFECT_DURATION
	orb.position = 0		orb.direction = 0
	orb.index = index
	return orb	
end

function LoadHealthOrbs()
	for i = 1, ORB_POOL_SIZE do 
		allHealthOrbs[i] = CreateHealthOrb(i)
		orbsOnField[i] = false
	end
end

function SpawnNewHealthOrb(position)
	local chance = math.random(1,4)
	if chance == 1 then	
		for i = 1, ORB_POOL_SIZE do 
			if not allHealthOrbs[i].alive then
				SpawnOrb(allHealthOrbs[i], position)
				break
			end
		end
	end	
end

function SpawnOrb(daOrb, position)
	daOrb.position = position
	daOrb.alive = true
	daOrb.position.y = daOrb.position.y + 1 
	daOrb.YValue = position.y
	daOrb.direction = {x = math.random(-6, 6), y = 5, z = math.random(-6, 6)}
	Transform.ActiveControl(daOrb.transformID, true)		
	Transform.SetPosition(daOrb.transformID, daOrb.position)
	SphereCollider.SetActive(daOrb.collider, true)
	daOrb.particles:cast()
end

function KillHealthOrb(daOrb)
	daOrb.alive = false
	Transform.ActiveControl(daOrb.transformID, false)
	SphereCollider.SetActive(daOrb.collider, false)
	daOrb.particles:die()
end

function UpdateHealthOrbs(dt)
	for i = 1, ORB_POOL_SIZE do
		if allHealthOrbs[i].alive then
			UpdateOrb(allHealthOrbs[i], dt)
		end
	end
end

function UpdateOrb(daOrb, dt) 
	daOrb.duration = daOrb.duration - dt
	if daOrb.duration < 0 then 
		KillHealthOrb(daOrb)  
		return
	end
	local collisionIDs = daOrb.collider:GetCollisionIDs()
	for	curID = 1, #collisionIDs do	
		if collisionIDs[curID] == player.collisionID and player.isAlive then
			if player.health < 80 then player.health = player.health + HEALTH_ORB_LIFE else player.health = 100 end
			Network.SendPlayerHealthPacket(player.transformID, player.health)
			KillHealthOrb(daOrb)
			return 
		end
	end		
	local hm = GetHeightmap(daOrb.position)		
	if hm then
		if daOrb.position.y >= hm.asset:GetHeight(daOrb.position.x, daOrb.position.z) + 1 then
			daOrb.YValue = daOrb.YValue + daOrb.direction.y * dt
			daOrb.position.y = daOrb.YValue
			daOrb.direction.y = daOrb.direction.y - 12 * dt		
			if not daOrb.wallHit then 
				daOrb.position.x = daOrb.position.x + daOrb.direction.x * dt
				daOrb.position.z = daOrb.position.z + daOrb.direction.z * dt		
				local walls = CollisionHandler.GetIDsFromLayer(3)
				local realWalls = {}
				for i, v in pairs(walls) do
					realWalls[i] = v
				end	
				for	curID = 1, #collisionIDs do	
					for curWall = 1, #realWalls do
						if collisionIDs[curID] == realWalls[curWall] then
							daOrb.wallHit = true
						end
					end
				end
			end
			Transform.SetPosition(daOrb.transformID, daOrb.position)
		end
	end
	daOrb.particles:update(daOrb.position)
end

function UnloadHealthOrbs()
	for _,v in pairs(allHealthOrbs) do
		Gear.UnbindInstance(v.transformID)
		destroySparklyParticles2(v.particles)
		Assets.UnloadModel( "Models/Stone4.model" )
	end

	allHealthOrbs = {}
	orbsOnField = {}
	currentFreeOrb = 0
	activeOrbs = 0
end

return { Load = LoadHealthOrbs, Unload = UnloadHealthOrbs, Update = UpdateHealthOrbs }
