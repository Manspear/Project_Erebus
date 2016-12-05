nrOfActors = 41
nrOfEnemies = 34
nrOfBullets = 5
player = {}
enemies = {trans = {}, ms = {}, sphereCollider = {}}
Engine.InitStuff(nrOfActors)

bullets = { }
bulletIndex = 1
activeBullets = 0

goal = {}

modelPaths = {{"Models/moleman.model", nrOfEnemies+1}, {"Models/bullet.model", nrOfBullets}, {"Models/sten.model", 1}}
for i = 1, #modelPaths do
	Importer.LoadModels(modelPaths[i][1], modelPaths[i][2])
end

player.trans = Transform.Bind()
player.moveSpeed = 40
player.ySpeed = 0
player.canJump = false
player.health = 100
player.sphereCollider = SphereCollider.Create(0, player.trans, 50,10,50, 5)
CollisionHandler:AddSphere(player.sphereCollider)
Transform.SetPos(player.trans, {x=100,y=10,z=100})

for i = 1, nrOfEnemies do
	enemies.trans[i] = Transform.Bind()
	enemies.ms[i] = math.random(5, 20)
	Transform.SetPos(enemies.trans[i], {x = math.random(10, 255), y = math.random(15, 30), z = math.random(10, 245)})
	enemies.sphereCollider[i] = SphereCollider.Create(i, enemies.trans[i], 0,0,0, 1)
	CollisionHandler:AddSphere(enemies.sphereCollider[i])
end

for i = 1, nrOfBullets do
	bullets[i] = {trans = 0, ms= 0, lifeLeft= 0, alive = false}
	bullets[i].trans = Transform.Bind()
	bullets[i].ms = 10
	bullets[i].lifeLeft = 10
	bullets[i].alive = false
	bullets[i].sphereCollider = SphereCollider.Create(i+nrOfEnemies, bullets[i].trans, 0,0,0, 2)
	CollisionHandler:AddSphere(bullets[i].sphereCollider)
end

goal.trans = Transform.Bind()
Transform.SetPos(goal.trans, {x = 245, y = 20, z = 245})
goal.collide =  SphereCollider.Create(goal.trans, goal.trans, 245,25,245, 10)
CollisionHandler:AddSphere(goal.collide)

function ChangePlayer()
    player.trans = (player.trans + 1) % nrOfActors
    Transform.Switch(player.trans) 
end
 
buttons = {}
function Controls()
    forward, left, up = 0, 0, 0
    for i = 1, #buttons do
        if buttons[i] == 0 then forward = player.moveSpeed  end
        if buttons[i] == 1 then forward = -player.moveSpeed  end
        if buttons[i] == 2 then left = player.moveSpeed  end
        if buttons[i] == 3 then left = -player.moveSpeed  end
		if buttons[i] == 4 and player.canJump then
			player.ySpeed = 0.5
			player.canJump = false
		end
        if buttons[i] == 6 then ChangePlayer() end
		if buttons[i] == 7 then shoot() end
	end
	Transform.Move(player.trans, forward, player.ySpeed, left)
    buttons = {}   
end
 
function doDaHustle()
    for i = 1, nrOfEnemies do
		Transform.Follow(player.trans, enemies.trans[i], enemies.ms[i] )
    end
end

function Update(dt)
	local pos = Transform.GetPos(player.trans)
	pos.y = pos.y + player.ySpeed
	player.ySpeed = player.ySpeed - 0.982*dt		--add gravity to vertical speed
	Transform.SetPos(player.trans,pos)

	--TEMP
	if Transform.ToHeightmap(player.trans) then
		player.canJump = true
		player.ySpeed = 0
	end

	if pos.y <= 0 then
		player.health = player.health - 1
	end

	if player.sphereCollider:CheckCollision() then
		player.health = player.health - 1
	end

	if player.sphereCollider:CheckCollisionWith(goal.collide, goal.trans) then
		enString = "Du vann"
	end

	return player.health > 0
end

function updateBullets( dt )
	--print(activeBullets ..  "  : :  " ..  bulletIndex)
	for i = 1 , nrOfBullets do
		bullets[i].lifeLeft = bullets[i].lifeLeft - dt
		if bullets[i].lifeLeft < 0 and bullets[i].alive == true then
				bullets[i].alive = false
				activeBullets = activeBullets - 1
		elseif bullets[i].alive == true then
				Transform.Fly(bullets[i].trans, bullets[i].ms)
		end

		if bullets[i].alive then
			local collisionIDs = bullets[i].sphereCollider:GetCollisionIDs()
			--print(#collisionIDs)
			for curID = 1, #collisionIDs do
				for curEnemy = 1, nrOfEnemies do
					local enemyID = enemy.sphereCollider[i]:GetID()
					if collisionIDs[curID] == enemyID then
						print("HIT");
						break
					end
				end
			end
		end
	end
end

function shoot()
	if activeBullets < nrOfBullets
	then
		bullets[bulletIndex].alive = true
		bullets[bulletIndex].lifeLeft = 2
		Transform.Shoot(bullets[bulletIndex].trans, player.trans)
		bulletIndex = (bulletIndex % nrOfBullets) + 1
		activeBullets = activeBullets + 1
	end
end

enString = "Du f�rlora"