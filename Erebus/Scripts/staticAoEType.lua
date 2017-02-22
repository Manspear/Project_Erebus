function CreateStaticAoEType(model)
	local type = {}
	--type.transformID = Transform.Bind()
	--type.transformID = Gear.BindStaticInstance(model)
	type.transformID = Gear.BindForwardInstance(model)
	
	type.sphereCollider = SphereCollider.Create(type.transformID)
	CollisionHandler.AddSphere(type.sphereCollider, 1)
	SphereCollider.SetActive(type.sphereCollider, false)
	Transform.ActiveControl(type.transformID, false)
	type.position = {x=0,y=0,z=0}
	type.maxradius = 0
	type.duration = 0
	type.timer = 0

	function type:Cast(duration, radius, position)
		self.position = position
		Transform.ActiveControl(self.transformID, true)
		SphereCollider.SetActive(self.sphereCollider, true)
		Transform.SetPosition(self.transformID, self.position)
		self.maxradius = radius
		self.duration = duration
		self.timer = 0
	end

	function type:Update(dt)
		local result = {}
		self.timer = self.timer + dt
		local factor = math.min(self.timer / self.duration,1)
		local scale = factor * self.maxradius
		SphereCollider.SetRadius(self.sphereCollider, scale)
		scale = scale + 0.7*math.cos(self.timer*4)
		Transform.SetScale(self.transformID, 2.1*scale)
		local rot = Transform.GetRotation(self.transformID)
		rot.y = rot.y + dt
		Transform.SetRotation(self.transformID, rot)
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					table.insert(result, enemies[curEnemy])
				end
			end
			if collisionIDs[curID] == boss.collider:GetID() then
				table.insert(result, boss)
			end
		end
		return result
	end

	function type:Kill()
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.sphereCollider, false)
	end

	return type
end