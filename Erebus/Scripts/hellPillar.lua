MAX_NR_OF_PILLARS = 5
MAX_CHARGE_TIME_PILLAR = 3
MAX_DAMAGE_PILLAR = 1000
SPEED_PILLAR = 50
EXPLOSION_RADIUS_PILLAR = 10

MIN_FALLOFF_PILLAR = 30
MAX_FALLOFF_PILLAR = 70 - MIN_FALLOFF_PILLAR
SPAM_CD_PILLAR = 0.3
SPAM_COMBO_NUMBER_PILLAR = 4 --number of attacks in the combo, last attack of combo applies effect

function CreateHellPillar()
	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.effectflag = false
		nade.damage = 0
		nade.alive = false
		nade.particles = createFireballParticles()
		nade.exploding = false
		

		local model = Assets.LoadModel( "Models/projectile1.model" )
		Gear.AddStaticInstance(model, nade.type.transformID)
		return nade
	end
	
	local spell = {}
	spell.maxChargeTime = MAX_CHARGE_TIME_ICENADE
	spell.effect = CreateSlowEffect
	spell.nades = {}
	spell.spamcd = SPAM_CD_PILLAR
	spell.timeSinceSpam = 0
	spell.chargedTime = 0
	spell.combo = 0
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast

	for i = 1, MAX_NR_OF_PILLARS do
		table.insert(spell.nades, initNade())
	end

	function spell:Cast(entity, chargetime)
		if self.timeSinceSpam > self.spamcd then
			for i = 1, #spell.nades do
				if not self.nades[i].alive then
					local factor = chargetime / self.maxChargeTime
					local pos = Transform.GetPosition(entity.transformID)
					local dir = Transform.GetLookAt(entity.transformID)
					local falloff = (1 - factor) *  MAX_FALLOFF_ICENADE + MIN_FALLOFF_ICENADE
					local radius = factor * EXPLOSION_RADIUS_ICENADE

					self.nades[i].type:Cast(pos, dir, falloff, SPEED_ICENADE, radius)
					self.nades[i].damage = factor * MAX_DAMAGE_ICENADE
					local effectflag = false
					if self.combo > SPAM_COMBO_NUMBER_ICENADE then
						self.combo = 0
						effectflag = true
					end
					self.nades[i].effectflag = effectflag
					self.nades[i].alive = true
					self.nades[i].particles.cast()
					self.timeSinceSpam = 0
					break
				end
			end
		end
	end
	
	function spell:Update(dt)
		self.timeSinceSpam = self.timeSinceSpam + dt
		
		for i = 1, #spell.nades do
			if self.nades[i].alive then
				self.nades[i].particles.update(self.nades[i].type.position.x, self.nades[i].type.position.y, self.nades[i].type.position.z)
				if not self.nades[i].exploding then
					self.nades[i].exploding = self.nades[i].type:flyUpdate(dt)
				else
					self.nades[i].particles.die(self.nades[i].type.position)
					hits = self.nades[i].type:Update(dt)
					
					for index = 1, #hits do
						if hits[index].Hurt then
							if self.nades[i].effectFlag then
								local effect = self.effect()
								table.insert(hits[index].effects, effect)
								effect:Apply(hits[index])
							end
							hits[index]:Hurt(self.nades[i].damage)
						end
					end
					if self.nades[i].type.explodetime > GRENADE_EXPLODE_TIME then
						self:Kill(i)
					end
				end

			end

				--self.particles.die(self.type.position)
		end
	end
	
	function spell:Kill(index)
		self.nades[index].type:Kill()
		self.nades[index].alive = false
		self.nades[index].exploding = false
	end
	return spell
end