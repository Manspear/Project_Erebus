GRENADE_EXPLODE_TIME = 0.5

function CreateGrenadeType()
	local type = {}
	type.transformID = Transform.Bind()
	
	type.sphereCollider = SphereCollider.Create(type.transformID)
	CollisionHandler.AddSphere(type.sphereCollider, 1)
	SphereCollider.SetActive(type.sphereCollider, false)
	Transform.ActiveControl(type.transformID, false)
	
	type.direction = {x=0,y=0,z=0}
	type.positon = {x=0,y=0,z=0}
	type.falloffFactor = 0
	type.speed = 0
	type.hitflag = false
	type.radius = 0
	type.explodetime = 0


	function type:Cast(position, direction, falloff, speed, explosionRadius)
		self.direction = direction
		self.position = position
		self.falloffFactor = falloff
		self.speed = speed
		Transform.ActiveControl(self.transformID, true)
		SphereCollider.SetActive(self.sphereCollider, true)
		self.hitflag = false
		self.radius = explosionRadius
		self.explodetime = 0
	end
	function type:flyUpdate(dt)
		result = false
		self.direction.y = self.direction.y - dt
		self.position.x = self.position.x + self.direction.x*self.speed*dt
		self.position.y = self.position.y + self.direction.y*self.speed*dt
		self.position.z = self.position.z + self.direction.z*self.speed*dt
		Transform.SetPosition(self.transformID, self.position)

		local posx = math.floor(self.position.x/512)
		local posz = math.floor(self.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end
		if heightmaps[heightmapIndex]:GetHeight(self.position.x, self.position.z) > self.position.y then
			result = true
		end
		return result
	end
	function type:Update(dt)
		result = {} 
		self.explodetime = self.explodetime + dt
		local scale = (self.explodetime / GRENADE_EXPLODE_TIME)* 4 + 1
		Transform.SetScale(self.transformID, scale)
		SphereCollider.SetRadius(self.sphereCollider, scale)
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					if self.hitflag then
						table.insert(result, enemies[curEnemy])
					else
						self.hitflag = true
						SphereCollider.SetRadius(self.sphereCollider, self.radius)
						break
					end
				end
			end
		end
		
		return result
	end

	function type:Kill()
		Transform.SetScale(self.transformID, 1)
		Transform.SetPosition(self.transformID, {x=0,y=0,z=0})
		SphereCollider.SetRadius(self.sphereCollider, 1)
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.sphereCollider, false)
	end

	return type
end