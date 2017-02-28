TIMESLOW_FACTOR = 0.5 -- the dt of the affected unit will be muliplied with this number. 0.2 means the unit will move at 1/5 of normal speed
TIMESLOW_DURATION = 3  --will now last 5 REAL seconds (the timeslow effect will effect the duration of effects)
TIMESLOW_POOL_SIZE = 5

timeslowParticles = {}
function CreateTimeSlowEffect()
	local effect = {}
	effect.duration = TIMESLOW_DURATION
	effect.particles = GetNextFreeTimeslow()
	function effect:Apply(entity)
		entity.timeScalar = entity.timeScalar * TIMESLOW_FACTOR
		effect.particles:cast()
	end
	function effect:Deapply(entity)
		entity.timeScalar = entity.timeScalar / TIMESLOW_FACTOR
		effect.particles:die()
	end
	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt / entity.timeScalar
		effect.particles:update(Transform.GetPosition(entity.transformID))
		return self.duration > 0 
	end
	return effect
end

function DestroyTimeSlowEffect(effect)
	effect = nil
end

function InitTimeSlows()
	for i = 1, TIMESLOW_POOL_SIZE do
		currentFree = i
		timeslowParticles[i] = createTimeslowParticles()
	end
	currentFree = 0
end

function GetNextFreeTimeslow()
	if currentFree >= TIMESLOW_POOL_SIZE then currentFree = 0 end
	currentFree = currentFree + 1	
	return timeslowParticles[currentFree]
end

InitTimeSlows()