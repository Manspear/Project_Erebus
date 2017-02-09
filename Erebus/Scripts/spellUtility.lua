function CreateAim(entity)
	local aim = {}
	aim.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddForwardInstance(model, aim.transformID)
	Transform.ActiveControl(aim.transformID, true)
	aim.caster = entity.transformID
	function aim:SetPos(position)
		Transform.SetPosition(aim.transformID, position)
	end
	return aim
end

MAX_CHARGE = 1
function CreateChargeThing(entity)
	local chargeThing = {}
	chargeThing.timer = 0

	chargeThing.transformID = Transform.Bind()
	local model = Assets.LoadModel("Models/pPlane1.model")
	chargeThing.modelIndex = Gear.AddForwardInstance(model, chargeThing.transformID)
	Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");

	chargeThing.transformID2 = Transform.Bind()
	local cylinder = Assets.LoadModel("Models/Cylinder_Hollow.model")
	chargeThing.modelIndex2 = Gear.AddForwardInstance(cylinder, chargeThing.transformID2)
	Transform.SetScaleNonUniform(chargeThing.transformID2, 1,0.1,1)
	
	
	chargeThing.particles = createChargeParticles()
	chargeThing.particles.extrovert(false)
	chargeThing.caster = entity.transformID
	chargeThing.rot = {x = 0, y = 0, z = 0}

	chargeThing.rotSmall = {x = 0, y = 0, z = 0}
	chargeThing.scaleSmall = {x = 0, y = 0.1, z = 0}

	chargeThing.rotLarge = {x = 0, y = 0, z = 0}
	chargeThing.scaleLarge = {x = 0, y = 1, z = 0}

	chargeThing.pos = {x = 0, y = 0, z = 0}
	chargeThing.UVpushed = 0	

	function chargeThing:Charging(position, dt, chargePower)
		chargeThing.timer = chargeThing.timer + dt
		chargeThing.pos = Transform.GetPosition(chargeThing.caster)

		--Cyl

		if(chargeThing.scaleSmall.x < 0.5) then
			chargeThing.scaleSmall.x = chargeThing.scaleSmall.x + (chargePower * chargePower * 75) * dt
			chargeThing.scaleSmall.z = chargeThing.scaleSmall.z + (chargePower * chargePower * 75) * dt
		end
		if(chargeThing.scaleSmall.y < 0.5) then
			chargeThing.scaleSmall.y = chargeThing.scaleSmall.y + (0.075*dt)
		end

		Transform.SetScaleNonUniform(chargeThing.transformID2, chargeThing.scaleSmall.x,chargeThing.scaleSmall.y,chargeThing.scaleSmall.z)
		Transform.SetPosition(chargeThing.transformID2, chargeThing.pos)
		daPower = math.min(chargePower, MAX_CHARGE)
		chargeThing.rot.y = chargeThing.rot.y + (2) * dt
		Transform.SetRotation(chargeThing.transformID2, self.rot)

		if(chargeThing.timer > 0.75) then
		
			if(chargeThing.scaleLarge.x < 6) then
				chargeThing.scaleLarge.x = chargeThing.scaleLarge.x + (chargePower * chargePower * 30) * dt
				chargeThing.scaleLarge.z = chargeThing.scaleLarge.z + (chargePower * chargePower * 30) * dt
			end

			Transform.SetScaleNonUniform(chargeThing.transformID, chargeThing.scaleLarge.x,chargeThing.scaleLarge.y,chargeThing.scaleLarge.z)
			Transform.SetPosition(chargeThing.transformID, chargeThing.pos)
			chargeThing.particles.update(chargeThing.pos) 
			local daPower = math.min(chargePower, MAX_CHARGE)
			chargeThing.rot.y = chargeThing.rot.y - (chargePower * 2) * dt
			Transform.SetRotation(chargeThing.transformID, self.rot)
			self.UVpushed = self.UVpushed + chargePower * dt 
			Gear.SetUniformValue(self.modelIndex, 0, self.UVpushed)
		end
	end

	function chargeThing:EndCharge() 
		chargeThing.scaleSmall = {x = 0, y = 0.1, z = 0}
		chargeThing.scaleLarge = {x = 0, y = 1, z = 0}
		Transform.ActiveControl(chargeThing.transformID, false)
		Transform.ActiveControl(chargeThing.transformID2, false)  
		chargeThing.particles.die()
	end
	function chargeThing:StartCharge(position) 
		chargeThing.timer = 0
		Transform.ActiveControl(chargeThing.transformID, true)
		Transform.ActiveControl(chargeThing.transformID2, true)  
		Transform.SetPosition(chargeThing.caster, position) 
		chargeThing.particles.cast() 
	end

	return chargeThing
end