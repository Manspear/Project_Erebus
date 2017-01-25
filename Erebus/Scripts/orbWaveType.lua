ORBWAVEORBS = 50
ORBWAVEMINRADIUS = 1
ORBWAVEMAXRADIUS = 70 - ORBWAVEMINRADIUS --the number is how long out the wave will travel
ORBWAVELAPTIME = 3

function CreateOrbWaveType() 
	local type = {}
	type.transformIDs = {}
	type.positions = {}
	type.directions = {}
	type.sphereColliders = {}

	local angle = 0
	for i = 1, ORBWAVEORBS do
		table.insert(type.transformIDs, Transform.Bind())
		table.insert(type.positions, {x=0,y=0,z=0})
		table.insert(type.directions, {x = math.cos(angle), y = 0, z= math.sin(angle)})

		type.sphereColliders[i] = SphereCollider.Create(type.transformIDs[i])
		CollisionHandler.AddSphere(type.sphereColliders[i],1)
		SphereCollider.SetActive(type.sphereCollider, false);

		angle = angle + math.pi * 2 / ORBWAVEORBS
	end

	type.origo = {x=0,y=0,z=0}
	type.radius = 0
	type.hits = {}
	type.lifetime = 0
	type.laps = 1

	function type:Update(dt)
		result = {}
		self.lifetime = self.lifetime + dt
		local distance = ((math.sin((self.lifetime / ORBWAVELAPTIME)*3.14 - 3.14/2)+1) /2) * ORBWAVEMAXRADIUS + ORBWAVEMINRADIUS
		local scale = (math.sin((self.lifetime / ORBWAVELAPTIME)*3.14*2)+2)/2
		if self.lifetime > ORBWAVELAPTIME * self.laps then --makes it so it can hti people on the way back and the way out
			--self.lifetime = self.lifetime - ORBWAVELAPTIME
			self.laps = self.laps + 1
			self.hits = {} 
		end

		for i = 1, ORBWAVEORBS do
			local collisionIDs = self.sphereColliders[i]:GetCollisionIDs()
			self.positions[i].x = self.origo.x + self.directions[i].x * distance
			self.positions[i].y = self.origo.y + self.directions[i].y * distance
			self.positions[i].z = self.origo.z + self.directions[i].z * distance
			Transform.SetPosition(self.transformIDs[i], self.positions[i])
			Transform.SetScale(self.transformIDs[i], scale)
			SphereCollider.SetRadius(self.sphereColliders[i], scale)
			for curID = 1, #collisionIDs do
				for curEnemy=1, #enemies do
					if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() and not self.hits[enemies[curEnemy].transformID] then
						table.insert(result, enemies[curEnemy])
						self.hits[enemies[curEnemy].transformID] = true
					end
				end
			end
		end

		return result
	end

	function type:Cast(position)
		self.radius = ORBWAVEMINRADIUS
		self.origo = position
		self.lifetime = 0
		self.laps = 1
		for i = 1, ORBWAVEORBS do
			SphereCollider.SetActive(self.sphereCollider, true);
		end
	end

	function type:Kill()
		self.hits = {}
		for i =1 , ORBWAVEORBS do
			self.positions[i].x = 0
			self.positions[i].y = 0
			self.positions[i].z = 0
			Transform.SetPosition(self.transformIDs[i], self.positions[i])
			Transform.ActiveControl(self.transformIDs[i], true)
			SphereCollider.SetActive(self.sphereCollider, false);
		end		
	end

	return type
end