nrOfActors = 50
nrOfEnemies = 39
nrOfBullets = 10
player = {}
enemies = {trans = {}, ms = {}, sphereCollider = {}}
Engine.InitStuff(nrOfActors)

bullets = { }
bulletIndex = 1
activeBullets = 0

PLAYER_TRANS_MIN, PLAYER_TRANS_MAX = 0, 1
ENEMY_TRANS_MIN, ENEMY_TRANS_MAX = 1, 40
BULLET_TRANS_MIN, BULLET_TRANS_MAX = 40, 50

modelPaths = {{"Models/testGuy.model", nrOfEnemies+1}, {"Models/testGuy.model", nrOfBullets}}
for i = 1, #modelPaths do
	Engine.LoadModels(modelPaths[i][1], modelPaths[i][2])
end

player.trans = Transform.Bind(PLAYER_TRANS_MIN, PLAYER_TRANS_MAX)
player.moveSpeed = 40
player.ySpeed = 0
player.canJump = false
player.health = 100
player.sphereCollider = SphereCollider.Create(0, player.trans, 100,10,100, 1)
CollisionHandler:AddSphere(player.sphereCollider)
Transform.SetPos(player.trans, {x=100,y=10,z=100})

for i = 1, nrOfEnemies do
	enemies.trans[i] = Transform.Bind(ENEMY_TRANS_MIN, ENEMY_TRANS_MAX)
	enemies.ms[i] = math.random(5, 20)
	Transform.SetPos(enemies.trans[i], {x = math.random(10, 255), y = math.random(15, 30), z = math.random(10, 245)})
	enemies.sphereCollider[i] = SphereCollider.Create(i, enemies.trans[i], 0,0,0, 1)
	CollisionHandler:AddSphere(enemies.sphereCollider[i])
end



for i = 1, nrOfBullets do
	bullets[i] = {}
	bullets[i].trans = -1
	bullets[i].ms = 100
	bullets[i].lifeLeft = 1
	bullets[i].alive = false
end


function ChangePlayer()
    player.trans = (player.trans + 1) % nrOfActors
    Transform.Switch(player.trans) 
end
 
buttons = {}
function Controls()
    forward, left, up = 0, 0, 0
    --[[for i = 1, #buttons do
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
	end--]]

	if buttons[Keys.W] then forward = player.moveSpeed end
	if buttons[Keys.S] then forward = -player.moveSpeed end
	if buttons[Keys.A] then left = player.moveSpeed end
	if buttons[Keys.D] then left = -player.moveSpeed end
	if buttons[Keys.Space] and player.canJump then
		player.ySpeed = 0.50
		player.canJump = false
	end
	if buttons[Keys.Tab] then ChangePlayer() end
	if buttons[Keys.LMB] then shoot() end
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

	return player.health > 0
end

function updateBullets( dt )
	print(activeBullets ..  "  : :  " ..  bulletIndex)
	
	for i = 1 , nrOfBullets
	 do
		bullets[i].lifeLeft = bullets[i].lifeLeft - dt
		if bullets[i].lifeLeft < 0 then
			if bullets[i].alive == true then
				print("ege")
				bullets[i].alive = false
				Transform.Unbind(bullets[i].trans)
				activeBullets = activeBullets - 1
			end
		elseif bullets[i].alive == true then
				Transform.Fly(bullets[i].trans, bullets[i].ms)
		end
	end
end

function shoot()
	if activeBullets < nrOfBullets then
		tempTrans = Transform.Bind(BULLET_TRANS_MIN, BULLET_TRANS_MAX)
		if tempTrans ~= -1 then
			bullets[bulletIndex].trans = tempTrans
			bullets[bulletIndex].ms = 100
			bullets[bulletIndex].alive = true
			bullets[bulletIndex].lifeLeft = 1
			Transform.Shoot(bullets[bulletIndex].trans, player.trans)
			bulletIndex = (bulletIndex % nrOfBullets) + 1
			activeBullets = activeBullets + 1
			end
		
	end
end