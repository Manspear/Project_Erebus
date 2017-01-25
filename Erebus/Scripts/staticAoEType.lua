function CreateStaticAoEType()
	local type = {}
	type.transformID = Transform.Bind()
	
	type.sphereCollider = SphereCollider.Create(type.transformID)
	CollisionHandler.AddSphere(type.sphereCollider, 1)
	SphereCollider.SetActive(type.sphereCollider, false)
	Transform.ActiveControl(type.transformID, false)
	type.radius = 0
	type.duration = 0
	type.timer = 0
	function type:Cast(duration, radius, )
		self.radius = radius
		self.duratio = duration
		self.timer = 0
	end
	function type:Update(dt)
		self.timer = self.timer + dt
		local factor = self.timer / self.duration
		local scale = factor * radius
		Transform.SetScale(self.transformID, scale)
		SphereCollider.SetRadius(self.transformId, scale)
		
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

	end
end