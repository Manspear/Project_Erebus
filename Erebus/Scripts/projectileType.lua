function CreateProjectileType(model)
	local projectile = {}
	--projectile.transformID = Transform.Bind()
	projectile.transformID = Gear.BindForwardInstance(model)
	projectile.velocity = {x=0,y=0,z=0}
	projectile.position = {x=0,y=0,z=0}

	projectile.sphereCollider = SphereCollider.Create(projectile.transformID)
	CollisionHandler.AddSphere(projectile.sphereCollider, 2)
	SphereCollider.SetActive(projectile.sphereCollider, false)
	Transform.ActiveControl(projectile.transformID, false)

	function projectile:Shoot(position, direction, speed)
		self.velocity.x = direction.x * speed
		self.velocity.y = direction.y * speed
		self.velocity.z = direction.z * speed
		self.position = position
		Transform.SetPosition(self.transformID, self.position)
		Transform.ActiveControl(self.transformID, true)
		SphereCollider.SetActive(self.sphereCollider, true)
	end

	function projectile:Update(dt)
		result = {} --returns table of every enemy it hits, up to spell to do what it wants to do. kill it self, do dmg, apply effects etc.
		if not self.position then self.position = {x=0,y=100,z=0} end
		self.position.x = self.position.x + self.velocity.x*dt
		self.position.y = self.position.y + self.velocity.y*dt
		self.position.z = self.position.z + self.velocity.z*dt

		Transform.SetPosition(self.transformID, self.position)

		local collisionIDs = self.sphereCollider:GetCollisionIDs()

		for curID = 1, #collisionIDs do
			if collisionIDs[curID] == player.sphereCollider:GetID() then
				table.insert(result, player)
			end
		end
		return result
	end

	function projectile:Kill()
		Transform.ActiveControl(self.transformID, false)
		Transform.SetPosition(self.transformID, {x = 0, y = 0, z = 0})
		SphereCollider.SetActive(self.sphereCollider, false);
	end

	return projectile
end

function DestroyProjectileType(projectile)
	Gear.UnbindInstance(projectile.transformID)
end