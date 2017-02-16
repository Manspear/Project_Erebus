KNOCKBACK_POWER = 1
function CreateKnockbackEffect(entity, power, direction)
	local effect = {}
	effect.owner = entity
	effect.power = power or KNOCKBACK_POWER
	effect.direction = direction or {0, 1, 0}

	function effect:Apply(entity)
		entity.timeScalar = entity.timeScalar * TIMESLOW_FACTOR

	end

	function effect:Deapply(entity)
		entity.timeScalar = entity.timeScalar / TIMESLOW_FACTOR

	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt / entity.timeScalar
		return self.duration > 0 
	end
	return effect
end