function LoadLogic()
	
end

function UpdateLogic(dt)
	if rewinder.rewinding then
		rewinder:Update(dt)
		boss.animationController:AnimationUpdate(dt, Network)
	else
		BossStuff(dt)
	end
	if boss.combatStarted then 
		Transform.SetPosition(levels[8].props.WoodenFenceID.transformID, {x=289.09, y=126.67, z=479.67})
		levels[8].props.WoodenFenceID.collider:SetPos(289.09, 126.67, 479.67)
		
		Transform.SetPosition(levels[8].props.WoodenFence1ID.transformID, {x=355.01, y=126.86, z=479.48})
		levels[8].props.WoodenFence1ID.collider:SetPos(355.01, 126.86, 479.48)
	else
		Transform.SetPosition(levels[8].props.WoodenFenceID.transformID, {x=0, y=0, z=0})
		levels[8].props.WoodenFenceID.collider:SetPos(0, 0, 0)
		
		Transform.SetPosition(levels[8].props.WoodenFence1ID.transformID, {x=0, y=0, z=0})
		levels[8].props.WoodenFence1ID.collider:SetPos(0, 0, 0)
	end
end

function BossStuff(dt)
	if not boss.loaded then LoadBoss() end

	if not boss.realDead then
		if not boss.combatStarted then
			StartingBoss()
		end
	end
	UpdateBoss(dt)
end

function StartingBoss()
	local player1BossDistance = Transform.GetDistanceBetweenTrans(player.transformID, boss.transformID)
	local player2BossDistance = Transform.GetDistanceBetweenTrans(player2.transformID, boss.transformID)
	if player1BossDistance <= 39 then--and player2BossDistance <= 39 then 
		boss.combatStarted = true
		boss:Spawn()
	end
end

function UnloadLogic()

end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }