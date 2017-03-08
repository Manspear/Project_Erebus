function LoadLogic()
	
end

function UpdateLogic(dt)
	if rewinder.rewinding then
		rewinder:Update(dt)
	end
	BossStuff(dt)
end

function BossStuff(dt)
	if not boss.loaded then LoadBoss() end

	if not boss.realDead then
		if not boss.combatStarted then
			StartingBoss()
		end
		UpdateBoss(dt)
	end
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