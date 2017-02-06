SUNRAY_SPELL_TEXTURE = Assets.LoadTexture("Textures/sunbeam.dds");
SUNRAY_DURATION = 3
SUNRAY_MAX_CHARGETIME = 3
SUNRAY_DAMAGE =0
SUNRAY_COOLDOWN = 4.7
SUNRAY_HALF_LENGTH = 23
SUNRAY_TICK_INTERVAL = 0.5

function CreateSunRay(entity)
	local sunRay = {}
	sunRay.type = CreateRayType()
	sunRay.effects = {} 
	table.insert(sunRay.effects, FIRE_EFFECT_INDEX)
	sunRay.lifeTime = SUNRAY_DURATION
	sunRay.damage = 0
	sunRay.spam = false
	sunRay.alive = false
	sunRay.chargedTime = 0	sunRay.Charge = BaseCharge	sunRay.ChargeCast = BaseChargeCast	
	sunRay.owner = entity	sunRay.caster = entity.transformID
	sunRay.moveImpairment = 0.5	sunRay.cameraSlow = 2.0
	sunRay.cooldown = 0.0
	sunRay.timeSinceTick = 0	sunRay.tickInterval = 0.5
	sunRay.length = 0
	sunRay.angle = 2	sunRay.spin = 0.3
	sunRay.UVpushing = 2.0	sunRay.UVpushed = 0.0	
	sunRay.startUp = false	sunRay.startUpTime = 0.4	sunRay.startUpTimeLVL2 = 0.7
	sunRay.startUpScale = {x = 1, y = 1, z = 1}
	sunRay.castSFX = {"Effects/CK_Blaster_Shot-226.wav", "Effects/CK_Force_Field_Loop-32.wav" }
	sunRay.hitSFX = "Effects/burn_ice_001.wav"
	sunRay.soundID = {}
	sunRay.hitID = -1
	sunRay.hudtexture = SUNRAY_SPELL_TEXTURE
	sunRay.maxcooldown = SUNRAY_COOLDOWN --Change to cooldown duration if it has a cooldown otherwise -1
	local model = Assets.LoadModel( "Models/SunRayOuter.model" )
	local model2 = Assets.LoadModel( "Models/SunRayInner.model" )
	Gear.AddForwardInstance(model2, sunRay.type.transformID)

	sunRay.modelIndex = Gear.AddForwardInstance(model, sunRay.type.transformID)
	Gear.SetUniformLocation(sunRay.modelIndex, 3);

	function sunRay:Update(dt)
		if self.alive then
			self:MoveWithPlayer(dt)
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
	
	function sunRay:Cast(entity, chargetime, effects)
		if (self.cooldown < 0.0) then
			self.length = SUNRAY_HALF_LENGTH / 2										
			self.lifeTime = SUNRAY_DURATION / 2
			self.spam = true		
			self.cooldown = SUNRAY_COOLDOWN / 2
			for index = 1, #self.castSFX do
				self.soundID[index] = Sound.Play(self.castSFX[index], 13, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
			self.tickInterval = 1.3
			self.startUpScale.x = self.startUpScale.x * 0.55	self.startUpScale.y = self.startUpScale.y * 0.55	self.startUpScale.z = self.startUpScale.z / 2
			self:GeneralCast()
			ZoomInCamera()
		end
	end

	function sunRay:ChargeCast(entity)
		if (self.cooldown < 0.0) then
			self.spam = false	self.alive = true	self.startUp = true
			self.chargedTime = math.min(self.chargedTime, SUNRAY_MAX_CHARGETIME)
			self.scale = (self.chargedTime / SUNRAY_MAX_CHARGETIME)/2 + 0.5
			self.cooldown = SUNRAY_COOLDOWN
			self.lifeTime = SUNRAY_DURATION
			self.length = SUNRAY_HALF_LENGTH		
			self.tickInterval = 1.5 - self.scale
			self.startUpScale.x = 0.2 * self.scale 
			self.startUpScale.y = 0.2 * self.scale
			self:GeneralCast()
			self.chargedTime = 0.0
			self.soundID[1] = Sound.Play(self.castSFX[1], 3, self.type.position)
		end
	end

	function sunRay:GeneralCast()
		self.timeSinceTick = 0.0
		self.type.oobCollider.SetSize(sunRay.type.oobCollider, self.length, 1, 1)
		self.type:Cast(Transform.GetPosition(self.owner.transformID))
		Transform.SetRotation(self.type.transformID, Transform.GetRotation(self.owner.transformID))
		Transform.SetLookAt(self.type.transformID, Transform.GetLookAt(self.owner.transformID))
		Erebus.CameraSensitivity(self.cameraSlow)
		Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x , self.startUpScale.y , self.startUpScale.z)
		self.UVpushed = 0.0
		self.alive = true	self.effectFlag = true
		self.owner.moveSpeed = self.owner.moveSpeed * self.moveImpairment 	
	end

	function sunRay:Kill()
		self.alive = false
		for i = 1, #self.soundID do Sound.Stop(self.soundID[i]) end
		Sound.Stop(self.hitID)
		Erebus.CameraSensitivity(1 / self.cameraSlow)
		self.owner.moveSpeed = self.owner.moveSpeed * (1 / self.moveImpairment) 
		self.startUpScale.x = 1 self.startUpScale.y = 1 self.startUpScale.z = 1
		ZoomOutCamera()
		self.type:Kill()
	end

	function sunRay:GetEffect()
		return self.effects[1]
	end

	function sunRay:Blasting(dt)
		self.startUpScale.x = self.startUpScale.x + self.shakeIt * dt
		self.startUpScale.y = self.startUpScale.y + self.shakeIt * dt
		Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x, self.startUpScale.y, self.startUpScale.z)
		self.shakeIt = self.shakeIt * -1
		self.UVpushed = self.UVpushed + self.UVpushing * dt 
		self.timeSinceTick = self.timeSinceTick - dt
		if 0 > self.timeSinceTick then
			for index = 1, #hits do
				if hits[index].Hurt then	
					if self.effectFlag then
						for e =1, #self.effects do
							local effect = effectTable[self.effects[e]]()
							table.insert(hits[index].effects, effect)
							effect:Apply(hits[index])							
						end
					end
					hits[index]:Hurt(self.damage)
					self.timeSinceTick = self.tickInterval
					local id = Sound.Play(self.hitSFX, 1, hits[index].position)
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
			for index = 1, #self.castSFX do
				self.soundID[index] = Sound.Play(self.castSFX[index], 3, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
			Transform.SetScaleNonUniform(self.type.transformID, 1, 1, 1)
			self.startUpTime = 0.4
			self.startUpTimeLVL2 = 0.7
			self.startUp = false
			self.startUpScale.x = self.scale 
			self.startUpScale.y = self.scale
		end
	end

	function sunRay:MoveWithPlayer(dt)
		Gear.SetUniformValue(self.modelIndex, self.UVpushed)
		direction = Transform.GetLookAt(self.caster)
		pos = Transform.GetPosition(self.caster)
		pos.x = pos.x + direction.x * self.length 
		pos.y = pos.y + direction.y * self.length 
		pos.z = pos.z + direction.z * self.length 
		hits = self.type:Update(pos, direction)
		theRotation =  Transform.GetRotation(self.caster) 
		self.angle = self.angle + self.spin * dt
		theRotation.x =  theRotation.x + self.angle
		Transform.SetRotation(self.type.transformID, theRotation)
		Transform.SetLookAt(self.type.transformID, direction)
	end
	return sunRay
end