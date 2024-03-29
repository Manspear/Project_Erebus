--HELLPILLAR_SPELL_TEXTURE = Assets.LoadTexture("Textures/IconHellPiller.dds");
--BLEND_TERXTURE1 = Assets.LoadTexture("Textures/hellpillarNewTex.dds");
--BLEND_TERXTURE2 = Assets.LoadTexture("Textures/hellpillarNewTex2.dds");
MAX_DAMAGE_PILLAR = 30
MIN_CHARGE_TIME_PILLAR = 0.5
COOLDOWN_BIG_PILLAR = 1.5
COOLDOWN_SMALL_PILLAR = 0.5
HELLPILLAR_CASTSPEED_MULTIPLE = 1.9 + 0.1875

--Divide COOLDOWN_SMALL_PILLAR by 2.5 to get castSpeed for first attack
HELLPILLAR_CHARGE_SFX = "Effects/flames-2.ogg"
HELLPILLAR_PILLAR_SFX = "Effects/explosion.ogg"
HELLPILLAR_HIT_SFX = "Effects/burn_ice_001.ogg"

function CreateHellPillar(entity)
	--Generalla saker	
	local spell = {}
	spell.element = FIRE
	spell.caster = entity.transformID	
	spell.owner = entity
	spell.pos = Transform.GetPosition(spell.caster)
	spell.chargedTime = 0	spell.minChargeTime = MIN_CHARGE_TIME_PILLAR
	
	spell.hudtexture = Assets.LoadTexture("Textures/IconHellPiller.dds")
	spell.texture1 = Assets.LoadTexture("Textures/hellpillarNewTex.dds")
	spell.texture2 = Assets.LoadTexture("Textures/hellpillarNewTex2.dds")
	spell.maxcooldown = COOLDOWN_BIG_PILLAR --Change to cooldown duration if it has a cooldown otherwise -1
	spell.blendValue1 = {x = 0.0, y = 0.0} spell.blendValue2 = {x = 0.0, y = 0.5}
	spell.maxChargeTime = 3
	spell.damage = 0
	spell.combineDamage = 14
	
	--For animation timing 
	spell.hasSpamAttack = false
	spell.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	spell.castTimeAttack = 0.5 * HELLPILLAR_CASTSPEED_MULTIPLE
	spell.castAnimationPlayTime = 2 * HELLPILLAR_CASTSPEED_MULTIPLE --the true cast time of the animation
	spell.castTimeFirstAttack = 0.1875 * HELLPILLAR_CASTSPEED_MULTIPLE

	--Set up collider, model and transform for the pillar
	spell.riseFactor = 0.1
	spell.chargeID = -1

	local model = Assets.LoadModel( "Models/hellpillarTest1.model" )
	spell.transformID = Gear.BindBlendingInstance(model)
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 2)
	SphereCollider.SetRadius(spell.sphereCollider, 3)
	SphereCollider.SetActive(spell.sphereCollider, false)
	Transform.ActiveControl(spell.transformID, false)
	
	spell.blendingIndex = Gear.SetBlendTextures(-1, 2, spell.texture1, spell.texture2)
	spell.aliveCharged = false
	spell.attack = false
	spell.effects = {}
	table.insert(spell.effects, FIRE_EFFECT_INDEX)
	spell.aimPos = {}
	
	spell.startUp = true		spell.startUpTime = 0		spell.growAgain = true	
	spell.finishingTime = 0		spell.maxScale = 0			spell.scale = 0
	spell.isActiveSpell = false

	local model = Assets.LoadModel( "Models/hellpillarLoadOut2.model" )
	spell.firstModel = Gear.BindForwardInstance(model)
	Transform.ActiveControl(spell.firstModel, false)

	spell.light = nil

	function spell:Cast()
		if self.cooldown < 0 then		
			if self.isActiveSpell then
				self:Aim()
			end
			self.cooldown, self.maxcooldown = COOLDOWN_SMALL_PILLAR, COOLDOWN_SMALL_PILLAR	
			self.startUpTime = 0.1	self.finishingTime = 0.6	self.startUpScale = 3
			self.startUp = true
			self.maxScale = 0.7			self.scale = 0.7
			Transform.SetScale(self.transformID, self.maxScale)
			SphereCollider.SetRadius(self.sphereCollider, self.scale + 1.3)
			self.lightRadius = 3
			self.damage = MAX_DAMAGE_PILLAR
			self.aliveCharged = true		self.growAgain = true	
			self.chargedTime = MIN_CHARGE_TIME_PILLAR
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
			self.startUpTime = 0.5		self.finishingTime = 1	self.startUpScale = 6
			self.startUp = true
			self.maxScale = 6
			Transform.SetScale(self.transformID, 1)
			SphereCollider.SetRadius(self.sphereCollider, 5)
			self.damage = MAX_DAMAGE_PILLAR * (self.chargedTime / self.maxChargeTime) * 2 --TODO nerf
			self.aliveCharged = true		self.growAgain = true	
			self.lightRadius = self.chargedTime * 5
			self:GeneralCast()	
			self.chargeID = Sound.Play(HELLPILLAR_CHARGE_SFX, 1, self.pos)
		end
	end
	
	function spell:GeneralCast()		
		self.pos = self.aimPos
		Transform.SetPosition(self.firstModel, self.pos)
		Transform.ActiveControl(self.firstModel, true)
		self.hasSpamAttack = false
		self.light = Light.addLight(self.pos.x, self.pos.y+1, self.pos.z, 1,0,0,self.lightRadius,10, true)
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.cooldown < 0 then self.hasSpamAttack = true end		
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

		self.lightRadius = self.lightRadius - self.chargedTime * dt
		Light.updateRadius(self.light, self.lightRadius, true)

		if self.startUpTime < 0 then
			self.lightRadius = self.chargedTime * 3
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
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].collider:GetID() then
					enemies[curEnemy]:Hurt(self.damage, self.owner, self.element)
					for i = 1, #self.effects do
						local effect = effectTable[self.effects[i]](self.owner)
						enemies[curEnemy]:Apply(effect)
					end	
					Sound.Play(HELLPILLAR_HIT_SFX, 1, self.pos)
				end
			end
			if boss.alive and collisionIDs[curID] == boss.collider:GetID() then --boss collision
				boss:Hurt(self.damage, self.owner, self.element)
				for i = 1, #self.effects do
					local effect = effectTable[self.effects[i]](self.owner)
					boss:Apply(effect)
				end	
				Sound.Play(HELLPILLAR_HIT_SFX, 1, self.pos)
			end
		end		
		self.startUp = false
		self.attack = false
		SphereCollider.SetActive(self.sphereCollider, false)
	end

	function spell:Finishing(dt)
		self.finishingTime = self.finishingTime - dt
		if self.finishingTime < 0 then
			self:Kill()
		else
			self.blendValue1.x = self.blendValue1.x + 0.2 * dt
			self.blendValue1.y = self.blendValue1.y - 0.6 * dt

			self.blendValue2.x = self.blendValue2.x - 0.2 * dt
			self.blendValue2.y = self.blendValue2.y - 1.0 * dt

			Gear.SetBlendUniformValue(self.blendingIndex, 2, self.blendValue1, self.blendValue2)
			if self.riseFactor < self.scale then self.riseFactor = self.riseFactor + math.tan(self.riseFactor) * 5 * dt end
			
			local radius = self.lightRadius + 1.5*math.abs(math.cos(self.finishingTime*10))
			Light.updateRadius(self.light, radius , true)

			Transform.SetScaleNonUniform(self.transformID, self.scale, self.riseFactor, self.scale)
			self.startUpTime = self.startUpTime - dt
			if self.startUpTime > 0 then
				self.startUpScale = self.startUpScale + 50 * dt
				if self.startUpScale > self.maxScale  then self.startUpScale = self.maxScale  end
				Transform.SetScale(self.firstModel, self.startUpScale )
			else
				Transform.ActiveControl(self.firstModel, false)
				Transform.SetPosition(self.firstModel, {x = 0, y = 0, z = 0})
				self.growAgain = false
			end
		end	
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
		self.aliveCharged = false 
		Transform.ActiveControl(self.transformID, false)
		Transform.SetPosition(self.transformID, {x = 0, y = 0, z = 0})
		if self.light then	Light.removeLight(self.light, true)	 self.light = nil	end
		self.blendValue1.x, self.blendValue1.y = 0, 0
		self.blendValue2.x, self.blendValue2.y = 0, 0
		self.riseFactor = 0.1
		if self.light then		Light.removeLight(self.light, true)	 self.light = nil	end
		if #self.effects > 1 then
			table.remove(self.effects)
		end
		self.chargedTime = 0
	end
	spell.Combine = BaseCombine		spell.Charge = BaseCharge
	spell.GettEffect = BaseGetEffect
	return spell
end

function DestroyHellPillar(pillar)
	Gear.UnbindInstance(pillar.transformID)
	Gear.UnbindInstance(pillar.firstModel)

	Assets.UnloadTexture( "Textures/IconHellPiller.dds" )
	Assets.UnloadTexture( "Textures/hellpillarNewTex.dds" )
	Assets.UnloadTexture( "Textures/hellpillarNewTex2.dds" )
	Assets.UnloadModel( "Models/hellpillarTest1.model" )
	Assets.UnloadModel( "Models/hellpillarLoadOut2.model" )

	pillar = nil
end