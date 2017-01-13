function CreateArcType()
	arc = CreateProjectileType()
	
	arc.Shoot = function(self, position, direction, speed)
		self.velocity.x = direction.x * speed
		self.velocity.y = direction.y * speed+speed/2
		self.velocity.z = direction.z * speed
		self.position = position
		Transform.SetPosition(self.transformID, self.position)
	end

	arc.Update = function(self, dt)
		
		result = {}

		self.velocity.y = self.velocity.y - 70 * dt

		self.position.x = self.position.x + self.velocity.x*dt
		self.position.y = self.position.y + self.velocity.y*dt
		self.position.z = self.position.z + self.velocity.z*dt


		Transform.SetPosition(self.transformID, self.position)

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
	return arc
end