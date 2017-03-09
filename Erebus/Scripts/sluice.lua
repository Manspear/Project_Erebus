--Slusskoden följer här!!!
SLUICE_OPEN_TIME = 3
sluiceDownSpeed = 1
openSluices = {}

function CreateSluice(triggerID, transformID, colliderClose, transformIDclose, sluiceID)
	local sluice = {}
	sluice.sluiceTime = SLUICE_OPEN_TIME
	sluice.lowering = 0.0
	sluice.sluiceID = sluiceID
	--Porten som öppnas
	sluice.colliderIDopen = triggerID
	sluice.transformIDopen = transformID
	sluice.position = Transform.GetPosition(transformID)
	sluice.lookAt = Transform.GetLookAt(transformID)
	
	--porten som stängs
	sluice.colliderClose = colliderClose
	sluice.transformIDclose = transformIDclose
	sluice.position2 = Transform.GetPosition(transformIDclose)
	sluice.lookAt2 = Transform.GetLookAt(transformIDclose)
	sluice.sluiceDownSpeed = Transform.GetScaleNonUniform(transformIDclose).y
	--local hitboxDir = vec3cross(sluice.lookAt, {x = 0, y = 1, z = 0})
	--OBBCollider.SetXAxis(colliderClose.collider, hitboxDir.x, hitboxDir.y, hitboxDir.z)
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
		if playersInside.p1 and playersInside.p2 or playersInside.p1 and player2.position.x == 0 then
			hideWaitingForPlayer2(dt)
			sluice.sluiceTime = sluice.sluiceTime - dt
			sluice.lowering = sluice.lowering - dt * 2 * sluice.sluiceDownSpeed
			shakeShifter = shakeShifter * -1
			local shakeIt = {x = shakeShifter * (sluice.lookAt.x * dt), y = sluice.lowering, z = shakeShifter * (sluice.lookAt.z * dt)}
			Transform.SetPosition(sluice.transformIDopen, vec3add(shakeIt, sluice.position))
			local shakeIt2 = {x = shakeShifter * (sluice.lookAt2.x * dt), y = -sluice.lowering, z = shakeShifter * (sluice.lookAt2.z * dt)}
			Transform.SetPosition(sluice.transformIDclose, vec3add(shakeIt2, sluice.position2))
			if sluice.sluiceTime < 0 then
				sluice.colliderClose.collider:SetPos(sluice.position2.x, sluice.position2.y + 4, sluice.position2.z)
				--local hitboxDir = vec3cross(sluice.lookAt2, {x = 0, y = 1, z = 0})	
				sluice.position2 = 	Transform.GetPosition(sluice.transformIDclose)	
				Transform.ActiveControl(sluice.transformIDopen, false)
				SphereCollider.SetActive(sluice.colliderIDopen, false)
				table.insert(openSluices, sluice.sluiceID)
			end
		elseif playersInside.p1 then
			showWaitingForPlayer2(dt)
		end
	end
	
end

function SluiceOpened(sluiceNumber)
	for i = 1, #openSluices do
		if openSluices[i] == sluiceNumber then
			return true
		end
	end
	return false
end

function SluiceExit(sluice)
	Transform.SetPosition(sluice.transformIDopen, sluice.position)
	Transform.SetPosition(sluice.transformIDclose, sluice.position2)
	sluice.sluiceTime = SLUICE_OPEN_TIME
	hideWaitingForPlayer2(dt)
end