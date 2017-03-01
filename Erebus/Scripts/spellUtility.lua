function CreateAim(entity)
	local aim = {}
	--aim.transformID = Transform.Bind()
	--local model = Assets.LoadModel( "Models/aim.model" )
	--Gear.AddForwardInstance(model, aim.transformID)
	local model = Assets.LoadModel( "Models/aim.model" )
	aim.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(aim.transformID, true)
	function aim:SetPos(position)
		Transform.SetPosition(aim.transformID, position)
	end
	return aim
end

function DestroyAim(aim)
	Gear.UnbindInstance(aim.transformID)
end

function CreateCombineRay(entity)
	local ray = {}
	
	Gear.SetUniformLocation(ray.modelIndex, "aValue");
	
	local rayIce = Assets.LoadModel( "Models/CombineBeamIce.model" )
	ray.transformID = Gear.BindBlendingInstance(rayIce)
	--ray.transformID = Gear.BindForwardInstance(rayIce)
	

	--local rayFire = Assets.LoadModel("Models/CombineBeamFire.model")
	ray.transformID2 = Gear.BindBlendingInstance(rayFire)
	--ray.transformID2 = Gear.BindForwardInstance(rayFire)
	--local rayNature = Assets.LoadModel("Models/CombineBeamNature.model")
	----ray.transformID3 = Gear.BindForwardInstance(rayNature)
	
	ray.blendingIndex = Gear.SetBlendTextures(1, 2, Assets.LoadTexture("Textures/SpellNature.dds"),Assets.LoadTexture("Textures/SpellNatureBlend.dds"))
	--Transform.ActiveControl(ray.transformID, false)

	
	Gear.SetBlendTextures(ray.transformID, 2, Assets.LoadTexture("Textures/SpellIce.dds"),Assets.LoadTexture("Textures/SpellIceBlend.dds"))
	Gear.SetBlendTextures(ray.transformID2, 2, Assets.LoadTexture("Textures/SpellFire.dds"),Assets.LoadTexture("Textures/SpellFireBlend.dds"))
	
	ray.blendValue1 = {x = 0.0, y = 0.0}
	ray.blendValue2 = {x = 0.0, y = 0.0}

	ray.caster = entity.transformID
	Transform.ActiveControl(ray.transformID, false)
	function ray:FireChargeBeam(dt,dir,spellElement, len)				
		--Transform.ActiveControl(self.transformID2, false)
		--Transform.ActiveControl(self.transformID3, false)

		local elementalTransformID = self.transformID
		if spellElement == FIRE then
			--Transform.ActiveControl(self.transformID2, true)
			--elementalTransformID = self.transformID2
		elseif spellElement == NATURE then
			--Transform.ActiveControl(self.transformID3, true) 
			--elementalTransformID = self.transformID3	
		else 
			Transform.ActiveControl(self.transformID, true)
			elementalTransformID = self.transformID
		end

		local pos = Transform.GetPosition(self.caster)
		local direction = Transform.GetLookAt(self.caster)
				
		factor = (len/2)
		pos.x = pos.x + dir.x * factor
		pos.y = pos.y + dir.y * factor
		pos.z = pos.z + dir.z * factor
				
		Transform.SetPosition(elementalTransformID, pos)
		Transform.SetScaleNonUniform(elementalTransformID, 1,1,(len*0.51)) 
		pos = Transform.GetPosition(self.caster)
		Transform.RotateToVector(elementalTransformID, dir)

		local speed = dt * -1.2
		self.blendValue1.x = self.blendValue1.x - 1 * speed
		self.blendValue1.y = self.blendValue1.y + 0.6 * speed
		print("lua ",self.blendingIndex)
		self.blendValue2.x = self.blendValue2.x + 0.2 * speed
		self.blendValue2.y = self.blendValue2.y + 1.0 * speed
		--print(self.blendValue1.x , self.blendValue1.y)
		Gear.SetBlendUniformValue(self.blendingIndex, 2, self.blendValue1,self.blendValue2)		
	end
	function ray:EndChargeBeam()
		Transform.ActiveControl(self.transformID, false)
		Transform.ActiveControl(self.transformID2, false)
		Transform.ActiveControl(self.transformID3, false)
	end
	return ray
