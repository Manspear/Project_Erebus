function LoadLogic()
	
end

function UpdateLogic(dt)
	if rewinder.rewinding then
		rewinder:Update(dt)
		boss.animationController:AnimationUpdate(dt, Network)
	else
		BossStuff(dt)
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