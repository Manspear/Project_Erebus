--TIMEORB_SPELL_TEXTURE = Assets.LoadTexture("Textures/ChargeTemp.dds");
TIMEORBWAVEDURATION = 6

function CreateTimeOrbWave(entity)
	local spell = {}
	spell.element = NATURE
	local model = Assets.LoadModel( "Models/TimeOrb.model" )
	spell.type = CreateOrbWaveType(model)
	spell.owner = entity
	spell.effect = TIME_SLOW_EFFECT_INDEX
	spell.lifetime = TIMEORBWAVEDURATION
	spell.damage = 3 * LEVEL_ROUND
	spell.alive = false
	spell.hudtexture = Assets.LoadTexture("Textures/TimeOrbTexture.dds");
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	
	--[[local model = Assets.LoadModel( "Models/grenade.model" )
	for i = 1, ORBWAVEORBS do
		Gear.AddStaticInstance(model, spell.type.transformIDs[i])
	end--]]

	function spell:Update(dt)
		if self.alive then
			local hits = self.type:Update(dt)
			self.lifetime = self.lifetime - dt
			for i = 1, #hits do
				if hits[i].Hurt then
					local effect = effectTable[self.effect]()
					hits[i]:Apply(effect)
					hits[i]:Hurt(self.damage, self.owner, self.element)
				end
			end
			if self.lifetime < 0 then
				self:Kill()
			end
		end
	end

	function spell:Cast(entity)
		local pos = Transform.GetPosition(entity.transformID)
		pos.y = pos.y - 5
		self.type:Cast(pos)
		self.lifetime = TIMEORBWAVEDURATION
		self.alive = true
	end

	function spell:Kill()
		self.type:Kill()
		self.alive = false
	end
	return spell
end

function DestroyTimeOrbWave(orbwave)
	DestroyOrbWaveType(orbwave.type)

	Assets.UnloadModel( "Models/grenade.model" )
	Assets.UnloadTexture("Textures/ChargeTemp.dds");
end