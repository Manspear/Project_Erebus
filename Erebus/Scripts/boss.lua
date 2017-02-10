BOSS_SPELLCD_1 = 25
boss = {}
boss.spells = {}
boss.spellcooldowns = {}

function LoadBoss()
	print("STARTING TO LOAD THE BOSS")
	boss.spells[1] = CreateTimeOrbWave()
	print("DONE WITH TIME ORB")
	boss.spellcooldowns[1] = 0
	--boss.transformID = Transform.Bind()
	
	--local model = Assets.LoadModel("Models/testGuy.model")
	boss.animationController = CreatePlayerController(boss)
	--Gear.AddAnimatedInstance(model, boss.transformID, boss.animationController.animation)
	local model = Assets.LoadModel("Models/testGuy.model")
	boss.transformID = Gear.BindAnimatedInstance(model, boss.animationController.animation)
	print("TRYING TO SET POSITION")
	Transform.SetPosition(boss.transformID, { x=100, y=-5, z=100 })
	print("DONE SETTING POSITION")
	Transform.ActiveControl(boss.transformID, true)
	
	boss.sphereCollider = SphereCollider.Create(boss.transformID)
	CollisionHandler.AddSphere(boss.sphereCollider, 2)
	SphereCollider.SetActive(boss.sphereCollider, true);

	function boss:Hurt()

	end

	print("DONE LOADING THE BOSS")
end
function UnloadBoss()

end
function UpdateBoss(dt)
	for i = 1, #boss.spells do
		boss.spells[i]:Update(dt)
		boss.spellcooldowns[i]  = boss.spellcooldowns[i] - dt
		if boss.spellcooldowns[i] < 0 then
			print("shot")
			boss.spellcooldowns[i] = BOSS_SPELLCD_1
			boss.spells[i]:Cast(Transform.GetPosition(boss.transformID))
		end
	end
end

return { Load = LoadBoss, Unload = UnloadBoss, Update = UpdateBoss }