TIMEORBWAVEDURATION = 20

function CreateTimeOrbWave()
	local spell = {}
	spell.type = CreateOrbWaveType()
	spell.effect = CreateTimeSlowEffect
	spell.lifetime = TIMEORBWAVEDURATION
	spell.damage = 3
	spell.alive = false
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	for i = 1, ORBWAVEORBS do
		Gear.AddStaticInstance(model, spell.type.transformIDs[i])
	end

	function spell:Update(dt)
		hits = self.type:Update(dt)
		self.lifetime = self.lifetime - dt
		for i = 1, #hits do
			if hits[i].Hurt then
				table.insert(enemies[i].effects, self.effect())
				enemies[i]:Hurt(self.damage)
			end
		end
		if self.lifetime < 0 then
			self:Kill()
		end
	end

	function spell:Cast()
		self.type:Cast(Transform.GetPosition(player.transformID))
		self.lifetime = TIMEORBWAVEDURATION
		self.alive = true
	end

	function spell:Kill()
		self.type:Kill()
		self.alive = false
	end
	return spell
end