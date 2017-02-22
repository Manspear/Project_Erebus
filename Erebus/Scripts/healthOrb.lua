HEALTH_EFFECT_DURATION = 2
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 5
healthOrbPool = {}
--healthOrbParticles = {}
healthColliderPool = {}
currentFreeOrb = 1
function CreateHealthOrb()
	local orb = {}
	orb.transformID, orb.collider, success = GetFreeMorph()	
	if success then
		orb.YValue = 0
		orb.steadY = false
		orb.duration = HEALTH_EFFECT_DURATION
		orb.position = 0
		orb.direction = 0
		orb.wallHit = false
		return orb
	else
		return nil
	end	
end

function SpawnHealthOrb(self, position)
	if self then
		self.position = position
		self.position.y = self.position.y + 1 
		self.YValue = position.y
		self.direction = {x = math.random(), y = 5, z = math.random()}
		Transform.ActiveControl(self.transformID, true)
		print(self.transformID)
		Transform.SetPosition(self.transformID, self.position)
		SphereCollider.SetActive(self.collider, true)
	end
end

function KillHealthOrb(self)
	if self then
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.collider, false)
		currentFreeOrb = currentFreeOrb - 1
	end
end

function UpdateHealthOrb(self, dt) 
	if self then
		local collisionIDs = self.collider:GetCollisionIDs()
		for	curID = 1, #collisionIDs do	
			if collisionIDs[curID] == player.collisionID then
				player.health = player.health + math.random(1, 2000)
				Network.SendPlayerHealthPacket(player.transformID, player.health)
				KillHealthOrb(self)
				return true
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
		return false
	end
	return true
end

function InitLifeOrbs()
	local model = Assets.LoadModel( "Models/Stone4.model" )
	for i = 1, ORB_POOL_SIZE do
		currentFreeOrb = i
		healthOrbPool[currentFreeOrb] =  Gear.BindForwardInstance(model)
		Transform.ActiveControl(healthOrbPool[currentFreeOrb], false)
		healthColliderPool[currentFreeOrb] = SphereCollider.Create(healthOrbPool[currentFreeOrb])
		CollisionHandler.AddSphere(healthColliderPool[currentFreeOrb], 1)
		SphereCollider.SetActive(healthColliderPool[currentFreeOrb], false)
	end
	currentFreeOrb = 0
end

function GetFreeMorph()
	local success = true
	if currentFreeOrb > ORB_POOL_SIZE then success = false  end
	currentFreeOrb = currentFreeOrb + 1	
	return healthOrbPool[currentFreeOrb], healthColliderPool[currentFreeOrb], success
end

InitLifeOrbs()