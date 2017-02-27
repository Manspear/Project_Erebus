--Slusskoden följer här!!!
SLUICE_OPEN_TIME = 3

function CreateSluice(colliderID, transformID)
	local sluice = {}
	sluice.playersInSluice = 0
	sluice.sluiceTime = SLUICE_OPEN_TIME
	sluice.colliderID = colliderID
	sluice.transformID = transformID
	sluice.position = Transform.GetPosition(transformID)
	sluice.position.y = sluice.position.y + 2
	sluice.lookAt = Transform.GetLookAt(transformID)
	sluice.lookAt.y = 0.0
	sluice.lowering = 0.0
	sluice.shakePower = 0
	return sluice
end

function SluiceEnter(sluice)
	sluice.sluiceTime = SLUICE_OPEN_TIME
	sluice.lowering = 0
end

shakeShifter = 1
function SluiceUpdate(dt, sluice)
	local playersInside = {p1 = false, p2 = false}
	local colIDs = sluice.colliderID:GetCollisionIDs()
	for i = 1, #colIDs do
		if colIDs[i] == player.collisionID then playersInside.p1 = true end  
		if colIDs[i] == player2.collisionID then playersInside.p2 = true end  
		if playersInside.p1 and playersInside.p2 then
			sluice.sluiceTime = sluice.sluiceTime - dt
			sluice.lowering = sluice.lowering - dt * 2
			shakeShifter = shakeShifter * -1
			local shakeIt = {x = shakeShifter * (sluice.lookAt.x * dt), y = sluice.lowering, z = shakeShifter * (sluice.lookAt.z * dt)}
			Transform.SetPosition(sluice.transformID, vec3add(shakeIt, sluice.position))
			if sluice.sluiceTime < 0 then
				SphereCollider.SetActive(sluice.colliderID, false)
				print(sluice.transformID)
				Transform.ActiveControl(sluice.transformID, false)
			end
		end
	end
	
end

function SluiceExit(sluice)
	Transform.SetPosition(sluice.transformID, sluice.position)
	sluice.sluiceTime = SLUICE_OPEN_TIME
end