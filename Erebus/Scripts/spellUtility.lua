function CreateAim(entity)
	local aim = {}
	aim.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddForwardInstance(model, aim.transformID)
	Transform.ActiveControl(aim.transformID, true)
	aim.caster = entity.transformID
	function aim:SetPos(position)
		Transform.SetPosition(self.transformID, position)
	end
	return aim
end

MAX_CHARGE = 1
function CreateChargeThing(entity)
	local chargeThing = {}
	chargeThing.transformID = Transform.Bind()
	local model = Assets.LoadModel("Models/projectile1.model")
	chargeThing.modelIndex = Gear.AddForwardInstance(model, chargeThing.transformID)
	Gear.SetUniformLocation(chargeThing.modelIndex, "aValue");
	chargeThing.particles = createChargeParticles()
	chargeThing.particles.extrovert(false)
	chargeThing.caster = entity.transformID
	chargeThing.rot = {x = 0, y = 0, z = 0}
	chargeThing.pos = {x = 0, y = 0, z = 0}
	chargeThing.UVpushed = 0	
	function chargeThing:Charging(position, dt, chargePower)
		self.pos = Transform.GetPosition(self.caster)
		Transform.SetPosition(self.transformID, self.pos)
		chargeThing.particles.update(self.pos) 
		local daPower = math.min(chargePower, MAX_CHARGE)
		Transform.SetScale(self.transformID, chargePower + 5 * dt)
		self.UVpushed = self.UVpushed + chargePower * dt 
		Gear.SetUniformValue(self.modelIndex, 0, self.UVpushed)
	end

	function chargeThing:EndCharge() Transform.ActiveControl(self.transformID, false) self.particles.die() end
	function chargeThing:StartCharge(position) 
		Transform.ActiveControl(self.transformID, true) 
		Transform.SetPosition(self.caster, position) 
		self.particles.cast() 
	end

	return chargeThing
end