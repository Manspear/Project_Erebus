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
	sunRay.alive = false
	sunRay.chargedTime = 0	sunRay.Charge = BaseCharge	sunRay.ChargeCast = BaseChargeCast	
	sunRay.owner = entity
	sunRay.moveImpairment = 0.5	sunRay.cameraSlow = 2.0
	sunRay.cooldown = 0.0
	sunRay.timeSinceTick = 0
	sunRay.caster = entity.transformID
	sunRay.angle = 2	sunRay.spin = 0.3
	sunRay.UVpushing = 2.0	sunRay.UVpushed = 0.0	
	sunRay.startUp = false	sunRay.startUpTime = 0.4	sunRay.startUpTimeLVL2 = 0.7
	sunRay.startUpScale = {x = 0.2, y = 0.2, z = 1}
	sunRay.castSFX = {}
	sunRay.castSFX[1] = "Effects/CK_Blaster_Shot-226.wav"
	sunRay.castSFX[2] = "Effects/CK_Force_Field_Loop-32.wav"
	sunRay.hitSFX = "Effects/burn_ice_001.wav"
	sunRay.soundID = {}
	sunRay.hudtexture = SUNRAY_SPELL_TEXTURE
	sunRay.maxcooldown = SUNRAY_COOLDOWN --Change to cooldown duration if it has a cooldown otherwise -1
	local model = Assets.LoadModel( "Models/SunRayOuter.model" )
	local model2 = Assets.LoadModel( "Models/SunRayInner.model" )
	Gear.AddForwardInstance(model2, sunRay.type.transformID)

	sunRay.modelIndex = Gear.AddForwardInstance(model, sunRay.type.transformID)
	Gear.SetUniformLocation(sunRay.modelIndex, 3);
	sunRay.type.oobCollider.SetSize(sunRay.type.oobCollider, SUNRAY_HALF_LENGTH,1,1)

	function sunRay:Update(dt)
		if self.alive then
			self:MoveWithPlayer(dt)
			if self.startUp then
				self:StartingUp(dt)
			else
				self:Blasting(dt)
			end
		end
		self.cooldown = self.cooldown - dt;
	end
	
	function sunRay:Cast(entity, chargetime, effects)
		if (self.cooldown < 0.0) then
			ZoomInCamera()
			self.type:Cast(Transform.GetPosition(self.owner.transformID))
			Transform.SetRotation(self.type.transformID, Transform.GetRotation(self.owner.transformID))
			Transform.SetLookAt(self.type.transformID, Transform.GetLookAt(self.owner.transformID))
			Erebus.CameraSensitivity(self.cameraSlow)
			chargetime = math.min(chargetime, SUNRAY_MAX_CHARGETIME)
			self.owner.moveSpeed = self.owner.moveSpeed * self.moveImpairment 	
			self.alive = true
			self.lifeTime = SUNRAY_DURATION 
			self.effectFlag = true
			self.damage = (chargetime/SUNRAY_MAX_CHARGETIME) * SUNRAY_DAMAGE
			self.chargedTime = 0
			self.cooldown = SUNRAY_COOLDOWN
			self.UVpushed = 0.0
			for index = 1, #self.castSFX do
				self.soundID[index] = Sound.Play(self.castSFX[index], 13, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
			self.timeSinceTick = SUNRAY_TICK_INTERVAL
			Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x, self.startUpScale.y, self.startUpScale.z)
			self.startUp = true
		end
	end

	function sunRay:Kill()
		self.alive = false
		Sound.Pause(self.soundID[2])
		Erebus.CameraSensitivity(1 / self.cameraSlow)
		self.owner.moveSpeed = self.owner.moveSpeed * (1 / self.moveImpairment) 
		self.startUpScale.x = 0.2 self.startUpScale.y = 0.2
		ZoomOutCamera()
		self.type:Kill()
	end

	function sunRay:GetEffect()
		return self.effects[1]
	end

	function sunRay:Blasting(dt)
		self.startUpScale.x = 1  + self.shakeIt * dt
		self.startUpScale.y = 1  + self.shakeIt * dt
		Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x, self.startUpScale.y, self.startUpScale.z)
		self.shakeIt = self.shakeIt * -1
		self.UVpushed = self.UVpushed + self.UVpushing * dt 
		self.timeSinceTick = self.timeSinceTick + dt
		if self.timeSinceTick > SUNRAY_TICK_INTERVAL then
			self.timeSinceTick = self.timeSinceTick - SUNRAY_TICK_INTERVAL
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
					Sound.Play(self.hitSFX, 1, hits[index].position)
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
			Transform.SetScaleNonUniform(self.type.transformID, self.startUpScale.x, self.startUpScale.y, self.startUpScale.z)
			self.shakeIt = self.shakeIt * -1
		else
			Transform.SetScaleNonUniform(self.type.transformID, 1, 1, 1)
			self.startUpTime = 0.4
			self.startUpTimeLVL2 = 0.7
			self.startUp = false
		end
	end

	function sunRay:MoveWithPlayer(dt)
		Gear.SetUniformValue(self.modelIndex, self.UVpushed)
		direction = Transform.GetLookAt(self.caster)
		pos = Transform.GetPosition(self.caster)
		pos.x = pos.x + direction.x * SUNRAY_HALF_LENGTH
		pos.y = pos.y + direction.y * SUNRAY_HALF_LENGTH
		pos.z = pos.z + direction.z * SUNRAY_HALF_LENGTH
		hits = self.type:Update(pos, direction)
		theRotation =  Transform.GetRotation(self.caster) 
		self.angle = self.angle + self.spin * dt
		theRotation.x =  theRotation.x + self.angle
		Transform.SetRotation(self.type.transformID, theRotation)
		Transform.SetLookAt(self.type.transformID, direction)
	end
	return sunRay
end