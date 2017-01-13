TIMESLOWFACTOR = 0.5 -- the dt of the affected unit will be muliplied with this number. 0.2 means the unit will move at 1/5 of normal speed
TIMESLOWDURATION = 5 * TIMESLOWFACTOR --will now last 5 REAL seconds (the timeslow effect will effect the duration of effects)

function CreateTimeSlowEffect()
	local effect = {}
	effect.duration = TIMESLOWDURATION

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		entity.timeScalar = TIMESLOWFACTOR
		self.duration = self.duration - dt

		if self.duration < 0 then
			entity.timeScalar = 1.0
		end

		return self.duration > 0 
	end

	return effect
end