TUTORIAL_DONE = false
function LoadLogic()

end

function UpdateLogic()
	--TutorialBarrier()
end

function LoadLogic()

end

function TutorialBarrier(id,TutorialOBBID,dt)
	if TUTORIAL_DONE == false then 
		pos = Transform.GetPosition(id.transformID)
		showTutorialImage(pos.x+2,pos.y+7,pos.z+15,dt)
		if player.combinedSpellIDs ~= nil then
			local colID = id.collider:GetID()
			local collisionIDs = id.collider:GetCollisionIDs()
			for i = 1, #collisionIDs do 
				for o = 1, #player.combinedSpellIDs do
					if collisionIDs[i] == player.combinedSpellIDs[o] then
						TutorialOBBID:SetActive(false)
						TUTORIAL_DONE = true
						player.combinedSpellIDs = nil
						return
					end
				end
			end
		end
	end
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }