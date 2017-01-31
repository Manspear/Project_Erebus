ICEGRENADE_SPELL_TEXTURE = Assets.LoadTexture("Textures/icegrenade.dds");
MAX_NR_OF_ICENADES = 10
MAX_CHARGE_TIME_ICENADE = 3
MAX_DAMAGE_ICENADE = 10
SPEED_ICENADE = 100
EXPLOSION_RADIUS_ICENADE = 10

MIN_FALLOFF_ICENADE = 0.5
MAX_FALLOFF_ICENADE = 2 - MIN_FALLOFF_ICENADE
SPAM_CD_ICENADE = 0.3
SPAM_COMBO_NUMBER_ICENADE = 4 --number of attacks in the combo, last attack of combo applies effect

function CreateIceGrenade()

	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.effectflag = false
		nade.damage = 0
		nade.alive = false
		nade.particles = createIceGrenadeParticles()
		nade.exploding = false
		nade.hits = {}
		nade.soundID = -1

		local model = Assets.LoadModel( "Models/grenade.model" )
		Gear.AddStaticInstance(model, nade.type.transformID)
		return nade
	end
	
	local spell = {}
	spell.maxChargeTime = MAX_CHARGE_TIME_ICENADE
	spell.effect = CreateSlowEffect
	spell.nades = {}
	spell.spamcd = SPAM_CD_ICENADE
	spell.timeSinceSpam = 0
	spell.chargedTime = 0
	spell.combo = 0
	spell.castSFX = "Effects/burn_ice_001.wav"
	spell.hitSFX = {}
	spell.hitSFX[1] = "Effects/debris_ice_001.wav"
	spell.hitSFX[2] = "Effects/axe_ice_005.wav"
	spell.hudtexture = ICEGRENADE_SPELL_TEXTURE
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1

	for i = 1, 10 do
		table.insert(spell.nades, initNade())
	end
	function spell:Cast(entity, chargetime)
		if self.timeSinceSpam > self.spamcd then
			for i = 1, #spell.nades do
				if not self.nades[i].alive then
					local factor = chargetime / self.maxChargeTime
					local pos = Transform.GetPosition(entity.transformID)
					local dir = Transform.GetLookAt(entity.transformID)
					dir.y = dir.y +0.1
					local falloff = (1 - factor) *  MAX_FALLOFF_ICENADE + MIN_FALLOFF_ICENADE
					local radius = factor * EXPLOSION_RADIUS_ICENADE

					self.nades[i].type:Cast(pos, dir, falloff, SPEED_ICENADE, radius)
					self.nades[i].damage = factor * MAX_DAMAGE_ICENADE
					local effectflag = false
					self.combo = self.combo + 1
					if self.combo > SPAM_COMBO_NUMBER_ICENADE then
						self.combo = 0
						effectflag = true
					end
					self.nades[i].effectflag = effectflag
					self.nades[i].alive = true
					self.nades[i].particles.cast()
					self.timeSinceSpam = 0
					self.nades[i].soundID = Sound.Play(self.castSFX, 13, pos)
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
					if self.nades[i].exploding then for index = 1, #self.hitSFX do Sound.Play(self.hitSFX[index], 1, self.nades[i].type.position) end end
				else
					self.nades[i].particles.die(self.nades[i].type.position)
					hits = self.nades[i].type:Update(dt)
					
					self.nades[i].particles.die(self.nades[i].type.position)
					for index = 1, #hits do
						if hits[index].Hurt and not self.nades[i].hits[hits[index].transformID] then
							if self.nades[i].effectflag then
								local effect = self.effect()
								table.insert(hits[index].effects, effect)
								effect:Apply(hits[index])
							end
							hits[index]:Hurt(self.nades[i].damage)
							self.nades[i].hits[hits[index].transformID] = true
						end
					end
					if self.nades[i].type.explodetime > GRENADE_EXPLODE_TIME-0.01 then
						Transform.SetPosition(self.nades[i].type.transformID, {x=0,y=0,z=0})
					end
					if self.nades[i].type.explodetime > GRENADE_EXPLODE_TIME then
						self:Kill(i)
					end
				end

			end

				--self.nades[i].particles.die(self.type.position)
		end
	end
	spell.Charge = BaseCharge
	function spell:ChargeCast(entity)
		self.combo = 100
		self:Cast(entity, math.min(self.chargedTime, self.maxChargeTime))
	end

	function spell:Kill(index)
		self.nades[index].hits = {}
		self.nades[index].type:Kill()
		self.nades[index].alive = false
		self.nades[index].exploding = false
	end
	return spell
end