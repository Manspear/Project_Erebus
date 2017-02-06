STATE_ZOOMED_IN, STATE_ZOOMED_OUT, STATE_ZOOMING_IN, STATE_ZOOMING_OUT = 0, 1, 2, 3
camera = {distance = 4, angle = 0, xOffset = 0, yOffset = 1.4, fov = (3.14/180) *50, state = STATE_ZOOMING_OUT}

timeSinceShot = 0
DelayZoomOut = 0.5

--distance was 4
ZoomedOut = {distance = 6, angle = 0, time =1, timeSpent = 0, xOffset = 0, yOffset = 1.4, fov = (3.14/180) *50}	--fov är i radianer, strange things happen with higher values. 90 grader ar standard i fps spel
--distance was 3.6
ZoomedIn = {distance = 5.6, angle = 0, time = 0.2, timeSpent = 0, xOffset = 0.6, yOffset = 1.4, fov = (3.14/180)*50}		--fov är i radianer, be careful when changing

StartState = {distance = 6, angle = 0, xOffset = 0, yOffset = 0, fov = 0}

function interpolate(a, b, factor) 
	return a + factor*(b-a)
end

function cross(a, b)
	return {x = a.y*b.z - a.z*b.y, 
			y = a.z*b.x - a.x*b.z, 
			z = a.x*b.y - a.y*b.z}
end

function scalarvec3mult(a, b)
	return {x = a*b.x, 
			y = a*b.y, 
			z = a*b.z}
end

function vec3add(a, b)
	return {x = a.x+b.x,
			y = a.y+b.y,
			z = a.z+b.z}
end

function vec3sub(a, b)
	return {x = a.x-b.x,
			y = a.y-b.y,
			z = a.z-b.z}
end

function ZoomInCamera()
	timeSinceShot = 0
	camera.state = STATE_ZOOMING_IN
	StartState.distance = camera.distance
	StartState.angle = camera.angle
	StartState.xOffset = camera.xOffset
	StartState.yOffset = camera.yOffset
	StartState.fov = camera.fov		
	ZoomedIn.timeSpent = 0
end

function ZoomOutCamera()
	ZoomedOut.timeSpent = 0
	
	StartState.distance = camera.distance
	StartState.angle = camera.angle
	StartState.xOffset = camera.xOffset
	StartState.yOffset = camera.yOffset
	StartState.fov = camera.fov

	camera.state = STATE_ZOOMING_OUT
end

function UpdateCamera(dt)	
	if camera.state == STATE_ZOOMING_OUT then
		ZoomedOut.timeSpent = ZoomedOut.timeSpent + dt

		--i vilket läge övergången är i
		local factor = math.sin((math.min(ZoomedOut.timeSpent, ZoomedOut.time)/ZoomedOut.time)*3.14 - 3.14*0.5)*0.5 + 0.5	--ciruklär (mjukare, men dyrare)
		--local factor = math.min(ZoomedOut.timeSpent, ZoomedOut.time)/ZoomedOut.time										--linjär

		--Linjär interpolation mellan vart kameran var när övergången började och vart den ska vara när övergången är klar
		camera.distance = interpolate(	StartState.distance,	ZoomedOut.distance, factor	)
		camera.angle = interpolate(		StartState.angle,		ZoomedOut.angle,	factor	)
		camera.xOffset = interpolate(	StartState.xOffset,		ZoomedOut.xOffset,	factor	)
		camera.yOffset = interpolate(	StartState.yOffset,		ZoomedOut.yOffset,	factor	) 
		camera.fov = interpolate(		StartState.fov,			ZoomedOut.fov,		factor	) 

		if ZoomedOut.timeSpent > ZoomedOut.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_OUT
		end
	elseif camera.state == STATE_ZOOMING_IN then
		ZoomedIn.timeSpent =  ZoomedIn.timeSpent + dt 
		
		--i vilket läge övergången är i
		local factor = math.sin((math.min(ZoomedIn.timeSpent, ZoomedIn.time)/ZoomedIn.time)*3.14 - 3.14/2)/2 + 0.5	--cirkulär (mjukare, men dyrare)
		--local factor = math.min(ZoomedIn.timeSpent, ZoomedIn.time)/ZoomedIn.time										--linjär

		--interpolation mellan vart kameran var när övergången började och vart den ska vara när övergången är klar, factor kan vara linjär eller cirkulär :)
		camera.distance = interpolate(	StartState.distance,	ZoomedIn.distance,	factor	)
		camera.angle = interpolate(		StartState.angle,		ZoomedIn.angle,		factor	)
		camera.xOffset = interpolate(	StartState.xOffset,		ZoomedIn.xOffset,	factor	)
		camera.yOffset = interpolate(	StartState.yOffset,		ZoomedIn.yOffset,	factor	)
		camera.fov = interpolate(		StartState.fov,			ZoomedIn.fov,		factor	) 

		if ZoomedIn.timeSpent > ZoomedIn.time then --if transition complete -> change state to reflect that
			camera.state = STATE_ZOOMED_IN
		end
	end

	Camera.Follow(camera.fov, player.transformID, camera.yOffset, camera.xOffset, camera.distance, camera.angle)
	local temppos = Camera.GetPos()
	local distance = camera.distance
	local dir = Camera.GetDirection()
	local height = 0
	local incrementfactor = (0.03/math.sqrt(3))
	while distance > 0.5 do
		--height = heightmaps[1].asset:GetHeight(temppos.x, temppos.z
		local hm = GetHeightmap(temppos)
		if hm then
			height = hm.asset:GetHeight(temppos.x, temppos.z)
			if height > temppos.y then
				distance = distance - 0.03
				temppos.x = temppos.x + dir.x 
				temppos.y = temppos.y + dir.y
				temppos.z = temppos.z + dir.z 
			--camera.state = STATE_ZOOMED_IN
				--Camera.SetHeight(height + 0.5) 
			else
				break
			end
		else
			distance = distance - 0.03
		end
	end
	camera.distance = distance
	Camera.Follow(camera.fov, player.transformID, camera.yOffset, camera.xOffset, camera.distance, camera.angle)
end

return { Update = UpdateCamera }