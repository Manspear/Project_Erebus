HEALTH_EFFECT_DURATION = 2
HEALTH_ORB_LIFE = 20
ORB_POOL_SIZE = 8
healthOrbPool = {}
--healthOrbParticles = {}
healthColliderPool = {}
currentFreeOrb = 0
allHealthOrbs = {}

function CreateHealthOrb()
	local orb = {}
	local model = Assets.LoadModel( "Models/Stone4.model" )
	orb.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(orb.transformID, false)
	orb.collider = SphereCollider.Create(orb.transformID)
	CollisionHandler.AddSphere(orb.collider, 1)
	SphereCollider.SetActive(orb.collider, false)
	orb.YValue = 0
	orb.steadY = false
	orb.duration = HEALTH_EFFECT_DURATION
	orb.position = 0
	orb.direction = 0
	orb.wallHit = false
	
	return orb	
end

for i = 1, ORB_POOL_SIZE do allHealthOrbs[i] = CreateHealthOrb() end

function SpawnHealthOrb(self, position)
	self.position = position
	self.position.y = self.position.y + 1 
	self.YValue = position.y
	self.direction = {x = math.random(), y = 5, z = math.random()}
	Transform.ActiveControl(self.transformID, true)	
	Transform.SetPosition(self.transformID, self.position)
	SphereCollider.SetActive(self.collider, true)	
end

function KillHealthOrb(self)
	Transform.ActiveControl(self.transformID, false)
	SphereCollider.SetActive(self.collider, false)
	currentFreeOrb = currentFreeOrb - 1
end

function UpdateHealthOrb(self, dt) 
	local collisionIDs = self.collider:GetCollisionIDs()
	for	curID = 1, #collisionIDs do	
		if collisionIDs[curID] == player.collisionID then
			local newHealth = player.health + math.random(1, 2000)
			if newHealth > 100 then 
				player.health = 100
			else
				player.health = newHealth
			end
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

function GetHealthOrb()
	currentFreeOrb = currentFreeOrb + 1
	print(currentFreeOrb, "\t", allHealthOrbs[currentFreeOrb])
	return allHealthOrbs[currentFreeOrb]
end

function hejja()
	for i = 1, #allHealthOrbs do print(allHealthOrbs[i]) end
end
