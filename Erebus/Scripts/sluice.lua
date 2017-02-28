--Slusskoden följer här!!!
SLUICE_OPEN_TIME = 3

function CreateSluice(colliderID, transformID, colliderIDclose, transformIDclose)
	local sluice = {}
	sluice.sluiceTime = SLUICE_OPEN_TIME
	--Porten som öppnas
	sluice.colliderIDopen = colliderID
	sluice.transformIDopen = transformID
	sluice.position = Transform.GetPosition(transformID)
	sluice.position.y = sluice.position.y + 2
	sluice.position.x = sluice.position.x + 5
	Transform.SetPosition(transformID, sluice.position)

	sluice.lookAt = Transform.GetLookAt(transformID)
	sluice.lookAt.y = 0.0
	sluice.lowering = 0.0
	--porten som stängs
	sluice.colliderIDclose = colliderID
	sluice.transformIDclose = transformID
	sluice.position2 = Transform.GetPosition(transformIDclose)
	sluice.position2.y = sluice.position2.y + 2
	sluice.position2.x = sluice.position2.x -5
	Transform.SetPosition(transformIDclose, sluice.position2)

	sluice.lookAt2 = Transform.GetLookAt(transformID)
	sluice.lookAt2.y = 0.0
	sluice.lowering2 = 0.0
	return sluice
end

function SluiceEnter(sluice)
	sluice.sluiceTime = SLUICE_OPEN_TIME
	sluice.lowering = 0
end

shakeShifter = 1
function SluiceUpdate(dt, sluice)
	local playersInside = {p1 = false, p2 = false}
	local colIDs = sluice.colliderIDopen:GetCollisionIDs()
	for i = 1, #colIDs do
		if colIDs[i] == player.collisionID then playersInside.p1 = true end  
		if colIDs[i] == player2.collisionID then playersInside.p2 = true end  
		if playersInside.p1 or playersInside.p2 then
			sluice.sluiceTime = sluice.sluiceTime - dt
			sluice.lowering = sluice.lowering - dt * 2
			shakeShifter = shakeShifter * -1
			local shakeIt = {x = shakeShifter * (sluice.lookAt.x * dt), y = sluice.lowering, z = shakeShifter * (sluice.lookAt.z * dt)}
			Transform.SetPosition(sluice.transformIDopen, vec3add(shakeIt, sluice.position))
			
			Transform.SetPosition(sluice.transformIDclose, vec3add(shakeIt, sluice.position2))
			
			if sluice.sluiceTime < 0 then
				SphereCollider.SetActive(sluice.colliderIDopen, false)
				print(sluice.transformIDopen)
				Transform.ActiveControl(sluice.transformIDopen, false)
				SphereCollider.SetActive(sluice.colliderIDclose, false)
				Transform.ActiveControl(sluice.transformIDclose, false)
			end
		end
	end
	
end

function SluiceExit(sluice)
	Transform.SetPosition(sluice.transformIDopen, sluice.position)
	sluice.sluiceTime = SLUICE_OPEN_TIME
end