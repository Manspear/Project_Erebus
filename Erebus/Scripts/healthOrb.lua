HEALTH_EFFECT_DURATION = 10
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 3
--healthOrbParticles = {}
allHealthOrbs = {}
healthColliderPool = {}
currentFreeOrb = 0
activeOrbs = 0

function CreateHealthOrb()
	local orb = {}
	orb.alive = false
	local model = Assets.LoadModel( "Models/Stone4.model" )
	orb.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(orb.transformID, false)
	orb.collider = SphereCollider.Create(orb.transformID)
	CollisionHandler.AddSphere(orb.collider, 1)
	SphereCollider.SetActive(orb.collider, false)
	orb.YValue = 0
	orb.steadY = false		orb.wallHit = false
	orb.duration = HEALTH_EFFECT_DURATION
	orb.position = 0		orb.direction = 0
	return orb	
end

function LoadHealthOrbs()
	for i = 1, ORB_POOL_SIZE do allHealthOrbs[i] = CreateHealthOrb() end
end

function SpawnNewHealthOrb(position)
	local chance = math.random(1,4)
	if chance == 1 then
		if activeOrbs < ORB_POOL_SIZE then 
			currentFreeOrb = currentFreeOrb + 1
			SpawnOrb(allHealthOrbs[currentFreeOrb], position)
			if currentFreeOrb >= ORB_POOL_SIZE then currentFreeOrb = 0 end
		end
	end
end

function SpawnOrb(self, position)
	self.position = position
	self.alive = true
	self.position.y = self.position.y + 1 
	self.YValue = position.y
	self.direction = {x = math.random(), y = 5, z = math.random()}
	print(self.transformID, " Nu spawnar jag")
	Transform.ActiveControl(self.transformID, true)		
	Transform.SetPosition(self.transformID, self.position)
	SphereCollider.SetActive(self.collider, true)
	activeOrbs = activeOrbs + 1	
end

function KillHealthOrb(self)
	self.alive = false
	Transform.ActiveControl(self.transformID, false)
	print(self.transformID, " Nu dor jag")
	SphereCollider.SetActive(self.collider, false)
	activeOrbs = activeOrbs - 1
end

function UpdateHealthOrbs(dt)
	for i = 1, ORB_POOL_SIZE do
		if allHealthOrbs[i].alive then
			UpdateOrb(allHealthOrbs[i], dt)
		end
	end
end

function UpdateOrb(self, dt) 
	self.duration = self.duration - dt
	if self.duration < 0 then KillHealthOrb(self)  return end
	local collisionIDs = self.collider:GetCollisionIDs()
	for	curID = 1, #collisionIDs do	
		if collisionIDs[curID] == player.collisionID then
			if player.health < 80 then player.health = player.health + 20 else player.health = 100 end
			Network.SendPlayerHealthPacket(player.transformID, player.health)
			KillHealthOrb(self)
			return 
		end
	end		
	local hm = GetHeightmap(self.position)		
	if hm then
		if self.position.y >= hm.asset:GetHeight(self.position.x, self.position.z) + 1 then
			self.YValue = self.YValue + self.direction.y * dt
			self.position.y = self.YValue
			self.direction.y = self.direction.y - 12 * dt		
			if not self.wallHit then 
				self.position.x = self.position.x + self.direction.x * dt * 6
				self.position.z = self.position.z + self.direction.z * dt * 6		
				local walls = CollisionHandler.GetIDsFromLayer(3)
				local realWalls = {}
				for i, v in pairs(walls) do
					realWalls[i] = v
				end	
				for	curID = 1, #collisionIDs do	
					for curWall = 1, #realWalls do
						if collisionIDs[curID] == realWalls[curWall] then
							self.wallHit = true
						end
					end
				end
			end
			Transform.SetPosition(self.transformID, self.position)
		end
	end
end

function UnloadHealthOrbs() print("TODO: Fixa unload för healthORBRBRBRs") end

return { Load = LoadHealthOrbs, Unload = UnloadHealthOrbs, Update = UpdateHealthOrbs }
