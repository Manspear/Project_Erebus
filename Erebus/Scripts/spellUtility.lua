function CreateAim(entity)
	local aim = {}
	--aim.transformID = Transform.Bind()
	--local model = Assets.LoadModel( "Models/aim.model" )
	--Gear.AddForwardInstance(model, aim.transformID)
	local model = Assets.LoadModel( "Models/aim.model" )
	aim.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(aim.transformID, true)
	aim.caster = entity.transformID
	function aim:SetPos(position)
		Transform.SetPosition(aim.transformID, position)
	end
	return aim
end

function CreateCombineRay(entity)
	local ray = {}

	--ray.transformID = Transform.Bind()
	--local rayIce = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	--ray.modelIndex = Gear.AddForwardInstance(rayIce, ray.transformID)
	local rayIce = Assets.LoadModel( "Models/SpellChargingICEMesh.model" )
	ray.transformID = Gear.BindForwardInstance(rayIce)
	Gear.SetUniformLocation(ray.modelIndex, "aValue");

	--ray.transformID2 = Transform.Bind()
	--local rayFire = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	--ray.modelIndex2 = Gear.AddForwardInstance(rayFire, ray.transformID2)
	local rayFire = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	ray.transformID2 = Gear.BindForwardInstance(rayFire)

	--ray.transformID3 = Transform.Bind()
	--local rayNature = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	--ray.modelIndex = Gear.AddForwardInstance(rayNature, ray.transformID3)
	local rayNature = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	ray.transformID3 = Gear.BindForwardInstance(rayNature)

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

	--chargeThing.transformID = Transform.Bind()
	local iceModel = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	--chargeThing.modelIndex = Gear.AddForwardInstance(iceModel, chargeThing.transformID)
	chargeThing.transformID = Gear.BindForwardInstance(iceModel)
	-- TEMP(Niclas): Figure this out
	chargeThing.modelIndex = chargeThing.transformID
	Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");

	--chargeThing.transformID2 = Transform.Bind()
	local fireModel = Assets.LoadModel("Models/SpellChargingFireMesh.model")
	chargeThing.transformID2 = Gear.BindForwardInstance(fireModel)
	chargeThing.modelIndex2 = chargeThing.transformID2

	--chargeThing.transformID3 = Transform.Bind()
	local natureModel = Assets.LoadModel("Models/SpellChargingNatureMesh.model")
	chargeThing.transformID3 = Gear.BindForwardInstance(natureModel)
	chargeThing.modelIndex3 = chargeThing.transformID3
	
	chargeThing.particles = createChargeParticles()
	chargeThing.particles:extrovert(false)
	chargeThing.caster = entity.transformID
	chargeThing.rot = {x = 0, y = 0, z = 0}

	chargeThing.rotSmall = {x = 0, y = 0, z = 0}
	chargeThing.scaleSmall = {x = 1, y = 1, z = 1}

	chargeThing.rotLarge = {x = 0, y = 0, z = 0}
	chargeThing.scaleLarge = {x = 1.4, y = 1.1, z = 1.4}

	chargeThing.pos = {x = 0, y = 0, z = 0}
	
	function chargeThing:ChargeMePlease(position,dt,spellElement)

		Transform.ActiveControl(chargeThing.transformID, false)
		Transform.ActiveControl(chargeThing.transformID2, false)
		Transform.ActiveControl(chargeThing.transformID3, false)

		elementalTransformID = chargeThing.transformID
		if spellElement == FIRE then
			Transform.ActiveControl(chargeThing.transformID2, true)
			elementalTransformID = chargeThing.transformID2

		elseif spellElement == NATURE then
			Transform.ActiveControl(chargeThing.transformID3, true) 
			elementalTransformID = chargeThing.transformID3
		
		else 
			Transform.ActiveControl(chargeThing.transformID, true)
		end
	 
		Transform.SetPosition(elementalTransformID, chargeThing.pos)

		Transform.SetScaleNonUniform(elementalTransformID, 1,1,1) --det här gäller bara den första
		chargeThing.pos = Transform.GetPosition(chargeThing.caster)
		chargeThing.pos.y = chargeThing.pos.y - 1

		chargeThing.rotSmall.y = chargeThing.rotSmall.y + (2) * dt
		Transform.SetRotation(elementalTransformID, self.rotSmall) --changed
		
	
		end


	function chargeThing:CombinedAndCharged(position, dt, chargePower,spellElement)
		chargeThing.particles:cast() 
		elementalTransformID = chargeThing.transformID
		if spellElement == FIRE then
			Transform.ActiveControl(chargeThing.transformID2, true)
			elementalTransformID = chargeThing.transformID2

		elseif spellElement == NATURE then
			Transform.ActiveControl(chargeThing.transformID3, true) 
			elementalTransformID = chargeThing.transformID3
		
		else 
			Transform.ActiveControl(chargeThing.transformID, true)
		end
		
		
		chargeThing.timer = chargeThing.timer + dt
		Transform.SetScaleNonUniform(elementalTransformID, 1,1,1) --det här gäller bara den första
		chargeThing.pos = Transform.GetPosition(chargeThing.caster)
		chargeThing.pos.y = chargeThing.pos.y - 1

		--Cyl

		if(chargeThing.scaleSmall.x < 1.1) then
			chargeThing.scaleSmall.x = chargeThing.scaleSmall.x + (chargePower * chargePower * 75) * dt
			chargeThing.scaleSmall.z = chargeThing.scaleSmall.z + (chargePower * chargePower * 75) * dt
		end

		if(chargeThing.scaleSmall.y < 1.1) then
			chargeThing.scaleSmall.y = chargeThing.scaleSmall.y + (0.075*dt)
		end

		Transform.SetScaleNonUniform(elementalTransformID, chargeThing.scaleSmall.x,chargeThing.scaleSmall.y,chargeThing.scaleSmall.z) 
		Transform.SetPosition(elementalTransformID, chargeThing.pos) 
		daPower = math.min(chargePower, MAX_CHARGE)
		chargeThing.rotSmall.y = chargeThing.rotSmall.y + (3) * dt
		Transform.SetRotation(elementalTransformID, self.rotSmall)

		if(chargeThing.timer > 0.75) then
		
			if(chargeThing.scaleLarge.x < 1.1) then
				chargeThing.scaleLarge.x = chargeThing.scaleLarge.x + (chargePower * chargePower * 30) * dt
				chargeThing.scaleLarge.Y = chargeThing.scaleLarge.y + (chargePower * chargePower * 30) * dt
				chargeThing.scaleLarge.z = chargeThing.scaleLarge.z + (chargePower * chargePower * 30) * dt
			end

			Transform.SetScaleNonUniform(elementalTransformID, chargeThing.scaleLarge.x,chargeThing.scaleLarge.y,chargeThing.scaleLarge.z)
			Transform.SetPosition(elementalTransformID, chargeThing.pos)
			chargeThing.particles:update(chargeThing.pos) 
			local daPower = math.min(chargePower, MAX_CHARGE)
			chargeThing.rotLarge.y = chargeThing.rotLarge.y + 5 * dt
			Transform.SetRotation(elementalTransformID, self.rotLarge)
		end
	end


	function chargeThing:EndCharge() 
		chargeThing.scaleSmall = {x = 1, y = 1, z = 1}
		chargeThing.scaleLarge = {x = 1.4, y = 1.1, z = 1.4}
		Transform.ActiveControl(chargeThing.transformID, false)
		Transform.ActiveControl(chargeThing.transformID2, false)  
		Transform.ActiveControl(chargeThing.transformID3, false)  
		Transform.SetPosition(chargeThing.transformID3, {x = 0, y = 0, z = 0})  
		chargeThing.particles:die()
	end


	function chargeThing:StartCharge(position) 
		
		chargeThing.timer = 0   
		chargeThing.pos = Transform.GetPosition(chargeThing.caster)
	end


	return chargeThing
end