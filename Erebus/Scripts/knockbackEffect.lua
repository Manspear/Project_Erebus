KNOCKBACK_SPEED = 2
function CreateKnockbackEffect(owner, power)
	local effect = {}
	effect.owner = owner
	effect.notDone = true
	effect.power = power or KNOCKBACK_SPEED
	effect.direction = {x = 0, y = 0, z = 0}
	effect.fallSpeed = 0
	effect.position = {x = 0, y = 0, z = 0}
	effect.damage = 0
	effect.wallHit = false
	effect.collisionID = -1
	effect.YValue = 0
	function effect:Apply(entity)
		self.position = Transform.GetPosition(entity.transformID)
		self.YValue = self.position.y
		self.direction = vec3sub(self.position, self.owner.position)
		self.direction.y =  1
		self.fallSpeed = 3
		self.damage = 1
		self.collisionID = entity.collider:GetID()
		if entity.SetState then
			if entity.type ~= ENEMY_DUMMY and entity.stateName ~= DEAD_STATE then
				entity.SetState(entity, DO_NOTHING_STATE)
			end
		end
	end

	function effect:Deapply(entity)	
		if entity.SetState then
			if entity.type ~= ENEMY_DUMMY and entity.stateName ~= DEAD_STATE then
				entity.SetState(entity,IDLE_STATE)
			end
		end
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.position = Transform.GetPosition(entity.transformID)
		self.YValue = self.YValue+ self.direction.y * dt * self.power
		self.position.y = self.YValue
		self.direction.y = self.direction.y - self.fallSpeed * dt		
		self.damage = self.damage + 2 * dt
		local hm = GetHeightmap(self.position)		
		if hm then
			if self.position.y <= hm.asset:GetHeight(self.position.x, self.position.z) then
				self.notDone = false
				entity:Hurt(self.damage , self.owner, NATURE)	
			end
		end

		if not self.wallHit then 
			self.position.x = self.position.x + self.direction.x * dt * self.power
			self.position.z = self.position.z + self.direction.z * dt * self.power	
			if CollisionHandler.IsHitboxCollidingWithLayer(entity.collider, 3) then 
				self.wallHit = true
			end
		end
		Transform.SetPosition(entity.transformID, self.position)	
		return self.notDone
	end
	return effect
end

function DestroyKnockbackEffect(effect)
	effect = nil
end