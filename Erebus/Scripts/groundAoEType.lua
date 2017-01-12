
function CreateGroundAoEType(startSize, endSize, duration)
	type = {}
	type.lifetime = 0
	type.startRadius = startSize
	type.endRadius = endSize
	type.duration = duration
	type.lifetime = 0
	type.transformID = Transform.Bind()
	type.position = {x=0,y=0,z=0}
	
	type.sphereCollider = SphereCollider.Create(type.transformID)
	CollisionHandler.AddSphere(type.sphereCollider)

	function type:Update(dt)
		result = {} --returns table of every enemy it hits, up to spell to do what it wants to do. kill it self, do dmg, apply effects etc.
		
		self.lifetime = self.lifetime - dt

		local transitionFactor = self.lifetime / self. duration
		local scale = self.startRadius * transitionFactor + self.endRadius * (1-transitionFactor)
		
		SphereCollider.SetRadius(self.sphereCollider, scale);
		Transform.SetScale(self.transformID, scale)

		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					table.insert(result, enemies[curEnemy])
				end
			end
		end

		return result
	end

	function type:Cast(position, direction)
		--heightmap checking LUL. please replace with ray mot heightmap asap
		local canspawn = false
		for i = 0, 10 do
			position.x = position.x + direction.x
			position.y = position.y + direction.y
			position.z = position.z + direction.z
			
			local posx = math.floor(position.x/512)
			local posz = math.floor(position.z/512)
			local heightmapIndex = (posz*2 + posx)+1
			local height = heightmaps[heightmapIndex]:GetHeight(position.x%512,position.z%512)+heightmaps[heightmapIndex].offset
			if position.y < height then
				canspawn = true
				break
			end
		end

		if canspawn then
			self.lifetime = self.duration
			self.position = position
			return true -- tells the spell that it successfully spawned
		end

		return false
	end

	function type:Kill()
		Transform.ActiveControl(self.transformID, true)
		self.position.x = 0
		self.position.y = 0
		self.position.z = 0
		Transform.SetPosition(self.transformID, self.position)
	end

	return type
end