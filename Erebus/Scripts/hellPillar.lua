HELLPILLAR_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
BLEND_TERXTURE1 = Assets.LoadTexture("Textures/hellpillarNewTex.dds");
BLEND_TERXTURE2 = Assets.LoadTexture("Textures/hellpillarNewTex2.dds");
MAX_DAMAGE_PILLAR = 8
MIN_CHARGE_TIME_PILLAR = 1
COOLDOWN_BIG_PILLAR = 5
COOLDOWN_SMALL_PILLAR = 2.0
HELLPILLAR_CHARGE_SFX = "Effects/flames-2.wav"
HELLPILLAR_PILLAR_SFX = "Effects/explosion.wav"
HELLPILLAR_HIT_SFX = "Effects/burn_ice_001.wav"

function CreateHellPillar(entity)
	--Generalla saker	
	local spell = {}
	spell.element = FIRE
	spell.caster = entity.transformID	
	spell.owner = entity
	spell.pos = Transform.GetPosition(spell.caster)
	spell.chargedTime = 0	
	spell.cooldown = 0
	spell.effects = {}
	table.insert(spell.effects, FIRE_EFFECT_INDEX)
	spell.hudtexture = HELLPILLAR_SPELL_TEXTURE
	spell.texture1 = BLEND_TERXTURE1
	spell.texture2 = BLEND_TERXTURE2
	spell.maxcooldown = COOLDOWN_BIG_PILLAR --Change to cooldown duration if it has a cooldown otherwise -1
	spell.blendValue1 = {x = 0.0, y = 0.0} spell.blendValue2 = {x = 0.0, y = 0.5}
	spell.maxChargeTime = 3
	spell.damage = 0
	--Set up collider, model and transform for the pillar
	spell.riseFactor = 0.1
	spell.chargeID = -1
	--spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/hellpillarTest1.model" )
	spell.transformID = Gear.BindBlendingInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)
	SphereCollider.SetRadius(spell.sphereCollider, 3)
	SphereCollider.SetActive(spell.sphereCollider, false)
	Transform.ActiveControl(spell.transformID, false)
	--local model = Assets.LoadModel( "Models/hellpillarTest1.model" )
	--Gear.AddBlendingInstance(model, spell.transformID)

	Gear.SetBlendTextures(spell.transformID, 2, spell.texture1, spell.texture2)

	spell.aliveCharged = false
	spell.attack = false
	spell.effects = {}
	table.insert(spell.effects, FIRE_EFFECT_INDEX)
	spell.enemiesHit = {}
	spell.aimPos = {}
	
	spell.startUp = true		spell.startUpTime = 0		spell.growAgain = true	
	spell.finishingTime = 0		spell.maxScale = 0			spell.scale = 0
	spell.isActiveSpell = false
	--spell.lightRadius = 0	spell.light = 0
	--Set up the first model
	--spell.firstModel = Transform.Bind()
	--local model = Assets.LoadModel( "Models/hellpillarLoadOut2.model" )
	--Gear.AddForwardInstance(model, spell.firstModel)
	local model = Assets.LoadModel( "Models/hellpillarLoadOut2.model" )
	spell.firstModel = Gear.BindForwardInstance(model)

	spell.light = nil

	function spell:Cast()
		if self.cooldown < 0 then		
			if self.isActiveSpell then
				self:Aim()
			end
			self.cooldown, self.maxcooldown = COOLDOWN_SMALL_PILLAR, COOLDOWN_SMALL_PILLAR	
			self.startUpTime = 0.5		self.finishingTime = 1.0	self.startUpScale = 3
			self.startUp = true
			self.maxScale = 0.5			self.scale = 0.4
			Transform.SetScale(self.transformID, self.maxScale)
			SphereCollider.SetRadius(self.sphereCollider, self.scale + 0.2)

			self.damage = 5
			self.aliveCharged = true		self.growAgain = true	
			self:GeneralCast()		
		end
	end

	function spell:GetCollider()
		local result = {}
		table.insert(result, self.sphereCollider:GetID())
		return result
	end

	function spell:ChargeCast(entity)
		if self.cooldown < 0.0 and MIN_CHARGE_TIME_PILLAR < self.chargedTime  then	
			if self.owner == player then
				ZoomOutCamera()	
			end
			self.scale = 1
			self.cooldown, self.maxcooldown = COOLDOWN_BIG_PILLAR, COOLDOWN_BIG_PILLAR	
			self.startUpTime = 1.5		self.finishingTime = 1.8	self.startUpScale = 6
			self.startUp = true
			self.maxScale = 6
			Transform.SetScale(self.transformID, 1)
			SphereCollider.SetRadius(self.sphereCollider, 3)
			self.damage = 50
			self.aliveCharged = true		self.growAgain = true	
			self:GeneralCast()	
			self.chargeID = Sound.Play(HELLPILLAR_CHARGE_SFX, 1, self.pos)
		end
		self.chargedTime = 0
	end
	
	function spell:GeneralCast()		
		self.pos = self.aimPos
		Transform.SetPosition(self.firstModel, self.pos)
		Transform.ActiveControl(self.firstModel, true)
		self.lightRadius = 10
		self.light = Light.addLight(self.pos.x, self.pos.y+3, self.pos.z, 1,0,0,self.lightRadius,10, true)
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt		
		if self.aliveCharged then
			if self.startUp then
				self:StartingUp(dt)			
			elseif self.attack then
				self:PillarUpdate(dt)
			else
				self:Finishing(dt)
			end
		end	
		if self.isActiveSpell then
			self:Aim()
		end
	end

	spell.someRotation = {x = 0, y = 0, z = 0}
	spell.startUpScale = 0
	function spell:StartingUp(dt)
		self.startUpTime = self.startUpTime - dt
		self.startUpScale = self.startUpScale - dt * 3
		self.someRotation.y = self.someRotation.y + 8 * dt 
		Transform.SetRotation(self.firstModel, 	self.someRotation)
		Transform.SetScale(self.firstModel, self.startUpScale)

		self.lightRadius = self.lightRadius - 5*dt
		Light.updateRadius(self.light, self.lightRadius, true)

		if self.startUpTime < 0 then
			self.lightRadius = 10
			self.startUp = false
			self.attack = true		
			SphereCollider.SetActive(self.sphereCollider, true)
			Transform.SetPosition(self.transformID, self.pos)
			Sound.Fade(self.chargeID, 1.3)
			Sound.Play(HELLPILLAR_PILLAR_SFX, 7, self.pos)
			--Sound.Play(HELLPILLAR_CHARGE_SFX, 7, self.pos)				
			Transform.ActiveControl(self.transformID, true)
			self.startUpTime = 0.2
			Light.updateRadius(self.light, self.lightRadius, true)
		end
	end

	function spell:PillarUpdate(dt)				
		self.startUp = false
		self.attack = false
		self:CheckCollisions(self.damage)
	end

	function spell:Finishing(dt)
		self.finishingTime = self.finishingTime - dt
		if self.finishingTime < 0 then
			self:Kill()
		else
			self:CheckCollisions(5)
			SphereCollider.SetActive(self.sphereCollider, false)
			self.blendValue1.x = self.blendValue1.x + 0.2 * dt
			self.blendValue1.y = self.blendValue1.y - 0.6 * dt
			self.blendValue2.x = self.blendValue2.x - 0.2 * dt
			self.blendValue2.y = self.blendValue2.y - 1.0 * dt
			Gear.SetBlendUniformValue(self.transformID, 2, self.blendValue1, self.blendValue2)
			if self.riseFactor < self.scale then self.riseFactor = self.riseFactor + math.tan(self.riseFactor) * 5 * dt end			
			local radius = self.lightRadius + 1.5*math.abs(math.cos(self.finishingTime*10))
			Light.updateRadius(self.light, radius, true)
			Transform.SetScaleNonUniform(self.transformID, self.scale, self.riseFactor, self.scale)
			self.startUpTime = self.startUpTime - dt
			if self.startUpTime > 0 then
				self.startUpScale = self.startUpScale + 50 * dt
				if self.startUpScale > self.maxScale  then self.startUpScale = self.maxScale  end
				Transform.SetScale(self.firstModel, self.startUpScale )
			else
				Transform.ActiveControl(self.firstModel, false)
				self.growAgain = false
			end
		end	
	end

	function spell:CheckCollisions(damage)
		local dmg = self.damage
		self.damage = damage
		if BaseCheckCollision(self) then	Sound.Play(HELLPILLAR_HIT_SFX, 1, self.pos)		end
		self.damage = dmg
	end

	function spell:Aim()
		local lookAt = Transform.GetLookAt(self.caster)
		local aPos = Transform.GetPosition(self.caster)
		self.aimPos = {x = aPos.x + lookAt.x *10, y = 0, z = aPos.z + lookAt.z *10 }
		local hm = GetHeightmap(self.aimPos)
		if hm then
			self.aimPos.y = hm.asset:GetHeight(self.aimPos.x, self.aimPos.z) + 0.5
			self.owner.aim:SetPos(self.aimPos)
		end
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		Transform.ActiveControl(self.owner.aim.transformID, self.isActiveSpell)
	end

	function spell:GetEffect()
		return self.effects[1]
	end

	function spell:Kill() 
		self.blendValue1.x, self.blendValue1.y = 0, 0
		self.blendValue2.x, self.blendValue2.y = 0, 0
		self.riseFactor = 0.1
		self.aliveCharged = false 
		Transform.ActiveControl(self.transformID, false)
		Transform.ActiveControl(self.owner.aim.transformID, self.isActiveSpell) 
		if self.light then		Light.removeLight(self.light, true)	 self.light = nil	end
		if #self.effects > 1 then
			table.remove(self.effects)
		end
		self.enemiesHit = {}
	end
	spell.Combine = BaseCombine		spell.Charge = BaseCharge
	spell.GettEffect = BaseGetEffect
	return spell
end