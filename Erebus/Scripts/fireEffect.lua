FIREEFFECTINTERVAL = 0.5
FIREEFFECTDURATION = 5
FIREEFFECTDAMAGE = 0

function CreateFireEffect(effectowner)
	local effect = {}
	effect.owner = effectowner
	effect.damage = FIREEFFECTDAMAGE
	effect.duration = FIREEFFECTDURATION
	effect.interval = FIREEFFECTINTERVAL
	effect.particles = GetNextFireEffectParticle()
	function effect:Apply(entity)
		print("Applied")	
		print(entity.transformID)
		self.particles:Update(Transform.GetPosition(entity.transformID))
		self.particles:Cast()
	end

	function effect:Deapply(entity)
		print("Deapplied")	
		self.particles:Die()
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		self.interval = self.interval - dt
		self.particles:Update(Transform.GetPosition(entity.transformID))
		if self.interval < 0 then
			self.interval = self.interval + FIREEFFECTINTERVAL
			entity:Hurt(self.damage, effect.owner)
		end
		
		return self.duration > 0 
	end

	--[[function effect:Update(dt)
		local todelete = {}
		a = ""
		for i = 1, #self.targets do
			a = a .. " " .. self.targets[i].health
			if self.durations[i] > 0 then
				self.durations[i] = self.durations[i] - dt
				self.intervals[i] = self.intervals[i] - dt
				if self.intervals[i] < 0 then
					print(self.targets[i].health)
					self.targets[i].health = self.targets[i].health - self.damage
					self.intervals[i] = self.intervals[i] + FIREEFFECTINTERVAL
				end
			else 
				table.insert(todelete, i)
			end
		end
		print(a)
		for i = 1, #todelete do
			table.remove(self.targets, todelete[i])
		end
	end

	function effect:Add(entity)
		local result = true
		for i = 1, #self.targets do
			if entity == self.targets[i] then result = false; break end
		end
		if result then --check if entity is in targets, dont want to apply effect to already affected enemies
			table.insert(self.targets, entity)
			table.insert(self.durations, FIREEFFECTDURATION)
			table.insert(self.intervals, FIREEFFECTINTERVAL)
		end
	end

	function effect:Kill()
		self.targets = {}
	end]]

	return effect
end