function CreateRayType()
	local ray = {}
	ray.transformID = Transform.Bind()
	ray.position = {x=0,y=0,z=0}
	ray.direction = {x=0,y=0,z=0}

	ray.oobCollider = OBBCollider.Create(ray.transformID)
	CollisionHandler.AddOBB(ray.oobCollider, 1)
	OBBCollider.SetActive(ray.oobCollider, false);

	function ray:Cast(position)
		Transform.ActiveControl(self.transformID, true)
		Transform.SetPosition(self.transformID, position)
		OBBCollider.SetActive(self.oobCollider, true);
		self.position = position
	end

	function ray:Update(position, direction)
		result = {} --returns table of every enemy it hits, up to spell to do what it wants to do. kill it self, do dmg, apply effects etc.
		local collisionIDs = self.oobCollider:GetCollisionIDs()
		self.position = position
		OBBCollider.SetXAxis(self.oobCollider, direction.x, direction.y, direction.z)
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
		OBBCollider.SetActive(self.oobCollider, false);
	end

	return ray
end