function CreateRayType()
	local ray = {}
	ray.transformID = Transform.Bind()
	ray.position = {x=0,y=0,z=0}

	ray.sphereCollider = SphereCollider.Create(ray.transformID)
	CollisionHandler.AddSphere(ray.sphereCollider, 1)
	SphereCollider.SetActive(ray.sphereCollider, false);

	function ray:Cast(position)
		Transform.ActiveControl(self.transformID, true)
		Transform.SetPosition(self.transformID, position)
		SphereCollider.SetActive(self.sphereCollider, true);
		self.position = position
	end

	function ray:Update(position)
		result = {} --returns table of every enemy it hits, up to spell to do what it wants to do. kill it self, do dmg, apply effects etc.
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		self.position = position
		Transform.SetPosition(self.transformID, self.position)
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					table.insert(result, enemies[curEnemy])
				end
			end
		end
		return result
	end

	function ray:Kill()
		Transform.ActiveControl(self.transformID, false)
		SphereCollider.SetActive(self.sphereCollider, false);
	end

	return ray
end