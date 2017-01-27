TIME_SLOW_FACTOR = 0.5 -- the dt of the affected unit will be muliplied with this number. 0.2 means the unit will move at 1/5 of normal speed
TIME_SLOW_DURATION = 10 * TIME_SLOW_FACTOR --will now last 5 REAL seconds (the timeslow effect will effect the duration of effects)

function CreateTimeSlowEffect()
	local effect = {}
	effect.duration = TIME_SLOW_DURATION
	function effect:Apply(entity)
			entity.timeScalar = entity.timeScalar * TIME_SLOW_FACTOR
	end
	function effect:Deapply(entity)
			entity.timeScalar = entity.timeScalar / TIME_SLOW_FACTOR
	end
	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt

		return self.duration > 0 
	end
	return effect
end