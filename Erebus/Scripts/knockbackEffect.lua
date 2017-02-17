KNOCKBACK_POWER = 1
KNOCKBACK_SPEED = 4
function CreateKnockbackEffect(entity, power, direction)
	local effect = {}
	effect.owner = entity
	effect.notDone = true
	effect.power = power or KNOCKBACK_POWER
	effect.direction = direction or {x = 0, y = 1, z = 0}
	effect.fallSpeed = 0
	effect.position = {x = 0, y = 0, z = 0}
	effect.damage = 0

	function effect:Apply(entity)
		self.position = Transform.GetPosition(entity.transformID)
		self.direction = vec3sub(self.position, self.owner.position)
		self.direction.y =  1
		self.fallSpeed = 2
		self.damage = 1
		entity.SetState(entity,"DeadState")
	end

	function effect:Deapply(entity)	
		entity.SetState(entity,"FollowState")
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.position.x = self.position.x + self.direction.x * dt * KNOCKBACK_SPEED
		self.position.y = self.position.y + self.direction.y * dt * KNOCKBACK_SPEED
		self.position.z = self.position.z + self.direction.z * dt * KNOCKBACK_SPEED

		Transform.SetPosition(entity.transformID, self.position)
		self.direction.y = self.direction.y - self.fallSpeed * dt
		self.damage = self.damage + 2 * dt
		local hm = GetHeightmap(self.position)		
		if hm then
			if self.position.y <= hm.asset:GetHeight(self.position.x, self.position.z) then
				self.notDone = false
				entity:Hurt(self.damage , self.owner)	
			end
		end

		return self.notDone
	end
	return effect
end