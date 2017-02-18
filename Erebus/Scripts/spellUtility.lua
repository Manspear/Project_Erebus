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
	local rayModel = Assets.LoadModel("Models/SpellChargingICEMesh.model")
	ray.modelIndex = Gear.AddForwardInstance(rayModel, chargeThing.transformID)

	chargeThing.modelIndex = Gear.AddForwardInstance(iceModel, chargeThing.transformID)
	Gear.SetUniformLocation(ray.modelIndex, "aValue");
	ray.caster = entity.transformID

	ray.rot = {x = 0, y = 0, z = 0}
	ray.scale = {x = 1, y = 1, z = 1}
	ray.pos = {x = 0, y = 0, z = 0}

	function ray:FireChargeBeam(position,dt,spellElement)
		print("fuckYes")
	end
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