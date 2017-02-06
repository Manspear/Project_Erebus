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
	chargeThing.transformID = Transform.Bind()
	local model = Assets.LoadModel("Models/projectile1.model")
	chargeThing.modelIndex = Gear.AddForwardInstance(model, chargeThing.transformID)
	Gear.SetUniformLocation(chargeThing.modelIndex, 3);
	chargeThing.caster = entity.transformID
	chargeThing.rot = {x = 0, y = 0, z = 0}
	chargeThing.UVpushed = 0	
	function chargeThing:Charging(position, dt, chargePower)
		Transform.SetPosition(chargeThing.transformID, Transform.GetPosition(chargeThing.caster))
		local daPower = math.min(chargePower, MAX_CHARGE)
		Transform.SetScale(chargeThing.transformID, chargePower)
		chargeThing.rot.y = chargeThing.rot.y + (chargePower * chargePower * 2) * dt
		Transform.SetRotation(self.transformID, self.rot)
		self.UVpushed = self.UVpushed + chargePower * dt 
		Gear.SetUniformValue(self.modelIndex, 0, self.UVpushed)
	end

	function chargeThing:EndCharge() Transform.ActiveControl(chargeThing.transformID, false) end
	function chargeThing:StartCharge(position) Transform.ActiveControl(chargeThing.transformID, true) Transform.SetPosition(chargeThing.caster, position) end

	return chargeThing
end