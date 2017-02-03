HELLPILLAR_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
MAX_CHARGE_TIME_PILLAR = 3
MIN_CHARGE_TIME_PILLAR = 1.5
MAX_DAMAGE_PILLAR = 1000
SPEED_PILLAR = 75
COOLDOWN_PILLAR = 4
PILLAR_DURATION = 2
DAMAGE_INTERVAL_PILLAR = 0.5

function CreateHellPillar(entity)
	local spell = {}
	spell.caster = entity.transformID	
	spell.pos = Transform.GetPosition(spell.caster)
	spell.maxChargeTime = MAX_CHARGE_TIME_PILLAR
	spell.chargedTime = 0	
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
	spell.cooldown = 0
	spell.effect = CreateFireEffect()
	spell.hudtexture = HELLPILLAR_SPELL_TEXTURE
	spell.maxcooldown = COOLDOWN_PILLAR --Change to cooldown duration if it has a cooldown otherwise -1
	
	--Set up collider, model and transform for the pillar
	spell.transformID = Transform.Bind()
	spell.sphereCollider = SphereCollider.Create(spell.transformID)
	CollisionHandler.AddSphere(spell.sphereCollider, 1)
	SphereCollider.SetRadius(spell.sphereCollider, 3)
	SphereCollider.SetActive(spell.sphereCollider, false)
	Transform.ActiveControl(spell.transformID, false)
	local model = Assets.LoadModel( "Models/SunRayOuter.model" )
	Gear.AddForwardInstance(model, spell.transformID)

	spell.effectflag = false
	spell.damage = MAX_DAMAGE_PILLAR
	spell.alive = false
	spell.duration = PILLAR_DURATION
	spell.attack = false
	spell.effects = {}
	table.insert(spell.effects, FIRE_EFFECT_INDEX)

	spell.startUp = true	spell.startUpTime = 1.5		spell.growAgain = true
	spell.finishingTime = 2.0

	--Set up the first model
	spell.firstModel = Transform.Bind()
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddForwardInstance(model, spell.firstModel)

	function spell:Cast(entity, chargetime)
		if self.cooldown < 0 then	
			--self.nade.light = Light.addLight(0,0,0,1,0,0,20,2)
			self.timeSinceSpam = 0
			self.chargedTime = 0
			self.cooldown = COOLDOWN_PILLAR	
			self.startUpTime = 1.5		self.finishingTime = 2.0	self.startUpScale = 3	self.growAgain = true
			self.pos = Transform.GetPosition(self.caster)
			self:GeneralCast()	
		end
	end
	
	function spell:GeneralCast()
		self.alive = true
		self.duration = PILLAR_DURATION
		self.pos = Transform.GetPosition(self.caster)
		Transform.SetPosition(self.firstModel, self.pos)
		print(self.pos.x) print(self.pos.y) print(self.pos.z)
		Transform.ActiveControl(self.firstModel, true)
	end
	
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		if self.alive then
			if self.startUp then
				self:StartingUp(dt)			
			elseif self.attack then
				self:PillarUpdate(dt)
			else
				self:Finishing(dt)
			end
		end		
	end

	spell.someRotation = {x = 0, y = 0, z = 0}
	spell.startUpScale = 0
	function spell:StartingUp(dt)
		self.startUpTime = self.startUpTime - dt
		self.startUpScale = self.startUpScale - dt * 2
		Transform.SetScale(self.firstModel,  self.startUpScale )
		self.someRotation.y = self.someRotation.y + 10 * dt 
		Transform.SetRotation(self.firstModel, 	self.someRotation)
		if self.startUpTime < 0 then
			self.startUp = false
			self.attack = true		
			SphereCollider.SetActive(self.sphereCollider, true)
			Transform.SetPosition(self.transformID, self.pos)
			Transform.ActiveControl(self.transformID, true)
			self.startUpTime = 0.2
		end
	end

	function spell:PillarUpdate(dt)			
		local collisionIDs = self.sphereCollider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					enemies[curEnemy]:Hurt(self.damage)
				end
			end
		end		
		self.startUp = false
		self.attack = false
		SphereCollider.SetActive(self.sphereCollider, false)
	end

	function spell:Finishing(dt)
		self.finishingTime = self.finishingTime - dt
		if self.finishingTime < 0 then
			self.alive = false 
			self.startUp = true
			Transform.ActiveControl(self.transformID, false)
			Transform.SetPosition(self.transformID, {x=0,y=0,z=0})
		else
			self.someRotation.y = self.someRotation.y + 15 * dt 	
			Transform.SetRotation(self.transformID, self.someRotation)
			self.startUpTime = self.startUpTime - dt
			if self.startUpTime > 0 then
				self.startUpScale = self.startUpScale + 50 * dt
				if self.startUpScale > 3 then self.startUpScale = 3 end
				Transform.SetScale(self.firstModel, self.startUpScale )
			else
				Transform.ActiveControl(self.firstModel, false)
				self.growAgain = false
			end
		end	
	end

	function spell:Kill()
		
	end

	function spell:GetEffect()
		return self.effects[1]
	end
	function spell:Combine(effect,damage)
		if #self.effects < 2 then
			table.insert(self.effects, effect)
			self.damage = self.damage + damage
		end
	end

	return spell
end