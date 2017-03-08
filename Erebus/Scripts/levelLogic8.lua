function LoadLogic()
	
end

function UpdateLogic(dt)
	if rewinder.rewinding then
		rewinder:Update(dt)
	else
		BossStuff(dt)
	end
end

function BossStuff(dt)
	if not boss.loaded then LoadBoss() end

	if not boss.combatStarted then
		StartingBoss()
	else
		UpdateBoss(dt)
	end
end

function StartingBoss()
	local player1BossDistance = Transform.GetDistanceBetweenTrans(player.transformID, boss.transformID)
	local player2BossDistance = Transform.GetDistanceBetweenTrans(player2.transformID, boss.transformID)
	if player1BossDistance <= 39 then--and player2BossDistance <= 39 then 
		boss.combatStarted = true
	end
end

function UnloadLogic()

end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }