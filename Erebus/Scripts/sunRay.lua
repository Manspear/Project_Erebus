--SUNRAY_SPELL_TEXTURE = Assets.LoadTexture("Textures/IconSunRay.dds");
SUNRAY_STARTUPTIME = 0.4
SUNRAY_STARTUPTIMELVL2 = 0.7
SUNRAY_DURATION = 4.7
SUNRAY_DAMAGE = 1
SUNRAY_COOLDOWN = 4.7
SUNRAY_HALF_LENGTH = 23
SUNRAY_TICK_INTERVAL = 0.5
SUNRAY_CHARGE_SFX = "Effects/energy-blast.ogg"
SUNRAY_CAST_SFX = {"Effects/CK_Blaster_Shot-226.ogg", "Effects/CK_Force_Field_Loop-32.ogg"}
SUNRAY_HIT_SFX = "Effects/burn_ice_001.ogg"

function CreateSunRay(entity)
	local sunRay = {}
	sunRay.element = FIRE

	local model = Assets.LoadModel( "Models/SunRayRedone.model" )
	


	sunRay.blendValue1 = {x = 0.0, y = 0.0}
	sunRay.blendValue2 = {x = 0.0, y = 0.0}


	sunRay.type = CreateRayType(model)
	sunRay.effects = {} 
	table.insert(sunRay.effects, FIRE_EFFECT_INDEX)
	sunRay.lifeTime = SUNRAY_DURATION 
	sunRay.damage = 0
	sunRay.combineDamage = 3
	sunRay.spam = false
	sunRay.alive = false
	sunRay.chargeAlive = false
	sunRay.isActiveSpell = false
	sunRay.chargedTime = 0.0
	sunRay.owner = entity	sunRay.caster = entity.transformID
	sunRay.moveImpairment = 0.5	sunRay.cameraSlow = 2.0
	sunRay.maxChargeTime = SUNRAY_DURATION
	sunRay.minChargeTime = 1
	sunRay.timeSinceTick = 0	sunRay.tickInterval = 0.5
	sunRay.length = 0
	sunRay.angle = 2	sunRay.spin = 0.3
	sunRay.UVpushing = 2.0	sunRay.UVpushed = 0
	sunRay.startUp = false	sunRay.startUpTime = SUNRAY_STARTUPTIME	sunRay.startUpTimeLVL2 = SUNRAY_STARTUPTIMELVL2
	sunRay.startUpScale = {x = 1, y = 1, z = 1}
	--sunRay.castSFX = {"Effects/CK_Blaster_Shot-226.ogg", "Effects/CK_Force_Field_Loop-32.ogg" }
	--sunRay.hitSFX = "Effects/burn_ice_001.ogg"
	sunRay.soundID = {}
	sunRay.chargeID = -1
	sunRay.hitID = -1
	sunRay.scale = 0.45
	sunRay.hudtexture = Assets.LoadTexture("Textures/IconSunRay.dds");
	sunRay.maxcooldown = SUNRAY_COOLDOWN --Change to cooldown duration if it has a cooldown otherwise -1
	--local model2 = Assets.LoadModel( "Models/SunRayInner.model" )
	--sunRay.transformID2 = Gear.BindForwardInstance(model2)
	--For choosing the right set of animations
	sunRay.isRay = true
	--For animation timing 
	sunRay.hasSpamAttack = true
	sunRay.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	SUNRAY_CASTSPEED_MULTIPLE = 1
	sunRay.castTimeAttack = 0.5 * SUNRAY_CASTSPEED_MULTIPLE
	sunRay.castAnimationPlayTime = 2 * SUNRAY_CASTSPEED_MULTIPLE --the true cast time of the animation
	sunRay.castTimeFirstAttack = 0.1875 * SUNRAY_CASTSPEED_MULTIPLE

	function sunRay:Update(dt)
		if self.alive then
			self:MoveWithPlayer(dt)
			local speed= dt * 4
			self.blendValue1.y = self.blendValue1.y + 0.6 * speed
			self.blendValue2.y = self.blendValue2.y + 1.0 * speed
			Gear.SetBlendUniformValue(self.type.modelBlendingIndex, 2, self.blendValue1,self.blendValue2)		
			if self.spam then
				self:Blasting(dt)
			else 
				if self.startUp then
					self:StartingUp(dt)	
				else
					self:Blasting(dt)
				end		
			end
		end
		self.cooldown = self.cooldown - dt;
	end
	
	function sunRay:Cast(entity)
		if (self.cooldown < 0.0 and not self.alive) then
			self.length = SUNRAY_HALF_LENGTH / 2										
			self.lifeTime = SUNRAY_DURATION / 2
			self.spam = true		
			self.cooldown = SUNRAY_COOLDOWN / 2
			for index = 1, #SUNRAY_CAST_SFX do
				self.soundID[index] = Sound.Play(SUNRAY_CAST_SFX[index], 13, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
			self.tickInterval = 1.3
			self.startUpScale.x = self.startUpScale.x * 0.5	
			self.startUpScale.y = self.startUpScale.y * 0.5	
			self.startUpScale.z = self.startUpScale.z / 2
			self:GeneralCast()
			if self.owner == player then
				ZoomInCamera()
			end
		end
	end

	function sunRay:ChargeCast(entity)
		if self.cooldown < 0.0 and not self.alive then
			self.spam = false	self.alive = true	self.startUp = true
			self.chargeAlive = true
			self.chargedTime = math.min(self.chargedTime, self.maxChargeTime)
			self.scale = (self.chargedTime / self.maxChargeTime)/2 + 0.5
			self.cooldown = SUNRAY_COOLDOWN
			self.lifeTime = SUNRAY_DURATION
			self.length = SUNRAY_HALF_LENGTH		
			self.tickInterval = 1.5 - self.scale
			self.startUpScale.x = 0.2 * self.scale 
			self.startUpScale.y = 0.2 * self.scale
			self:GeneralCast()
			self.chargedTime = 0.0
			for index = 1, #SUNRAY_CAST_SFX do
				self.soundID[index] = Sound.Play(SUNRAY_CAST_SFX[index], 13, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
		end
	end

	function sunRay:GetCollider()
		local result = {}
		table.insert(result, self.type.oobCollider:GetID())
		return result
	end

	function sunRay:GeneralCast()
		self.timeSinceTick = 0.0
		self.type.oobCollider.SetSize(sunRay.type.oobCollider, self.length, 1, 1)
		self.type:Cast(Transform.GetPosition(self.owner.transformID))
		Transform.SetRotation(self.type.transformID, Transform.GetRotation(self.owner.transformID))
		--Transform.SetLookAt(self.type.transformID, Transform.GetLookAt(self.owner.transformID))
		Transform.SetLookAt(self.type.transformID, self.owner.spellDirection)
		Erebus.CameraSensitivity(self.cameraSlow)
		Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x , self.startUpScale.y , self.startUpScale.z)
		self.UVpushed = 0.0
		self.alive = true	self.effectFlag = true
	end

	function sunRay:Blasting(dt)
		self.startUpScale.x = self.scale + self.shakeIt * dt
		self.startUpScale.y = self.scale + self.shakeIt * dt
		Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x, self.startUpScale.y, self.startUpScale.z)
		self.shakeIt = self.shakeIt * -1
		self.UVpushed = self.UVpushed - self.UVpushing * dt 
		self.timeSinceTick = self.timeSinceTick - dt
		if 0 > self.timeSinceTick then
			for index = 1, #hits do
				if hits[index].Hurt then	
					if self.effectFlag then
						for e =1, #self.effects do
							local effect = effectTable[self.effects[e]](self.owner)
							hits[index]:Apply(effect)				
						end
					end
					hits[index]:Hurt(self.damage, self.owner, self.element)
					self.timeSinceTick = self.tickInterval
					local id = Sound.Play(SUNRAY_HIT_SFX, 1, hits[index].position)
					if id ~= -1 then self.hitID = id end
				end
			end
		end
		self.lifeTime = self.lifeTime - dt
		if self.lifeTime < 0 then 
			self:Kill() 
		end
	end

	sunRay.shakeIt = 1.0
	function sunRay:StartingUp(dt)
		if self.startUpTime > 0 then
			self.startUpTime = self.startUpTime - dt
		elseif self.startUpTimeLVL2 > 0 then
			self.startUpTimeLVL2 = self.startUpTimeLVL2 - dt
			self.startUpScale.x = 0.3  - self.shakeIt * dt
			self.startUpScale.y = 0.3  - self.shakeIt * dt
			Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x * self.scale, self.startUpScale.y * self.scale, self.startUpScale.z)
			self.shakeIt = self.shakeIt * -1
		else
			Sound.Play(SUNRAY_CHARGE_SFX, 3, self.type.position)
			Transform.SetScaleNonUniform(self.type.transformID, 1, 1, 1)
			self.startUpTime = 0.4
			self.startUpTimeLVL2 = 0.7
			self.startUp = false
			self.startUpScale.x = self.scale 
			self.startUpScale.y = self.scale
		end
	end

	function sunRay:MoveWithPlayer(dt)
		Gear.SetBlendUniformValue(self.modelIndex, self.UVpushed, 0)
		local direction = Transform.GetLookAt(self.caster)
		local pos = Transform.GetPosition(self.caster)
		pos.x = pos.x + direction.x * self.length 
		pos.y = pos.y + direction.y * self.length 
		pos.z = pos.z + direction.z * self.length 
		hits = self.type:Update(pos, direction)
		Transform.RotateToVector(self.type.transformID, direction)
	end

	function sunRay:Kill()
		if self.alive then
			Erebus.CameraSensitivity(1 / self.cameraSlow)
		end
		self.alive = false
		self.chargeAlive = false
		for i = 1, #self.soundID do Sound.Stop(self.soundID[i]) end
		Sound.Stop(self.hitID)
		self.damage = SUNRAY_DAMAGE
		self.startUpScale.x = 1 self.startUpScale.y = 1 self.startUpScale.z = 1
		self.type:Kill()
		if self.owner == player then
			ZoomOutCamera()
		end
		if #self.effects > 1 then
			table.remove(self.effects)
		end
	end
	function sunRay:Combine(effect, damage)
		if #self.effects < 2 then
			self.damage = self.damage + 2 * damage
			table.insert(self.effects, effect)
		end
	end
	sunRay.Charge = BaseCharge
	sunRay.Change = BaseChange
	sunRay.GetEffect = BaseGetEffect
	return sunRay
end

function DestroySunRay(ray)
	Assets.UnloadModel( "Models/SunRayOuter.model" )
	Assets.UnloadModel( "Models/SunRayInner.model" )
	Assets.UnloadTexture( "Textures/IconSunRay.dds" )

	DestroyRayType(ray.spell.type)
	ray = nil
end