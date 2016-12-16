STATE_ZOOMED_IN, STATE_ZOOMED_OUT, STATE_ZOOMING_IN, STATE_ZOOMING_OUT = 0, 1, 2, 3
camera = {distance = 8, angle = 0, xOffset = 0, yOffset = 2, fov = 3.14/4, state = STATE_ZOOM_OUT}

timeSinceShot = 0
DelayZoomOut = 0.5


ZoomedOut = {distance = 8.0, angle = 3.14/20, time =7, timeSpent = 0, xOffset = 0, yOffset = 2, fov = 3.14/4.4}	--fov är i radianer, strange things happen with higher values
ZoomedIn = {distance = 7.6, angle = 0, time = 0.2, timeSpent = 0, xOffset = 1, yOffset = 2, fov = 3.14/4.7}		--fov är i radianer, be careful when changing

StartState = {distance = 0, angle = 0, xOffset = 0, yOffset = 0, fov = 0}

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

function UpdateCamera(dt)
	if player.testCamera == true then 
		timeSinceShot = 0
		if camera.state ~= STATE_ZOOMED_IN and camera.state ~= STATE_ZOOMING_IN then --start zooming in if not already zoomed in
			camera.state = STATE_ZOOMING_IN

			StartState.distance = camera.distance
			StartState.angle = camera.angle
			StartState.xOffset = camera.xOffset
			StartState.yOffset = camera.yOffset
			StartState.fov = camera.fov
			
			ZoomedIn.timeSpent = 0
		end
	end
	timeSinceShot = timeSinceShot + dt
	if timeSinceShot > DelayZoomOut and camera.state ~= STATE_ZOOMED_OUT and camera.state ~= STATE_ZOOMING_OUT then --start zooming out if not already zoomed out, triggers when player have not shot recently
		ZoomedOut.timeSpent = 0

		StartState.distance = camera.distance
		StartState.angle = camera.angle
		StartState.xOffset = camera.xOffset
		StartState.yOffset = camera.yOffset
		StartState.fov = camera.fov

		camera.state = STATE_ZOOMING_OUT
	end 

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

	--[[
	pos = Transform.GetPos(player.transformID)
	dir = Transform.GetLookAt(player.transformID)
	tempDir = {x = pos.x, y = 0, z = pos.z}
	offset = scalarvec3mult(camera.xOffset, cross(tempDir, {x = 0, y = 1, z = 0}))
	offset.y = offset.y + camera.yOffset

	lookfrom = {x = 0, y = camera.distance * math.sin(camera.angle), z = 0}
	lookfrom = vec3sub(lookfrom, scalarvec3mult(camera.distance, scalarvec3mult(math.cos(camera.angle), tempDir)) )

	tempPos = vec3add( vec3add(pos, offset),  )--]]


	Camera.Follow(camera.fov, player.transformID, camera.yOffset, camera.xOffset, camera.distance, camera.angle)
	local temppos = Camera.GetPos()
	local height = heightmap:GetHeight(temppos.x, temppos.z)
	if height + 0.5 > temppos.y then
		Camera.SetHeight(height+ 0.5) 
	end


end



return { Update = UpdateCamera }