function CreateAim(entity)
	local aim = {}
	aim.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/aim.model" )
	Gear.AddForwardInstance(model, aim.transformID)
	Transform.ActiveControl(aim.transformID, true)
	aim.caster = entity.transformID
	function aim:SetPos(position)
		Transform.SetPosition(aim.transformID, position)
	end
	return aim
end

function CreateCombineRay(entity)
	local ray = {}

	ray.transformID = Transform.Bind()
	local rayIce = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	ray.modelIndex = Gear.AddForwardInstance(rayIce, ray.transformID)
	Gear.SetUniformLocation(ray.modelIndex, "aValue");

	ray.transformID2 = Transform.Bind()
	local rayFire = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	ray.modelIndex2 = Gear.AddForwardInstance(rayFire, ray.transformID2)

	ray.transformID3 = Transform.Bind()
	local rayNature = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	ray.modelIndex = Gear.AddForwardInstance(rayNature, ray.transformID3)

	ray.caster = entity.transformID

	function ray:FireChargeBeam(dt,dir,spellElement)
		
		Transform.ActiveControl(self.transformID, false)
		Transform.ActiveControl(self.transformID2, false)
		Transform.ActiveControl(self.transformID3, false)

		local elementalTransformID = self.transformID
		if spellElement == FIRE then
			Transform.ActiveControl(self.transformID2, true)
			elementalTransformID = self.transformID2

		elseif spellElement == NATURE then
			Transform.ActiveControl(self.transformID3, true) 
			elementalTransformID = self.transformID3
		
		else 
			Transform.ActiveControl(ray.transformID, true)
		end
		Transform.ActiveControl(self.transformID, true)
		


		local pos = Transform.GetPosition(self.caster)
		local direction = Transform.GetLookAt(self.caster)
		pos.x = pos.x + dir.x * 11
		pos.y = pos.y + dir.y * 11
		pos.z = pos.z + dir.z * 11

		Transform.SetPosition(elementalTransformID, pos)
		Transform.SetScaleNonUniform(elementalTransformID, 0.2,0.2,10) 
		ray.pos = Transform.GetPosition(self.caster)
		Transform.RotateToVector(elementalTransformID, dir)
		
	end
	function ray:EndChargeBeam()
		Transform.ActiveControl(self.transformID, false)
		Transform.ActiveControl(self.transformID2, false)
		Transform.ActiveControl(self.transformID3, false)
	end
	return ray
end

MAX_CHARGE = 1
function CreateChargeEggs(entity)
	local chargeThing = {}
	chargeThing.timer = 0

	chargeThing.transformID = Transform.Bind()
	local iceModel = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	chargeThing.modelIndex = Gear.AddForwardInstance(iceModel, chargeThing.transformID)
	Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");

	chargeThing.transformID2 = Transform.Bind()
	local fireModel = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	chargeThing.modelIndex2 = Gear.AddForwardInstance(fireModel, chargeThing.transformID2)

	chargeThing.transformID3 = Transform.Bind()
	local natureModel = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	chargeThing.modelIndex3 = Gear.AddForwardInstance(natureModel, chargeThing.transformID3)
	
	chargeThing.firstCombine = false
	chargeThing.elementalTransformID = 0
	chargeThing.particles = createChargeParticles()
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
	
	function chargeThing:ChargeMePlease(dt)
		self.pos = Transform.GetPosition(self.caster)	
		self.pos.y = self.pos.y - 1	 
		Transform.SetPosition(self.elementalTransformID, self.pos)
		Transform.SetScaleNonUniform(self.elementalTransformID, 1,1,1) --det här gäller bara den första		
		self.pos.y = self.pos.y - 1 * dt
		self.rotSmall.y = self.rotSmall.y + (2) * dt
		Transform.SetRotation(self.elementalTransformID, self.rotSmall) --changed
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
		if self.firstCombine then
			self.particles:cast() 
			self.firstCombine = false
			self.light = Light.addLight(self.pos.x, self.pos.y + 3, self.pos.z, self.color.r, self.color.g, self.color.b, 10, 10, true)
		else
			Light.updatePos(self.light, self.pos.x, self.pos.y + 3, self.pos.z, true)
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
		self.color = {r = 0, g = 0, b = 0}
		Transform.ActiveControl(self.transformID, false)
		Transform.ActiveControl(self.transformID2, false)  
		Transform.ActiveControl(self.transformID3, false)  
		Transform.SetPosition(self.transformID3, {x = 0, y = 0, z = 0})  
		self.particles:die()
		if self.light then	Light.removeLight(self.light, true)	 self.light = nil	end
	end

	function chargeThing:StartCharge(position, spellElement) 		
		self.timer = 0   
		self.pos = Transform.GetPosition(chargeThing.caster)	
		self.firstCombine = true		
		if spellElement == FIRE then
			Transform.ActiveControl(self.transformID2, true)
			self.color.r = 1
			self.elementalTransformID = self.transformID2

		elseif spellElement == NATURE then
			self.color.g = 1
			Transform.ActiveControl(self.transformID3, true) 
			self.elementalTransformID = self.transformID3	
		else 
			self.color.b = 1
			self.elementalTransformID = self.transformID
			Transform.ActiveControl(self.transformID, true)			
		end
	end


	return chargeThing

end

function TutorialBarrier()
	print("DESTROY BOUNDRIES BREAK THE SKY!")
end