end

function DestroyCombineRay(ray)
	Gear.UnbindInstance(ray.transformID)
	Gear.UnbindInstance(ray.transformID2)
	Gear.UnbindInstance(ray.transformID3)
end

MAX_CHARGE = 1
function CreateChargeEggs(entity)
	local chargeThing = {}
	chargeThing.timer = 0

	--chargeThing.transformID = Transform.Bind()
	local iceModel = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	--chargeThing.modelIndex = Gear.AddForwardInstance(iceModel, chargeThing.transformID)
	chargeThing.transformID = Gear.BindForwardInstance(iceModel)
	Transform.ActiveControl(chargeThing.transformID, false)
	-- TEMP(Niclas): Figure this out
	--chargeThing.modelIndex = chargeThing.transformID
	--Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");

	--chargeThing.transformID2 = Transform.Bind()
	local fireModel = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	chargeThing.transformID2 = Gear.BindForwardInstance(fireModel)
	Transform.ActiveControl(chargeThing.transformID2, false)
	--chargeThing.modelIndex2 = chargeThing.transformID2

	--chargeThing.transformID3 = Transform.Bind()
	local natureModel = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	chargeThing.transformID3 = Gear.BindForwardInstance(natureModel)
	Transform.ActiveControl(chargeThing.transformID3, false)
	--chargeThing.modelIndex3 = chargeThing.transformID3
	
	chargeThing.firstCombine = false
	chargeThing.elementalTransformID = 0
	chargeThing.particles = createParticlesByElement()
	chargeThing.particles:extrovert(false)
	chargeThing.caster = entity.transformID
	chargeThing.owner = entity
	chargeThing.rot = {x = 0, y = 0, z = 0}

	chargeThing.rotSmall = {x = 0, y = 0, z = 0}
	chargeThing.scaleSmall = {x = 1, y = 1, z = 1}

	chargeThing.rotLarge = {x = 0, y = 0, z = 0}
	chargeThing.scaleLarge = {x = 1.4, y = 1.1, z = 1.4}

	chargeThing.pos = {x = 0, y = 0, z = 0}
	chargeThing.light = nil
	chargeThing.color = {r = 0, g = 0, b = 0}

	chargeThing.P2SpellElement = 0
	
	function chargeThing:ChargeMePlease(dt)
		self.pos = Transform.GetPosition(self.caster)	
		self.pos.y = self.pos.y - 1	 
		Transform.SetPosition(self.elementalTransformID, self.pos)		
		self.rotSmall.y = self.rotSmall.y + (2) * dt
		Transform.SetRotation(self.elementalTransformID, self.rotSmall) --changed
		self.timer = self.timer - dt
		if self.timer < 0 then
			Transform.SetScale(self.elementalTransformID, 1)
		end
	end

	function chargeThing:Update(dt, chargePower)
		if not self.owner.isCombined then
			self:ChargeMePlease(dt)
		else 
			self:CombinedAndCharged(dt, chargePower)
		end
	end



	function chargeThing:CombinedAndCharged(dt, chargePower)
		self.pos = Transform.GetPosition(self.caster)
		--nature particle alla typer 
		self.firstCombine = false
		
		if self.light then
			self.light.updatePos(self.light, self.pos.x, self.pos.y + 3, self.pos.z, true)
			self.particles:update(self.pos)	
		end	
		self.timer = self.timer + dt		
		self.pos.y = self.pos.y - 1
		
		--Cyl
		if self.scaleSmall.x < 1.1  then
			self.scaleSmall.x = self.scaleSmall.x + (chargePower * chargePower * 75) * dt
			self.scaleSmall.z = self.scaleSmall.z + (chargePower * chargePower * 75) * dt
		end

		if self.scaleSmall.y < 1.1 then
			self.scaleSmall.y = self.scaleSmall.y + (0.075*dt)
		end

		Transform.SetScaleNonUniform(self.elementalTransformID, self.scaleSmall.x, self.scaleSmall.y, self.scaleSmall.z) 
		Transform.SetPosition(self.elementalTransformID, self.pos) 
		self.rotSmall.y = self.rotSmall.y + 3 * dt
		Transform.SetRotation(self.elementalTransformID, self.rotSmall)

		if self.timer > 0.75 then	
			if self.scaleLarge.x < 1.1 then
				self.scaleLarge.x = self.scaleLarge.x + (chargePower * chargePower * 30) * dt
				self.scaleLarge.Y = self.scaleLarge.y + (chargePower * chargePower * 30) * dt
				self.scaleLarge.z = self.scaleLarge.z + (chargePower * chargePower * 30) * dt
			end
			Transform.SetScaleNonUniform(self.elementalTransformID, self.scaleLarge.x, self.scaleLarge.y, self.scaleLarge.z)
			Transform.SetPosition(self.elementalTransformID, self.pos)
			self.particles:update(self.pos) 
			self.rotLarge.y = self.rotLarge.y + 5 * dt
			Transform.SetRotation(self.elementalTransformID, self.rotLarge)
		end
	end


	function chargeThing:EndCharge() 
		self.scaleSmall = {x = 1, y = 1, z = 1}
		self.timer = 0
		self.color = {r = 0, g = 0, b = 0}
		Transform.ActiveControl(self.elementalTransformID, false)
		Transform.SetPosition(self.elementalTransformID, {x = 0, y = 0, z = 0})
		Transform.SetScaleNonUniform(self.elementalTransformID, self.scaleSmall.x, self.scaleSmall.y, self.scaleSmall.z)
		self.elementalTransformID = 0 
		self.particles:die()
		if self.light then	Light.removeLight(self.light, true)	 self.light = nil	end
	end

	function chargeThing:StartCharge(position, spellElement, minChargeTime) 
		--called when right mouse button is pressed	
		self.timer = minChargeTime   
		self.pos = Transform.GetPosition(chargeThing.caster)		
			
		if spellElement == FIRE then
			Transform.ActiveControl(self.transformID2, true)
			self.color.r = 1
			self.elementalTransformID = self.transformID2
		elseif spellElement == NATURE then
			self.color.g = 1
			Transform.ActiveControl(self.transformID3, true) 
			self.elementalTransformID = self.transformID3	
		elseif spellElement == ICE then 
			self.color.b = 1
			self.elementalTransformID = self.transformID
			Transform.ActiveControl(self.transformID, true)		
		end
		Transform.SetScale(self.elementalTransformID, 0.5)
	end

	function chargeThing:StartParticles(spellElement)

		
		self.light = Light.addLight(self.pos.x, self.pos.y + 3, self.pos.z, FIRE == spellElement and 1, NATURE == spellElement and 1, ICE == spellElement and 1, 10, 100, true)
		self.timer = 0
		if spellElement == FIRE then
			self.particles:fireElement()
			self.particles:cast()
		end

		if spellElement == NATURE then
			self.particles:natureElement()
			self.particles:cast()
		end

		if spellElement == ICE then
			self.particles:iceElement()
			self.particles:cast()
		end

	end

	return chargeThing
end

function DestroyChargeEggs(egg)
	Gear.UnbindInstance(egg.transformID)
	Gear.UnbindInstance(egg.transformID2)
	Gear.UnbindInstance(egg.transformID3)
end

function BaseCheckCollision(spell)
	local collisionIDs = spell.sphereCollider:GetCollisionIDs()
	local playSound = false
	for curID = 1, #collisionIDs do
		for curEnemy=1, #enemies do
			if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
				if not spell.enemiesHit[enemies[curEnemy].transformID] then
					enemies[curEnemy]:Hurt(spell.damage, spell.owner)				
					for stuff = 1, #spell.effects do
						local effect = effectTable[spell.effects[stuff]](spell.owner)
						enemies[curEnemy]:Apply(effect)
					end
				end				
				spell.enemiesHit[enemies[curEnemy].transformID] = true	
				playSound = true
			end
		end
		if collisionIDs[curID] == boss.collider:GetID() then --boss collision
			boss:Hurt(spell.damage, spell.owner)
			for i = 1, #spell.effects do
				local effect = effectTable[spell.effects[i]](spell.owner)
				boss:Apply(effect)
			end	
			playSound = true
		end
	end	
	return playSound
end

