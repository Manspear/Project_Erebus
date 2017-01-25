MAX_NR_OF_ICENADES = 10
MAX_CHARGE_TIME_ICENADE = 3
MAX_DAMAGE_ICENADE = 10
SPEED_ICENADE = 100
EXPLOSION_RADIUS_ICENADE = 10

MIN_FALLOFF_ICENADE = 30
MAX_FALLOFF_ICENADE = 70 - MIN_FALLOFF_ICENADE
SPAM_CD_ICENADE = 0.3

function CreateIceGrenade()

	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.effectflag = false
		nade.chargedTime = 0
		nade.damage = 0
		nade.alive = false
		nade.particles = createFireballParticles()
		local model = Assets.LoadModel( "Models/projectile1.model" )
		Gear.AddStaticInstance(model, nade.type.transformID)
		return nade
	end
	
	local spell = {}
	spell.maxChargeTime = MAX_CHARGE_TIME_ICENADE
	spell.effect = CreateSlowEffect
	spell.nades = {}
	spell.spamcd = SPAM_CD_ICENADE
	spell.timeSinceSpam = 0
	for i = 1, 10 do
		table.insert(spell.nades, initNade())
	end

	function spell:Cast(entity, chargetime, effectflag)
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
				hits = self.nades[i].type:Update(dt)
				self.nades[i].particles.update(self.nades[i].type.position.x, self.nades[i].type.position.y, self.nades[i].type.position.z)
		
				self.nades[i].particles.die(self.nades[i].type.position)
				for index = 1, #hits do
					if hits[index].Hurt then
						if self.nades[i].effectFlag then
							local effect = self.effect()
							table.insert(hits[index].effects, effect)
							effect:Apply(hits[index])

						end
						--hits[index]:Hurt(self.nades[i].damage)
						self:Kill(i)
					end
				end
				if self.nades[i].type.explodetime > GRENADE_EXPLODE_TIME then
					self:Kill(i)
				end
			end

				--self.particles.die(self.type.position)
		end
	end

	function spell:Kill(index)
		self.nades[index].type:Kill()
		self.nades[index].alive = false
	end
	return spell
end