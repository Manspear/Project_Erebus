ICEGRENADE_SPELL_TEXTURE = Assets.LoadTexture("Textures/icegrenade.dds");
MAX_NR_OF_ICENADES = 10
MAX_CHARGE_TIME_ICENADE = 3
MAX_DAMAGE_ICENADE = 10
SPEED_ICENADE = 50
EXPLOSION_RADIUS_ICENADE = 10

MIN_FALLOFF_ICENADE = 1
MAX_FALLOFF_ICENADE = 2 - MIN_FALLOFF_ICENADE
SPAM_CD_ICENADE = 0.3
SPAM_COMBO_NUMBER_ICENADE = 4 --number of attacks in the combo, last attack of combo applies effect
ICEGRENADE_CAST_SFX = "Effects/burn_ice_001.wav"
ICEGRENADE_HIT_SFX = "Effects/Ice_impact_lite_02.wav"

function CreateIceGrenade(entity)
	
	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.effectflag = false
		nade.effects = {}
		table.insert(nade.effects, SLOW_EFFECT_INDEX)
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
	spell.simulation = {position = {x = 0, y = 0, z = 0}, direction = {x = 0, y = 0, z = 0}, falloff = 0}
	spell.maxChargeTime = MAX_CHARGE_TIME_ICENADE
	spell.owner = entity
	spell.nades = {}
	spell.spamcd = SPAM_CD_ICENADE
	spell.cooldown = 0
	spell.chargedTime = 0
	spell.combo = 0
	spell.damage = MAX_DAMAGE_ICENADE
	spell.hudtexture = ICEGRENADE_SPELL_TEXTURE
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	spell.timeSinceLastPoop = 0
	spell.Change = GenericChange
	spell.isActiveSpell = false
	for i = 1, 10 do
		table.insert(spell.nades, initNade())
	end
	function spell:Cast(entity, chargetime)
		if self.cooldown < 0 then
			--ZoomInCamera()
			self.timeSinceLastPoop = 2
			local pos = Transform.GetPosition(entity.transformID)
			local dir = Transform.GetLookAt(entity.transformID)
			for i = 1, #spell.nades do
				if not self.nades[i].alive then
					local factor = chargetime / self.maxChargeTime				
					dir.y = dir.y + 0.1
					local falloff = (1 - factor) *  MAX_FALLOFF_ICENADE + MIN_FALLOFF_ICENADE
					local radius = factor * EXPLOSION_RADIUS_ICENADE

					self.nades[i].type:Cast(pos, dir, falloff, SPEED_ICENADE, radius)
					self.nades[i].damage = factor * self.damage
					local effectflag = false
					self.combo = self.combo + 1
					if self.combo > SPAM_COMBO_NUMBER_ICENADE then
						self.combo = 0
						effectflag = true
					end
					self.nades[i].effectflag = effectflag
					self.nades[i].alive = true
					self.nades[i].particles.cast()
					self.cooldown = self.spamcd
					self.nades[i].soundID = Sound.Play(ICEGRENADE_CAST_SFX, 3, pos)
					break
				end
			end
			self.damage = MAX_DAMAGE_ICENADE
		end
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.isActiveSpell then	
			self.timeSinceLastPoop = self.timeSinceLastPoop - dt
			if self.timeSinceLastPoop < 0 then
				self.timeSinceLastPoop = 1000
			end
		end
		for i = 1, #spell.nades do
			if self.nades[i].alive then
				self.nades[i].particles.update(self.nades[i].type.position)
				if not self.nades[i].exploding then
					self.nades[i].exploding = self.nades[i].type:flyUpdate(dt)
					if self.nades[i].exploding then 
						Transform.ActiveControl(self.nades[i].type.transformID, false)
						Sound.Play(ICEGRENADE_HIT_SFX, 3, self.nades[i].type.position) 
						Sound.Stop(self.nades[i].soundID)
					end
				else
					self.nades[i].particles.die(self.nades[i].type.position)
					hits = self.nades[i].type:Update(dt)
					--self.nades[i].particles.die(self.nades[i].type.position)
					for index = 1, #hits do
						if hits[index].Hurt and not self.nades[i].hits[hits[index].transformID] then
							if self.nades[i].effectflag then
								for e = 1, #self.nades[i].effects do
									local effect = effectTable[self.nades[i].effects[e]]()
									hits[index]:Apply(effect)
								end
							end
							hits[index]:Hurt(self.nades[i].damage, self.owner)
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
		end
		if self.isActiveSpell then self:Aim(Transform.GetPosition(self.owner.transformID), Transform.GetLookAt(self.owner.transformID), dt) end
	end
	
	spell.Charge = BaseCharge
	function spell:ChargeCast(entity)
		self.combo = 100
		self:Cast(entity, math.min(self.chargedTime, self.maxChargeTime))
		self.chargedTime = 0
		ZoomOutCamera()
	end

	function spell:Kill(index)

		if index then 
			self.nades[index].hits = {}
			self.nades[index].type:Kill()
			self.nades[index].alive = false
			self.nades[index].exploding = false
			if #self.nades[index].effects > 1 then
				table.remove(self.nades[index].effects)
			end
		else
			for i = 1, #self.nades do
				self.nades[i].hits = {}
				self.nades[i].type:Kill()
				self.nades[i].alive = false
				self.nades[i].exploding = false
				if #self.nades[i].effects > 1 then
					table.remove(self.nades[i].effects)
				end
			end
		end		
	end

	function spell:GetEffect()
		return self.nades[1].effects[1]
	end

	spell.lastPosition = {x = 0, y = 0, z = 0}
	spell.lastLookAt = {x = 0, y = 0, z = 0}
	function spell:Aim(aPos, lookAt, dt)
		if not vec3equal(lookAt, self.lastLookAt) or not vec3equal(aPos, self.lastPosition) then			
			self.lastPosition = aPos
			self.lastLookAt = lookAt
			self.simulation.position.x = aPos.x		self.simulation.position.y = aPos.y		self.simulation.position.z = aPos.z		
			self.simulation.direction.x = lookAt.x		self.simulation.direction.y = lookAt.y + 0.1	self.simulation.direction.z = lookAt.z	

			local factor = self.chargedTime / self.maxChargeTime	
			self.simulation.falloff = (1 - factor) *  MAX_FALLOFF_ICENADE + MIN_FALLOFF_ICENADE
			local hm = GetHeightmap(self.simulation.position)
			local again = true
			while again do	
				self.simulation.direction.y = self.simulation.direction.y - self.simulation.falloff * dt
				self.simulation.position.x = self.simulation.position.x + self.simulation.direction.x * SPEED_ICENADE * dt
				self.simulation.position.y = self.simulation.position.y + self.simulation.direction.y * SPEED_ICENADE * dt										   
				self.simulation.position.z = self.simulation.position.z + self.simulation.direction.z * SPEED_ICENADE * dt		
				if not hm or hm.asset:GetHeight(self.simulation.position.x, self.simulation.position.z) > self.simulation.position.y then
					again = false
				end
			end	
			player.aim:SetPos(self.simulation.position)	
		end
		
	end
	
	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		Transform.ActiveControl(self.owner.aim.transformID, self.isActiveSpell)
	end

	function spell:Combine(effect,damage)
		self.damage = self.damage + 2 * damage
		for i=1, #self.nades do
			if not self.nades[i].alive then
				self.nades[i], self.nades[1] =  self.nades[1], self.nades[i]
				table.insert(self.nades[i].effects, effect)
				break
			end
		end
		self.damage = self.damage + 2* damage
	end
	
	function spell:UpdateSim(dt)
		result = false
		self.simulation.direction.y = self.simulation.direction.y - self.simulation.falloff * dt
		self.simulation.position.x = self.simulation.position.x + self.simulation.direction.x * SPEED_ICENADE * dt
		self.simulation.position.y = self.simulation.position.y + self.direction.y * SPEED_ICENADE * dt
		self.simulation.position.z = self.simulation.position.z + self.direction.z * SPEED_ICENADE * dt
		local hm = GetHeightmap(self.simulation.position)
		if not hm or hm.asset:GetHeight(self.simulation.position.x, self.simulation.position.z) > self.simulation.position.y then
			result = true
		end
		return result
	end
	return spell
end