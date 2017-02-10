function CreateAim(entity)
	local aim = {}
	--aim.transformID = Transform.Bind()
	--local model = Assets.LoadModel( "Models/projectile1.model" )
	--Gear.AddForwardInstance(model, aim.transformID)
	local model = Assets.LoadModel("Models/projectile1.model")
	aim.transformID = Gear.BindStaticInstance(model)
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
	--chargeThing.transformID = Transform.Bind()
	--local model = Assets.LoadModel("Models/projectile1.model")
	--chargeThing.modelIndex = Gear.AddForwardInstance(model, chargeThing.transformID)
	--Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");
	chargeThing.particles = createChargeParticles()
	chargeThing.particles.extrovert(false)
	chargeThing.caster = entity.transformID
	chargeThing.rot = {x = 0, y = 0, z = 0}
	chargeThing.pos = {x = 0, y = 0, z = 0}
	chargeThing.UVpushed = 0	
	function chargeThing:Charging(position, dt, chargePower)
		chargeThing.pos = Transform.GetPosition(chargeThing.caster)
		Transform.SetPosition(chargeThing.transformID, chargeThing.pos)
		chargeThing.particles.update(chargeThing.pos) 
		local daPower = math.min(chargePower, MAX_CHARGE)
		Transform.SetScale(chargeThing.transformID, chargePower)
		chargeThing.rot.y = chargeThing.rot.y + (chargePower * chargePower * 2) * dt
		Transform.SetRotation(self.transformID, self.rot)
		self.UVpushed = self.UVpushed + chargePower * dt 
		Gear.SetUniformValue(self.modelIndex, 0, self.UVpushed)
	end

	function chargeThing:EndCharge() Transform.ActiveControl(chargeThing.transformID, false) chargeThing.particles.die() end
	function chargeThing:StartCharge(position) 
		Transform.ActiveControl(chargeThing.transformID, true) 
		Transform.SetPosition(chargeThing.caster, position) 
		chargeThing.particles.cast() 
	end

	return chargeThing
end