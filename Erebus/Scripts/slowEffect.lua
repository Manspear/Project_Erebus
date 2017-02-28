SLOWEFFECTFACTOR = 0.5
SLOWEFFECTDURATION = 5

function CreateSlowEffect()
	local effect = {}
	effect.duration = SLOWEFFECTDURATION

	function effect:Apply(entity)
		entity.movementSpeed = entity.movementSpeed * SLOWEFFECTFACTOR
	end

	function effect:Deapply(entity)
		entity.movementSpeed = entity.movementSpeed / SLOWEFFECTFACTOR
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		
		return self.duration > 0 
	end

	return effect
end

function DestroySlowEffect(effect)
	effect = nil
end