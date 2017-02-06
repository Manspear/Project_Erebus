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