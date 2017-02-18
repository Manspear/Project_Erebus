levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_height.png")
Heightmap1.asset:SetPosition({x=0, y=-0.67693, z=128})
Heightmap1.asset:SetHeightMultiplier(0.147291)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_height.png")
Heightmap2.asset:SetPosition({x=128, y=32.1865, z=0})
Heightmap2.asset:SetHeightMultiplier(0.111404)
Heightmap2.surrounding = { 1, 3 }
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap3.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap3.asset:SetHeightMultiplier(0.0707237)
Heightmap3.surrounding = { 2, 4 }
heightmaps[3] = Heightmap3
Heightmap3 = nil
Heightmap4 = {}
Heightmap4.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap4.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap4.asset:SetHeightMultiplier(0.113531)
Heightmap4.surrounding = { 3, 5 }
heightmaps[4] = Heightmap4
Heightmap4 = nil
Heightmap5 = {}
Heightmap5.asset = Assets.LoadHeightmap("Textures/tile5_height.png")
Heightmap5.asset:SetPosition({x=384, y=38.5561, z=384})
Heightmap5.asset:SetHeightMultiplier(0.260571)
Heightmap5.surrounding = { 4, 6 }
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=85.0848, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0852758)
Heightmap6.surrounding = { 5, 7 }
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.2563, z=512})
Heightmap7.asset:SetHeightMultiplier(0.241725)
Heightmap7.surrounding = { 6, 8 }
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165535)
Heightmap8.surrounding = { 7 }
heightmaps[8] = Heightmap8
Heightmap8 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile13ID = {}
tile13ID.transformID = Transform.Bind()
Transform.SetPosition(tile13ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile13ID.transformID, 1, 1, 1)
Transform.SetRotation(tile13ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile13ID)
tile13ID = nil

TileSettings4ID = {}
Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,TileSettings4ID)
TileSettings4ID = nil

m16ID = {}
m16ID.transformID = Transform.Bind()
Transform.SetPosition(m16ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m16ID.transformID, 1, 1, 1)
Transform.SetRotation(m16ID.transformID, {x=0, y=0, z=0})
m16ID.model = Assets.LoadModel('Models/tile1_m1.model')
Gear.AddStaticInstance(m16ID.model, m16ID.transformID)
table.insert(props,m16ID)
m16ID = nil

m27ID = {}
m27ID.transformID = Transform.Bind()
Transform.SetPosition(m27ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m27ID.transformID, 1, 1, 1)
Transform.SetRotation(m27ID.transformID, {x=0, y=0, z=0})
m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
Gear.AddStaticInstance(m27ID.model, m27ID.transformID)
table.insert(props,m27ID)
m27ID = nil

m38ID = {}
m38ID.transformID = Transform.Bind()
Transform.SetPosition(m38ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m38ID.transformID, 1, 1, 1)
Transform.SetRotation(m38ID.transformID, {x=0, y=0, z=0})
m38ID.model = Assets.LoadModel('Models/tile1_m3.model')
Gear.AddStaticInstance(m38ID.model, m38ID.transformID)
table.insert(props,m38ID)
m38ID = nil

m49ID = {}
m49ID.transformID = Transform.Bind()
Transform.SetPosition(m49ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m49ID.transformID, 1, 1, 1)
Transform.SetRotation(m49ID.transformID, {x=0, y=0, z=0})
m49ID.model = Assets.LoadModel('Models/tile1_m4.model')
Gear.AddStaticInstance(m49ID.model, m49ID.transformID)
table.insert(props,m49ID)
m49ID = nil

m510ID = {}
m510ID.transformID = Transform.Bind()
Transform.SetPosition(m510ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m510ID.transformID, 1, 1, 1)
Transform.SetRotation(m510ID.transformID, {x=0, y=0, z=0})
m510ID.model = Assets.LoadModel('Models/tile1_m5.model')
Gear.AddStaticInstance(m510ID.model, m510ID.transformID)
table.insert(props,m510ID)
m510ID = nil

m611ID = {}
m611ID.transformID = Transform.Bind()
Transform.SetPosition(m611ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m611ID.transformID, 1, 1, 1)
Transform.SetRotation(m611ID.transformID, {x=0, y=0, z=0})
m611ID.model = Assets.LoadModel('Models/tile1_m6.model')
Gear.AddStaticInstance(m611ID.model, m611ID.transformID)
table.insert(props,m611ID)
m611ID = nil

m712ID = {}
m712ID.transformID = Transform.Bind()
Transform.SetPosition(m712ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m712ID.transformID, 1, 1, 1)
Transform.SetRotation(m712ID.transformID, {x=0, y=0, z=0})
m712ID.model = Assets.LoadModel('Models/tile1_m7.model')
Gear.AddStaticInstance(m712ID.model, m712ID.transformID)
table.insert(props,m712ID)
m712ID = nil

m813ID = {}
m813ID.transformID = Transform.Bind()
Transform.SetPosition(m813ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m813ID.transformID, 1, 1, 1)
Transform.SetRotation(m813ID.transformID, {x=0, y=0, z=0})
m813ID.model = Assets.LoadModel('Models/tile1_m8.model')
Gear.AddStaticInstance(m813ID.model, m813ID.transformID)
table.insert(props,m813ID)
m813ID = nil

s114ID = {}
s114ID.transformID = Transform.Bind()
Transform.SetPosition(s114ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s114ID.transformID, 1, 1, 1)
Transform.SetRotation(s114ID.transformID, {x=0, y=0, z=0})
s114ID.model = Assets.LoadModel('Models/tile1_s1.model')
Gear.AddStaticInstance(s114ID.model, s114ID.transformID)
table.insert(props,s114ID)
s114ID = nil

s215ID = {}
s215ID.transformID = Transform.Bind()
Transform.SetPosition(s215ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s215ID.transformID, 1, 1, 1)
Transform.SetRotation(s215ID.transformID, {x=0, y=0, z=0})
s215ID.model = Assets.LoadModel('Models/tile1_s2.model')
Gear.AddStaticInstance(s215ID.model, s215ID.transformID)
table.insert(props,s215ID)
s215ID = nil

s316ID = {}
s316ID.transformID = Transform.Bind()
Transform.SetPosition(s316ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s316ID.transformID, 1, 1, 1)
Transform.SetRotation(s316ID.transformID, {x=0, y=0, z=0})
s316ID.model = Assets.LoadModel('Models/tile1_s3.model')
Gear.AddStaticInstance(s316ID.model, s316ID.transformID)
table.insert(props,s316ID)
s316ID = nil

s417ID = {}
s417ID.transformID = Transform.Bind()
Transform.SetPosition(s417ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s417ID.transformID, 1, 1, 1)
Transform.SetRotation(s417ID.transformID, {x=0, y=0, z=0})
s417ID.model = Assets.LoadModel('Models/tile1_s4.model')
Gear.AddStaticInstance(s417ID.model, s417ID.transformID)
table.insert(props,s417ID)
s417ID = nil

s518ID = {}
s518ID.transformID = Transform.Bind()
Transform.SetPosition(s518ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s518ID.transformID, 1, 1, 1)
Transform.SetRotation(s518ID.transformID, {x=0, y=0, z=0})
s518ID.model = Assets.LoadModel('Models/tile1_s5.model')
Gear.AddStaticInstance(s518ID.model, s518ID.transformID)
table.insert(props,s518ID)
s518ID = nil

s619ID = {}
s619ID.transformID = Transform.Bind()
Transform.SetPosition(s619ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s619ID.transformID, 1, 1, 1)
Transform.SetRotation(s619ID.transformID, {x=0, y=0, z=0})
s619ID.model = Assets.LoadModel('Models/tile1_s6.model')
Gear.AddStaticInstance(s619ID.model, s619ID.transformID)
table.insert(props,s619ID)
s619ID = nil

s720ID = {}
s720ID.transformID = Transform.Bind()
Transform.SetPosition(s720ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s720ID.transformID, 1, 1, 1)
Transform.SetRotation(s720ID.transformID, {x=0, y=0, z=0})
s720ID.model = Assets.LoadModel('Models/tile1_s7.model')
Gear.AddStaticInstance(s720ID.model, s720ID.transformID)
table.insert(props,s720ID)
s720ID = nil

Obb3835ID = {}
Obb3835ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3835ID.transformID, {x=-1.07374e+08, y=-1.07374e+08, z=-1.07374e+08})
Transform.SetScaleNonUniform(Obb3835ID.transformID, 1, 1, 1)
Transform.SetRotation(Obb3835ID.transformID, {x=0, y=0, z=0})
Obb3835ID.collider = OBBCollider.Create(Obb3835ID.transformID)
Obb3835ID.collider:SetOffset(0,0,0)
Obb3835ID.collider:SetZAxis(-0.582718,0,0.812674)
Obb3835ID.collider:SetHalfLengths(0.5,0.5,0.5)
CollisionHandler.AddOBB(Obb3835ID.collider, 3)
table.insert(colliders,Obb3835ID)
Obb3835ID = nil

OpWall78ID = {}
OpWall78ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall78ID.transformID, {x=6, y=6.83489, z=143})
Transform.SetScaleNonUniform(OpWall78ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall78ID.transformID, {x=0, y=0, z=0})
OpWall78ID.collider = OBBCollider.Create(OpWall78ID.transformID)
OpWall78ID.collider:SetOffset(0,0,0)
OpWall78ID.collider:SetZAxis(0.447214,0,-0.894427)
OpWall78ID.collider:SetHalfLengths(0.3,5.29458,4.47214)
CollisionHandler.AddOBB(OpWall78ID.collider, 3)
table.insert(colliders,OpWall78ID)
OpWall78ID = nil

OpWall179ID = {}
OpWall179ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall179ID.transformID, {x=10.5, y=7.12947, z=140})
Transform.SetScaleNonUniform(OpWall179ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall179ID.transformID, {x=0, y=0, z=0})
OpWall179ID.collider = OBBCollider.Create(OpWall179ID.transformID)
OpWall179ID.collider:SetOffset(0,0,0)
OpWall179ID.collider:SetZAxis(0.928477,0,0.371391)
OpWall179ID.collider:SetHalfLengths(0.3,5.14729,2.69258)
CollisionHandler.AddOBB(OpWall179ID.collider, 3)
table.insert(colliders,OpWall179ID)
OpWall179ID = nil

OpWall280ID = {}
OpWall280ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall280ID.transformID, {x=17, y=6.98218, z=141})
Transform.SetScaleNonUniform(OpWall280ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall280ID.transformID, {x=0, y=0, z=0})
OpWall280ID.collider = OBBCollider.Create(OpWall280ID.transformID)
OpWall280ID.collider:SetOffset(0,0,0)
OpWall280ID.collider:SetZAxis(1,0,0)
OpWall280ID.collider:SetHalfLengths(0.3,5,4)
CollisionHandler.AddOBB(OpWall280ID.collider, 3)
table.insert(colliders,OpWall280ID)
OpWall280ID = nil

OpWall381ID = {}
OpWall381ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall381ID.transformID, {x=45, y=8.60238, z=129.5})
Transform.SetScaleNonUniform(OpWall381ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall381ID.transformID, {x=0, y=0, z=0})
OpWall381ID.collider = OBBCollider.Create(OpWall381ID.transformID)
OpWall381ID.collider:SetOffset(0,0,0)
OpWall381ID.collider:SetZAxis(-0.894427,0,-0.447214)
OpWall381ID.collider:SetHalfLengths(0.3,5.29458,3.3541)
CollisionHandler.AddOBB(OpWall381ID.collider, 3)
table.insert(colliders,OpWall381ID)
OpWall381ID = nil

OpWall482ID = {}
OpWall482ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall482ID.transformID, {x=51.5, y=8.60238, z=137})
Transform.SetScaleNonUniform(OpWall482ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall482ID.transformID, {x=0, y=0, z=0})
OpWall482ID.collider = OBBCollider.Create(OpWall482ID.transformID)
OpWall482ID.collider:SetOffset(0,0,0)
OpWall482ID.collider:SetZAxis(0.503871,0,0.863779)
OpWall482ID.collider:SetHalfLengths(0.3,5.73645,6.94622)
CollisionHandler.AddOBB(OpWall482ID.collider, 3)
table.insert(colliders,OpWall482ID)
OpWall482ID = nil

OpWall583ID = {}
OpWall583ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall583ID.transformID, {x=55.5, y=9.33883, z=145.5})
Transform.SetScaleNonUniform(OpWall583ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall583ID.transformID, {x=0, y=0, z=0})
OpWall583ID.collider = OBBCollider.Create(OpWall583ID.transformID)
OpWall583ID.collider:SetOffset(0,0,0)
OpWall583ID.collider:SetZAxis(0.196116,0,0.980581)
OpWall583ID.collider:SetHalfLengths(0.3,5,2.54951)
CollisionHandler.AddOBB(OpWall583ID.collider, 3)
table.insert(colliders,OpWall583ID)
OpWall583ID = nil

OpWall684ID = {}
OpWall684ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall684ID.transformID, {x=52.5, y=9.33883, z=152})
Transform.SetScaleNonUniform(OpWall684ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall684ID.transformID, {x=0, y=0, z=0})
OpWall684ID.collider = OBBCollider.Create(OpWall684ID.transformID)
OpWall684ID.collider:SetOffset(0,0,0)
OpWall684ID.collider:SetZAxis(-0.658505,0,0.752577)
OpWall684ID.collider:SetHalfLengths(0.3,5.14729,5.31507)
CollisionHandler.AddOBB(OpWall684ID.collider, 3)
table.insert(colliders,OpWall684ID)
OpWall684ID = nil

OpWall785ID = {}
OpWall785ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall785ID.transformID, {x=44, y=9.48612, z=157})
Transform.SetScaleNonUniform(OpWall785ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall785ID.transformID, {x=0, y=0, z=0})
OpWall785ID.collider = OBBCollider.Create(OpWall785ID.transformID)
OpWall785ID.collider:SetOffset(0,0,0)
OpWall785ID.collider:SetZAxis(-0.980581,0,0.196116)
OpWall785ID.collider:SetHalfLengths(0.3,5.14729,5.09902)
CollisionHandler.AddOBB(OpWall785ID.collider, 3)
table.insert(colliders,OpWall785ID)
OpWall785ID = nil

OpWall886ID = {}
OpWall886ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall886ID.transformID, {x=35, y=7.12947, z=155})
Transform.SetScaleNonUniform(OpWall886ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall886ID.transformID, {x=0, y=0, z=0})
OpWall886ID.collider = OBBCollider.Create(OpWall886ID.transformID)
OpWall886ID.collider:SetOffset(0,0,0)
OpWall886ID.collider:SetZAxis(0.316228,0,0.948683)
OpWall886ID.collider:SetHalfLengths(0.3,5.14729,3.16228)
CollisionHandler.AddOBB(OpWall886ID.collider, 3)
table.insert(colliders,OpWall886ID)
OpWall886ID = nil

OpWall987ID = {}
OpWall987ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall987ID.transformID, {x=37, y=7.27676, z=160})
Transform.SetScaleNonUniform(OpWall987ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall987ID.transformID, {x=0, y=0, z=0})
OpWall987ID.collider = OBBCollider.Create(OpWall987ID.transformID)
OpWall987ID.collider:SetOffset(0,0,0)
OpWall987ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall987ID.collider:SetHalfLengths(0.3,5.29458,2.23607)
CollisionHandler.AddOBB(OpWall987ID.collider, 3)
table.insert(colliders,OpWall987ID)
OpWall987ID = nil

OpWall1088ID = {}
OpWall1088ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1088ID.transformID, {x=39.5, y=6.98218, z=163})
Transform.SetScaleNonUniform(OpWall1088ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1088ID.transformID, {x=0, y=0, z=0})
OpWall1088ID.collider = OBBCollider.Create(OpWall1088ID.transformID)
OpWall1088ID.collider:SetOffset(0,0,0)
OpWall1088ID.collider:SetZAxis(0.83205,0,0.5547)
OpWall1088ID.collider:SetHalfLengths(0.3,5.14729,1.80278)
CollisionHandler.AddOBB(OpWall1088ID.collider, 3)
table.insert(colliders,OpWall1088ID)
OpWall1088ID = nil

OpWall1189ID = {}
OpWall1189ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1189ID.transformID, {x=43.5, y=7.12947, z=165})
Transform.SetScaleNonUniform(OpWall1189ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1189ID.transformID, {x=0, y=0, z=0})
OpWall1189ID.collider = OBBCollider.Create(OpWall1189ID.transformID)
OpWall1189ID.collider:SetOffset(0,0,0)
OpWall1189ID.collider:SetZAxis(0.928477,0,0.371391)
OpWall1189ID.collider:SetHalfLengths(0.3,5.44187,2.69258)
CollisionHandler.AddOBB(OpWall1189ID.collider, 3)
table.insert(colliders,OpWall1189ID)
OpWall1189ID = nil

OpWall1290ID = {}
OpWall1290ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1290ID.transformID, {x=48.5, y=7.57134, z=166})
Transform.SetScaleNonUniform(OpWall1290ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1290ID.transformID, {x=0, y=0, z=0})
OpWall1290ID.collider = OBBCollider.Create(OpWall1290ID.transformID)
OpWall1290ID.collider:SetOffset(0,0,0)
OpWall1290ID.collider:SetZAxis(1,0,0)
OpWall1290ID.collider:SetHalfLengths(0.3,5.44187,2.5)
CollisionHandler.AddOBB(OpWall1290ID.collider, 3)
table.insert(colliders,OpWall1290ID)
OpWall1290ID = nil

OpWall1391ID = {}
OpWall1391ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1391ID.transformID, {x=54, y=8.01322, z=168})
Transform.SetScaleNonUniform(OpWall1391ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1391ID.transformID, {x=0, y=0, z=0})
OpWall1391ID.collider = OBBCollider.Create(OpWall1391ID.transformID)
OpWall1391ID.collider:SetOffset(0,0,0)
OpWall1391ID.collider:SetZAxis(0.83205,0,0.5547)
OpWall1391ID.collider:SetHalfLengths(0.3,5,3.60555)
CollisionHandler.AddOBB(OpWall1391ID.collider, 3)
table.insert(colliders,OpWall1391ID)
OpWall1391ID = nil

OpWall1492ID = {}
OpWall1492ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1492ID.transformID, {x=57.5, y=8.01322, z=171})
Transform.SetScaleNonUniform(OpWall1492ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1492ID.transformID, {x=0, y=0, z=0})
OpWall1492ID.collider = OBBCollider.Create(OpWall1492ID.transformID)
OpWall1492ID.collider:SetOffset(0,0,0)
OpWall1492ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall1492ID.collider:SetHalfLengths(0.3,5,1.11803)
CollisionHandler.AddOBB(OpWall1492ID.collider, 3)
table.insert(colliders,OpWall1492ID)
OpWall1492ID = nil

OpWall1593ID = {}
OpWall1593ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1593ID.transformID, {x=57.5, y=8.01322, z=176})
Transform.SetScaleNonUniform(OpWall1593ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1593ID.transformID, {x=0, y=0, z=0})
OpWall1593ID.collider = OBBCollider.Create(OpWall1593ID.transformID)
OpWall1593ID.collider:SetOffset(0,0,0)
OpWall1593ID.collider:SetZAxis(-0.124035,0,0.992278)
OpWall1593ID.collider:SetHalfLengths(0.3,5,4.03113)
CollisionHandler.AddOBB(OpWall1593ID.collider, 3)
table.insert(colliders,OpWall1593ID)
OpWall1593ID = nil

OpWall1694ID = {}
OpWall1694ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1694ID.transformID, {x=54.5, y=8.01322, z=183})
Transform.SetScaleNonUniform(OpWall1694ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1694ID.transformID, {x=0, y=0, z=0})
OpWall1694ID.collider = OBBCollider.Create(OpWall1694ID.transformID)
OpWall1694ID.collider:SetOffset(0,0,0)
OpWall1694ID.collider:SetZAxis(-0.640184,0,0.768221)
OpWall1694ID.collider:SetHalfLengths(0.3,5,3.90512)
CollisionHandler.AddOBB(OpWall1694ID.collider, 3)
table.insert(colliders,OpWall1694ID)
OpWall1694ID = nil

OpWall1795ID = {}
OpWall1795ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1795ID.transformID, {x=49, y=8.01322, z=186.5})
Transform.SetScaleNonUniform(OpWall1795ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1795ID.transformID, {x=0, y=0, z=0})
OpWall1795ID.collider = OBBCollider.Create(OpWall1795ID.transformID)
OpWall1795ID.collider:SetOffset(0,0,0)
OpWall1795ID.collider:SetZAxis(-0.986394,0,0.164399)
OpWall1795ID.collider:SetHalfLengths(0.3,5,3.04138)
CollisionHandler.AddOBB(OpWall1795ID.collider, 3)
table.insert(colliders,OpWall1795ID)
OpWall1795ID = nil

OpWall1896ID = {}
OpWall1896ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1896ID.transformID, {x=44, y=8.01322, z=187})
Transform.SetScaleNonUniform(OpWall1896ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1896ID.transformID, {x=0, y=0, z=0})
OpWall1896ID.collider = OBBCollider.Create(OpWall1896ID.transformID)
OpWall1896ID.collider:SetOffset(0,0,0)
OpWall1896ID.collider:SetZAxis(-1,0,0)
OpWall1896ID.collider:SetHalfLengths(0.3,5,2)
CollisionHandler.AddOBB(OpWall1896ID.collider, 3)
table.insert(colliders,OpWall1896ID)
OpWall1896ID = nil

OpWall1997ID = {}
OpWall1997ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1997ID.transformID, {x=40, y=8.01322, z=185.5})
Transform.SetScaleNonUniform(OpWall1997ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1997ID.transformID, {x=0, y=0, z=0})
OpWall1997ID.collider = OBBCollider.Create(OpWall1997ID.transformID)
OpWall1997ID.collider:SetOffset(0,0,0)
OpWall1997ID.collider:SetZAxis(-0.8,0,-0.6)
OpWall1997ID.collider:SetHalfLengths(0.3,5.29458,2.5)
CollisionHandler.AddOBB(OpWall1997ID.collider, 3)
table.insert(colliders,OpWall1997ID)
OpWall1997ID = nil

OpWall2098ID = {}
OpWall2098ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2098ID.transformID, {x=37, y=7.71863, z=182})
Transform.SetScaleNonUniform(OpWall2098ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2098ID.transformID, {x=0, y=0, z=0})
OpWall2098ID.collider = OBBCollider.Create(OpWall2098ID.transformID)
OpWall2098ID.collider:SetOffset(0,0,0)
OpWall2098ID.collider:SetZAxis(-0.447214,0,-0.894427)
OpWall2098ID.collider:SetHalfLengths(0.3,5.58916,2.23607)
CollisionHandler.AddOBB(OpWall2098ID.collider, 3)
table.insert(colliders,OpWall2098ID)
OpWall2098ID = nil

OpWall2199ID = {}
OpWall2199ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2199ID.transformID, {x=35, y=7.12947, z=176.5})
Transform.SetScaleNonUniform(OpWall2199ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2199ID.transformID, {x=0, y=0, z=0})
OpWall2199ID.collider = OBBCollider.Create(OpWall2199ID.transformID)
OpWall2199ID.collider:SetOffset(0,0,0)
OpWall2199ID.collider:SetZAxis(-0.274721,0,-0.961524)
OpWall2199ID.collider:SetHalfLengths(0.3,5.58916,3.64005)
CollisionHandler.AddOBB(OpWall2199ID.collider, 3)
table.insert(colliders,OpWall2199ID)
OpWall2199ID = nil

OpWall22100ID = {}
OpWall22100ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall22100ID.transformID, {x=32.5, y=6.54031, z=170.5})
Transform.SetScaleNonUniform(OpWall22100ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall22100ID.transformID, {x=0, y=0, z=0})
OpWall22100ID.collider = OBBCollider.Create(OpWall22100ID.transformID)
OpWall22100ID.collider:SetOffset(0,0,0)
OpWall22100ID.collider:SetZAxis(-0.514496,0,-0.857493)
OpWall22100ID.collider:SetHalfLengths(0.3,5,2.91548)
CollisionHandler.AddOBB(OpWall22100ID.collider, 3)
table.insert(colliders,OpWall22100ID)
OpWall22100ID = nil

OpWall23101ID = {}
OpWall23101ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall23101ID.transformID, {x=29.5, y=6.54031, z=168})
Transform.SetScaleNonUniform(OpWall23101ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall23101ID.transformID, {x=0, y=0, z=0})
OpWall23101ID.collider = OBBCollider.Create(OpWall23101ID.transformID)
OpWall23101ID.collider:SetOffset(0,0,0)
OpWall23101ID.collider:SetZAxis(-1,0,0)
OpWall23101ID.collider:SetHalfLengths(0.3,5.44187,1.5)
CollisionHandler.AddOBB(OpWall23101ID.collider, 3)
table.insert(colliders,OpWall23101ID)
OpWall23101ID = nil

OpWall24102ID = {}
OpWall24102ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall24102ID.transformID, {x=25, y=6.09844, z=170.5})
Transform.SetScaleNonUniform(OpWall24102ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall24102ID.transformID, {x=0, y=0, z=0})
OpWall24102ID.collider = OBBCollider.Create(OpWall24102ID.transformID)
OpWall24102ID.collider:SetOffset(0,0,0)
OpWall24102ID.collider:SetZAxis(-0.768221,0,0.640184)
OpWall24102ID.collider:SetHalfLengths(0.3,5.29458,3.90512)
CollisionHandler.AddOBB(OpWall24102ID.collider, 3)
table.insert(colliders,OpWall24102ID)
OpWall24102ID = nil

OpWall25103ID = {}
OpWall25103ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall25103ID.transformID, {x=22, y=5.80386, z=174.5})
Transform.SetScaleNonUniform(OpWall25103ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall25103ID.transformID, {x=0, y=0, z=0})
OpWall25103ID.collider = OBBCollider.Create(OpWall25103ID.transformID)
OpWall25103ID.collider:SetOffset(0,0,0)
OpWall25103ID.collider:SetZAxis(0,0,1)
OpWall25103ID.collider:SetHalfLengths(0.3,5,1.5)
CollisionHandler.AddOBB(OpWall25103ID.collider, 3)
table.insert(colliders,OpWall25103ID)
OpWall25103ID = nil

OpWall26104ID = {}
OpWall26104ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall26104ID.transformID, {x=23.5, y=5.80386, z=179.5})
Transform.SetScaleNonUniform(OpWall26104ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall26104ID.transformID, {x=0, y=0, z=0})
OpWall26104ID.collider = OBBCollider.Create(OpWall26104ID.transformID)
OpWall26104ID.collider:SetOffset(0,0,0)
OpWall26104ID.collider:SetZAxis(0.393919,0,0.919145)
OpWall26104ID.collider:SetHalfLengths(0.3,5.29458,3.80789)
CollisionHandler.AddOBB(OpWall26104ID.collider, 3)
table.insert(colliders,OpWall26104ID)
OpWall26104ID = nil

OpWall27105ID = {}
OpWall27105ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall27105ID.transformID, {x=32, y=5.50927, z=189.5})
Transform.SetScaleNonUniform(OpWall27105ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall27105ID.transformID, {x=0, y=0, z=0})
OpWall27105ID.collider = OBBCollider.Create(OpWall27105ID.transformID)
OpWall27105ID.collider:SetOffset(0,0,0)
OpWall27105ID.collider:SetZAxis(0.732794,0,0.680451)
OpWall27105ID.collider:SetHalfLengths(0.3,7.65123,9.55249)
CollisionHandler.AddOBB(OpWall27105ID.collider, 3)
table.insert(colliders,OpWall27105ID)
OpWall27105ID = nil

OpWall28106ID = {}
OpWall28106ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall28106ID.transformID, {x=37.5, y=8.16051, z=196.5})
Transform.SetScaleNonUniform(OpWall28106ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall28106ID.transformID, {x=0, y=0, z=0})
OpWall28106ID.collider = OBBCollider.Create(OpWall28106ID.transformID)
OpWall28106ID.collider:SetOffset(0,0,0)
OpWall28106ID.collider:SetZAxis(-0.948683,0,0.316228)
OpWall28106ID.collider:SetHalfLengths(0.3,5.14729,1.58114)
CollisionHandler.AddOBB(OpWall28106ID.collider, 3)
table.insert(colliders,OpWall28106ID)
OpWall28106ID = nil

OpWall29107ID = {}
OpWall29107ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall29107ID.transformID, {x=35.5, y=8.16051, z=198})
Transform.SetScaleNonUniform(OpWall29107ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall29107ID.transformID, {x=0, y=0, z=0})
OpWall29107ID.collider = OBBCollider.Create(OpWall29107ID.transformID)
OpWall29107ID.collider:SetOffset(0,0,0)
OpWall29107ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall29107ID.collider:SetHalfLengths(0.3,5.14729,3.3541)
CollisionHandler.AddOBB(OpWall29107ID.collider, 3)
table.insert(colliders,OpWall29107ID)
OpWall29107ID = nil

OpWall30108ID = {}
OpWall30108ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall30108ID.transformID, {x=42.5, y=8.3078, z=200})
Transform.SetScaleNonUniform(OpWall30108ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall30108ID.transformID, {x=0, y=0, z=0})
OpWall30108ID.collider = OBBCollider.Create(OpWall30108ID.transformID)
OpWall30108ID.collider:SetOffset(0,0,0)
OpWall30108ID.collider:SetZAxis(0.98387,0,-0.178885)
OpWall30108ID.collider:SetHalfLengths(0.3,6.32561,5.59017)
CollisionHandler.AddOBB(OpWall30108ID.collider, 3)
table.insert(colliders,OpWall30108ID)
OpWall30108ID = nil

OpWall31109ID = {}
OpWall31109ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall31109ID.transformID, {x=50.5, y=9.63341, z=202.5})
Transform.SetScaleNonUniform(OpWall31109ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall31109ID.transformID, {x=0, y=0, z=0})
OpWall31109ID.collider = OBBCollider.Create(OpWall31109ID.transformID)
OpWall31109ID.collider:SetOffset(0,0,0)
OpWall31109ID.collider:SetZAxis(0.581238,0,0.813733)
OpWall31109ID.collider:SetHalfLengths(0.3,5.73645,4.30116)
CollisionHandler.AddOBB(OpWall31109ID.collider, 3)
table.insert(colliders,OpWall31109ID)
OpWall31109ID = nil

OpWall32110ID = {}
OpWall32110ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall32110ID.transformID, {x=55, y=10.3699, z=207.5})
Transform.SetScaleNonUniform(OpWall32110ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall32110ID.transformID, {x=0, y=0, z=0})
OpWall32110ID.collider = OBBCollider.Create(OpWall32110ID.transformID)
OpWall32110ID.collider:SetOffset(0,0,0)
OpWall32110ID.collider:SetZAxis(0.8,0,0.6)
OpWall32110ID.collider:SetHalfLengths(0.3,6.03103,2.5)
CollisionHandler.AddOBB(OpWall32110ID.collider, 3)
table.insert(colliders,OpWall32110ID)
OpWall32110ID = nil

OpWall33111ID = {}
OpWall33111ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall33111ID.transformID, {x=62, y=11.4009, z=208})
Transform.SetScaleNonUniform(OpWall33111ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall33111ID.transformID, {x=0, y=0, z=0})
OpWall33111ID.collider = OBBCollider.Create(OpWall33111ID.transformID)
OpWall33111ID.collider:SetOffset(0,0,0)
OpWall33111ID.collider:SetZAxis(0.980581,0,-0.196116)
OpWall33111ID.collider:SetHalfLengths(0.3,8.68226,5.09902)
CollisionHandler.AddOBB(OpWall33111ID.collider, 3)
table.insert(colliders,OpWall33111ID)
OpWall33111ID = nil

OpWall34112ID = {}
OpWall34112ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall34112ID.transformID, {x=71.5, y=15.0832, z=205.5})
Transform.SetScaleNonUniform(OpWall34112ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall34112ID.transformID, {x=0, y=0, z=0})
OpWall34112ID.collider = OBBCollider.Create(OpWall34112ID.transformID)
OpWall34112ID.collider:SetOffset(0,0,0)
OpWall34112ID.collider:SetZAxis(0.948683,0,-0.316228)
OpWall34112ID.collider:SetHalfLengths(0.3,8.24039,4.74342)
CollisionHandler.AddOBB(OpWall34112ID.collider, 3)
table.insert(colliders,OpWall34112ID)
OpWall34112ID = nil

OpWall35113ID = {}
OpWall35113ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall35113ID.transformID, {x=79, y=18.3236, z=202.5})
Transform.SetScaleNonUniform(OpWall35113ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall35113ID.transformID, {x=0, y=0, z=0})
OpWall35113ID.collider = OBBCollider.Create(OpWall35113ID.transformID)
OpWall35113ID.collider:SetOffset(0,0,0)
OpWall35113ID.collider:SetZAxis(0.894427,0,-0.447214)
OpWall35113ID.collider:SetHalfLengths(0.3,6.76749,3.3541)
CollisionHandler.AddOBB(OpWall35113ID.collider, 3)
table.insert(colliders,OpWall35113ID)
OpWall35113ID = nil

OpWall36114ID = {}
OpWall36114ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall36114ID.transformID, {x=85.5, y=20.091, z=198})
Transform.SetScaleNonUniform(OpWall36114ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall36114ID.transformID, {x=0, y=0, z=0})
OpWall36114ID.collider = OBBCollider.Create(OpWall36114ID.transformID)
OpWall36114ID.collider:SetOffset(0,0,0)
OpWall36114ID.collider:SetZAxis(0.759257,0,-0.650791)
OpWall36114ID.collider:SetHalfLengths(0.3,8.0931,4.60977)
CollisionHandler.AddOBB(OpWall36114ID.collider, 3)
table.insert(colliders,OpWall36114ID)
OpWall36114ID = nil

OpWall37115ID = {}
OpWall37115ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall37115ID.transformID, {x=95, y=23.1841, z=192.5})
Transform.SetScaleNonUniform(OpWall37115ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall37115ID.transformID, {x=0, y=0, z=0})
OpWall37115ID.collider = OBBCollider.Create(OpWall37115ID.transformID)
OpWall37115ID.collider:SetOffset(0,0,0)
OpWall37115ID.collider:SetZAxis(0.923077,0,-0.384615)
OpWall37115ID.collider:SetHalfLengths(0.3,8.82956,6.5)
CollisionHandler.AddOBB(OpWall37115ID.collider, 3)
table.insert(colliders,OpWall37115ID)
OpWall37115ID = nil

OpWall38116ID = {}
OpWall38116ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall38116ID.transformID, {x=105, y=27.0137, z=192.5})
Transform.SetScaleNonUniform(OpWall38116ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall38116ID.transformID, {x=0, y=0, z=0})
OpWall38116ID.collider = OBBCollider.Create(OpWall38116ID.transformID)
OpWall38116ID.collider:SetOffset(0,0,0)
OpWall38116ID.collider:SetZAxis(0.847998,0,0.529999)
OpWall38116ID.collider:SetHalfLengths(0.3,8.68227,4.71699)
CollisionHandler.AddOBB(OpWall38116ID.collider, 3)
table.insert(colliders,OpWall38116ID)
OpWall38116ID = nil

OpWall39117ID = {}
OpWall39117ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall39117ID.transformID, {x=111, y=30.696, z=195.5})
Transform.SetScaleNonUniform(OpWall39117ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall39117ID.transformID, {x=0, y=0, z=0})
OpWall39117ID.collider = OBBCollider.Create(OpWall39117ID.transformID)
OpWall39117ID.collider:SetOffset(0,0,0)
OpWall39117ID.collider:SetZAxis(0.970143,0,0.242536)
OpWall39117ID.collider:SetHalfLengths(0.3,6.17832,2.06155)
CollisionHandler.AddOBB(OpWall39117ID.collider, 3)
table.insert(colliders,OpWall39117ID)
OpWall39117ID = nil

OpWall40118ID = {}
OpWall40118ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall40118ID.transformID, {x=115.5, y=31.8743, z=198})
Transform.SetScaleNonUniform(OpWall40118ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall40118ID.transformID, {x=0, y=0, z=0})
OpWall40118ID.collider = OBBCollider.Create(OpWall40118ID.transformID)
OpWall40118ID.collider:SetOffset(0,0,0)
OpWall40118ID.collider:SetZAxis(0.780869,0,0.624695)
OpWall40118ID.collider:SetHalfLengths(0.3,7.79852,3.20156)
CollisionHandler.AddOBB(OpWall40118ID.collider, 3)
table.insert(colliders,OpWall40118ID)
OpWall40118ID = nil

OpWall41119ID = {}
OpWall41119ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall41119ID.transformID, {x=121, y=34.6728, z=206})
Transform.SetScaleNonUniform(OpWall41119ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall41119ID.transformID, {x=0, y=0, z=0})
OpWall41119ID.collider = OBBCollider.Create(OpWall41119ID.transformID)
OpWall41119ID.collider:SetOffset(0,0,0)
OpWall41119ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall41119ID.collider:SetHalfLengths(0.3,6.76749,6.7082)
CollisionHandler.AddOBB(OpWall41119ID.collider, 3)
table.insert(colliders,OpWall41119ID)
OpWall41119ID = nil

OpWall42120ID = {}
OpWall42120ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall42120ID.transformID, {x=126, y=32.9053, z=211.5})
Transform.SetScaleNonUniform(OpWall42120ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall42120ID.transformID, {x=0, y=0, z=0})
OpWall42120ID.collider = OBBCollider.Create(OpWall42120ID.transformID)
OpWall42120ID.collider:SetOffset(0,0,0)
OpWall42120ID.collider:SetZAxis(0.970143,0,-0.242536)
OpWall42120ID.collider:SetHalfLengths(0.3,5.88375,2.06155)
CollisionHandler.AddOBB(OpWall42120ID.collider, 3)
table.insert(colliders,OpWall42120ID)
OpWall42120ID = nil

OpWall43121ID = {}
OpWall43121ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall43121ID.transformID, {x=90, y=21.5639, z=213.5})
Transform.SetScaleNonUniform(OpWall43121ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall43121ID.transformID, {x=0, y=0, z=0})
OpWall43121ID.collider = OBBCollider.Create(OpWall43121ID.transformID)
OpWall43121ID.collider:SetOffset(0,0,0)
OpWall43121ID.collider:SetZAxis(0.406139,0,0.913812)
OpWall43121ID.collider:SetHalfLengths(0.3,5.88374,4.92443)
CollisionHandler.AddOBB(OpWall43121ID.collider, 3)
table.insert(colliders,OpWall43121ID)
OpWall43121ID = nil

OpWall44122ID = {}
OpWall44122ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall44122ID.transformID, {x=98, y=22.4477, z=219.5})
Transform.SetScaleNonUniform(OpWall44122ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall44122ID.transformID, {x=0, y=0, z=0})
OpWall44122ID.collider = OBBCollider.Create(OpWall44122ID.transformID)
OpWall44122ID.collider:SetOffset(0,0,0)
OpWall44122ID.collider:SetZAxis(0.970142,0,0.242536)
OpWall44122ID.collider:SetHalfLengths(0.3,9.41872,6.18466)
CollisionHandler.AddOBB(OpWall44122ID.collider, 3)
table.insert(colliders,OpWall44122ID)
OpWall44122ID = nil

OpWall45123ID = {}
OpWall45123ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall45123ID.transformID, {x=105.5, y=26.8664, z=222.5})
Transform.SetScaleNonUniform(OpWall45123ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall45123ID.transformID, {x=0, y=0, z=0})
OpWall45123ID.collider = OBBCollider.Create(OpWall45123ID.transformID)
OpWall45123ID.collider:SetOffset(0,0,0)
OpWall45123ID.collider:SetZAxis(0.707107,0,0.707107)
OpWall45123ID.collider:SetHalfLengths(0.3,6.47291,2.12132)
CollisionHandler.AddOBB(OpWall45123ID.collider, 3)
table.insert(colliders,OpWall45123ID)
OpWall45123ID = nil

OpWall46124ID = {}
OpWall46124ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall46124ID.transformID, {x=111.5, y=28.3393, z=222})
Transform.SetScaleNonUniform(OpWall46124ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall46124ID.transformID, {x=0, y=0, z=0})
OpWall46124ID.collider = OBBCollider.Create(OpWall46124ID.transformID)
OpWall46124ID.collider:SetOffset(0,0,0)
OpWall46124ID.collider:SetZAxis(0.913812,0,-0.406139)
OpWall46124ID.collider:SetHalfLengths(0.3,7.65123,4.92443)
CollisionHandler.AddOBB(OpWall46124ID.collider, 3)
table.insert(colliders,OpWall46124ID)
OpWall46124ID = nil

OpWall47125ID = {}
OpWall47125ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall47125ID.transformID, {x=116, y=30.9905, z=217})
Transform.SetScaleNonUniform(OpWall47125ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall47125ID.transformID, {x=0, y=0, z=0})
OpWall47125ID.collider = OBBCollider.Create(OpWall47125ID.transformID)
OpWall47125ID.collider:SetOffset(0,0,0)
OpWall47125ID.collider:SetZAxis(0,0,-1)
OpWall47125ID.collider:SetHalfLengths(0.3,10.1552,3)
CollisionHandler.AddOBB(OpWall47125ID.collider, 3)
table.insert(colliders,OpWall47125ID)
OpWall47125ID = nil

OpWall48126ID = {}
OpWall48126ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall48126ID.transformID, {x=114, y=36.1457, z=210.5})
Transform.SetScaleNonUniform(OpWall48126ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall48126ID.transformID, {x=0, y=0, z=0})
OpWall48126ID.collider = OBBCollider.Create(OpWall48126ID.transformID)
OpWall48126ID.collider:SetOffset(0,0,0)
OpWall48126ID.collider:SetZAxis(-0.496139,0,-0.868243)
OpWall48126ID.collider:SetHalfLengths(0.3,6.4729,4.03113)
CollisionHandler.AddOBB(OpWall48126ID.collider, 3)
table.insert(colliders,OpWall48126ID)
OpWall48126ID = nil

OpWall49127ID = {}
OpWall49127ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall49127ID.transformID, {x=107, y=34.6728, z=203})
Transform.SetScaleNonUniform(OpWall49127ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall49127ID.transformID, {x=0, y=0, z=0})
OpWall49127ID.collider = OBBCollider.Create(OpWall49127ID.transformID)
OpWall49127ID.collider:SetOffset(0,0,0)
OpWall49127ID.collider:SetZAxis(-0.780869,0,-0.624695)
OpWall49127ID.collider:SetHalfLengths(0.3,11.0389,6.40312)
CollisionHandler.AddOBB(OpWall49127ID.collider, 3)
table.insert(colliders,OpWall49127ID)
OpWall49127ID = nil

OpWall50128ID = {}
OpWall50128ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall50128ID.transformID, {x=101, y=28.6339, z=199})
Transform.SetScaleNonUniform(OpWall50128ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall50128ID.transformID, {x=0, y=0, z=0})
OpWall50128ID.collider = OBBCollider.Create(OpWall50128ID.transformID)
OpWall50128ID.collider:SetOffset(0,0,0)
OpWall50128ID.collider:SetZAxis(-1,0,0)
OpWall50128ID.collider:SetHalfLengths(0.3,6.32562,1)
CollisionHandler.AddOBB(OpWall50128ID.collider, 3)
table.insert(colliders,OpWall50128ID)
OpWall50128ID = nil

OpWall51129ID = {}
OpWall51129ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall51129ID.transformID, {x=95, y=27.3083, z=202.5})
Transform.SetScaleNonUniform(OpWall51129ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall51129ID.transformID, {x=0, y=0, z=0})
OpWall51129ID.collider = OBBCollider.Create(OpWall51129ID.transformID)
OpWall51129ID.collider:SetOffset(0,0,0)
OpWall51129ID.collider:SetZAxis(-0.819232,0,0.573462)
OpWall51129ID.collider:SetHalfLengths(0.3,9.7133,6.10328)
CollisionHandler.AddOBB(OpWall51129ID.collider, 3)
table.insert(colliders,OpWall51129ID)
OpWall51129ID = nil

OpWall52130ID = {}
OpWall52130ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall52130ID.transformID, {x=89, y=22.595, z=207.5})
Transform.SetScaleNonUniform(OpWall52130ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall52130ID.transformID, {x=0, y=0, z=0})
OpWall52130ID.collider = OBBCollider.Create(OpWall52130ID.transformID)
OpWall52130ID.collider:SetOffset(0,0,0)
OpWall52130ID.collider:SetZAxis(-0.5547,0,0.83205)
OpWall52130ID.collider:SetHalfLengths(0.3,6.03103,1.80278)
CollisionHandler.AddOBB(OpWall52130ID.collider, 3)
table.insert(colliders,OpWall52130ID)
OpWall52130ID = nil

OpWall53131ID = {}
OpWall53131ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall53131ID.transformID, {x=4.5, y=6.83489, z=147.5})
Transform.SetScaleNonUniform(OpWall53131ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall53131ID.transformID, {x=0, y=0, z=0})
OpWall53131ID.collider = OBBCollider.Create(OpWall53131ID.transformID)
OpWall53131ID.collider:SetOffset(0,0,0)
OpWall53131ID.collider:SetZAxis(0.707107,0,0.707107)
OpWall53131ID.collider:SetHalfLengths(0.3,5.14729,0.707107)
CollisionHandler.AddOBB(OpWall53131ID.collider, 3)
table.insert(colliders,OpWall53131ID)
OpWall53131ID = nil

OpWall54132ID = {}
OpWall54132ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall54132ID.transformID, {x=5, y=6.98218, z=151.5})
Transform.SetScaleNonUniform(OpWall54132ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall54132ID.transformID, {x=0, y=0, z=0})
OpWall54132ID.collider = OBBCollider.Create(OpWall54132ID.transformID)
OpWall54132ID.collider:SetOffset(0,0,0)
OpWall54132ID.collider:SetZAxis(0,0,1)
OpWall54132ID.collider:SetHalfLengths(0.3,5.44187,3.5)
CollisionHandler.AddOBB(OpWall54132ID.collider, 3)
table.insert(colliders,OpWall54132ID)
OpWall54132ID = nil

OpWall55133ID = {}
OpWall55133ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall55133ID.transformID, {x=4.5, y=7.42405, z=159})
Transform.SetScaleNonUniform(OpWall55133ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall55133ID.transformID, {x=0, y=0, z=0})
OpWall55133ID.collider = OBBCollider.Create(OpWall55133ID.transformID)
OpWall55133ID.collider:SetOffset(0,0,0)
OpWall55133ID.collider:SetZAxis(-0.124035,0,0.992278)
OpWall55133ID.collider:SetHalfLengths(0.3,5.88374,4.03113)
CollisionHandler.AddOBB(OpWall55133ID.collider, 3)
table.insert(colliders,OpWall55133ID)
OpWall55133ID = nil

OpWall56134ID = {}
OpWall56134ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall56134ID.transformID, {x=7, y=6.54031, z=167})
Transform.SetScaleNonUniform(OpWall56134ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall56134ID.transformID, {x=0, y=0, z=0})
OpWall56134ID.collider = OBBCollider.Create(OpWall56134ID.transformID)
OpWall56134ID.collider:SetOffset(0,0,0)
OpWall56134ID.collider:SetZAxis(0.6,0,0.8)
OpWall56134ID.collider:SetHalfLengths(0.3,5.29458,5)
CollisionHandler.AddOBB(OpWall56134ID.collider, 3)
table.insert(colliders,OpWall56134ID)
OpWall56134ID = nil

OpWall57135ID = {}
OpWall57135ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall57135ID.transformID, {x=10, y=6.24573, z=173.5})
Transform.SetScaleNonUniform(OpWall57135ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall57135ID.transformID, {x=0, y=0, z=0})
OpWall57135ID.collider = OBBCollider.Create(OpWall57135ID.transformID)
OpWall57135ID.collider:SetOffset(0,0,0)
OpWall57135ID.collider:SetZAxis(0,0,1)
OpWall57135ID.collider:SetHalfLengths(0.3,5.58916,2.5)
CollisionHandler.AddOBB(OpWall57135ID.collider, 3)
table.insert(colliders,OpWall57135ID)
OpWall57135ID = nil

OpWall58136ID = {}
OpWall58136ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall58136ID.transformID, {x=6.5, y=5.65657, z=179})
Transform.SetScaleNonUniform(OpWall58136ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall58136ID.transformID, {x=0, y=0, z=0})
OpWall58136ID.collider = OBBCollider.Create(OpWall58136ID.transformID)
OpWall58136ID.collider:SetOffset(0,0,0)
OpWall58136ID.collider:SetZAxis(-0.759257,0,0.650791)
OpWall58136ID.collider:SetHalfLengths(0.3,5.29458,4.60977)
CollisionHandler.AddOBB(OpWall58136ID.collider, 3)
table.insert(colliders,OpWall58136ID)
OpWall58136ID = nil

OpWall59137ID = {}
OpWall59137ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall59137ID.transformID, {x=2.5, y=5.36198, z=188})
Transform.SetScaleNonUniform(OpWall59137ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall59137ID.transformID, {x=0, y=0, z=0})
OpWall59137ID.collider = OBBCollider.Create(OpWall59137ID.transformID)
OpWall59137ID.collider:SetOffset(0,0,0)
OpWall59137ID.collider:SetZAxis(-0.0830455,0,0.996546)
OpWall59137ID.collider:SetHalfLengths(0.3,6.32562,6.0208)
CollisionHandler.AddOBB(OpWall59137ID.collider, 3)
table.insert(colliders,OpWall59137ID)
OpWall59137ID = nil

OpWall60138ID = {}
OpWall60138ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall60138ID.transformID, {x=3.5, y=4.03637, z=196.5})
Transform.SetScaleNonUniform(OpWall60138ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall60138ID.transformID, {x=0, y=0, z=0})
OpWall60138ID.collider = OBBCollider.Create(OpWall60138ID.transformID)
OpWall60138ID.collider:SetOffset(0,0,0)
OpWall60138ID.collider:SetZAxis(0.514496,0,0.857493)
OpWall60138ID.collider:SetHalfLengths(0.3,5.58916,2.91548)
CollisionHandler.AddOBB(OpWall60138ID.collider, 3)
table.insert(colliders,OpWall60138ID)
OpWall60138ID = nil

OpWall61139ID = {}
OpWall61139ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall61139ID.transformID, {x=6, y=3.44721, z=200.5})
Transform.SetScaleNonUniform(OpWall61139ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall61139ID.transformID, {x=0, y=0, z=0})
OpWall61139ID.collider = OBBCollider.Create(OpWall61139ID.transformID)
OpWall61139ID.collider:SetOffset(0,0,0)
OpWall61139ID.collider:SetZAxis(0.5547,0,0.83205)
OpWall61139ID.collider:SetHalfLengths(0.3,5,1.80278)
CollisionHandler.AddOBB(OpWall61139ID.collider, 3)
table.insert(colliders,OpWall61139ID)
OpWall61139ID = nil

OpWall62140ID = {}
OpWall62140ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall62140ID.transformID, {x=7.5, y=3.44721, z=203})
Transform.SetScaleNonUniform(OpWall62140ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall62140ID.transformID, {x=0, y=0, z=0})
OpWall62140ID.collider = OBBCollider.Create(OpWall62140ID.transformID)
OpWall62140ID.collider:SetOffset(0,0,0)
OpWall62140ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall62140ID.collider:SetHalfLengths(0.3,5.14729,1.11803)
CollisionHandler.AddOBB(OpWall62140ID.collider, 3)
table.insert(colliders,OpWall62140ID)
OpWall62140ID = nil

OpWall63141ID = {}
OpWall63141ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall63141ID.transformID, {x=15, y=3.29992, z=202.5})
Transform.SetScaleNonUniform(OpWall63141ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall63141ID.transformID, {x=0, y=0, z=0})
OpWall63141ID.collider = OBBCollider.Create(OpWall63141ID.transformID)
OpWall63141ID.collider:SetOffset(0,0,0)
OpWall63141ID.collider:SetZAxis(0.977802,0,-0.209529)
OpWall63141ID.collider:SetHalfLengths(0.3,5.14729,7.15891)
CollisionHandler.AddOBB(OpWall63141ID.collider, 3)
table.insert(colliders,OpWall63141ID)
OpWall63141ID = nil

OpWall64142ID = {}
OpWall64142ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall64142ID.transformID, {x=24.5, y=3.15263, z=199.5})
Transform.SetScaleNonUniform(OpWall64142ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall64142ID.transformID, {x=0, y=0, z=0})
OpWall64142ID.collider = OBBCollider.Create(OpWall64142ID.transformID)
OpWall64142ID.collider:SetOffset(0,0,0)
OpWall64142ID.collider:SetZAxis(0.857493,0,-0.514496)
OpWall64142ID.collider:SetHalfLengths(0.3,6.47291,2.91548)
CollisionHandler.AddOBB(OpWall64142ID.collider, 3)
table.insert(colliders,OpWall64142ID)
OpWall64142ID = nil

OpWall65143ID = {}
OpWall65143ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall65143ID.transformID, {x=23, y=4.33095, z=190.5})
Transform.SetScaleNonUniform(OpWall65143ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall65143ID.transformID, {x=0, y=0, z=0})
OpWall65143ID.collider = OBBCollider.Create(OpWall65143ID.transformID)
OpWall65143ID.collider:SetOffset(0,0,0)
OpWall65143ID.collider:SetZAxis(0.478852,0,0.877896)
OpWall65143ID.collider:SetHalfLengths(0.3,6.03103,6.26498)
CollisionHandler.AddOBB(OpWall65143ID.collider, 3)
table.insert(colliders,OpWall65143ID)
OpWall65143ID = nil

OpWall66144ID = {}
OpWall66144ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall66144ID.transformID, {x=27, y=5.36198, z=196.5})
Transform.SetScaleNonUniform(OpWall66144ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall66144ID.transformID, {x=0, y=0, z=0})
OpWall66144ID.collider = OBBCollider.Create(OpWall66144ID.transformID)
OpWall66144ID.collider:SetOffset(0,0,0)
OpWall66144ID.collider:SetZAxis(0.894427,0,0.447214)
OpWall66144ID.collider:SetHalfLengths(0.3,7.35665,1.11803)
CollisionHandler.AddOBB(OpWall66144ID.collider, 3)
table.insert(colliders,OpWall66144ID)
OpWall66144ID = nil

OpWall67145ID = {}
OpWall67145ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall67145ID.transformID, {x=29, y=7.71863, z=197})
Transform.SetScaleNonUniform(OpWall67145ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall67145ID.transformID, {x=0, y=0, z=0})
OpWall67145ID.collider = OBBCollider.Create(OpWall67145ID.transformID)
OpWall67145ID.collider:SetOffset(0,0,0)
OpWall67145ID.collider:SetZAxis(1,0,0)
OpWall67145ID.collider:SetHalfLengths(0.3,5.44187,1)
CollisionHandler.AddOBB(OpWall67145ID.collider, 3)
table.insert(colliders,OpWall67145ID)
OpWall67145ID = nil

OpWall68146ID = {}
OpWall68146ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall68146ID.transformID, {x=31.5, y=8.16051, z=200})
Transform.SetScaleNonUniform(OpWall68146ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall68146ID.transformID, {x=0, y=0, z=0})
OpWall68146ID.collider = OBBCollider.Create(OpWall68146ID.transformID)
OpWall68146ID.collider:SetOffset(0,0,0)
OpWall68146ID.collider:SetZAxis(0.447214,0,0.894427)
OpWall68146ID.collider:SetHalfLengths(0.3,5.73645,3.3541)
CollisionHandler.AddOBB(OpWall68146ID.collider, 3)
table.insert(colliders,OpWall68146ID)
OpWall68146ID = nil

OpWall69147ID = {}
OpWall69147ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall69147ID.transformID, {x=32.5, y=8.89696, z=203.5})
Transform.SetScaleNonUniform(OpWall69147ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall69147ID.transformID, {x=0, y=0, z=0})
OpWall69147ID.collider = OBBCollider.Create(OpWall69147ID.transformID)
OpWall69147ID.collider:SetOffset(0,0,0)
OpWall69147ID.collider:SetZAxis(-0.707107,0,0.707107)
OpWall69147ID.collider:SetHalfLengths(0.3,5.44187,0.707107)
CollisionHandler.AddOBB(OpWall69147ID.collider, 3)
table.insert(colliders,OpWall69147ID)
OpWall69147ID = nil

OpWall70148ID = {}
OpWall70148ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall70148ID.transformID, {x=34.5, y=8.45509, z=207.5})
Transform.SetScaleNonUniform(OpWall70148ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall70148ID.transformID, {x=0, y=0, z=0})
OpWall70148ID.collider = OBBCollider.Create(OpWall70148ID.transformID)
OpWall70148ID.collider:SetOffset(0,0,0)
OpWall70148ID.collider:SetZAxis(0.581238,0,0.813733)
OpWall70148ID.collider:SetHalfLengths(0.3,5.14729,4.30116)
CollisionHandler.AddOBB(OpWall70148ID.collider, 3)
table.insert(colliders,OpWall70148ID)
OpWall70148ID = nil

OpWall71149ID = {}
OpWall71149ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall71149ID.transformID, {x=40.5, y=8.60238, z=213})
Transform.SetScaleNonUniform(OpWall71149ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall71149ID.transformID, {x=0, y=0, z=0})
OpWall71149ID.collider = OBBCollider.Create(OpWall71149ID.transformID)
OpWall71149ID.collider:SetOffset(0,0,0)
OpWall71149ID.collider:SetZAxis(0.868243,0,0.496139)
OpWall71149ID.collider:SetHalfLengths(0.3,5.73645,4.03113)
CollisionHandler.AddOBB(OpWall71149ID.collider, 3)
table.insert(colliders,OpWall71149ID)
OpWall71149ID = nil

OpWall72150ID = {}
OpWall72150ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall72150ID.transformID, {x=51, y=9.33883, z=216})
Transform.SetScaleNonUniform(OpWall72150ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall72150ID.transformID, {x=0, y=0, z=0})
OpWall72150ID.collider = OBBCollider.Create(OpWall72150ID.transformID)
OpWall72150ID.collider:SetOffset(0,0,0)
OpWall72150ID.collider:SetZAxis(0.98995,0,0.141421)
OpWall72150ID.collider:SetHalfLengths(0.3,5.58916,7.07107)
CollisionHandler.AddOBB(OpWall72150ID.collider, 3)
table.insert(colliders,OpWall72150ID)
OpWall72150ID = nil

OpWall73151ID = {}
OpWall73151ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall73151ID.transformID, {x=63, y=8.74967, z=217})
Transform.SetScaleNonUniform(OpWall73151ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall73151ID.transformID, {x=0, y=0, z=0})
OpWall73151ID.collider = OBBCollider.Create(OpWall73151ID.transformID)
OpWall73151ID.collider:SetOffset(0,0,0)
OpWall73151ID.collider:SetZAxis(1,0,0)
OpWall73151ID.collider:SetHalfLengths(0.3,10.4498,5)
CollisionHandler.AddOBB(OpWall73151ID.collider, 3)
table.insert(colliders,OpWall73151ID)
OpWall73151ID = nil

OpWall74152ID = {}
OpWall74152ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall74152ID.transformID, {x=76, y=14.1994, z=221.5})
Transform.SetScaleNonUniform(OpWall74152ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall74152ID.transformID, {x=0, y=0, z=0})
OpWall74152ID.collider = OBBCollider.Create(OpWall74152ID.transformID)
OpWall74152ID.collider:SetOffset(0,0,0)
OpWall74152ID.collider:SetZAxis(0.871576,0,0.490261)
OpWall74152ID.collider:SetHalfLengths(0.3,6.4729,9.17878)
CollisionHandler.AddOBB(OpWall74152ID.collider, 3)
table.insert(colliders,OpWall74152ID)
OpWall74152ID = nil

OpWall75153ID = {}
OpWall75153ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall75153ID.transformID, {x=91, y=15.6723, z=230.5})
Transform.SetScaleNonUniform(OpWall75153ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall75153ID.transformID, {x=0, y=0, z=0})
OpWall75153ID.collider = OBBCollider.Create(OpWall75153ID.transformID)
OpWall75153ID.collider:SetOffset(0,0,0)
OpWall75153ID.collider:SetZAxis(0.841179,0,0.540758)
OpWall75153ID.collider:SetHalfLengths(0.3,11.9227,8.32166)
CollisionHandler.AddOBB(OpWall75153ID.collider, 3)
table.insert(colliders,OpWall75153ID)
OpWall75153ID = nil

OpWall76154ID = {}
OpWall76154ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall76154ID.transformID, {x=104.5, y=22.595, z=236})
Transform.SetScaleNonUniform(OpWall76154ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall76154ID.transformID, {x=0, y=0, z=0})
OpWall76154ID.collider = OBBCollider.Create(OpWall76154ID.transformID)
OpWall76154ID.collider:SetOffset(0,0,0)
OpWall76154ID.collider:SetZAxis(0.988372,0,0.152057)
OpWall76154ID.collider:SetHalfLengths(0.3,10.8916,6.57647)
CollisionHandler.AddOBB(OpWall76154ID.collider, 3)
table.insert(colliders,OpWall76154ID)
OpWall76154ID = nil

OpWall77155ID = {}
OpWall77155ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall77155ID.transformID, {x=115, y=28.4866, z=235})
Transform.SetScaleNonUniform(OpWall77155ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall77155ID.transformID, {x=0, y=0, z=0})
OpWall77155ID.collider = OBBCollider.Create(OpWall77155ID.transformID)
OpWall77155ID.collider:SetOffset(0,0,0)
OpWall77155ID.collider:SetZAxis(0.894427,0,-0.447214)
OpWall77155ID.collider:SetHalfLengths(0.3,6.91478,4.47214)
CollisionHandler.AddOBB(OpWall77155ID.collider, 3)
table.insert(colliders,OpWall77155ID)
OpWall77155ID = nil

OpWall78156ID = {}
OpWall78156ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall78156ID.transformID, {x=122, y=30.4014, z=233.5})
Transform.SetScaleNonUniform(OpWall78156ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall78156ID.transformID, {x=0, y=0, z=0})
OpWall78156ID.collider = OBBCollider.Create(OpWall78156ID.transformID)
OpWall78156ID.collider:SetOffset(0,0,0)
OpWall78156ID.collider:SetZAxis(0.986394,0,0.164399)
OpWall78156ID.collider:SetHalfLengths(0.3,6.76749,3.04138)
CollisionHandler.AddOBB(OpWall78156ID.collider, 3)
table.insert(colliders,OpWall78156ID)
OpWall78156ID = nil

OpWall79157ID = {}
OpWall79157ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall79157ID.transformID, {x=125.5, y=32.1689, z=229})
Transform.SetScaleNonUniform(OpWall79157ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall79157ID.transformID, {x=0, y=0, z=0})
OpWall79157ID.collider = OBBCollider.Create(OpWall79157ID.transformID)
OpWall79157ID.collider:SetOffset(0,0,0)
OpWall79157ID.collider:SetZAxis(0.0995037,0,-0.995037)
OpWall79157ID.collider:SetHalfLengths(0.3,5.58916,5.02494)
CollisionHandler.AddOBB(OpWall79157ID.collider, 3)
table.insert(colliders,OpWall79157ID)
OpWall79157ID = nil

OpWall80158ID = {}
OpWall80158ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall80158ID.transformID, {x=127, y=32.758, z=224})
Transform.SetScaleNonUniform(OpWall80158ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall80158ID.transformID, {x=0, y=0, z=0})
OpWall80158ID.collider = OBBCollider.Create(OpWall80158ID.transformID)
OpWall80158ID.collider:SetOffset(0,0,0)
OpWall80158ID.collider:SetZAxis(1,0,0)
OpWall80158ID.collider:SetHalfLengths(0.3,5.14729,1)
CollisionHandler.AddOBB(OpWall80158ID.collider, 3)
table.insert(colliders,OpWall80158ID)
OpWall80158ID = nil

Bridge373ID = {}
Bridge373ID.transformID = Transform.Bind()
Transform.SetPosition(Bridge373ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Bridge373ID.transformID, 1, 1, 1)
Transform.SetRotation(Bridge373ID.transformID, {x=0, y=0, z=0})
Bridge373ID.model = Assets.LoadModel('Models/bridge.model')
Gear.AddStaticInstance(Bridge373ID.model, Bridge373ID.transformID)
table.insert(props,Bridge373ID)
Bridge373ID = nil

OakTree_NoCollider11374ID = {}
OakTree_NoCollider11374ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider11374ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(OakTree_NoCollider11374ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(OakTree_NoCollider11374ID.transformID, {x=0, y=2.76508, z=0})
OakTree_NoCollider11374ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider11374ID.model, OakTree_NoCollider11374ID.transformID)
table.insert(props,OakTree_NoCollider11374ID)
OakTree_NoCollider11374ID = nil

OakTree_NoCollider12375ID = {}
OakTree_NoCollider12375ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider12375ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(OakTree_NoCollider12375ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(OakTree_NoCollider12375ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider12375ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider12375ID.model, OakTree_NoCollider12375ID.transformID)
table.insert(props,OakTree_NoCollider12375ID)
OakTree_NoCollider12375ID = nil

OakTree_NoCollider13376ID = {}
OakTree_NoCollider13376ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider13376ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(OakTree_NoCollider13376ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(OakTree_NoCollider13376ID.transformID, {x=0, y=2.16382, z=0})
OakTree_NoCollider13376ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider13376ID.model, OakTree_NoCollider13376ID.transformID)
table.insert(props,OakTree_NoCollider13376ID)
OakTree_NoCollider13376ID = nil

OakTree_NoCollider14377ID = {}
OakTree_NoCollider14377ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider14377ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(OakTree_NoCollider14377ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(OakTree_NoCollider14377ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider14377ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider14377ID.model, OakTree_NoCollider14377ID.transformID)
table.insert(props,OakTree_NoCollider14377ID)
OakTree_NoCollider14377ID = nil

OakTree_NoCollider151378ID = {}
OakTree_NoCollider151378ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider151378ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(OakTree_NoCollider151378ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(OakTree_NoCollider151378ID.transformID, {x=0, y=1.62265, z=0})
OakTree_NoCollider151378ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider151378ID.model, OakTree_NoCollider151378ID.transformID)
table.insert(props,OakTree_NoCollider151378ID)
OakTree_NoCollider151378ID = nil

OakTree_NoCollider16379ID = {}
OakTree_NoCollider16379ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider16379ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(OakTree_NoCollider16379ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(OakTree_NoCollider16379ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider16379ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider16379ID.model, OakTree_NoCollider16379ID.transformID)
table.insert(props,OakTree_NoCollider16379ID)
OakTree_NoCollider16379ID = nil

OakTree_NoCollider17380ID = {}
OakTree_NoCollider17380ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider17380ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(OakTree_NoCollider17380ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(OakTree_NoCollider17380ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider17380ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider17380ID.model, OakTree_NoCollider17380ID.transformID)
table.insert(props,OakTree_NoCollider17380ID)
OakTree_NoCollider17380ID = nil

OakTree_NoCollider18381ID = {}
OakTree_NoCollider18381ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider18381ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(OakTree_NoCollider18381ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(OakTree_NoCollider18381ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider18381ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider18381ID.model, OakTree_NoCollider18381ID.transformID)
table.insert(props,OakTree_NoCollider18381ID)
OakTree_NoCollider18381ID = nil

OakTree_NoCollider19382ID = {}
OakTree_NoCollider19382ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider19382ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(OakTree_NoCollider19382ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(OakTree_NoCollider19382ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
OakTree_NoCollider19382ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider19382ID.model, OakTree_NoCollider19382ID.transformID)
table.insert(props,OakTree_NoCollider19382ID)
OakTree_NoCollider19382ID = nil

OakTree_NoCollider110383ID = {}
OakTree_NoCollider110383ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider110383ID.transformID, {x=-1.07374e+08, y=-1.07374e+08, z=-1.07374e+08})
Transform.SetScaleNonUniform(OakTree_NoCollider110383ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree_NoCollider110383ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider110383ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider110383ID.model, OakTree_NoCollider110383ID.transformID)
table.insert(props,OakTree_NoCollider110383ID)
OakTree_NoCollider110383ID = nil

OakTree_Collider384ID = {}
OakTree_Collider384ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider384ID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(OakTree_Collider384ID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(OakTree_Collider384ID.transformID, {x=0, y=1.7421, z=-0.00619812})
OakTree_Collider384ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider384ID.model, OakTree_Collider384ID.transformID)
OakTree_Collider384ID.collider = OBBCollider.Create(OakTree_Collider384ID.transformID)
OakTree_Collider384ID.collider:SetOffset(0,4,0)
OakTree_Collider384ID.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
OakTree_Collider384ID.collider:SetHalfLengths(2.11687,6.02749,2.51378)
CollisionHandler.AddOBB(OakTree_Collider384ID.collider, 3)
table.insert(props,OakTree_Collider384ID)
OakTree_Collider384ID = nil

OakTree_Collider1385ID = {}
OakTree_Collider1385ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider1385ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(OakTree_Collider1385ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(OakTree_Collider1385ID.transformID, {x=0, y=0.376574, z=0})
OakTree_Collider1385ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider1385ID.model, OakTree_Collider1385ID.transformID)
OakTree_Collider1385ID.collider = OBBCollider.Create(OakTree_Collider1385ID.transformID)
OakTree_Collider1385ID.collider:SetOffset(0,4,0)
OakTree_Collider1385ID.collider:SetZAxis(0.367737,0,0.92993)
OakTree_Collider1385ID.collider:SetHalfLengths(2.32777,5.5028,2.15084)
CollisionHandler.AddOBB(OakTree_Collider1385ID.collider, 3)
table.insert(props,OakTree_Collider1385ID)
OakTree_Collider1385ID = nil

OakTree_Collider2386ID = {}
OakTree_Collider2386ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider2386ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(OakTree_Collider2386ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(OakTree_Collider2386ID.transformID, {x=0, y=-2.0418, z=0})
OakTree_Collider2386ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider2386ID.model, OakTree_Collider2386ID.transformID)
OakTree_Collider2386ID.collider = OBBCollider.Create(OakTree_Collider2386ID.transformID)
OakTree_Collider2386ID.collider:SetOffset(0,4,0)
OakTree_Collider2386ID.collider:SetZAxis(-0.891114,0,-0.453779)
OakTree_Collider2386ID.collider:SetHalfLengths(2.5078,5.88453,1.95815)
CollisionHandler.AddOBB(OakTree_Collider2386ID.collider, 3)
table.insert(props,OakTree_Collider2386ID)
OakTree_Collider2386ID = nil

OakTree_Collider3387ID = {}
OakTree_Collider3387ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider3387ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(OakTree_Collider3387ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(OakTree_Collider3387ID.transformID, {x=0, y=-1.42165, z=0})
OakTree_Collider3387ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider3387ID.model, OakTree_Collider3387ID.transformID)
OakTree_Collider3387ID.collider = OBBCollider.Create(OakTree_Collider3387ID.transformID)
OakTree_Collider3387ID.collider:SetOffset(0,4,0)
OakTree_Collider3387ID.collider:SetZAxis(-0.988898,0,0.148599)
OakTree_Collider3387ID.collider:SetHalfLengths(3.65554,10.4465,3.23962)
CollisionHandler.AddOBB(OakTree_Collider3387ID.collider, 3)
table.insert(props,OakTree_Collider3387ID)
OakTree_Collider3387ID = nil

PineTree_NoCollider388ID = {}
PineTree_NoCollider388ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider388ID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(PineTree_NoCollider388ID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(PineTree_NoCollider388ID.transformID, {x=0.536822, y=0.137189, z=0.401651})
PineTree_NoCollider388ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider388ID.model, PineTree_NoCollider388ID.transformID)
table.insert(props,PineTree_NoCollider388ID)
PineTree_NoCollider388ID = nil

PineTree_NoCollider2426ID = {}
PineTree_NoCollider2426ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider2426ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(PineTree_NoCollider2426ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(PineTree_NoCollider2426ID.transformID, {x=0, y=2.5061, z=0})
PineTree_NoCollider2426ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider2426ID.model, PineTree_NoCollider2426ID.transformID)
table.insert(props,PineTree_NoCollider2426ID)
PineTree_NoCollider2426ID = nil

PineTree_NoCollider3427ID = {}
PineTree_NoCollider3427ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider3427ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(PineTree_NoCollider3427ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(PineTree_NoCollider3427ID.transformID, {x=0, y=1.9694, z=0})
PineTree_NoCollider3427ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider3427ID.model, PineTree_NoCollider3427ID.transformID)
table.insert(props,PineTree_NoCollider3427ID)
PineTree_NoCollider3427ID = nil

PineTree_NoCollider4428ID = {}
PineTree_NoCollider4428ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider4428ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(PineTree_NoCollider4428ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree_NoCollider4428ID.transformID, {x=0, y=0, z=0})
PineTree_NoCollider4428ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider4428ID.model, PineTree_NoCollider4428ID.transformID)
table.insert(props,PineTree_NoCollider4428ID)
PineTree_NoCollider4428ID = nil

PineTree_NoCollider5429ID = {}
PineTree_NoCollider5429ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider5429ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(PineTree_NoCollider5429ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(PineTree_NoCollider5429ID.transformID, {x=0, y=2.83677, z=0})
PineTree_NoCollider5429ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider5429ID.model, PineTree_NoCollider5429ID.transformID)
table.insert(props,PineTree_NoCollider5429ID)
PineTree_NoCollider5429ID = nil

New1440ID = {}
New1440ID.transformID = Transform.Bind()
Transform.SetPosition(New1440ID.transformID, {x=35.3281, y=8.25781, z=134})
Transform.SetScaleNonUniform(New1440ID.transformID, 1, 1, 1)
Transform.SetRotation(New1440ID.transformID, {x=0, y=0, z=0})
New1440ID.model = Assets.LoadModel('Models/House1.model')
Gear.AddStaticInstance(New1440ID.model, New1440ID.transformID)
New1440ID.collider = OBBCollider.Create(New1440ID.transformID)
New1440ID.collider:SetOffset(0,2,0)
New1440ID.collider:SetZAxis(0,0,1)
New1440ID.collider:SetHalfLengths(-3.5,2.5,4.5)
CollisionHandler.AddOBB(New1440ID.collider, 3)
table.insert(props,New1440ID)
New1440ID = nil

Stone1441ID = {}
Stone1441ID.transformID = Transform.Bind()
Transform.SetPosition(Stone1441ID.transformID, {x=8.23798, y=6.46094, z=141.36})
Transform.SetScaleNonUniform(Stone1441ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone1441ID.transformID, {x=0, y=0, z=0})
Stone1441ID.model = Assets.LoadModel('Models/Stone2.model')
Gear.AddStaticInstance(Stone1441ID.model, Stone1441ID.transformID)
Stone1441ID.collider = SphereCollider.Create(Stone1441ID.transformID)
Stone1441ID.collider:SetOffset(0,0.5,0.6)
Stone1441ID.collider:SetRadius(2)
CollisionHandler.AddSphere(Stone1441ID.collider, 3)
table.insert(props,Stone1441ID)
Stone1441ID = nil

Stone2442ID = {}
Stone2442ID.transformID = Transform.Bind()
Transform.SetPosition(Stone2442ID.transformID, {x=6.36861, y=6.51953, z=144.656})
Transform.SetScaleNonUniform(Stone2442ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone2442ID.transformID, {x=0, y=0, z=0})
Stone2442ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone2442ID.model, Stone2442ID.transformID)
Stone2442ID.collider = OBBCollider.Create(Stone2442ID.transformID)
Stone2442ID.collider:SetOffset(0.3,0.6,0)
Stone2442ID.collider:SetZAxis(0,0,1)
Stone2442ID.collider:SetHalfLengths(1,0.6,1)
CollisionHandler.AddOBB(Stone2442ID.collider, 3)
table.insert(props,Stone2442ID)
Stone2442ID = nil

Stone3443ID = {}
Stone3443ID.transformID = Transform.Bind()
Transform.SetPosition(Stone3443ID.transformID, {x=6.14598, y=7.08841, z=146.994})
Transform.SetScaleNonUniform(Stone3443ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone3443ID.transformID, {x=0, y=0, z=0})
Stone3443ID.model = Assets.LoadModel('Models/Stone4.model')
Gear.AddStaticInstance(Stone3443ID.model, Stone3443ID.transformID)
Stone3443ID.collider = SphereCollider.Create(Stone3443ID.transformID)
Stone3443ID.collider:SetOffset(0,0.2,0)
Stone3443ID.collider:SetRadius(1)
CollisionHandler.AddSphere(Stone3443ID.collider, 3)
table.insert(props,Stone3443ID)
Stone3443ID = nil

WoodenFence444ID = {}
WoodenFence444ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence444ID.transformID, {x=21.0573, y=6.23257, z=185.192})
Transform.SetScaleNonUniform(WoodenFence444ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence444ID.transformID, {x=-0.241361, y=0.436751, z=0})
WoodenFence444ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence444ID.model, WoodenFence444ID.transformID)
table.insert(props,WoodenFence444ID)
WoodenFence444ID = nil

Stone21445ID = {}
Stone21445ID.transformID = Transform.Bind()
Transform.SetPosition(Stone21445ID.transformID, {x=8.2625, y=6.93359, z=144.445})
Transform.SetScaleNonUniform(Stone21445ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone21445ID.transformID, {x=0, y=0, z=0})
Stone21445ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone21445ID.model, Stone21445ID.transformID)
Stone21445ID.collider = OBBCollider.Create(Stone21445ID.transformID)
Stone21445ID.collider:SetOffset(0.3,0.6,0)
Stone21445ID.collider:SetZAxis(0,0,1)
Stone21445ID.collider:SetHalfLengths(1,0.6,1)
CollisionHandler.AddOBB(Stone21445ID.collider, 3)
table.insert(props,Stone21445ID)
Stone21445ID = nil

Stone22446ID = {}
Stone22446ID.transformID = Transform.Bind()
Transform.SetPosition(Stone22446ID.transformID, {x=7, y=6.98704, z=146})
Transform.SetScaleNonUniform(Stone22446ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone22446ID.transformID, {x=0, y=0.523599, z=0})
Stone22446ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone22446ID.model, Stone22446ID.transformID)
Stone22446ID.collider = OBBCollider.Create(Stone22446ID.transformID)
Stone22446ID.collider:SetOffset(0.3,0.6,0)
Stone22446ID.collider:SetZAxis(0.5,0,0.866025)
Stone22446ID.collider:SetHalfLengths(1,0.6,1)
CollisionHandler.AddOBB(Stone22446ID.collider, 3)
table.insert(props,Stone22446ID)
Stone22446ID = nil

WoodenFence1447ID = {}
WoodenFence1447ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence1447ID.transformID, {x=23.4996, y=7.19781, z=189.477})
Transform.SetScaleNonUniform(WoodenFence1447ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence1447ID.transformID, {x=-0.222826, y=-2.59994, z=-0.165259})
WoodenFence1447ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence1447ID.model, WoodenFence1447ID.transformID)
table.insert(props,WoodenFence1447ID)
WoodenFence1447ID = nil

New2448ID = {}
New2448ID.transformID = Transform.Bind()
Transform.SetPosition(New2448ID.transformID, {x=18.4219, y=3.97461, z=194.5})
Transform.SetScaleNonUniform(New2448ID.transformID, 1, 1, 1)
Transform.SetRotation(New2448ID.transformID, {x=0, y=0, z=0})
table.insert(props,New2448ID)
New2448ID = nil

WoodenFence2449ID = {}
WoodenFence2449ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence2449ID.transformID, {x=10.5605, y=4.37981, z=203.137})
Transform.SetScaleNonUniform(WoodenFence2449ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence2449ID.transformID, {x=0, y=1.8, z=0})
WoodenFence2449ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence2449ID.model, WoodenFence2449ID.transformID)
table.insert(props,WoodenFence2449ID)
WoodenFence2449ID = nil

WoodenFence3450ID = {}
WoodenFence3450ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence3450ID.transformID, {x=15.6596, y=4.4214, z=201.972})
Transform.SetScaleNonUniform(WoodenFence3450ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence3450ID.transformID, {x=0, y=1.8, z=0})
WoodenFence3450ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence3450ID.model, WoodenFence3450ID.transformID)
table.insert(props,WoodenFence3450ID)
WoodenFence3450ID = nil

WoodenFence4451ID = {}
WoodenFence4451ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence4451ID.transformID, {x=20.7617, y=4.72358, z=200.509})
Transform.SetScaleNonUniform(WoodenFence4451ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence4451ID.transformID, {x=0, y=1.9, z=0})
WoodenFence4451ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence4451ID.model, WoodenFence4451ID.transformID)
table.insert(props,WoodenFence4451ID)
WoodenFence4451ID = nil

WoodenFence5452ID = {}
WoodenFence5452ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence5452ID.transformID, {x=25.4186, y=4.67454, z=198.239})
Transform.SetScaleNonUniform(WoodenFence5452ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence5452ID.transformID, {x=0, y=2.1, z=0})
WoodenFence5452ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence5452ID.model, WoodenFence5452ID.transformID)
table.insert(props,WoodenFence5452ID)
WoodenFence5452ID = nil

WoodenFence6453ID = {}
WoodenFence6453ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence6453ID.transformID, {x=26.3931, y=8.26587, z=193.64})
Transform.SetScaleNonUniform(WoodenFence6453ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence6453ID.transformID, {x=-0.37539, y=-2.51042, z=-0.240567})
WoodenFence6453ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence6453ID.model, WoodenFence6453ID.transformID)
table.insert(props,WoodenFence6453ID)
WoodenFence6453ID = nil

New3454ID = {}
New3454ID.transformID = Transform.Bind()
Transform.SetPosition(New3454ID.transformID, {x=37.5571, y=6.02005, z=197.771})
Transform.SetScaleNonUniform(New3454ID.transformID, 1, 1, 1)
Transform.SetRotation(New3454ID.transformID, {x=0, y=0, z=0})
Light.addLight(37.5571, 6.02005, 197.771, 0.152941, 0.396078, 1, 9,5)
table.insert(props,New3454ID)
New3454ID = nil
TutorialPost1229ID = {}
TutorialPost1229ID.transformID = Transform.Bind()
Transform.SetPosition(TutorialPost1229ID.transformID, {x=30.1035, y=6.6213, z=156.506})
Transform.SetScaleNonUniform(TutorialPost1229ID.transformID, 1, 1, 1)
Transform.SetRotation(TutorialPost1229ID.transformID, {x=0, y=-2.89847, z=0})
TutorialPost1229ID.model = Assets.LoadModel('Models/SignPost.model')
Gear.AddStaticInstance(TutorialPost1229ID.model, TutorialPost1229ID.transformID)
TutorialPost1229ID.collider = SphereCollider.Create(TutorialPost1229ID.transformID)
TutorialPost1229ID.collider:SetOffset(0,1,-1)
TutorialPost1229ID.collider:SetRadius(2.6)
TutorialPost1229ID.collider.OnExit = function() hideTutorialImage() print("DD") end 
TutorialPost1229ID.collider.OnTriggering =  function(dt) showTutorialImage(30,12,166,dt) end --Gear.Print("Triggered", 400, 400) end
TutorialPost1229ID.collider.triggered = false
table.insert(triggers, TutorialPost1229ID.collider)
CollisionHandler.AddSphere(TutorialPost1229ID.collider, 4)
TutorialPost1229ID = nil

TutorialPost228ID = {}
TutorialPost228ID.transformID = Transform.Bind()
Transform.SetPosition(TutorialPost228ID.transformID, {x=20.7969, y=6.44531, z=147.75})
Transform.SetScaleNonUniform(TutorialPost228ID.transformID, 1, 1, 1)
Transform.SetRotation(TutorialPost228ID.transformID, {x=0, y=2, z=0})
TutorialPost228ID.model = Assets.LoadModel('Models/SignPost.model')
Gear.AddStaticInstance(TutorialPost228ID.model, TutorialPost228ID.transformID)
TutorialPost228ID.collider = SphereCollider.Create(TutorialPost228ID.transformID)
TutorialPost228ID.collider:SetOffset(2,1,-1)
TutorialPost228ID.collider:SetRadius(3)
TutorialPost228ID.collider.OnExit = function() hideTutorialImage2() print("DD") end 
TutorialPost228ID.collider.OnTriggering = function(dt) showTutorialImage2(10,12,155,dt) end --Gear.Print("Triggered", 400, 400) end
TutorialPost228ID.collider.triggered = false
table.insert(triggers, TutorialPost228ID.collider)
CollisionHandler.AddSphere(TutorialPost228ID.collider, 4)
TutorialPost228ID = nil

table.insert(level01, props)
table.insert(level01, colliders)
table.insert(level01, triggers)
end
level01.unload = function()
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile25ID = {}
tile25ID.transformID = Transform.Bind()
Transform.SetPosition(tile25ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile25ID.transformID, 1, 1, 1)
Transform.SetRotation(tile25ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile25ID)
tile25ID = nil

t2s121ID = {}
t2s121ID.transformID = Transform.Bind()
Transform.SetPosition(t2s121ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s121ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s121ID.transformID, {x=0, y=0, z=0})
t2s121ID.model = Assets.LoadModel('Models/tile2_s1.model')
Gear.AddStaticInstance(t2s121ID.model, t2s121ID.transformID)
table.insert(props,t2s121ID)
t2s121ID = nil

t2s222ID = {}
t2s222ID.transformID = Transform.Bind()
Transform.SetPosition(t2s222ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s222ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s222ID.transformID, {x=0, y=0, z=0})
t2s222ID.model = Assets.LoadModel('Models/tile2_s2.model')
Gear.AddStaticInstance(t2s222ID.model, t2s222ID.transformID)
table.insert(props,t2s222ID)
t2s222ID = nil

t2s323ID = {}
t2s323ID.transformID = Transform.Bind()
Transform.SetPosition(t2s323ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s323ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s323ID.transformID, {x=0, y=0, z=0})
t2s323ID.model = Assets.LoadModel('Models/tile2_s3.model')
Gear.AddStaticInstance(t2s323ID.model, t2s323ID.transformID)
table.insert(props,t2s323ID)
t2s323ID = nil

t2s424ID = {}
t2s424ID.transformID = Transform.Bind()
Transform.SetPosition(t2s424ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s424ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s424ID.transformID, {x=0, y=0, z=0})
t2s424ID.model = Assets.LoadModel('Models/tile2_s4.model')
Gear.AddStaticInstance(t2s424ID.model, t2s424ID.transformID)
table.insert(props,t2s424ID)
t2s424ID = nil

t2s525ID = {}
t2s525ID.transformID = Transform.Bind()
Transform.SetPosition(t2s525ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s525ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s525ID.transformID, {x=0, y=0, z=0})
t2s525ID.model = Assets.LoadModel('Models/tile2_s5.model')
Gear.AddStaticInstance(t2s525ID.model, t2s525ID.transformID)
table.insert(props,t2s525ID)
t2s525ID = nil

t2s626ID = {}
t2s626ID.transformID = Transform.Bind()
Transform.SetPosition(t2s626ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s626ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s626ID.transformID, {x=0, y=0, z=0})
t2s626ID.model = Assets.LoadModel('Models/tile2_s6.model')
Gear.AddStaticInstance(t2s626ID.model, t2s626ID.transformID)
table.insert(props,t2s626ID)
t2s626ID = nil

t2s727ID = {}
t2s727ID.transformID = Transform.Bind()
Transform.SetPosition(t2s727ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s727ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s727ID.transformID, {x=0, y=0, z=0})
t2s727ID.model = Assets.LoadModel('Models/tile2_s7.model')
Gear.AddStaticInstance(t2s727ID.model, t2s727ID.transformID)
table.insert(props,t2s727ID)
t2s727ID = nil

t2s828ID = {}
t2s828ID.transformID = Transform.Bind()
Transform.SetPosition(t2s828ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s828ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s828ID.transformID, {x=0, y=0, z=0})
t2s828ID.model = Assets.LoadModel('Models/tile2_s8.model')
Gear.AddStaticInstance(t2s828ID.model, t2s828ID.transformID)
table.insert(props,t2s828ID)
t2s828ID = nil

t2s929ID = {}
t2s929ID.transformID = Transform.Bind()
Transform.SetPosition(t2s929ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s929ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s929ID.transformID, {x=0, y=0, z=0})
t2s929ID.model = Assets.LoadModel('Models/tile2_s9.model')
Gear.AddStaticInstance(t2s929ID.model, t2s929ID.transformID)
table.insert(props,t2s929ID)
t2s929ID = nil

t2s1030ID = {}
t2s1030ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1030ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1030ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1030ID.transformID, {x=0, y=0, z=0})
t2s1030ID.model = Assets.LoadModel('Models/tile2_s10.model')
Gear.AddStaticInstance(t2s1030ID.model, t2s1030ID.transformID)
table.insert(props,t2s1030ID)
t2s1030ID = nil

t2s11a31ID = {}
t2s11a31ID.transformID = Transform.Bind()
Transform.SetPosition(t2s11a31ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s11a31ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s11a31ID.transformID, {x=0, y=0, z=0})
t2s11a31ID.model = Assets.LoadModel('Models/tile2_s11a.model')
Gear.AddStaticInstance(t2s11a31ID.model, t2s11a31ID.transformID)
table.insert(props,t2s11a31ID)
t2s11a31ID = nil

t2s1232ID = {}
t2s1232ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1232ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1232ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1232ID.transformID, {x=0, y=0, z=0})
t2s1232ID.model = Assets.LoadModel('Models/tile2_s12.model')
Gear.AddStaticInstance(t2s1232ID.model, t2s1232ID.transformID)
table.insert(props,t2s1232ID)
t2s1232ID = nil

t2s1333ID = {}
t2s1333ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1333ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1333ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1333ID.transformID, {x=0, y=0, z=0})
t2s1333ID.model = Assets.LoadModel('Models/tile2_s13.model')
Gear.AddStaticInstance(t2s1333ID.model, t2s1333ID.transformID)
table.insert(props,t2s1333ID)
t2s1333ID = nil

t2s1434ID = {}
t2s1434ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1434ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1434ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1434ID.transformID, {x=0, y=0, z=0})
t2s1434ID.model = Assets.LoadModel('Models/tile2_s14.model')
Gear.AddStaticInstance(t2s1434ID.model, t2s1434ID.transformID)
table.insert(props,t2s1434ID)
t2s1434ID = nil

Tile2_wallNr159ID = {}
Tile2_wallNr159ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr159ID.transformID, {x=132.5, y=34.0803, z=208.5})
Transform.SetScaleNonUniform(Tile2_wallNr159ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr159ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr159ID.collider = OBBCollider.Create(Tile2_wallNr159ID.transformID)
Tile2_wallNr159ID.collider:SetOffset(0,0,0)
Tile2_wallNr159ID.collider:SetZAxis(0.874157,0,-0.485643)
Tile2_wallNr159ID.collider:SetHalfLengths(0.3,5.66843,5.14782)
CollisionHandler.AddOBB(Tile2_wallNr159ID.collider, 3)
table.insert(colliders,Tile2_wallNr159ID)
Tile2_wallNr159ID = nil

Tile2_wallNr1160ID = {}
Tile2_wallNr1160ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr1160ID.transformID, {x=139.5, y=34.7488, z=202.5})
Transform.SetScaleNonUniform(Tile2_wallNr1160ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr1160ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr1160ID.collider = OBBCollider.Create(Tile2_wallNr1160ID.transformID)
Tile2_wallNr1160ID.collider:SetOffset(0,0,0)
Tile2_wallNr1160ID.collider:SetZAxis(0.581238,0,-0.813733)
Tile2_wallNr1160ID.collider:SetHalfLengths(0.3,7.22809,4.30116)
CollisionHandler.AddOBB(Tile2_wallNr1160ID.collider, 3)
table.insert(colliders,Tile2_wallNr1160ID)
Tile2_wallNr1160ID = nil

Tile2_wallNr2161ID = {}
Tile2_wallNr2161ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr2161ID.transformID, {x=143, y=36.9769, z=195.5})
Transform.SetScaleNonUniform(Tile2_wallNr2161ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr2161ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr2161ID.collider = OBBCollider.Create(Tile2_wallNr2161ID.transformID)
Tile2_wallNr2161ID.collider:SetOffset(0,0,0)
Tile2_wallNr2161ID.collider:SetZAxis(0.274721,0,-0.961524)
Tile2_wallNr2161ID.collider:SetHalfLengths(0.3,6.89388,3.64005)
CollisionHandler.AddOBB(Tile2_wallNr2161ID.collider, 3)
table.insert(colliders,Tile2_wallNr2161ID)
Tile2_wallNr2161ID = nil

Tile2_wallNr3162ID = {}
Tile2_wallNr3162ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr3162ID.transformID, {x=143, y=38.8707, z=185})
Transform.SetScaleNonUniform(Tile2_wallNr3162ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr3162ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr3162ID.collider = OBBCollider.Create(Tile2_wallNr3162ID.transformID)
Tile2_wallNr3162ID.collider:SetOffset(0,0,0)
Tile2_wallNr3162ID.collider:SetZAxis(-0.141421,0,-0.98995)
Tile2_wallNr3162ID.collider:SetHalfLengths(0.3,6.67107,7.07107)
CollisionHandler.AddOBB(Tile2_wallNr3162ID.collider, 3)
table.insert(colliders,Tile2_wallNr3162ID)
Tile2_wallNr3162ID = nil

Tile2_wallNr4163ID = {}
Tile2_wallNr4163ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr4163ID.transformID, {x=141, y=40.5418, z=173})
Transform.SetScaleNonUniform(Tile2_wallNr4163ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr4163ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr4163ID.collider = OBBCollider.Create(Tile2_wallNr4163ID.transformID)
Tile2_wallNr4163ID.collider:SetOffset(0,0,0)
Tile2_wallNr4163ID.collider:SetZAxis(-0.196116,0,-0.980581)
Tile2_wallNr4163ID.collider:SetHalfLengths(0.3,8.67635,5.09902)
CollisionHandler.AddOBB(Tile2_wallNr4163ID.collider, 3)
table.insert(colliders,Tile2_wallNr4163ID)
Tile2_wallNr4163ID = nil

Tile2_wallNr5164ID = {}
Tile2_wallNr5164ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr5164ID.transformID, {x=139, y=44.2181, z=162.5})
Transform.SetScaleNonUniform(Tile2_wallNr5164ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr5164ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr5164ID.collider = OBBCollider.Create(Tile2_wallNr5164ID.transformID)
Tile2_wallNr5164ID.collider:SetOffset(0,0,0)
Tile2_wallNr5164ID.collider:SetZAxis(-0.178885,0,-0.98387)
Tile2_wallNr5164ID.collider:SetHalfLengths(0.3,9.56758,5.59017)
CollisionHandler.AddOBB(Tile2_wallNr5164ID.collider, 3)
table.insert(colliders,Tile2_wallNr5164ID)
Tile2_wallNr5164ID = nil

Tile2_wallNr6165ID = {}
Tile2_wallNr6165ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr6165ID.transformID, {x=139.5, y=48.7857, z=153})
Transform.SetScaleNonUniform(Tile2_wallNr6165ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr6165ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr6165ID.collider = OBBCollider.Create(Tile2_wallNr6165ID.transformID)
Tile2_wallNr6165ID.collider:SetOffset(0,0,0)
Tile2_wallNr6165ID.collider:SetZAxis(0.351123,0,-0.936329)
Tile2_wallNr6165ID.collider:SetHalfLengths(0.3,6.44826,4.272)
CollisionHandler.AddOBB(Tile2_wallNr6165ID.collider, 3)
table.insert(colliders,Tile2_wallNr6165ID)
Tile2_wallNr6165ID = nil

Tile2_wallNr7166ID = {}
Tile2_wallNr7166ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr7166ID.transformID, {x=144.5, y=50.234, z=147.5})
Transform.SetScaleNonUniform(Tile2_wallNr7166ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr7166ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr7166ID.collider = OBBCollider.Create(Tile2_wallNr7166ID.transformID)
Tile2_wallNr7166ID.collider:SetOffset(0,0,0)
Tile2_wallNr7166ID.collider:SetZAxis(0.919145,0,-0.393919)
Tile2_wallNr7166ID.collider:SetHalfLengths(0.3,5.22281,3.80789)
CollisionHandler.AddOBB(Tile2_wallNr7166ID.collider, 3)
table.insert(colliders,Tile2_wallNr7166ID)
Tile2_wallNr7166ID = nil

Tile2_wallNr8167ID = {}
Tile2_wallNr8167ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr8167ID.transformID, {x=152, y=50.4568, z=146.5})
Transform.SetScaleNonUniform(Tile2_wallNr8167ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr8167ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr8167ID.collider = OBBCollider.Create(Tile2_wallNr8167ID.transformID)
Tile2_wallNr8167ID.collider:SetOffset(0,0,0)
Tile2_wallNr8167ID.collider:SetZAxis(0.992278,0,0.124035)
Tile2_wallNr8167ID.collider:SetHalfLengths(0.3,5.22281,4.03113)
CollisionHandler.AddOBB(Tile2_wallNr8167ID.collider, 3)
table.insert(colliders,Tile2_wallNr8167ID)
Tile2_wallNr8167ID = nil

Tile2_wallNr9168ID = {}
Tile2_wallNr9168ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr9168ID.transformID, {x=161.5, y=50.234, z=149})
Transform.SetScaleNonUniform(Tile2_wallNr9168ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr9168ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr9168ID.collider = OBBCollider.Create(Tile2_wallNr9168ID.transformID)
Tile2_wallNr9168ID.collider:SetOffset(0,0,0)
Tile2_wallNr9168ID.collider:SetZAxis(0.939793,0,0.341743)
Tile2_wallNr9168ID.collider:SetHalfLengths(0.3,6.89388,5.85235)
CollisionHandler.AddOBB(Tile2_wallNr9168ID.collider, 3)
table.insert(colliders,Tile2_wallNr9168ID)
Tile2_wallNr9168ID = nil

Tile2_wallNr10169ID = {}
Tile2_wallNr10169ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr10169ID.transformID, {x=170, y=52.1279, z=152})
Transform.SetScaleNonUniform(Tile2_wallNr10169ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr10169ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr10169ID.collider = OBBCollider.Create(Tile2_wallNr10169ID.transformID)
Tile2_wallNr10169ID.collider:SetOffset(0,0,0)
Tile2_wallNr10169ID.collider:SetZAxis(0.948683,0,0.316228)
Tile2_wallNr10169ID.collider:SetHalfLengths(0.3,5.66843,3.16228)
CollisionHandler.AddOBB(Tile2_wallNr10169ID.collider, 3)
table.insert(colliders,Tile2_wallNr10169ID)
Tile2_wallNr10169ID = nil

Tile2_wallNr11170ID = {}
Tile2_wallNr11170ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr11170ID.transformID, {x=176.5, y=52.7963, z=152.5})
Transform.SetScaleNonUniform(Tile2_wallNr11170ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr11170ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr11170ID.collider = OBBCollider.Create(Tile2_wallNr11170ID.transformID)
Tile2_wallNr11170ID.collider:SetOffset(0,0,0)
Tile2_wallNr11170ID.collider:SetZAxis(0.98995,0,-0.141421)
Tile2_wallNr11170ID.collider:SetHalfLengths(0.3,6.33685,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr11170ID.collider, 3)
table.insert(colliders,Tile2_wallNr11170ID)
Tile2_wallNr11170ID = nil

Tile2_wallNr12171ID = {}
Tile2_wallNr12171ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr12171ID.transformID, {x=182, y=54.1331, z=150.5})
Transform.SetScaleNonUniform(Tile2_wallNr12171ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr12171ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr12171ID.collider = OBBCollider.Create(Tile2_wallNr12171ID.transformID)
Tile2_wallNr12171ID.collider:SetOffset(0,0,0)
Tile2_wallNr12171ID.collider:SetZAxis(0.8,0,-0.6)
Tile2_wallNr12171ID.collider:SetHalfLengths(0.3,5.66843,2.5)
CollisionHandler.AddOBB(Tile2_wallNr12171ID.collider, 3)
table.insert(colliders,Tile2_wallNr12171ID)
Tile2_wallNr12171ID = nil

Tile2_wallNr13172ID = {}
Tile2_wallNr13172ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr13172ID.transformID, {x=184.5, y=54.8016, z=147.5})
Transform.SetScaleNonUniform(Tile2_wallNr13172ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr13172ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr13172ID.collider = OBBCollider.Create(Tile2_wallNr13172ID.transformID)
Tile2_wallNr13172ID.collider:SetOffset(0,0,0)
Tile2_wallNr13172ID.collider:SetZAxis(0.316228,0,-0.948683)
Tile2_wallNr13172ID.collider:SetHalfLengths(0.3,5.77983,1.58114)
CollisionHandler.AddOBB(Tile2_wallNr13172ID.collider, 3)
table.insert(colliders,Tile2_wallNr13172ID)
Tile2_wallNr13172ID = nil

Tile2_wallNr14173ID = {}
Tile2_wallNr14173ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr14173ID.transformID, {x=186, y=55.5814, z=143.5})
Transform.SetScaleNonUniform(Tile2_wallNr14173ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr14173ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr14173ID.collider = OBBCollider.Create(Tile2_wallNr14173ID.transformID)
Tile2_wallNr14173ID.collider:SetOffset(0,0,0)
Tile2_wallNr14173ID.collider:SetZAxis(0.371391,0,-0.928477)
Tile2_wallNr14173ID.collider:SetHalfLengths(0.3,5.33421,2.69258)
CollisionHandler.AddOBB(Tile2_wallNr14173ID.collider, 3)
table.insert(colliders,Tile2_wallNr14173ID)
Tile2_wallNr14173ID = nil

Tile2_wallNr15174ID = {}
Tile2_wallNr15174ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr15174ID.transformID, {x=187.5, y=55.2472, z=138})
Transform.SetScaleNonUniform(Tile2_wallNr15174ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr15174ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr15174ID.collider = OBBCollider.Create(Tile2_wallNr15174ID.transformID)
Tile2_wallNr15174ID.collider:SetOffset(0,0,0)
Tile2_wallNr15174ID.collider:SetZAxis(0.164399,0,-0.986394)
Tile2_wallNr15174ID.collider:SetHalfLengths(0.3,5,3.04138)
CollisionHandler.AddOBB(Tile2_wallNr15174ID.collider, 3)
table.insert(colliders,Tile2_wallNr15174ID)
Tile2_wallNr15174ID = nil

Tile2_wallNr16175ID = {}
Tile2_wallNr16175ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr16175ID.transformID, {x=187.5, y=55.2472, z=133})
Transform.SetScaleNonUniform(Tile2_wallNr16175ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr16175ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr16175ID.collider = OBBCollider.Create(Tile2_wallNr16175ID.transformID)
Tile2_wallNr16175ID.collider:SetOffset(0,0,0)
Tile2_wallNr16175ID.collider:SetZAxis(-0.242536,0,-0.970143)
Tile2_wallNr16175ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr16175ID.collider, 3)
table.insert(colliders,Tile2_wallNr16175ID)
Tile2_wallNr16175ID = nil

Tile2_wallNr17176ID = {}
Tile2_wallNr17176ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr17176ID.transformID, {x=186.5, y=55.3586, z=129})
Transform.SetScaleNonUniform(Tile2_wallNr17176ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr17176ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr17176ID.collider = OBBCollider.Create(Tile2_wallNr17176ID.transformID)
Tile2_wallNr17176ID.collider:SetOffset(0,0,0)
Tile2_wallNr17176ID.collider:SetZAxis(-0.242536,0,-0.970143)
Tile2_wallNr17176ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr17176ID.collider, 3)
table.insert(colliders,Tile2_wallNr17176ID)
Tile2_wallNr17176ID = nil

Tile2_wallNr18177ID = {}
Tile2_wallNr18177ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr18177ID.transformID, {x=181.5, y=55.2472, z=112})
Transform.SetScaleNonUniform(Tile2_wallNr18177ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr18177ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr18177ID.collider = OBBCollider.Create(Tile2_wallNr18177ID.transformID)
Tile2_wallNr18177ID.collider:SetOffset(0,0,0)
Tile2_wallNr18177ID.collider:SetZAxis(-0.287348,0,-0.957826)
Tile2_wallNr18177ID.collider:SetHalfLengths(0.3,6.55966,15.6605)
CollisionHandler.AddOBB(Tile2_wallNr18177ID.collider, 3)
table.insert(colliders,Tile2_wallNr18177ID)
Tile2_wallNr18177ID = nil

Tile2_wallNr19178ID = {}
Tile2_wallNr19178ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr19178ID.transformID, {x=176.5, y=56.8068, z=92})
Transform.SetScaleNonUniform(Tile2_wallNr19178ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr19178ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr19178ID.collider = OBBCollider.Create(Tile2_wallNr19178ID.transformID)
Tile2_wallNr19178ID.collider:SetOffset(0,0,0)
Tile2_wallNr19178ID.collider:SetZAxis(-0.0995037,0,-0.995037)
Tile2_wallNr19178ID.collider:SetHalfLengths(0.3,5.22281,5.02494)
CollisionHandler.AddOBB(Tile2_wallNr19178ID.collider, 3)
table.insert(colliders,Tile2_wallNr19178ID)
Tile2_wallNr19178ID = nil

Tile2_wallNr20179ID = {}
Tile2_wallNr20179ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr20179ID.transformID, {x=176.5, y=56.584, z=78.5})
Transform.SetScaleNonUniform(Tile2_wallNr20179ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr20179ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr20179ID.collider = OBBCollider.Create(Tile2_wallNr20179ID.transformID)
Tile2_wallNr20179ID.collider:SetOffset(0,0,0)
Tile2_wallNr20179ID.collider:SetZAxis(0.058722,0,-0.998274)
Tile2_wallNr20179ID.collider:SetHalfLengths(0.3,5.33421,8.51469)
CollisionHandler.AddOBB(Tile2_wallNr20179ID.collider, 3)
table.insert(colliders,Tile2_wallNr20179ID)
Tile2_wallNr20179ID = nil

Tile2_wallNr21180ID = {}
Tile2_wallNr21180ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr21180ID.transformID, {x=179, y=56.2498, z=63.5})
Transform.SetScaleNonUniform(Tile2_wallNr21180ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr21180ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr21180ID.collider = OBBCollider.Create(Tile2_wallNr21180ID.transformID)
Tile2_wallNr21180ID.collider:SetOffset(0,0,0)
Tile2_wallNr21180ID.collider:SetZAxis(0.294086,0,-0.955779)
Tile2_wallNr21180ID.collider:SetHalfLengths(0.3,6.67107,6.80074)
CollisionHandler.AddOBB(Tile2_wallNr21180ID.collider, 3)
table.insert(colliders,Tile2_wallNr21180ID)
Tile2_wallNr21180ID = nil

Tile2_wallNr22181ID = {}
Tile2_wallNr22181ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr22181ID.transformID, {x=185, y=54.5788, z=51})
Transform.SetScaleNonUniform(Tile2_wallNr22181ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr22181ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr22181ID.collider = OBBCollider.Create(Tile2_wallNr22181ID.transformID)
Tile2_wallNr22181ID.collider:SetOffset(0,0,0)
Tile2_wallNr22181ID.collider:SetZAxis(0.5547,0,-0.83205)
Tile2_wallNr22181ID.collider:SetHalfLengths(0.3,6.00264,7.2111)
CollisionHandler.AddOBB(Tile2_wallNr22181ID.collider, 3)
table.insert(colliders,Tile2_wallNr22181ID)
Tile2_wallNr22181ID = nil

Tile2_wallNr23182ID = {}
Tile2_wallNr23182ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr23182ID.transformID, {x=194, y=53.5761, z=41.5})
Transform.SetScaleNonUniform(Tile2_wallNr23182ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr23182ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr23182ID.collider = OBBCollider.Create(Tile2_wallNr23182ID.transformID)
Tile2_wallNr23182ID.collider:SetOffset(0,0,0)
Tile2_wallNr23182ID.collider:SetZAxis(0.819232,0,-0.573462)
Tile2_wallNr23182ID.collider:SetHalfLengths(0.3,5.66843,6.10328)
CollisionHandler.AddOBB(Tile2_wallNr23182ID.collider, 3)
table.insert(colliders,Tile2_wallNr23182ID)
Tile2_wallNr23182ID = nil

Tile2_wallNr24183ID = {}
Tile2_wallNr24183ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr24183ID.transformID, {x=202.5, y=52.9077, z=36})
Transform.SetScaleNonUniform(Tile2_wallNr24183ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr24183ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr24183ID.collider = OBBCollider.Create(Tile2_wallNr24183ID.transformID)
Tile2_wallNr24183ID.collider:SetOffset(0,0,0)
Tile2_wallNr24183ID.collider:SetZAxis(0.868243,0,-0.496139)
Tile2_wallNr24183ID.collider:SetHalfLengths(0.3,5.89124,4.03113)
CollisionHandler.AddOBB(Tile2_wallNr24183ID.collider, 3)
table.insert(colliders,Tile2_wallNr24183ID)
Tile2_wallNr24183ID = nil

Tile2_wallNr25184ID = {}
Tile2_wallNr25184ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr25184ID.transformID, {x=215.5, y=52.0165, z=34.5})
Transform.SetScaleNonUniform(Tile2_wallNr25184ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr25184ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr25184ID.collider = OBBCollider.Create(Tile2_wallNr25184ID.transformID)
Tile2_wallNr25184ID.collider:SetOffset(0,0,0)
Tile2_wallNr25184ID.collider:SetZAxis(0.998618,0,0.0525588)
Tile2_wallNr25184ID.collider:SetHalfLengths(0.3,9.01056,9.51315)
CollisionHandler.AddOBB(Tile2_wallNr25184ID.collider, 3)
table.insert(colliders,Tile2_wallNr25184ID)
Tile2_wallNr25184ID = nil

Tile2_wallNr26185ID = {}
Tile2_wallNr26185ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr26185ID.transformID, {x=235, y=48.0059, z=36.5})
Transform.SetScaleNonUniform(Tile2_wallNr26185ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr26185ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr26185ID.collider = OBBCollider.Create(Tile2_wallNr26185ID.transformID)
Tile2_wallNr26185ID.collider:SetOffset(0,0,0)
Tile2_wallNr26185ID.collider:SetZAxis(0.988936,0,0.14834)
Tile2_wallNr26185ID.collider:SetHalfLengths(0.3,7.78511,10.1119)
CollisionHandler.AddOBB(Tile2_wallNr26185ID.collider, 3)
table.insert(colliders,Tile2_wallNr26185ID)
Tile2_wallNr26185ID = nil

Tile2_wallNr27186ID = {}
Tile2_wallNr27186ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr27186ID.transformID, {x=260.5, y=45.2208, z=45.5})
Transform.SetScaleNonUniform(Tile2_wallNr27186ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr27186ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr27186ID.collider = OBBCollider.Create(Tile2_wallNr27186ID.transformID)
Tile2_wallNr27186ID.collider:SetOffset(0,0,0)
Tile2_wallNr27186ID.collider:SetZAxis(0.900159,0,0.435561)
Tile2_wallNr27186ID.collider:SetHalfLengths(0.3,9.23337,17.2192)
CollisionHandler.AddOBB(Tile2_wallNr27186ID.collider, 3)
table.insert(colliders,Tile2_wallNr27186ID)
Tile2_wallNr27186ID = nil

Tile2_wallNr28187ID = {}
Tile2_wallNr28187ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr28187ID.transformID, {x=283, y=40.9874, z=60})
Transform.SetScaleNonUniform(Tile2_wallNr28187ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr28187ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr28187ID.collider = OBBCollider.Create(Tile2_wallNr28187ID.transformID)
Tile2_wallNr28187ID.collider:SetOffset(0,0,0)
Tile2_wallNr28187ID.collider:SetZAxis(0.707107,0,0.707107)
Tile2_wallNr28187ID.collider:SetHalfLengths(0.3,5.33421,9.8995)
CollisionHandler.AddOBB(Tile2_wallNr28187ID.collider, 3)
table.insert(colliders,Tile2_wallNr28187ID)
Tile2_wallNr28187ID = nil

Tile2_wallNr29188ID = {}
Tile2_wallNr29188ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr29188ID.transformID, {x=299.5, y=41.3216, z=79})
Transform.SetScaleNonUniform(Tile2_wallNr29188ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr29188ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr29188ID.collider = OBBCollider.Create(Tile2_wallNr29188ID.transformID)
Tile2_wallNr29188ID.collider:SetOffset(0,0,0)
Tile2_wallNr29188ID.collider:SetZAxis(0.620703,0,0.784046)
Tile2_wallNr29188ID.collider:SetHalfLengths(0.3,6.33685,15.3052)
CollisionHandler.AddOBB(Tile2_wallNr29188ID.collider, 3)
table.insert(colliders,Tile2_wallNr29188ID)
Tile2_wallNr29188ID = nil

Tile2_wallNr30189ID = {}
Tile2_wallNr30189ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr30189ID.transformID, {x=312, y=42.6585, z=94})
Transform.SetScaleNonUniform(Tile2_wallNr30189ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr30189ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr30189ID.collider = OBBCollider.Create(Tile2_wallNr30189ID.transformID)
Tile2_wallNr30189ID.collider:SetOffset(0,0,0)
Tile2_wallNr30189ID.collider:SetZAxis(0.707107,0,0.707107)
Tile2_wallNr30189ID.collider:SetHalfLengths(0.3,6.33685,4.24264)
CollisionHandler.AddOBB(Tile2_wallNr30189ID.collider, 3)
table.insert(colliders,Tile2_wallNr30189ID)
Tile2_wallNr30189ID = nil

Tile2_wallNr31190ID = {}
Tile2_wallNr31190ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr31190ID.transformID, {x=318, y=42.1015, z=102})
Transform.SetScaleNonUniform(Tile2_wallNr31190ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr31190ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr31190ID.collider = OBBCollider.Create(Tile2_wallNr31190ID.transformID)
Tile2_wallNr31190ID.collider:SetOffset(0,0,0)
Tile2_wallNr31190ID.collider:SetZAxis(0.624695,0,0.780869)
Tile2_wallNr31190ID.collider:SetHalfLengths(0.3,9.67899,6.40312)
CollisionHandler.AddOBB(Tile2_wallNr31190ID.collider, 3)
table.insert(colliders,Tile2_wallNr31190ID)
Tile2_wallNr31190ID = nil

Tile2_wallNr32191ID = {}
Tile2_wallNr32191ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr32191ID.transformID, {x=329, y=37.4225, z=113.5})
Transform.SetScaleNonUniform(Tile2_wallNr32191ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr32191ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr32191ID.collider = OBBCollider.Create(Tile2_wallNr32191ID.transformID)
Tile2_wallNr32191ID.collider:SetOffset(0,0,0)
Tile2_wallNr32191ID.collider:SetZAxis(0.732794,0,0.680451)
Tile2_wallNr32191ID.collider:SetHalfLengths(0.3,5.33421,9.55249)
CollisionHandler.AddOBB(Tile2_wallNr32191ID.collider, 3)
table.insert(colliders,Tile2_wallNr32191ID)
Tile2_wallNr32191ID = nil

Tile2_wallNr33192ID = {}
Tile2_wallNr33192ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr33192ID.transformID, {x=343, y=37.0883, z=130})
Transform.SetScaleNonUniform(Tile2_wallNr33192ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr33192ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr33192ID.collider = OBBCollider.Create(Tile2_wallNr33192ID.transformID)
Tile2_wallNr33192ID.collider:SetOffset(0,0,0)
Tile2_wallNr33192ID.collider:SetZAxis(0.573462,0,0.819232)
Tile2_wallNr33192ID.collider:SetHalfLengths(0.3,6.78247,12.2066)
CollisionHandler.AddOBB(Tile2_wallNr33192ID.collider, 3)
table.insert(colliders,Tile2_wallNr33192ID)
Tile2_wallNr33192ID = nil

Tile2_wallNr34193ID = {}
Tile2_wallNr34193ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr34193ID.transformID, {x=354, y=38.8707, z=142.5})
Transform.SetScaleNonUniform(Tile2_wallNr34193ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr34193ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr34193ID.collider = OBBCollider.Create(Tile2_wallNr34193ID.transformID)
Tile2_wallNr34193ID.collider:SetOffset(0,0,0)
Tile2_wallNr34193ID.collider:SetZAxis(0.847998,0,0.529999)
Tile2_wallNr34193ID.collider:SetHalfLengths(0.3,5.22281,4.71699)
CollisionHandler.AddOBB(Tile2_wallNr34193ID.collider, 3)
table.insert(colliders,Tile2_wallNr34193ID)
Tile2_wallNr34193ID = nil

Tile2_wallNr35194ID = {}
Tile2_wallNr35194ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr35194ID.transformID, {x=363, y=38.6479, z=146})
Transform.SetScaleNonUniform(Tile2_wallNr35194ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr35194ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr35194ID.collider = OBBCollider.Create(Tile2_wallNr35194ID.transformID)
Tile2_wallNr35194ID.collider:SetOffset(0,0,0)
Tile2_wallNr35194ID.collider:SetZAxis(0.980581,0,0.196116)
Tile2_wallNr35194ID.collider:SetHalfLengths(0.3,5.33421,5.09902)
CollisionHandler.AddOBB(Tile2_wallNr35194ID.collider, 3)
table.insert(colliders,Tile2_wallNr35194ID)
Tile2_wallNr35194ID = nil

Tile2_wallNr36195ID = {}
Tile2_wallNr36195ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr36195ID.transformID, {x=372, y=38.3137, z=147})
Transform.SetScaleNonUniform(Tile2_wallNr36195ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr36195ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr36195ID.collider = OBBCollider.Create(Tile2_wallNr36195ID.transformID)
Tile2_wallNr36195ID.collider:SetOffset(0,0,0)
Tile2_wallNr36195ID.collider:SetZAxis(1,0,0)
Tile2_wallNr36195ID.collider:SetHalfLengths(0.3,6.11404,4)
CollisionHandler.AddOBB(Tile2_wallNr36195ID.collider, 3)
table.insert(colliders,Tile2_wallNr36195ID)
Tile2_wallNr36195ID = nil

Tile2_wallNr37196ID = {}
Tile2_wallNr37196ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr37196ID.transformID, {x=380, y=37.1997, z=147})
Transform.SetScaleNonUniform(Tile2_wallNr37196ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr37196ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr37196ID.collider = OBBCollider.Create(Tile2_wallNr37196ID.transformID)
Tile2_wallNr37196ID.collider:SetOffset(0,0,0)
Tile2_wallNr37196ID.collider:SetZAxis(1,0,0)
Tile2_wallNr37196ID.collider:SetHalfLengths(0.3,6.11404,4)
CollisionHandler.AddOBB(Tile2_wallNr37196ID.collider, 3)
table.insert(colliders,Tile2_wallNr37196ID)
Tile2_wallNr37196ID = nil

Tile2_wallNr38197ID = {}
Tile2_wallNr38197ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr38197ID.transformID, {x=132, y=33.8575, z=223.5})
Transform.SetScaleNonUniform(Tile2_wallNr38197ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr38197ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr38197ID.collider = OBBCollider.Create(Tile2_wallNr38197ID.transformID)
Tile2_wallNr38197ID.collider:SetOffset(0,0,0)
Tile2_wallNr38197ID.collider:SetZAxis(0.992278,0,-0.124035)
Tile2_wallNr38197ID.collider:SetHalfLengths(0.3,6.67107,4.03113)
CollisionHandler.AddOBB(Tile2_wallNr38197ID.collider, 3)
table.insert(colliders,Tile2_wallNr38197ID)
Tile2_wallNr38197ID = nil

Tile2_wallNr39198ID = {}
Tile2_wallNr39198ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr39198ID.transformID, {x=138.5, y=35.5286, z=222})
Transform.SetScaleNonUniform(Tile2_wallNr39198ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr39198ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr39198ID.collider = OBBCollider.Create(Tile2_wallNr39198ID.transformID)
Tile2_wallNr39198ID.collider:SetOffset(0,0,0)
Tile2_wallNr39198ID.collider:SetZAxis(0.928477,0,-0.371391)
Tile2_wallNr39198ID.collider:SetHalfLengths(0.3,5.33422,2.69258)
CollisionHandler.AddOBB(Tile2_wallNr39198ID.collider, 3)
table.insert(colliders,Tile2_wallNr39198ID)
Tile2_wallNr39198ID = nil

Tile2_wallNr40199ID = {}
Tile2_wallNr40199ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr40199ID.transformID, {x=143, y=35.1944, z=220.5})
Transform.SetScaleNonUniform(Tile2_wallNr40199ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr40199ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr40199ID.collider = OBBCollider.Create(Tile2_wallNr40199ID.transformID)
Tile2_wallNr40199ID.collider:SetOffset(0,0,0)
Tile2_wallNr40199ID.collider:SetZAxis(0.970143,0,-0.242536)
Tile2_wallNr40199ID.collider:SetHalfLengths(0.3,5,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr40199ID.collider, 3)
table.insert(colliders,Tile2_wallNr40199ID)
Tile2_wallNr40199ID = nil

Tile2_wallNr41200ID = {}
Tile2_wallNr41200ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr41200ID.transformID, {x=146.5, y=35.1944, z=221.5})
Transform.SetScaleNonUniform(Tile2_wallNr41200ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr41200ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr41200ID.collider = OBBCollider.Create(Tile2_wallNr41200ID.transformID)
Tile2_wallNr41200ID.collider:SetOffset(0,0,0)
Tile2_wallNr41200ID.collider:SetZAxis(0.707107,0,0.707107)
Tile2_wallNr41200ID.collider:SetHalfLengths(0.3,5.89124,2.12132)
CollisionHandler.AddOBB(Tile2_wallNr41200ID.collider, 3)
table.insert(colliders,Tile2_wallNr41200ID)
Tile2_wallNr41200ID = nil

Tile2_wallNr42201ID = {}
Tile2_wallNr42201ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr42201ID.transformID, {x=148.5, y=36.0856, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr42201ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr42201ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr42201ID.collider = OBBCollider.Create(Tile2_wallNr42201ID.transformID)
Tile2_wallNr42201ID.collider:SetOffset(0,0,0)
Tile2_wallNr42201ID.collider:SetZAxis(0.0995037,0,0.995037)
Tile2_wallNr42201ID.collider:SetHalfLengths(0.3,6.00264,5.02494)
CollisionHandler.AddOBB(Tile2_wallNr42201ID.collider, 3)
table.insert(colliders,Tile2_wallNr42201ID)
Tile2_wallNr42201ID = nil

Tile2_wallNr43202ID = {}
Tile2_wallNr43202ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr43202ID.transformID, {x=149.5, y=37.0883, z=236.5})
Transform.SetScaleNonUniform(Tile2_wallNr43202ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr43202ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr43202ID.collider = OBBCollider.Create(Tile2_wallNr43202ID.transformID)
Tile2_wallNr43202ID.collider:SetOffset(0,0,0)
Tile2_wallNr43202ID.collider:SetZAxis(0.141421,0,0.98995)
Tile2_wallNr43202ID.collider:SetHalfLengths(0.3,5.1114,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr43202ID.collider, 3)
table.insert(colliders,Tile2_wallNr43202ID)
Tile2_wallNr43202ID = nil

Tile2_wallNr44203ID = {}
Tile2_wallNr44203ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr44203ID.transformID, {x=150, y=37.1997, z=241.5})
Transform.SetScaleNonUniform(Tile2_wallNr44203ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr44203ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr44203ID.collider = OBBCollider.Create(Tile2_wallNr44203ID.transformID)
Tile2_wallNr44203ID.collider:SetOffset(0,0,0)
Tile2_wallNr44203ID.collider:SetZAxis(0,0,1)
Tile2_wallNr44203ID.collider:SetHalfLengths(0.3,5,1.5)
CollisionHandler.AddOBB(Tile2_wallNr44203ID.collider, 3)
table.insert(colliders,Tile2_wallNr44203ID)
Tile2_wallNr44203ID = nil

Tile2_wallNr45204ID = {}
Tile2_wallNr45204ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr45204ID.transformID, {x=158.5, y=37.1997, z=246.5})
Transform.SetScaleNonUniform(Tile2_wallNr45204ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr45204ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr45204ID.collider = OBBCollider.Create(Tile2_wallNr45204ID.transformID)
Tile2_wallNr45204ID.collider:SetOffset(0,0,0)
Tile2_wallNr45204ID.collider:SetZAxis(0.924678,0,0.38075)
Tile2_wallNr45204ID.collider:SetHalfLengths(0.3,10.9044,9.19239)
CollisionHandler.AddOBB(Tile2_wallNr45204ID.collider, 3)
table.insert(colliders,Tile2_wallNr45204ID)
Tile2_wallNr45204ID = nil

Tile2_wallNr46205ID = {}
Tile2_wallNr46205ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr46205ID.transformID, {x=173, y=43.1041, z=251})
Transform.SetScaleNonUniform(Tile2_wallNr46205ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr46205ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr46205ID.collider = OBBCollider.Create(Tile2_wallNr46205ID.transformID)
Tile2_wallNr46205ID.collider:SetOffset(0,0,0)
Tile2_wallNr46205ID.collider:SetZAxis(0.986394,0,0.164399)
Tile2_wallNr46205ID.collider:SetHalfLengths(0.3,9.01056,6.08276)
CollisionHandler.AddOBB(Tile2_wallNr46205ID.collider, 3)
table.insert(colliders,Tile2_wallNr46205ID)
Tile2_wallNr46205ID = nil

Tile2_wallNr47206ID = {}
Tile2_wallNr47206ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr47206ID.transformID, {x=182.5, y=47.1147, z=250.5})
Transform.SetScaleNonUniform(Tile2_wallNr47206ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr47206ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr47206ID.collider = OBBCollider.Create(Tile2_wallNr47206ID.transformID)
Tile2_wallNr47206ID.collider:SetOffset(0,0,0)
Tile2_wallNr47206ID.collider:SetZAxis(0.919145,0,-0.393919)
Tile2_wallNr47206ID.collider:SetHalfLengths(0.3,8.45354,3.80789)
CollisionHandler.AddOBB(Tile2_wallNr47206ID.collider, 3)
table.insert(colliders,Tile2_wallNr47206ID)
Tile2_wallNr47206ID = nil

Tile2_wallNr48207ID = {}
Tile2_wallNr48207ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr48207ID.transformID, {x=189, y=50.5682, z=246.5})
Transform.SetScaleNonUniform(Tile2_wallNr48207ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr48207ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr48207ID.collider = OBBCollider.Create(Tile2_wallNr48207ID.transformID)
Tile2_wallNr48207ID.collider:SetOffset(0,0,0)
Tile2_wallNr48207ID.collider:SetZAxis(0.768221,0,-0.640184)
Tile2_wallNr48207ID.collider:SetHalfLengths(0.3,5.89124,3.90512)
CollisionHandler.AddOBB(Tile2_wallNr48207ID.collider, 3)
table.insert(colliders,Tile2_wallNr48207ID)
Tile2_wallNr48207ID = nil

Tile2_wallNr49208ID = {}
Tile2_wallNr49208ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr49208ID.transformID, {x=194.5, y=51.4594, z=244})
Transform.SetScaleNonUniform(Tile2_wallNr49208ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr49208ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr49208ID.collider = OBBCollider.Create(Tile2_wallNr49208ID.transformID)
Tile2_wallNr49208ID.collider:SetOffset(0,0,0)
Tile2_wallNr49208ID.collider:SetZAxis(1,0,0)
Tile2_wallNr49208ID.collider:SetHalfLengths(0.3,6.78247,2.5)
CollisionHandler.AddOBB(Tile2_wallNr49208ID.collider, 3)
table.insert(colliders,Tile2_wallNr49208ID)
Tile2_wallNr49208ID = nil

Tile2_wallNr50209ID = {}
Tile2_wallNr50209ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr50209ID.transformID, {x=200.5, y=53.2419, z=244.5})
Transform.SetScaleNonUniform(Tile2_wallNr50209ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr50209ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr50209ID.collider = OBBCollider.Create(Tile2_wallNr50209ID.transformID)
Tile2_wallNr50209ID.collider:SetOffset(0,0,0)
Tile2_wallNr50209ID.collider:SetZAxis(0.98995,0,0.141421)
Tile2_wallNr50209ID.collider:SetHalfLengths(0.3,7.00528,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr50209ID.collider, 3)
table.insert(colliders,Tile2_wallNr50209ID)
Tile2_wallNr50209ID = nil

Tile2_wallNr51210ID = {}
Tile2_wallNr51210ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr51210ID.transformID, {x=207, y=55.2472, z=245.5})
Transform.SetScaleNonUniform(Tile2_wallNr51210ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr51210ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr51210ID.collider = OBBCollider.Create(Tile2_wallNr51210ID.transformID)
Tile2_wallNr51210ID.collider:SetOffset(0,0,0)
Tile2_wallNr51210ID.collider:SetZAxis(0.986394,0,0.164399)
Tile2_wallNr51210ID.collider:SetHalfLengths(0.3,6.44826,3.04138)
CollisionHandler.AddOBB(Tile2_wallNr51210ID.collider, 3)
table.insert(colliders,Tile2_wallNr51210ID)
Tile2_wallNr51210ID = nil

Tile2_wallNr52211ID = {}
Tile2_wallNr52211ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr52211ID.transformID, {x=212.5, y=56.6954, z=247})
Transform.SetScaleNonUniform(Tile2_wallNr52211ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr52211ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr52211ID.collider = OBBCollider.Create(Tile2_wallNr52211ID.transformID)
Tile2_wallNr52211ID.collider:SetOffset(0,0,0)
Tile2_wallNr52211ID.collider:SetZAxis(0.928477,0,0.371391)
Tile2_wallNr52211ID.collider:SetHalfLengths(0.3,7.22809,2.69258)
CollisionHandler.AddOBB(Tile2_wallNr52211ID.collider, 3)
table.insert(colliders,Tile2_wallNr52211ID)
Tile2_wallNr52211ID = nil

Tile2_wallNr53212ID = {}
Tile2_wallNr53212ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr53212ID.transformID, {x=217.5, y=58.9235, z=249.5})
Transform.SetScaleNonUniform(Tile2_wallNr53212ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr53212ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr53212ID.collider = OBBCollider.Create(Tile2_wallNr53212ID.transformID)
Tile2_wallNr53212ID.collider:SetOffset(0,0,0)
Tile2_wallNr53212ID.collider:SetZAxis(0.857493,0,0.514496)
Tile2_wallNr53212ID.collider:SetHalfLengths(0.3,5.77983,2.91548)
CollisionHandler.AddOBB(Tile2_wallNr53212ID.collider, 3)
table.insert(colliders,Tile2_wallNr53212ID)
Tile2_wallNr53212ID = nil

Tile2_wallNr54213ID = {}
Tile2_wallNr54213ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr54213ID.transformID, {x=221.5, y=59.7034, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr54213ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr54213ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr54213ID.collider = OBBCollider.Create(Tile2_wallNr54213ID.transformID)
Tile2_wallNr54213ID.collider:SetOffset(0,0,0)
Tile2_wallNr54213ID.collider:SetZAxis(0.707107,0,0.707107)
Tile2_wallNr54213ID.collider:SetHalfLengths(0.3,5.55702,2.12132)
CollisionHandler.AddOBB(Tile2_wallNr54213ID.collider, 3)
table.insert(colliders,Tile2_wallNr54213ID)
Tile2_wallNr54213ID = nil

Tile2_wallNr55214ID = {}
Tile2_wallNr55214ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr55214ID.transformID, {x=227.5, y=60.2604, z=253.5})
Transform.SetScaleNonUniform(Tile2_wallNr55214ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr55214ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr55214ID.collider = OBBCollider.Create(Tile2_wallNr55214ID.transformID)
Tile2_wallNr55214ID.collider:SetOffset(0,0,0)
Tile2_wallNr55214ID.collider:SetZAxis(0.993884,0,-0.110432)
Tile2_wallNr55214ID.collider:SetHalfLengths(0.3,5.1114,4.52769)
CollisionHandler.AddOBB(Tile2_wallNr55214ID.collider, 3)
table.insert(colliders,Tile2_wallNr55214ID)
Tile2_wallNr55214ID = nil

Tile2_wallNr56215ID = {}
Tile2_wallNr56215ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr56215ID.transformID, {x=236.5, y=60.149, z=252})
Transform.SetScaleNonUniform(Tile2_wallNr56215ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr56215ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr56215ID.collider = OBBCollider.Create(Tile2_wallNr56215ID.transformID)
Tile2_wallNr56215ID.collider:SetOffset(0,0,0)
Tile2_wallNr56215ID.collider:SetZAxis(0.976187,0,-0.21693)
Tile2_wallNr56215ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
CollisionHandler.AddOBB(Tile2_wallNr56215ID.collider, 3)
table.insert(colliders,Tile2_wallNr56215ID)
Tile2_wallNr56215ID = nil

Tile2_wallNr57216ID = {}
Tile2_wallNr57216ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr57216ID.transformID, {x=246.5, y=60.3718, z=250})
Transform.SetScaleNonUniform(Tile2_wallNr57216ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr57216ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr57216ID.collider = OBBCollider.Create(Tile2_wallNr57216ID.transformID)
Tile2_wallNr57216ID.collider:SetOffset(0,0,0)
Tile2_wallNr57216ID.collider:SetZAxis(0.98387,0,-0.178885)
Tile2_wallNr57216ID.collider:SetHalfLengths(0.3,5.44562,5.59017)
CollisionHandler.AddOBB(Tile2_wallNr57216ID.collider, 3)
table.insert(colliders,Tile2_wallNr57216ID)
Tile2_wallNr57216ID = nil

Tile2_wallNr58217ID = {}
Tile2_wallNr58217ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr58217ID.transformID, {x=259.5, y=59.9262, z=249.5})
Transform.SetScaleNonUniform(Tile2_wallNr58217ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr58217ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr58217ID.collider = OBBCollider.Create(Tile2_wallNr58217ID.transformID)
Tile2_wallNr58217ID.collider:SetOffset(0,0,0)
Tile2_wallNr58217ID.collider:SetZAxis(0.997785,0,0.066519)
Tile2_wallNr58217ID.collider:SetHalfLengths(0.3,5.1114,7.51665)
CollisionHandler.AddOBB(Tile2_wallNr58217ID.collider, 3)
table.insert(colliders,Tile2_wallNr58217ID)
Tile2_wallNr58217ID = nil

Tile2_wallNr59218ID = {}
Tile2_wallNr59218ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr59218ID.transformID, {x=274, y=60.0376, z=251})
Transform.SetScaleNonUniform(Tile2_wallNr59218ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr59218ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr59218ID.collider = OBBCollider.Create(Tile2_wallNr59218ID.transformID)
Tile2_wallNr59218ID.collider:SetOffset(0,0,0)
Tile2_wallNr59218ID.collider:SetZAxis(0.98995,0,0.141421)
Tile2_wallNr59218ID.collider:SetHalfLengths(0.3,5.33421,7.07107)
CollisionHandler.AddOBB(Tile2_wallNr59218ID.collider, 3)
table.insert(colliders,Tile2_wallNr59218ID)
Tile2_wallNr59218ID = nil

Tile2_wallNr60219ID = {}
Tile2_wallNr60219ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr60219ID.transformID, {x=287.5, y=59.7034, z=252})
Transform.SetScaleNonUniform(Tile2_wallNr60219ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr60219ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr60219ID.collider = OBBCollider.Create(Tile2_wallNr60219ID.transformID)
Tile2_wallNr60219ID.collider:SetOffset(0,0,0)
Tile2_wallNr60219ID.collider:SetZAxis(1,0,0)
Tile2_wallNr60219ID.collider:SetHalfLengths(0.3,6.11405,6.5)
CollisionHandler.AddOBB(Tile2_wallNr60219ID.collider, 3)
table.insert(colliders,Tile2_wallNr60219ID)
Tile2_wallNr60219ID = nil

Tile2_wallNr61220ID = {}
Tile2_wallNr61220ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr61220ID.transformID, {x=296, y=58.5893, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr61220ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr61220ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr61220ID.collider = OBBCollider.Create(Tile2_wallNr61220ID.transformID)
Tile2_wallNr61220ID.collider:SetOffset(0,0,0)
Tile2_wallNr61220ID.collider:SetZAxis(0.970143,0,0.242536)
Tile2_wallNr61220ID.collider:SetHalfLengths(0.3,8.45354,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr61220ID.collider, 3)
table.insert(colliders,Tile2_wallNr61220ID)
Tile2_wallNr61220ID = nil

Tile2_wallNr62221ID = {}
Tile2_wallNr62221ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr62221ID.transformID, {x=299, y=55.1358, z=254})
Transform.SetScaleNonUniform(Tile2_wallNr62221ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr62221ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr62221ID.collider = OBBCollider.Create(Tile2_wallNr62221ID.transformID)
Tile2_wallNr62221ID.collider:SetOffset(0,0,0)
Tile2_wallNr62221ID.collider:SetZAxis(0.707107,0,0.707107)
Tile2_wallNr62221ID.collider:SetHalfLengths(0.3,5.1114,1.41421)
CollisionHandler.AddOBB(Tile2_wallNr62221ID.collider, 3)
table.insert(colliders,Tile2_wallNr62221ID)
Tile2_wallNr62221ID = nil

Tile2_wallNr63222ID = {}
Tile2_wallNr63222ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr63222ID.transformID, {x=307, y=55.2472, z=255})
Transform.SetScaleNonUniform(Tile2_wallNr63222ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr63222ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr63222ID.collider = OBBCollider.Create(Tile2_wallNr63222ID.transformID)
Tile2_wallNr63222ID.collider:SetOffset(0,0,0)
Tile2_wallNr63222ID.collider:SetZAxis(1,0,0)
Tile2_wallNr63222ID.collider:SetHalfLengths(0.3,9.01056,7)
CollisionHandler.AddOBB(Tile2_wallNr63222ID.collider, 3)
table.insert(colliders,Tile2_wallNr63222ID)
Tile2_wallNr63222ID = nil

Tile2_wallNr64223ID = {}
Tile2_wallNr64223ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr64223ID.transformID, {x=314, y=51.2366, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr64223ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr64223ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr64223ID.collider = OBBCollider.Create(Tile2_wallNr64223ID.transformID)
Tile2_wallNr64223ID.collider:SetOffset(0,0,0)
Tile2_wallNr64223ID.collider:SetZAxis(0,0,-1)
Tile2_wallNr64223ID.collider:SetHalfLengths(0.3,5.66843,2.5)
CollisionHandler.AddOBB(Tile2_wallNr64223ID.collider, 3)
table.insert(colliders,Tile2_wallNr64223ID)
Tile2_wallNr64223ID = nil

Tile2_wallNr65224ID = {}
Tile2_wallNr65224ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr65224ID.transformID, {x=313.5, y=50.5682, z=248})
Transform.SetScaleNonUniform(Tile2_wallNr65224ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr65224ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr65224ID.collider = OBBCollider.Create(Tile2_wallNr65224ID.transformID)
Tile2_wallNr65224ID.collider:SetOffset(0,0,0)
Tile2_wallNr65224ID.collider:SetZAxis(-0.242536,0,-0.970143)
Tile2_wallNr65224ID.collider:SetHalfLengths(0.3,5.44562,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr65224ID.collider, 3)
table.insert(colliders,Tile2_wallNr65224ID)
Tile2_wallNr65224ID = nil

Tile2_wallNr87225ID = {}
Tile2_wallNr87225ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr87225ID.transformID, {x=234.5, y=57.1411, z=234.5})
Transform.SetScaleNonUniform(Tile2_wallNr87225ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr87225ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr87225ID.collider = OBBCollider.Create(Tile2_wallNr87225ID.transformID)
Tile2_wallNr87225ID.collider:SetOffset(0,0,0)
Tile2_wallNr87225ID.collider:SetZAxis(0.98995,0,0.141421)
Tile2_wallNr87225ID.collider:SetHalfLengths(0.3,5.66843,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr87225ID.collider, 3)
table.insert(colliders,Tile2_wallNr87225ID)
Tile2_wallNr87225ID = nil

Tile2_wallNr88226ID = {}
Tile2_wallNr88226ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr88226ID.transformID, {x=241, y=57.8095, z=233.5})
Transform.SetScaleNonUniform(Tile2_wallNr88226ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr88226ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr88226ID.collider = OBBCollider.Create(Tile2_wallNr88226ID.transformID)
Tile2_wallNr88226ID.collider:SetOffset(0,0,0)
Tile2_wallNr88226ID.collider:SetZAxis(0.894427,0,-0.447214)
Tile2_wallNr88226ID.collider:SetHalfLengths(0.3,5.22281,3.3541)
CollisionHandler.AddOBB(Tile2_wallNr88226ID.collider, 3)
table.insert(colliders,Tile2_wallNr88226ID)
Tile2_wallNr88226ID = nil

Tile2_wallNr89227ID = {}
Tile2_wallNr89227ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr89227ID.transformID, {x=247.5, y=57.5867, z=231.5})
Transform.SetScaleNonUniform(Tile2_wallNr89227ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr89227ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr89227ID.collider = OBBCollider.Create(Tile2_wallNr89227ID.transformID)
Tile2_wallNr89227ID.collider:SetOffset(0,0,0)
Tile2_wallNr89227ID.collider:SetZAxis(0.98995,0,-0.141421)
Tile2_wallNr89227ID.collider:SetHalfLengths(0.3,5.22281,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr89227ID.collider, 3)
table.insert(colliders,Tile2_wallNr89227ID)
Tile2_wallNr89227ID = nil

Tile2_wallNr90228ID = {}
Tile2_wallNr90228ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr90228ID.transformID, {x=259, y=57.8095, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr90228ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr90228ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr90228ID.collider = OBBCollider.Create(Tile2_wallNr90228ID.transformID)
Tile2_wallNr90228ID.collider:SetOffset(0,0,0)
Tile2_wallNr90228ID.collider:SetZAxis(0.992278,0,0.124035)
Tile2_wallNr90228ID.collider:SetHalfLengths(0.3,6.00264,8.06226)
CollisionHandler.AddOBB(Tile2_wallNr90228ID.collider, 3)
table.insert(colliders,Tile2_wallNr90228ID)
Tile2_wallNr90228ID = nil

Tile2_wallNr91229ID = {}
Tile2_wallNr91229ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr91229ID.transformID, {x=277, y=56.8068, z=233.5})
Transform.SetScaleNonUniform(Tile2_wallNr91229ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr91229ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr91229ID.collider = OBBCollider.Create(Tile2_wallNr91229ID.transformID)
Tile2_wallNr91229ID.collider:SetOffset(0,0,0)
Tile2_wallNr91229ID.collider:SetZAxis(0.998752,0,0.0499376)
Tile2_wallNr91229ID.collider:SetHalfLengths(0.3,5.77983,10.0125)
CollisionHandler.AddOBB(Tile2_wallNr91229ID.collider, 3)
table.insert(colliders,Tile2_wallNr91229ID)
Tile2_wallNr91229ID = nil

Tile2_wallNr92230ID = {}
Tile2_wallNr92230ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr92230ID.transformID, {x=295, y=56.027, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr92230ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr92230ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr92230ID.collider = OBBCollider.Create(Tile2_wallNr92230ID.transformID)
Tile2_wallNr92230ID.collider:SetOffset(0,0,0)
Tile2_wallNr92230ID.collider:SetZAxis(0.970143,0,-0.242536)
Tile2_wallNr92230ID.collider:SetHalfLengths(0.3,11.2386,8.24621)
CollisionHandler.AddOBB(Tile2_wallNr92230ID.collider, 3)
table.insert(colliders,Tile2_wallNr92230ID)
Tile2_wallNr92230ID = nil

Tile2_wallNr93231ID = {}
Tile2_wallNr93231ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr93231ID.transformID, {x=306, y=49.7884, z=231.5})
Transform.SetScaleNonUniform(Tile2_wallNr93231ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr93231ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr93231ID.collider = OBBCollider.Create(Tile2_wallNr93231ID.transformID)
Tile2_wallNr93231ID.collider:SetOffset(0,0,0)
Tile2_wallNr93231ID.collider:SetZAxis(0.894427,0,0.447214)
Tile2_wallNr93231ID.collider:SetHalfLengths(0.3,6.11404,3.3541)
CollisionHandler.AddOBB(Tile2_wallNr93231ID.collider, 3)
table.insert(colliders,Tile2_wallNr93231ID)
Tile2_wallNr93231ID = nil

Tile2_wallNr94232ID = {}
Tile2_wallNr94232ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr94232ID.transformID, {x=340.5, y=55.47, z=248.5})
Transform.SetScaleNonUniform(Tile2_wallNr94232ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr94232ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr94232ID.collider = OBBCollider.Create(Tile2_wallNr94232ID.transformID)
Tile2_wallNr94232ID.collider:SetOffset(0,0,0)
Tile2_wallNr94232ID.collider:SetZAxis(-0.56921,0,-0.822192)
Tile2_wallNr94232ID.collider:SetHalfLengths(0.3,9.12196,7.90569)
CollisionHandler.AddOBB(Tile2_wallNr94232ID.collider, 3)
table.insert(colliders,Tile2_wallNr94232ID)
Tile2_wallNr94232ID = nil

Tile2_wallNr95233ID = {}
Tile2_wallNr95233ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr95233ID.transformID, {x=346.5, y=55.47, z=250.5})
Transform.SetScaleNonUniform(Tile2_wallNr95233ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr95233ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr95233ID.collider = OBBCollider.Create(Tile2_wallNr95233ID.transformID)
Tile2_wallNr95233ID.collider:SetOffset(0,0,0)
Tile2_wallNr95233ID.collider:SetZAxis(0.316228,0,-0.948683)
Tile2_wallNr95233ID.collider:SetHalfLengths(0.3,6.55966,4.74342)
CollisionHandler.AddOBB(Tile2_wallNr95233ID.collider, 3)
table.insert(colliders,Tile2_wallNr95233ID)
Tile2_wallNr95233ID = nil

Tile2_wallNr96234ID = {}
Tile2_wallNr96234ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr96234ID.transformID, {x=353, y=57.0297, z=240.5})
Transform.SetScaleNonUniform(Tile2_wallNr96234ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr96234ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr96234ID.collider = OBBCollider.Create(Tile2_wallNr96234ID.transformID)
Tile2_wallNr96234ID.collider:SetOffset(0,0,0)
Tile2_wallNr96234ID.collider:SetZAxis(0.672673,0,-0.73994)
Tile2_wallNr96234ID.collider:SetHalfLengths(0.3,8.45354,7.43303)
CollisionHandler.AddOBB(Tile2_wallNr96234ID.collider, 3)
table.insert(colliders,Tile2_wallNr96234ID)
Tile2_wallNr96234ID = nil

Tile2_wallNr97235ID = {}
Tile2_wallNr97235ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr97235ID.transformID, {x=363, y=53.5761, z=226.5})
Transform.SetScaleNonUniform(Tile2_wallNr97235ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr97235ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr97235ID.collider = OBBCollider.Create(Tile2_wallNr97235ID.transformID)
Tile2_wallNr97235ID.collider:SetOffset(0,0,0)
Tile2_wallNr97235ID.collider:SetZAxis(0.50702,0,-0.861934)
Tile2_wallNr97235ID.collider:SetHalfLengths(0.3,9.67899,9.86154)
CollisionHandler.AddOBB(Tile2_wallNr97235ID.collider, 3)
table.insert(colliders,Tile2_wallNr97235ID)
Tile2_wallNr97235ID = nil

Tile2_wallNr98236ID = {}
Tile2_wallNr98236ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr98236ID.transformID, {x=371, y=48.8971, z=211})
Transform.SetScaleNonUniform(Tile2_wallNr98236ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr98236ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr98236ID.collider = OBBCollider.Create(Tile2_wallNr98236ID.transformID)
Tile2_wallNr98236ID.collider:SetOffset(0,0,0)
Tile2_wallNr98236ID.collider:SetZAxis(0.393919,0,-0.919145)
Tile2_wallNr98236ID.collider:SetHalfLengths(0.3,7.4509,7.61577)
CollisionHandler.AddOBB(Tile2_wallNr98236ID.collider, 3)
table.insert(colliders,Tile2_wallNr98236ID)
Tile2_wallNr98236ID = nil

Tile2_wallNr99237ID = {}
Tile2_wallNr99237ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr99237ID.transformID, {x=373.5, y=46.4462, z=189})
Transform.SetScaleNonUniform(Tile2_wallNr99237ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr99237ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr99237ID.collider = OBBCollider.Create(Tile2_wallNr99237ID.transformID)
Tile2_wallNr99237ID.collider:SetOffset(0,0,0)
Tile2_wallNr99237ID.collider:SetZAxis(-0.0333148,0,-0.999445)
Tile2_wallNr99237ID.collider:SetHalfLengths(0.3,12.0185,15.0083)
CollisionHandler.AddOBB(Tile2_wallNr99237ID.collider, 3)
table.insert(colliders,Tile2_wallNr99237ID)
Tile2_wallNr99237ID = nil

Tile2_wallNr100238ID = {}
Tile2_wallNr100238ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr100238ID.transformID, {x=374, y=39.4277, z=170.5})
Transform.SetScaleNonUniform(Tile2_wallNr100238ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr100238ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr100238ID.collider = OBBCollider.Create(Tile2_wallNr100238ID.transformID)
Tile2_wallNr100238ID.collider:SetOffset(0,0,0)
Tile2_wallNr100238ID.collider:SetZAxis(0.274721,0,-0.961524)
Tile2_wallNr100238ID.collider:SetHalfLengths(0.3,5.55702,3.64005)
CollisionHandler.AddOBB(Tile2_wallNr100238ID.collider, 3)
table.insert(colliders,Tile2_wallNr100238ID)
Tile2_wallNr100238ID = nil

Tile2_wallNr101239ID = {}
Tile2_wallNr101239ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr101239ID.transformID, {x=377.5, y=39.9848, z=162.5})
Transform.SetScaleNonUniform(Tile2_wallNr101239ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr101239ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr101239ID.collider = OBBCollider.Create(Tile2_wallNr101239ID.transformID)
Tile2_wallNr101239ID.collider:SetOffset(0,0,0)
Tile2_wallNr101239ID.collider:SetZAxis(0.485643,0,-0.874157)
Tile2_wallNr101239ID.collider:SetHalfLengths(0.3,7.89651,5.14782)
CollisionHandler.AddOBB(Tile2_wallNr101239ID.collider, 3)
table.insert(colliders,Tile2_wallNr101239ID)
Tile2_wallNr101239ID = nil

Tile2_wallNr102240ID = {}
Tile2_wallNr102240ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr102240ID.transformID, {x=382, y=37.0883, z=157.5})
Transform.SetScaleNonUniform(Tile2_wallNr102240ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr102240ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr102240ID.collider = OBBCollider.Create(Tile2_wallNr102240ID.transformID)
Tile2_wallNr102240ID.collider:SetOffset(0,0,0)
Tile2_wallNr102240ID.collider:SetZAxis(0.970143,0,-0.242536)
Tile2_wallNr102240ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
CollisionHandler.AddOBB(Tile2_wallNr102240ID.collider, 3)
table.insert(colliders,Tile2_wallNr102240ID)
Tile2_wallNr102240ID = nil

Tile2_wallNr66241ID = {}
Tile2_wallNr66241ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr66241ID.transformID, {x=220.5, y=56.3612, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr66241ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr66241ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr66241ID.collider = OBBCollider.Create(Tile2_wallNr66241ID.transformID)
Tile2_wallNr66241ID.collider:SetOffset(0,0,0)
Tile2_wallNr66241ID.collider:SetZAxis(-0.658505,0,-0.752577)
Tile2_wallNr66241ID.collider:SetHalfLengths(0.3,9.79039,5.31507)
CollisionHandler.AddOBB(Tile2_wallNr66241ID.collider, 3)
table.insert(colliders,Tile2_wallNr66241ID)
Tile2_wallNr66241ID = nil

Tile2_wallNr67242ID = {}
Tile2_wallNr67242ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr67242ID.transformID, {x=212.5, y=51.5708, z=223.5})
Transform.SetScaleNonUniform(Tile2_wallNr67242ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr67242ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr67242ID.collider = OBBCollider.Create(Tile2_wallNr67242ID.transformID)
Tile2_wallNr67242ID.collider:SetOffset(0,0,0)
Tile2_wallNr67242ID.collider:SetZAxis(-0.948683,0,0.316228)
Tile2_wallNr67242ID.collider:SetHalfLengths(0.3,5.89124,4.74342)
CollisionHandler.AddOBB(Tile2_wallNr67242ID.collider, 3)
table.insert(colliders,Tile2_wallNr67242ID)
Tile2_wallNr67242ID = nil

Tile2_wallNr68243ID = {}
Tile2_wallNr68243ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr68243ID.transformID, {x=205, y=50.6796, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr68243ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr68243ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr68243ID.collider = OBBCollider.Create(Tile2_wallNr68243ID.transformID)
Tile2_wallNr68243ID.collider:SetOffset(0,0,0)
Tile2_wallNr68243ID.collider:SetZAxis(-0.948683,0,0.316228)
Tile2_wallNr68243ID.collider:SetHalfLengths(0.3,6.11405,3.16228)
CollisionHandler.AddOBB(Tile2_wallNr68243ID.collider, 3)
table.insert(colliders,Tile2_wallNr68243ID)
Tile2_wallNr68243ID = nil

Tile2_wallNr69244ID = {}
Tile2_wallNr69244ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr69244ID.transformID, {x=198.5, y=49.5656, z=227.5})
Transform.SetScaleNonUniform(Tile2_wallNr69244ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr69244ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr69244ID.collider = OBBCollider.Create(Tile2_wallNr69244ID.transformID)
Tile2_wallNr69244ID.collider:SetOffset(0,0,0)
Tile2_wallNr69244ID.collider:SetZAxis(-0.98995,0,0.141421)
Tile2_wallNr69244ID.collider:SetHalfLengths(0.3,6.22544,3.53553)
CollisionHandler.AddOBB(Tile2_wallNr69244ID.collider, 3)
table.insert(colliders,Tile2_wallNr69244ID)
Tile2_wallNr69244ID = nil

Tile2_wallNr70245ID = {}
Tile2_wallNr70245ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr70245ID.transformID, {x=191.5, y=48.3401, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr70245ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr70245ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr70245ID.collider = OBBCollider.Create(Tile2_wallNr70245ID.transformID)
Tile2_wallNr70245ID.collider:SetOffset(0,0,0)
Tile2_wallNr70245ID.collider:SetZAxis(-1,0,0)
Tile2_wallNr70245ID.collider:SetHalfLengths(0.3,6.44826,3.5)
CollisionHandler.AddOBB(Tile2_wallNr70245ID.collider, 3)
table.insert(colliders,Tile2_wallNr70245ID)
Tile2_wallNr70245ID = nil

Tile2_wallNr71246ID = {}
Tile2_wallNr71246ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr71246ID.transformID, {x=183.5, y=46.8918, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr71246ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr71246ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr71246ID.collider = OBBCollider.Create(Tile2_wallNr71246ID.transformID)
Tile2_wallNr71246ID.collider:SetOffset(0,0,0)
Tile2_wallNr71246ID.collider:SetZAxis(-0.913812,0,-0.406139)
Tile2_wallNr71246ID.collider:SetHalfLengths(0.3,9.12197,4.92443)
CollisionHandler.AddOBB(Tile2_wallNr71246ID.collider, 3)
table.insert(colliders,Tile2_wallNr71246ID)
Tile2_wallNr71246ID = nil

Tile2_wallNr72247ID = {}
Tile2_wallNr72247ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr72247ID.transformID, {x=178, y=42.7699, z=221.5})
Transform.SetScaleNonUniform(Tile2_wallNr72247ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr72247ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr72247ID.collider = OBBCollider.Create(Tile2_wallNr72247ID.transformID)
Tile2_wallNr72247ID.collider:SetOffset(0,0,0)
Tile2_wallNr72247ID.collider:SetZAxis(-0.371391,0,-0.928477)
Tile2_wallNr72247ID.collider:SetHalfLengths(0.3,5.77983,2.69258)
CollisionHandler.AddOBB(Tile2_wallNr72247ID.collider, 3)
table.insert(colliders,Tile2_wallNr72247ID)
Tile2_wallNr72247ID = nil

Tile2_wallNr73248ID = {}
Tile2_wallNr73248ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr73248ID.transformID, {x=176.5, y=41.9901, z=216.5})
Transform.SetScaleNonUniform(Tile2_wallNr73248ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr73248ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr73248ID.collider = OBBCollider.Create(Tile2_wallNr73248ID.transformID)
Tile2_wallNr73248ID.collider:SetOffset(0,0,0)
Tile2_wallNr73248ID.collider:SetZAxis(-0.196116,0,-0.980581)
Tile2_wallNr73248ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
CollisionHandler.AddOBB(Tile2_wallNr73248ID.collider, 3)
table.insert(colliders,Tile2_wallNr73248ID)
Tile2_wallNr73248ID = nil

Tile2_wallNr74249ID = {}
Tile2_wallNr74249ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr74249ID.transformID, {x=177, y=41.433, z=212})
Transform.SetScaleNonUniform(Tile2_wallNr74249ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr74249ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr74249ID.collider = OBBCollider.Create(Tile2_wallNr74249ID.transformID)
Tile2_wallNr74249ID.collider:SetOffset(0,0,0)
Tile2_wallNr74249ID.collider:SetZAxis(0.447214,0,-0.894427)
Tile2_wallNr74249ID.collider:SetHalfLengths(0.3,5.22281,2.23607)
CollisionHandler.AddOBB(Tile2_wallNr74249ID.collider, 3)
table.insert(colliders,Tile2_wallNr74249ID)
Tile2_wallNr74249ID = nil

Tile2_wallNr75250ID = {}
Tile2_wallNr75250ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr75250ID.transformID, {x=180.5, y=41.6558, z=208.5})
Transform.SetScaleNonUniform(Tile2_wallNr75250ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr75250ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr75250ID.collider = OBBCollider.Create(Tile2_wallNr75250ID.transformID)
Tile2_wallNr75250ID.collider:SetOffset(0,0,0)
Tile2_wallNr75250ID.collider:SetZAxis(0.857493,0,-0.514496)
Tile2_wallNr75250ID.collider:SetHalfLengths(0.3,5.22281,2.91548)
CollisionHandler.AddOBB(Tile2_wallNr75250ID.collider, 3)
table.insert(colliders,Tile2_wallNr75250ID)
Tile2_wallNr75250ID = nil

Tile2_wallNr76251ID = {}
Tile2_wallNr76251ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr76251ID.transformID, {x=185.5, y=41.8786, z=206.5})
Transform.SetScaleNonUniform(Tile2_wallNr76251ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr76251ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr76251ID.collider = OBBCollider.Create(Tile2_wallNr76251ID.transformID)
Tile2_wallNr76251ID.collider:SetOffset(0,0,0)
Tile2_wallNr76251ID.collider:SetZAxis(0.980581,0,-0.196116)
Tile2_wallNr76251ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
CollisionHandler.AddOBB(Tile2_wallNr76251ID.collider, 3)
table.insert(colliders,Tile2_wallNr76251ID)
Tile2_wallNr76251ID = nil

Tile2_wallNr77252ID = {}
Tile2_wallNr77252ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr77252ID.transformID, {x=190.5, y=41.3216, z=205.5})
Transform.SetScaleNonUniform(Tile2_wallNr77252ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr77252ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr77252ID.collider = OBBCollider.Create(Tile2_wallNr77252ID.transformID)
Tile2_wallNr77252ID.collider:SetOffset(0,0,0)
Tile2_wallNr77252ID.collider:SetZAxis(0.980581,0,-0.196116)
Tile2_wallNr77252ID.collider:SetHalfLengths(0.3,5.66843,2.54951)
CollisionHandler.AddOBB(Tile2_wallNr77252ID.collider, 3)
table.insert(colliders,Tile2_wallNr77252ID)
Tile2_wallNr77252ID = nil

Tile2_wallNr78253ID = {}
Tile2_wallNr78253ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr78253ID.transformID, {x=198, y=40.6532, z=203})
Transform.SetScaleNonUniform(Tile2_wallNr78253ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr78253ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr78253ID.collider = OBBCollider.Create(Tile2_wallNr78253ID.transformID)
Tile2_wallNr78253ID.collider:SetOffset(0,0,0)
Tile2_wallNr78253ID.collider:SetZAxis(0.928477,0,-0.371391)
Tile2_wallNr78253ID.collider:SetHalfLengths(0.3,6.00264,5.38516)
CollisionHandler.AddOBB(Tile2_wallNr78253ID.collider, 3)
table.insert(colliders,Tile2_wallNr78253ID)
Tile2_wallNr78253ID = nil

Tile2_wallNr79254ID = {}
Tile2_wallNr79254ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr79254ID.transformID, {x=204.5, y=39.6506, z=198.5})
Transform.SetScaleNonUniform(Tile2_wallNr79254ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr79254ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr79254ID.collider = OBBCollider.Create(Tile2_wallNr79254ID.transformID)
Tile2_wallNr79254ID.collider:SetOffset(0,0,0)
Tile2_wallNr79254ID.collider:SetZAxis(0.514496,0,-0.857493)
Tile2_wallNr79254ID.collider:SetHalfLengths(0.3,5.66843,2.91548)
CollisionHandler.AddOBB(Tile2_wallNr79254ID.collider, 3)
table.insert(colliders,Tile2_wallNr79254ID)
Tile2_wallNr79254ID = nil

Tile2_wallNr80255ID = {}
Tile2_wallNr80255ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr80255ID.transformID, {x=207.5, y=38.9821, z=191})
Transform.SetScaleNonUniform(Tile2_wallNr80255ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr80255ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr80255ID.collider = OBBCollider.Create(Tile2_wallNr80255ID.transformID)
Tile2_wallNr80255ID.collider:SetOffset(0,0,0)
Tile2_wallNr80255ID.collider:SetZAxis(0.287348,0,-0.957826)
Tile2_wallNr80255ID.collider:SetHalfLengths(0.3,6.22545,5.22015)
CollisionHandler.AddOBB(Tile2_wallNr80255ID.collider, 3)
table.insert(colliders,Tile2_wallNr80255ID)
Tile2_wallNr80255ID = nil

Tile2_wallNr81256ID = {}
Tile2_wallNr81256ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr81256ID.transformID, {x=211, y=37.7567, z=184.5})
Transform.SetScaleNonUniform(Tile2_wallNr81256ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr81256ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr81256ID.collider = OBBCollider.Create(Tile2_wallNr81256ID.transformID)
Tile2_wallNr81256ID.collider:SetOffset(0,0,0)
Tile2_wallNr81256ID.collider:SetZAxis(0.8,0,-0.6)
Tile2_wallNr81256ID.collider:SetHalfLengths(0.3,5.77983,2.5)
CollisionHandler.AddOBB(Tile2_wallNr81256ID.collider, 3)
table.insert(colliders,Tile2_wallNr81256ID)
Tile2_wallNr81256ID = nil

Tile2_wallNr82257ID = {}
Tile2_wallNr82257ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr82257ID.transformID, {x=215, y=36.9769, z=181.5})
Transform.SetScaleNonUniform(Tile2_wallNr82257ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr82257ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr82257ID.collider = OBBCollider.Create(Tile2_wallNr82257ID.transformID)
Tile2_wallNr82257ID.collider:SetOffset(0,0,0)
Tile2_wallNr82257ID.collider:SetZAxis(0.8,0,-0.6)
Tile2_wallNr82257ID.collider:SetHalfLengths(0.3,5.89124,2.5)
CollisionHandler.AddOBB(Tile2_wallNr82257ID.collider, 3)
table.insert(colliders,Tile2_wallNr82257ID)
Tile2_wallNr82257ID = nil

Tile2_wallNr83258ID = {}
Tile2_wallNr83258ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr83258ID.transformID, {x=220.5, y=36.0856, z=175})
Transform.SetScaleNonUniform(Tile2_wallNr83258ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr83258ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr83258ID.collider = OBBCollider.Create(Tile2_wallNr83258ID.transformID)
Tile2_wallNr83258ID.collider:SetOffset(0,0,0)
Tile2_wallNr83258ID.collider:SetZAxis(0.573462,0,-0.819232)
Tile2_wallNr83258ID.collider:SetHalfLengths(0.3,5.44562,6.10328)
CollisionHandler.AddOBB(Tile2_wallNr83258ID.collider, 3)
table.insert(colliders,Tile2_wallNr83258ID)
Tile2_wallNr83258ID = nil

Tile2_wallNr84259ID = {}
Tile2_wallNr84259ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr84259ID.transformID, {x=227.5, y=35.64, z=167.5})
Transform.SetScaleNonUniform(Tile2_wallNr84259ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr84259ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr84259ID.collider = OBBCollider.Create(Tile2_wallNr84259ID.transformID)
Tile2_wallNr84259ID.collider:SetOffset(0,0,0)
Tile2_wallNr84259ID.collider:SetZAxis(0.813733,0,-0.581238)
Tile2_wallNr84259ID.collider:SetHalfLengths(0.3,5,4.30116)
CollisionHandler.AddOBB(Tile2_wallNr84259ID.collider, 3)
table.insert(colliders,Tile2_wallNr84259ID)
Tile2_wallNr84259ID = nil

Tile2_wallNr85260ID = {}
Tile2_wallNr85260ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr85260ID.transformID, {x=237.5, y=35.64, z=159.5})
Transform.SetScaleNonUniform(Tile2_wallNr85260ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr85260ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr85260ID.collider = OBBCollider.Create(Tile2_wallNr85260ID.transformID)
Tile2_wallNr85260ID.collider:SetOffset(0,0,0)
Tile2_wallNr85260ID.collider:SetZAxis(0.763386,0,-0.645942)
Tile2_wallNr85260ID.collider:SetHalfLengths(0.3,5.44562,8.51469)
CollisionHandler.AddOBB(Tile2_wallNr85260ID.collider, 3)
table.insert(colliders,Tile2_wallNr85260ID)
Tile2_wallNr85260ID = nil

Tile2_wallNr86261ID = {}
Tile2_wallNr86261ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr86261ID.transformID, {x=249.5, y=36.0856, z=148.5})
Transform.SetScaleNonUniform(Tile2_wallNr86261ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr86261ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr86261ID.collider = OBBCollider.Create(Tile2_wallNr86261ID.transformID)
Tile2_wallNr86261ID.collider:SetOffset(0,0,0)
Tile2_wallNr86261ID.collider:SetZAxis(0.707107,0,-0.707107)
Tile2_wallNr86261ID.collider:SetHalfLengths(0.3,5.77983,7.77817)
CollisionHandler.AddOBB(Tile2_wallNr86261ID.collider, 3)
table.insert(colliders,Tile2_wallNr86261ID)
Tile2_wallNr86261ID = nil

Tile2_wallNr103262ID = {}
Tile2_wallNr103262ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr103262ID.transformID, {x=258, y=36.8654, z=140})
Transform.SetScaleNonUniform(Tile2_wallNr103262ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr103262ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr103262ID.collider = OBBCollider.Create(Tile2_wallNr103262ID.transformID)
Tile2_wallNr103262ID.collider:SetOffset(0,0,0)
Tile2_wallNr103262ID.collider:SetZAxis(0.707107,0,-0.707107)
Tile2_wallNr103262ID.collider:SetHalfLengths(0.3,5.44562,4.24264)
CollisionHandler.AddOBB(Tile2_wallNr103262ID.collider, 3)
table.insert(colliders,Tile2_wallNr103262ID)
Tile2_wallNr103262ID = nil

Tile2_wallNr104263ID = {}
Tile2_wallNr104263ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr104263ID.transformID, {x=264, y=37.3111, z=134.5})
Transform.SetScaleNonUniform(Tile2_wallNr104263ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr104263ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr104263ID.collider = OBBCollider.Create(Tile2_wallNr104263ID.transformID)
Tile2_wallNr104263ID.collider:SetOffset(0,0,0)
Tile2_wallNr104263ID.collider:SetZAxis(0.768221,0,-0.640184)
Tile2_wallNr104263ID.collider:SetHalfLengths(0.3,5.1114,3.90512)
CollisionHandler.AddOBB(Tile2_wallNr104263ID.collider, 3)
table.insert(colliders,Tile2_wallNr104263ID)
Tile2_wallNr104263ID = nil

Tile2_wallNr105264ID = {}
Tile2_wallNr105264ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr105264ID.transformID, {x=269, y=37.4225, z=131})
Transform.SetScaleNonUniform(Tile2_wallNr105264ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr105264ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr105264ID.collider = OBBCollider.Create(Tile2_wallNr105264ID.transformID)
Tile2_wallNr105264ID.collider:SetOffset(0,0,0)
Tile2_wallNr105264ID.collider:SetZAxis(0.894427,0,-0.447214)
Tile2_wallNr105264ID.collider:SetHalfLengths(0.3,5.1114,2.23607)
CollisionHandler.AddOBB(Tile2_wallNr105264ID.collider, 3)
table.insert(colliders,Tile2_wallNr105264ID)
Tile2_wallNr105264ID = nil

Tile2_wallNr106265ID = {}
Tile2_wallNr106265ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr106265ID.transformID, {x=273.5, y=37.3111, z=129.5})
Transform.SetScaleNonUniform(Tile2_wallNr106265ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr106265ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr106265ID.collider = OBBCollider.Create(Tile2_wallNr106265ID.transformID)
Tile2_wallNr106265ID.collider:SetOffset(0,0,0)
Tile2_wallNr106265ID.collider:SetZAxis(0.980581,0,-0.196116)
Tile2_wallNr106265ID.collider:SetHalfLengths(0.3,5.22281,2.54951)
CollisionHandler.AddOBB(Tile2_wallNr106265ID.collider, 3)
table.insert(colliders,Tile2_wallNr106265ID)
Tile2_wallNr106265ID = nil

Tile2_wallNr107266ID = {}
Tile2_wallNr107266ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr107266ID.transformID, {x=281.5, y=37.5339, z=128.5})
Transform.SetScaleNonUniform(Tile2_wallNr107266ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr107266ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr107266ID.collider = OBBCollider.Create(Tile2_wallNr107266ID.transformID)
Tile2_wallNr107266ID.collider:SetOffset(0,0,0)
Tile2_wallNr107266ID.collider:SetZAxis(0.995893,0,-0.0905358)
Tile2_wallNr107266ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
CollisionHandler.AddOBB(Tile2_wallNr107266ID.collider, 3)
table.insert(colliders,Tile2_wallNr107266ID)
Tile2_wallNr107266ID = nil

Tile2_wallNr108267ID = {}
Tile2_wallNr108267ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr108267ID.transformID, {x=293, y=37.1997, z=129})
Transform.SetScaleNonUniform(Tile2_wallNr108267ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr108267ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr108267ID.collider = OBBCollider.Create(Tile2_wallNr108267ID.transformID)
Tile2_wallNr108267ID.collider:SetOffset(0,0,0)
Tile2_wallNr108267ID.collider:SetZAxis(0.986394,0,0.164399)
Tile2_wallNr108267ID.collider:SetHalfLengths(0.3,5.89124,6.08276)
CollisionHandler.AddOBB(Tile2_wallNr108267ID.collider, 3)
table.insert(colliders,Tile2_wallNr108267ID)
Tile2_wallNr108267ID = nil

Tile2_wallNr109268ID = {}
Tile2_wallNr109268ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr109268ID.transformID, {x=306, y=36.3084, z=132})
Transform.SetScaleNonUniform(Tile2_wallNr109268ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr109268ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr109268ID.collider = OBBCollider.Create(Tile2_wallNr109268ID.transformID)
Tile2_wallNr109268ID.collider:SetOffset(0,0,0)
Tile2_wallNr109268ID.collider:SetZAxis(0.961524,0,0.274721)
Tile2_wallNr109268ID.collider:SetHalfLengths(0.3,6.00264,7.28011)
CollisionHandler.AddOBB(Tile2_wallNr109268ID.collider, 3)
table.insert(colliders,Tile2_wallNr109268ID)
Tile2_wallNr109268ID = nil

Tile2_wallNr110269ID = {}
Tile2_wallNr110269ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr110269ID.transformID, {x=339, y=48.1173, z=215.5})
Transform.SetScaleNonUniform(Tile2_wallNr110269ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr110269ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr110269ID.collider = OBBCollider.Create(Tile2_wallNr110269ID.transformID)
Tile2_wallNr110269ID.collider:SetOffset(0,0,0)
Tile2_wallNr110269ID.collider:SetZAxis(0.682318,0,-0.731055)
Tile2_wallNr110269ID.collider:SetHalfLengths(0.3,12.0185,10.2591)
CollisionHandler.AddOBB(Tile2_wallNr110269ID.collider, 3)
table.insert(colliders,Tile2_wallNr110269ID)
Tile2_wallNr110269ID = nil

Tile2_wallNr111270ID = {}
Tile2_wallNr111270ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr111270ID.transformID, {x=348, y=41.0988, z=203.5})
Transform.SetScaleNonUniform(Tile2_wallNr111270ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr111270ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr111270ID.collider = OBBCollider.Create(Tile2_wallNr111270ID.transformID)
Tile2_wallNr111270ID.collider:SetOffset(0,0,0)
Tile2_wallNr111270ID.collider:SetZAxis(0.406139,0,-0.913812)
Tile2_wallNr111270ID.collider:SetHalfLengths(0.3,6.67107,4.92443)
CollisionHandler.AddOBB(Tile2_wallNr111270ID.collider, 3)
table.insert(colliders,Tile2_wallNr111270ID)
Tile2_wallNr111270ID = nil

Tile2_wallNr112271ID = {}
Tile2_wallNr112271ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr112271ID.transformID, {x=350, y=39.4277, z=194})
Transform.SetScaleNonUniform(Tile2_wallNr112271ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr112271ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr112271ID.collider = OBBCollider.Create(Tile2_wallNr112271ID.transformID)
Tile2_wallNr112271ID.collider:SetOffset(0,0,0)
Tile2_wallNr112271ID.collider:SetZAxis(0,0,-1)
Tile2_wallNr112271ID.collider:SetHalfLengths(0.3,6.11404,5)
CollisionHandler.AddOBB(Tile2_wallNr112271ID.collider, 3)
table.insert(colliders,Tile2_wallNr112271ID)
Tile2_wallNr112271ID = nil

Tile2_wallNr113272ID = {}
Tile2_wallNr113272ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr113272ID.transformID, {x=351.5, y=38.3137, z=183.5})
Transform.SetScaleNonUniform(Tile2_wallNr113272ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr113272ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr113272ID.collider = OBBCollider.Create(Tile2_wallNr113272ID.transformID)
Tile2_wallNr113272ID.collider:SetOffset(0,0,0)
Tile2_wallNr113272ID.collider:SetZAxis(0.263117,0,-0.964764)
Tile2_wallNr113272ID.collider:SetHalfLengths(0.3,6.22545,5.70088)
CollisionHandler.AddOBB(Tile2_wallNr113272ID.collider, 3)
table.insert(colliders,Tile2_wallNr113272ID)
Tile2_wallNr113272ID = nil

Tile2_wallNr114273ID = {}
Tile2_wallNr114273ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr114273ID.transformID, {x=350, y=37.0883, z=173})
Transform.SetScaleNonUniform(Tile2_wallNr114273ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr114273ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr114273ID.collider = OBBCollider.Create(Tile2_wallNr114273ID.transformID)
Tile2_wallNr114273ID.collider:SetOffset(0,0,0)
Tile2_wallNr114273ID.collider:SetZAxis(-0.514496,0,-0.857493)
Tile2_wallNr114273ID.collider:SetHalfLengths(0.3,5.89124,5.83095)
CollisionHandler.AddOBB(Tile2_wallNr114273ID.collider, 3)
table.insert(colliders,Tile2_wallNr114273ID)
Tile2_wallNr114273ID = nil

Tile2_wallNr115274ID = {}
Tile2_wallNr115274ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr115274ID.transformID, {x=340.5, y=36.197, z=162})
Transform.SetScaleNonUniform(Tile2_wallNr115274ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr115274ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr115274ID.collider = OBBCollider.Create(Tile2_wallNr115274ID.transformID)
Tile2_wallNr115274ID.collider:SetOffset(0,0,0)
Tile2_wallNr115274ID.collider:SetZAxis(-0.734803,0,-0.67828)
Tile2_wallNr115274ID.collider:SetHalfLengths(0.3,5.55702,8.8459)
CollisionHandler.AddOBB(Tile2_wallNr115274ID.collider, 3)
table.insert(colliders,Tile2_wallNr115274ID)
Tile2_wallNr115274ID = nil

Tile2_wallNr116275ID = {}
Tile2_wallNr116275ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr116275ID.transformID, {x=330, y=35.64, z=149.5})
Transform.SetScaleNonUniform(Tile2_wallNr116275ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr116275ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr116275ID.collider = OBBCollider.Create(Tile2_wallNr116275ID.transformID)
Tile2_wallNr116275ID.collider:SetOffset(0,0,0)
Tile2_wallNr116275ID.collider:SetZAxis(-0.524097,0,-0.851658)
Tile2_wallNr116275ID.collider:SetHalfLengths(0.3,5.89124,7.63217)
CollisionHandler.AddOBB(Tile2_wallNr116275ID.collider, 3)
table.insert(colliders,Tile2_wallNr116275ID)
Tile2_wallNr116275ID = nil

Tile2_wallNr117276ID = {}
Tile2_wallNr117276ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr117276ID.transformID, {x=319.5, y=34.7488, z=138.5})
Transform.SetScaleNonUniform(Tile2_wallNr117276ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr117276ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr117276ID.collider = OBBCollider.Create(Tile2_wallNr117276ID.transformID)
Tile2_wallNr117276ID.collider:SetOffset(0,0,0)
Tile2_wallNr117276ID.collider:SetZAxis(-0.822192,0,-0.56921)
Tile2_wallNr117276ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
CollisionHandler.AddOBB(Tile2_wallNr117276ID.collider, 3)
table.insert(colliders,Tile2_wallNr117276ID)
Tile2_wallNr117276ID = nil

Tile2_wallNr118277ID = {}
Tile2_wallNr118277ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr118277ID.transformID, {x=291.5, y=38.2023, z=98.5})
Transform.SetScaleNonUniform(Tile2_wallNr118277ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr118277ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr118277ID.collider = OBBCollider.Create(Tile2_wallNr118277ID.transformID)
Tile2_wallNr118277ID.collider:SetOffset(0,0,0)
Tile2_wallNr118277ID.collider:SetZAxis(-0.654931,0,-0.755689)
Tile2_wallNr118277ID.collider:SetHalfLengths(0.3,6.33685,9.92472)
CollisionHandler.AddOBB(Tile2_wallNr118277ID.collider, 3)
table.insert(colliders,Tile2_wallNr118277ID)
Tile2_wallNr118277ID = nil

Tile2_wallNr119278ID = {}
Tile2_wallNr119278ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr119278ID.transformID, {x=276.5, y=39.5392, z=80.5})
Transform.SetScaleNonUniform(Tile2_wallNr119278ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr119278ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr119278ID.collider = OBBCollider.Create(Tile2_wallNr119278ID.transformID)
Tile2_wallNr119278ID.collider:SetOffset(0,0,0)
Tile2_wallNr119278ID.collider:SetZAxis(-0.629198,0,-0.777245)
Tile2_wallNr119278ID.collider:SetHalfLengths(0.3,5.77983,13.5093)
CollisionHandler.AddOBB(Tile2_wallNr119278ID.collider, 3)
table.insert(colliders,Tile2_wallNr119278ID)
Tile2_wallNr119278ID = nil

Tile2_wallNr120279ID = {}
Tile2_wallNr120279ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr120279ID.transformID, {x=261.5, y=38.7593, z=65})
Transform.SetScaleNonUniform(Tile2_wallNr120279ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr120279ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr120279ID.collider = OBBCollider.Create(Tile2_wallNr120279ID.transformID)
Tile2_wallNr120279ID.collider:SetOffset(0,0,0)
Tile2_wallNr120279ID.collider:SetZAxis(-0.792624,0,-0.609711)
Tile2_wallNr120279ID.collider:SetHalfLengths(0.3,7.22809,8.20061)
CollisionHandler.AddOBB(Tile2_wallNr120279ID.collider, 3)
table.insert(colliders,Tile2_wallNr120279ID)
Tile2_wallNr120279ID = nil

Tile2_wallNr121280ID = {}
Tile2_wallNr121280ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr121280ID.transformID, {x=248, y=40.9874, z=57})
Transform.SetScaleNonUniform(Tile2_wallNr121280ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr121280ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr121280ID.collider = OBBCollider.Create(Tile2_wallNr121280ID.transformID)
Tile2_wallNr121280ID.collider:SetOffset(0,0,0)
Tile2_wallNr121280ID.collider:SetZAxis(-0.919145,0,-0.393919)
Tile2_wallNr121280ID.collider:SetHalfLengths(0.3,9.01056,7.61577)
CollisionHandler.AddOBB(Tile2_wallNr121280ID.collider, 3)
table.insert(colliders,Tile2_wallNr121280ID)
Tile2_wallNr121280ID = nil

Tile2_wallNr122281ID = {}
Tile2_wallNr122281ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr122281ID.transformID, {x=233.5, y=44.998, z=51.5})
Transform.SetScaleNonUniform(Tile2_wallNr122281ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr122281ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr122281ID.collider = OBBCollider.Create(Tile2_wallNr122281ID.transformID)
Tile2_wallNr122281ID.collider:SetOffset(0,0,0)
Tile2_wallNr122281ID.collider:SetZAxis(-0.948683,0,-0.316228)
Tile2_wallNr122281ID.collider:SetHalfLengths(0.3,8.45354,7.90569)
CollisionHandler.AddOBB(Tile2_wallNr122281ID.collider, 3)
table.insert(colliders,Tile2_wallNr122281ID)
Tile2_wallNr122281ID = nil

Tile2_wallNr123282ID = {}
Tile2_wallNr123282ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr123282ID.transformID, {x=221.5, y=48.4515, z=48.5})
Transform.SetScaleNonUniform(Tile2_wallNr123282ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr123282ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr123282ID.collider = OBBCollider.Create(Tile2_wallNr123282ID.transformID)
Tile2_wallNr123282ID.collider:SetOffset(0,0,0)
Tile2_wallNr123282ID.collider:SetZAxis(-0.993884,0,-0.110432)
Tile2_wallNr123282ID.collider:SetHalfLengths(0.3,7.00528,4.52769)
CollisionHandler.AddOBB(Tile2_wallNr123282ID.collider, 3)
table.insert(colliders,Tile2_wallNr123282ID)
Tile2_wallNr123282ID = nil

Tile2_wallNr124283ID = {}
Tile2_wallNr124283ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr124283ID.transformID, {x=213, y=50.4568, z=48.5})
Transform.SetScaleNonUniform(Tile2_wallNr124283ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr124283ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr124283ID.collider = OBBCollider.Create(Tile2_wallNr124283ID.transformID)
Tile2_wallNr124283ID.collider:SetOffset(0,0,0)
Tile2_wallNr124283ID.collider:SetZAxis(-0.992278,0,0.124035)
Tile2_wallNr124283ID.collider:SetHalfLengths(0.3,6.78247,4.03113)
CollisionHandler.AddOBB(Tile2_wallNr124283ID.collider, 3)
table.insert(colliders,Tile2_wallNr124283ID)
Tile2_wallNr124283ID = nil

Tile2_wallNr125284ID = {}
Tile2_wallNr125284ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr125284ID.transformID, {x=204.5, y=52.2393, z=52})
Transform.SetScaleNonUniform(Tile2_wallNr125284ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr125284ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr125284ID.collider = OBBCollider.Create(Tile2_wallNr125284ID.transformID)
Tile2_wallNr125284ID.collider:SetOffset(0,0,0)
Tile2_wallNr125284ID.collider:SetZAxis(-0.83205,0,0.5547)
Tile2_wallNr125284ID.collider:SetHalfLengths(0.3,6.44826,5.40833)
CollisionHandler.AddOBB(Tile2_wallNr125284ID.collider, 3)
table.insert(colliders,Tile2_wallNr125284ID)
Tile2_wallNr125284ID = nil

Tile2_wallNr126285ID = {}
Tile2_wallNr126285ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr126285ID.transformID, {x=197, y=53.6875, z=59.5})
Transform.SetScaleNonUniform(Tile2_wallNr126285ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr126285ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr126285ID.collider = OBBCollider.Create(Tile2_wallNr126285ID.transformID)
Tile2_wallNr126285ID.collider:SetOffset(0,0,0)
Tile2_wallNr126285ID.collider:SetZAxis(-0.5547,0,0.83205)
Tile2_wallNr126285ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
CollisionHandler.AddOBB(Tile2_wallNr126285ID.collider, 3)
table.insert(colliders,Tile2_wallNr126285ID)
Tile2_wallNr126285ID = nil

Tile2_wallNr127286ID = {}
Tile2_wallNr127286ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr127286ID.transformID, {x=193.5, y=54.5788, z=70.5})
Transform.SetScaleNonUniform(Tile2_wallNr127286ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr127286ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr127286ID.collider = OBBCollider.Create(Tile2_wallNr127286ID.transformID)
Tile2_wallNr127286ID.collider:SetOffset(0,0,0)
Tile2_wallNr127286ID.collider:SetZAxis(-0.0766965,0,0.997055)
Tile2_wallNr127286ID.collider:SetHalfLengths(0.3,6.00264,6.5192)
CollisionHandler.AddOBB(Tile2_wallNr127286ID.collider, 3)
table.insert(colliders,Tile2_wallNr127286ID)
Tile2_wallNr127286ID = nil

Tile2_wallNr128287ID = {}
Tile2_wallNr128287ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr128287ID.transformID, {x=194, y=55.5814, z=84})
Transform.SetScaleNonUniform(Tile2_wallNr128287ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr128287ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr128287ID.collider = OBBCollider.Create(Tile2_wallNr128287ID.transformID)
Tile2_wallNr128287ID.collider:SetOffset(0,0,0)
Tile2_wallNr128287ID.collider:SetZAxis(0.141421,0,0.98995)
Tile2_wallNr128287ID.collider:SetHalfLengths(0.3,6.00264,7.07107)
CollisionHandler.AddOBB(Tile2_wallNr128287ID.collider, 3)
table.insert(colliders,Tile2_wallNr128287ID)
Tile2_wallNr128287ID = nil

Tile2_wallNr129288ID = {}
Tile2_wallNr129288ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr129288ID.transformID, {x=197.5, y=56.584, z=98.5})
Transform.SetScaleNonUniform(Tile2_wallNr129288ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr129288ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr129288ID.collider = OBBCollider.Create(Tile2_wallNr129288ID.transformID)
Tile2_wallNr129288ID.collider:SetOffset(0,0,0)
Tile2_wallNr129288ID.collider:SetZAxis(0.316228,0,0.948683)
Tile2_wallNr129288ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
CollisionHandler.AddOBB(Tile2_wallNr129288ID.collider, 3)
table.insert(colliders,Tile2_wallNr129288ID)
Tile2_wallNr129288ID = nil

Tile2_wallNr130289ID = {}
Tile2_wallNr130289ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr130289ID.transformID, {x=202.5, y=56.027, z=116.5})
Transform.SetScaleNonUniform(Tile2_wallNr130289ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr130289ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr130289ID.collider = OBBCollider.Create(Tile2_wallNr130289ID.transformID)
Tile2_wallNr130289ID.collider:SetOffset(0,0,0)
Tile2_wallNr130289ID.collider:SetZAxis(0.231621,0,0.972806)
Tile2_wallNr130289ID.collider:SetHalfLengths(0.3,5.89124,10.7935)
CollisionHandler.AddOBB(Tile2_wallNr130289ID.collider, 3)
table.insert(colliders,Tile2_wallNr130289ID)
Tile2_wallNr130289ID = nil

Tile2_wallNr131290ID = {}
Tile2_wallNr131290ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr131290ID.transformID, {x=205.5, y=55.1358, z=132.5})
Transform.SetScaleNonUniform(Tile2_wallNr131290ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr131290ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr131290ID.collider = OBBCollider.Create(Tile2_wallNr131290ID.transformID)
Tile2_wallNr131290ID.collider:SetOffset(0,0,0)
Tile2_wallNr131290ID.collider:SetZAxis(0.0905358,0,0.995893)
Tile2_wallNr131290ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
CollisionHandler.AddOBB(Tile2_wallNr131290ID.collider, 3)
table.insert(colliders,Tile2_wallNr131290ID)
Tile2_wallNr131290ID = nil

Tile2_wallNr132291ID = {}
Tile2_wallNr132291ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr132291ID.transformID, {x=206.5, y=55.47, z=143.5})
Transform.SetScaleNonUniform(Tile2_wallNr132291ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr132291ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr132291ID.collider = OBBCollider.Create(Tile2_wallNr132291ID.transformID)
Tile2_wallNr132291ID.collider:SetOffset(0,0,0)
Tile2_wallNr132291ID.collider:SetZAxis(0.0905358,0,0.995893)
Tile2_wallNr132291ID.collider:SetHalfLengths(0.3,5.22281,5.52268)
CollisionHandler.AddOBB(Tile2_wallNr132291ID.collider, 3)
table.insert(colliders,Tile2_wallNr132291ID)
Tile2_wallNr132291ID = nil

Tile2_wallNr133292ID = {}
Tile2_wallNr133292ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr133292ID.transformID, {x=205, y=55.2472, z=154})
Transform.SetScaleNonUniform(Tile2_wallNr133292ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr133292ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr133292ID.collider = OBBCollider.Create(Tile2_wallNr133292ID.transformID)
Tile2_wallNr133292ID.collider:SetOffset(0,0,0)
Tile2_wallNr133292ID.collider:SetZAxis(-0.371391,0,0.928477)
Tile2_wallNr133292ID.collider:SetHalfLengths(0.3,5.22281,5.38516)
CollisionHandler.AddOBB(Tile2_wallNr133292ID.collider, 3)
table.insert(colliders,Tile2_wallNr133292ID)
Tile2_wallNr133292ID = nil

Tile2_wallNr134293ID = {}
Tile2_wallNr134293ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr134293ID.transformID, {x=198.5, y=55.0244, z=163.5})
Transform.SetScaleNonUniform(Tile2_wallNr134293ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr134293ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr134293ID.collider = OBBCollider.Create(Tile2_wallNr134293ID.transformID)
Tile2_wallNr134293ID.collider:SetOffset(0,0,0)
Tile2_wallNr134293ID.collider:SetZAxis(-0.707107,0,0.707107)
Tile2_wallNr134293ID.collider:SetHalfLengths(0.3,5.77983,6.36396)
CollisionHandler.AddOBB(Tile2_wallNr134293ID.collider, 3)
table.insert(colliders,Tile2_wallNr134293ID)
Tile2_wallNr134293ID = nil

Tile2_wallNr135294ID = {}
Tile2_wallNr135294ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr135294ID.transformID, {x=189.5, y=55.8042, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr135294ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr135294ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr135294ID.collider = OBBCollider.Create(Tile2_wallNr135294ID.transformID)
Tile2_wallNr135294ID.collider:SetOffset(0,0,0)
Tile2_wallNr135294ID.collider:SetZAxis(-0.976187,0,0.21693)
Tile2_wallNr135294ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
CollisionHandler.AddOBB(Tile2_wallNr135294ID.collider, 3)
table.insert(colliders,Tile2_wallNr135294ID)
Tile2_wallNr135294ID = nil

Tile2_wallNr136295ID = {}
Tile2_wallNr136295ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr136295ID.transformID, {x=180, y=56.027, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr136295ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr136295ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr136295ID.collider = OBBCollider.Create(Tile2_wallNr136295ID.transformID)
Tile2_wallNr136295ID.collider:SetOffset(0,0,0)
Tile2_wallNr136295ID.collider:SetZAxis(-0.980581,0,-0.196116)
Tile2_wallNr136295ID.collider:SetHalfLengths(0.3,5.44562,5.09902)
CollisionHandler.AddOBB(Tile2_wallNr136295ID.collider, 3)
table.insert(colliders,Tile2_wallNr136295ID)
Tile2_wallNr136295ID = nil

Tile2_wallNr137296ID = {}
Tile2_wallNr137296ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr137296ID.transformID, {x=170.5, y=55.5814, z=165.5})
Transform.SetScaleNonUniform(Tile2_wallNr137296ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr137296ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr137296ID.collider = OBBCollider.Create(Tile2_wallNr137296ID.transformID)
Tile2_wallNr137296ID.collider:SetOffset(0,0,0)
Tile2_wallNr137296ID.collider:SetZAxis(-0.874157,0,-0.485643)
Tile2_wallNr137296ID.collider:SetHalfLengths(0.3,6.44826,5.14782)
CollisionHandler.AddOBB(Tile2_wallNr137296ID.collider, 3)
table.insert(colliders,Tile2_wallNr137296ID)
Tile2_wallNr137296ID = nil

Tile2_wallNr138297ID = {}
Tile2_wallNr138297ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr138297ID.transformID, {x=160.5, y=54.1331, z=160.5})
Transform.SetScaleNonUniform(Tile2_wallNr138297ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr138297ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr138297ID.collider = OBBCollider.Create(Tile2_wallNr138297ID.transformID)
Tile2_wallNr138297ID.collider:SetOffset(0,0,0)
Tile2_wallNr138297ID.collider:SetZAxis(-0.910366,0,-0.413803)
Tile2_wallNr138297ID.collider:SetHalfLengths(0.3,8.56494,6.04152)
CollisionHandler.AddOBB(Tile2_wallNr138297ID.collider, 3)
table.insert(colliders,Tile2_wallNr138297ID)
Tile2_wallNr138297ID = nil

Tile2_wallNr139298ID = {}
Tile2_wallNr139298ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr139298ID.transformID, {x=153.5, y=50.5682, z=161.5})
Transform.SetScaleNonUniform(Tile2_wallNr139298ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr139298ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr139298ID.collider = OBBCollider.Create(Tile2_wallNr139298ID.transformID)
Tile2_wallNr139298ID.collider:SetOffset(0,0,0)
Tile2_wallNr139298ID.collider:SetZAxis(-0.393919,0,0.919145)
Tile2_wallNr139298ID.collider:SetHalfLengths(0.3,6.67107,3.80789)
CollisionHandler.AddOBB(Tile2_wallNr139298ID.collider, 3)
table.insert(colliders,Tile2_wallNr139298ID)
Tile2_wallNr139298ID = nil

Tile2_wallNr140299ID = {}
Tile2_wallNr140299ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr140299ID.transformID, {x=155.5, y=48.8971, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr140299ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr140299ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr140299ID.collider = OBBCollider.Create(Tile2_wallNr140299ID.transformID)
Tile2_wallNr140299ID.collider:SetOffset(0,0,0)
Tile2_wallNr140299ID.collider:SetZAxis(0.658505,0,0.752577)
Tile2_wallNr140299ID.collider:SetHalfLengths(0.3,5.44561,5.31507)
CollisionHandler.AddOBB(Tile2_wallNr140299ID.collider, 3)
table.insert(colliders,Tile2_wallNr140299ID)
Tile2_wallNr140299ID = nil

Tile2_wallNr141300ID = {}
Tile2_wallNr141300ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr141300ID.transformID, {x=161, y=48.4515, z=179})
Transform.SetScaleNonUniform(Tile2_wallNr141300ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr141300ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr141300ID.collider = OBBCollider.Create(Tile2_wallNr141300ID.transformID)
Tile2_wallNr141300ID.collider:SetOffset(0,0,0)
Tile2_wallNr141300ID.collider:SetZAxis(0.316228,0,0.948683)
Tile2_wallNr141300ID.collider:SetHalfLengths(0.3,9.7904,6.32456)
CollisionHandler.AddOBB(Tile2_wallNr141300ID.collider, 3)
table.insert(colliders,Tile2_wallNr141300ID)
Tile2_wallNr141300ID = nil

Tile2_wallNr142301ID = {}
Tile2_wallNr142301ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr142301ID.transformID, {x=163, y=43.6611, z=194.5})
Transform.SetScaleNonUniform(Tile2_wallNr142301ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr142301ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr142301ID.collider = OBBCollider.Create(Tile2_wallNr142301ID.transformID)
Tile2_wallNr142301ID.collider:SetOffset(0,0,0)
Tile2_wallNr142301ID.collider:SetZAxis(0,0,1)
Tile2_wallNr142301ID.collider:SetHalfLengths(0.3,8.34213,9.5)
CollisionHandler.AddOBB(Tile2_wallNr142301ID.collider, 3)
table.insert(colliders,Tile2_wallNr142301ID)
Tile2_wallNr142301ID = nil

Tile2_wallNr143302ID = {}
Tile2_wallNr143302ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr143302ID.transformID, {x=170, y=40.319, z=200})
Transform.SetScaleNonUniform(Tile2_wallNr143302ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr143302ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr143302ID.collider = OBBCollider.Create(Tile2_wallNr143302ID.transformID)
Tile2_wallNr143302ID.collider:SetOffset(0,0,0)
Tile2_wallNr143302ID.collider:SetZAxis(0.868243,0,-0.496139)
Tile2_wallNr143302ID.collider:SetHalfLengths(0.3,7.5623,8.06226)
CollisionHandler.AddOBB(Tile2_wallNr143302ID.collider, 3)
table.insert(colliders,Tile2_wallNr143302ID)
Tile2_wallNr143302ID = nil

Tile2_wallNr144303ID = {}
Tile2_wallNr144303ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr144303ID.transformID, {x=184, y=42.8813, z=193})
Transform.SetScaleNonUniform(Tile2_wallNr144303ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr144303ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr144303ID.collider = OBBCollider.Create(Tile2_wallNr144303ID.transformID)
Tile2_wallNr144303ID.collider:SetOffset(0,0,0)
Tile2_wallNr144303ID.collider:SetZAxis(0.919145,0,-0.393919)
Tile2_wallNr144303ID.collider:SetHalfLengths(0.3,5.22281,7.61577)
CollisionHandler.AddOBB(Tile2_wallNr144303ID.collider, 3)
table.insert(colliders,Tile2_wallNr144303ID)
Tile2_wallNr144303ID = nil

Tile2_wallNr145304ID = {}
Tile2_wallNr145304ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr145304ID.transformID, {x=192.5, y=42.6585, z=185.5})
Transform.SetScaleNonUniform(Tile2_wallNr145304ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr145304ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr145304ID.collider = OBBCollider.Create(Tile2_wallNr145304ID.transformID)
Tile2_wallNr145304ID.collider:SetOffset(0,0,0)
Tile2_wallNr145304ID.collider:SetZAxis(0.316228,0,-0.948683)
Tile2_wallNr145304ID.collider:SetHalfLengths(0.3,7.33949,4.74342)
CollisionHandler.AddOBB(Tile2_wallNr145304ID.collider, 3)
table.insert(colliders,Tile2_wallNr145304ID)
Tile2_wallNr145304ID = nil

Tile2_wallNr146305ID = {}
Tile2_wallNr146305ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr146305ID.transformID, {x=201, y=40.319, z=176.5})
Transform.SetScaleNonUniform(Tile2_wallNr146305ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr146305ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr146305ID.collider = OBBCollider.Create(Tile2_wallNr146305ID.transformID)
Tile2_wallNr146305ID.collider:SetOffset(0,0,0)
Tile2_wallNr146305ID.collider:SetZAxis(0.841179,0,-0.540758)
Tile2_wallNr146305ID.collider:SetHalfLengths(0.3,6.00264,8.32166)
CollisionHandler.AddOBB(Tile2_wallNr146305ID.collider, 3)
table.insert(colliders,Tile2_wallNr146305ID)
Tile2_wallNr146305ID = nil

Tile2_wallNr147306ID = {}
Tile2_wallNr147306ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr147306ID.transformID, {x=213, y=39.3163, z=166.5})
Transform.SetScaleNonUniform(Tile2_wallNr147306ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr147306ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr147306ID.collider = OBBCollider.Create(Tile2_wallNr147306ID.transformID)
Tile2_wallNr147306ID.collider:SetOffset(0,0,0)
Tile2_wallNr147306ID.collider:SetZAxis(0.672673,0,-0.73994)
Tile2_wallNr147306ID.collider:SetHalfLengths(0.3,7.89651,7.43303)
CollisionHandler.AddOBB(Tile2_wallNr147306ID.collider, 3)
table.insert(colliders,Tile2_wallNr147306ID)
Tile2_wallNr147306ID = nil

Tile2_wallNr148307ID = {}
Tile2_wallNr148307ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr148307ID.transformID, {x=219, y=36.4198, z=158})
Transform.SetScaleNonUniform(Tile2_wallNr148307ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr148307ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr148307ID.collider = OBBCollider.Create(Tile2_wallNr148307ID.transformID)
Tile2_wallNr148307ID.collider:SetOffset(0,0,0)
Tile2_wallNr148307ID.collider:SetZAxis(0.316228,0,-0.948683)
Tile2_wallNr148307ID.collider:SetHalfLengths(0.3,5.1114,3.16228)
CollisionHandler.AddOBB(Tile2_wallNr148307ID.collider, 3)
table.insert(colliders,Tile2_wallNr148307ID)
Tile2_wallNr148307ID = nil

Tile2_wallNr149308ID = {}
Tile2_wallNr149308ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr149308ID.transformID, {x=222, y=36.5312, z=153.5})
Transform.SetScaleNonUniform(Tile2_wallNr149308ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr149308ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr149308ID.collider = OBBCollider.Create(Tile2_wallNr149308ID.transformID)
Tile2_wallNr149308ID.collider:SetOffset(0,0,0)
Tile2_wallNr149308ID.collider:SetZAxis(0.8,0,-0.6)
Tile2_wallNr149308ID.collider:SetHalfLengths(0.3,5.1114,2.5)
CollisionHandler.AddOBB(Tile2_wallNr149308ID.collider, 3)
table.insert(colliders,Tile2_wallNr149308ID)
Tile2_wallNr149308ID = nil

Tile2_wallNr150309ID = {}
Tile2_wallNr150309ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr150309ID.transformID, {x=228.5, y=36.6426, z=150.5})
Transform.SetScaleNonUniform(Tile2_wallNr150309ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr150309ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr150309ID.collider = OBBCollider.Create(Tile2_wallNr150309ID.transformID)
Tile2_wallNr150309ID.collider:SetOffset(0,0,0)
Tile2_wallNr150309ID.collider:SetZAxis(0.948683,0,-0.316228)
Tile2_wallNr150309ID.collider:SetHalfLengths(0.3,5.1114,4.74342)
CollisionHandler.AddOBB(Tile2_wallNr150309ID.collider, 3)
table.insert(colliders,Tile2_wallNr150309ID)
Tile2_wallNr150309ID = nil

Tile2_wallNr151310ID = {}
Tile2_wallNr151310ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr151310ID.transformID, {x=236.5, y=36.5312, z=145})
Transform.SetScaleNonUniform(Tile2_wallNr151310ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr151310ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr151310ID.collider = OBBCollider.Create(Tile2_wallNr151310ID.transformID)
Tile2_wallNr151310ID.collider:SetOffset(0,0,0)
Tile2_wallNr151310ID.collider:SetZAxis(0.658505,0,-0.752577)
Tile2_wallNr151310ID.collider:SetHalfLengths(0.3,5.22281,5.31507)
CollisionHandler.AddOBB(Tile2_wallNr151310ID.collider, 3)
table.insert(colliders,Tile2_wallNr151310ID)
Tile2_wallNr151310ID = nil

Tile2_wallNr152311ID = {}
Tile2_wallNr152311ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr152311ID.transformID, {x=240, y=36.754, z=139})
Transform.SetScaleNonUniform(Tile2_wallNr152311ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr152311ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr152311ID.collider = OBBCollider.Create(Tile2_wallNr152311ID.transformID)
Tile2_wallNr152311ID.collider:SetOffset(0,0,0)
Tile2_wallNr152311ID.collider:SetZAxis(0,0,-1)
Tile2_wallNr152311ID.collider:SetHalfLengths(0.3,5.55702,2)
CollisionHandler.AddOBB(Tile2_wallNr152311ID.collider, 3)
table.insert(colliders,Tile2_wallNr152311ID)
Tile2_wallNr152311ID = nil

Tile2_wallNr153312ID = {}
Tile2_wallNr153312ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr153312ID.transformID, {x=238, y=37.3111, z=135})
Transform.SetScaleNonUniform(Tile2_wallNr153312ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr153312ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr153312ID.collider = OBBCollider.Create(Tile2_wallNr153312ID.transformID)
Tile2_wallNr153312ID.collider:SetOffset(0,0,0)
Tile2_wallNr153312ID.collider:SetZAxis(-0.707107,0,-0.707107)
Tile2_wallNr153312ID.collider:SetHalfLengths(0.3,6.00264,2.82843)
CollisionHandler.AddOBB(Tile2_wallNr153312ID.collider, 3)
table.insert(colliders,Tile2_wallNr153312ID)
Tile2_wallNr153312ID = nil

Tile2_wallNr154313ID = {}
Tile2_wallNr154313ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr154313ID.transformID, {x=221, y=36.6426, z=148})
Transform.SetScaleNonUniform(Tile2_wallNr154313ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr154313ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr154313ID.collider = OBBCollider.Create(Tile2_wallNr154313ID.transformID)
Tile2_wallNr154313ID.collider:SetOffset(0,0,0)
Tile2_wallNr154313ID.collider:SetZAxis(-0.196116,0,-0.980581)
Tile2_wallNr154313ID.collider:SetHalfLengths(0.3,7.33949,5.09902)
CollisionHandler.AddOBB(Tile2_wallNr154313ID.collider, 3)
table.insert(colliders,Tile2_wallNr154313ID)
Tile2_wallNr154313ID = nil

Tile2_wallNr155314ID = {}
Tile2_wallNr155314ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr155314ID.transformID, {x=218.5, y=38.9821, z=136})
Transform.SetScaleNonUniform(Tile2_wallNr155314ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr155314ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr155314ID.collider = OBBCollider.Create(Tile2_wallNr155314ID.transformID)
Tile2_wallNr155314ID.collider:SetOffset(0,0,0)
Tile2_wallNr155314ID.collider:SetZAxis(-0.209529,0,-0.977802)
Tile2_wallNr155314ID.collider:SetHalfLengths(0.3,7.33949,7.15891)
CollisionHandler.AddOBB(Tile2_wallNr155314ID.collider, 3)
table.insert(colliders,Tile2_wallNr155314ID)
Tile2_wallNr155314ID = nil

Tile2_wallNr156315ID = {}
Tile2_wallNr156315ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr156315ID.transformID, {x=221.5, y=41.3216, z=126})
Transform.SetScaleNonUniform(Tile2_wallNr156315ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr156315ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr156315ID.collider = OBBCollider.Create(Tile2_wallNr156315ID.transformID)
Tile2_wallNr156315ID.collider:SetOffset(0,0,0)
Tile2_wallNr156315ID.collider:SetZAxis(0.83205,0,-0.5547)
Tile2_wallNr156315ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
CollisionHandler.AddOBB(Tile2_wallNr156315ID.collider, 3)
table.insert(colliders,Tile2_wallNr156315ID)
Tile2_wallNr156315ID = nil

Tile2_wallNr157316ID = {}
Tile2_wallNr157316ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr157316ID.transformID, {x=231, y=42.2129, z=122})
Transform.SetScaleNonUniform(Tile2_wallNr157316ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr157316ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr157316ID.collider = OBBCollider.Create(Tile2_wallNr157316ID.transformID)
Tile2_wallNr157316ID.collider:SetOffset(0,0,0)
Tile2_wallNr157316ID.collider:SetZAxis(0.980581,0,-0.196116)
Tile2_wallNr157316ID.collider:SetHalfLengths(0.3,7.11668,5.09902)
CollisionHandler.AddOBB(Tile2_wallNr157316ID.collider, 3)
table.insert(colliders,Tile2_wallNr157316ID)
Tile2_wallNr157316ID = nil

Tile2_wallNr158317ID = {}
Tile2_wallNr158317ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr158317ID.transformID, {x=242, y=40.0962, z=124.5})
Transform.SetScaleNonUniform(Tile2_wallNr158317ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr158317ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr158317ID.collider = OBBCollider.Create(Tile2_wallNr158317ID.transformID)
Tile2_wallNr158317ID.collider:SetOffset(0,0,0)
Tile2_wallNr158317ID.collider:SetZAxis(0.863779,0,0.503871)
Tile2_wallNr158317ID.collider:SetHalfLengths(0.3,7.11668,6.94622)
CollisionHandler.AddOBB(Tile2_wallNr158317ID.collider, 3)
table.insert(colliders,Tile2_wallNr158317ID)
Tile2_wallNr158317ID = nil

Tile2_wallNr159318ID = {}
Tile2_wallNr159318ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr159318ID.transformID, {x=253, y=37.9795, z=123})
Transform.SetScaleNonUniform(Tile2_wallNr159318ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr159318ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr159318ID.collider = OBBCollider.Create(Tile2_wallNr159318ID.transformID)
Tile2_wallNr159318ID.collider:SetOffset(0,0,0)
Tile2_wallNr159318ID.collider:SetZAxis(0.707107,0,-0.707107)
Tile2_wallNr159318ID.collider:SetHalfLengths(0.3,5.55702,7.07107)
CollisionHandler.AddOBB(Tile2_wallNr159318ID.collider, 3)
table.insert(colliders,Tile2_wallNr159318ID)
Tile2_wallNr159318ID = nil

Tile2_wallNr160319ID = {}
Tile2_wallNr160319ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr160319ID.transformID, {x=263.5, y=37.4225, z=113.5})
Transform.SetScaleNonUniform(Tile2_wallNr160319ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr160319ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr160319ID.collider = OBBCollider.Create(Tile2_wallNr160319ID.transformID)
Tile2_wallNr160319ID.collider:SetOffset(0,0,0)
Tile2_wallNr160319ID.collider:SetZAxis(0.773957,0,-0.633238)
Tile2_wallNr160319ID.collider:SetHalfLengths(0.3,5.44562,7.10634)
CollisionHandler.AddOBB(Tile2_wallNr160319ID.collider, 3)
table.insert(colliders,Tile2_wallNr160319ID)
Tile2_wallNr160319ID = nil

Tile2_wallNr161320ID = {}
Tile2_wallNr161320ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr161320ID.transformID, {x=283.5, y=36.9769, z=107.5})
Transform.SetScaleNonUniform(Tile2_wallNr161320ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr161320ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr161320ID.collider = OBBCollider.Create(Tile2_wallNr161320ID.transformID)
Tile2_wallNr161320ID.collider:SetOffset(0,0,0)
Tile2_wallNr161320ID.collider:SetZAxis(0.994692,0,-0.102899)
Tile2_wallNr161320ID.collider:SetHalfLengths(0.3,6.22545,14.5774)
CollisionHandler.AddOBB(Tile2_wallNr161320ID.collider, 3)
table.insert(colliders,Tile2_wallNr161320ID)
Tile2_wallNr161320ID = nil

Tile2_wallNr162321ID = {}
Tile2_wallNr162321ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr162321ID.transformID, {x=324.5, y=50.1226, z=244})
Transform.SetScaleNonUniform(Tile2_wallNr162321ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr162321ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr162321ID.collider = OBBCollider.Create(Tile2_wallNr162321ID.transformID)
Tile2_wallNr162321ID.collider:SetOffset(0,0,0)
Tile2_wallNr162321ID.collider:SetZAxis(0.985212,0,-0.171341)
Tile2_wallNr162321ID.collider:SetHalfLengths(0.3,6.22545,11.6726)
CollisionHandler.AddOBB(Tile2_wallNr162321ID.collider, 3)
table.insert(colliders,Tile2_wallNr162321ID)
Tile2_wallNr162321ID = nil

Tile2_wallNr163322ID = {}
Tile2_wallNr163322ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr163322ID.transformID, {x=320.5, y=48.1173, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr163322ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr163322ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr163322ID.collider = OBBCollider.Create(Tile2_wallNr163322ID.transformID)
Tile2_wallNr163322ID.collider:SetOffset(0,0,0)
Tile2_wallNr163322ID.collider:SetZAxis(-0.91707,0,0.398726)
Tile2_wallNr163322ID.collider:SetHalfLengths(0.3,5.55703,12.5399)
CollisionHandler.AddOBB(Tile2_wallNr163322ID.collider, 3)
table.insert(colliders,Tile2_wallNr163322ID)
Tile2_wallNr163322ID = nil

Tile2_wallNr164323ID = {}
Tile2_wallNr164323ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr164323ID.transformID, {x=227.5, y=56.3612, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr164323ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr164323ID.transformID, {x=0, y=0, z=0})
Tile2_wallNr164323ID.collider = OBBCollider.Create(Tile2_wallNr164323ID.transformID)
Tile2_wallNr164323ID.collider:SetOffset(0,0,0)
Tile2_wallNr164323ID.collider:SetZAxis(0.868243,0,0.496139)
Tile2_wallNr164323ID.collider:SetHalfLengths(0.3,5.77983,4.03113)
CollisionHandler.AddOBB(Tile2_wallNr164323ID.collider, 3)
table.insert(colliders,Tile2_wallNr164323ID)
Tile2_wallNr164323ID = nil

PineTree_Collider389ID = {}
PineTree_Collider389ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider389ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(PineTree_Collider389ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(PineTree_Collider389ID.transformID, {x=0.0166519, y=-0.520999, z=0})
PineTree_Collider389ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider389ID.model, PineTree_Collider389ID.transformID)
PineTree_Collider389ID.collider = OBBCollider.Create(PineTree_Collider389ID.transformID)
PineTree_Collider389ID.collider:SetOffset(0,4,0)
PineTree_Collider389ID.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
PineTree_Collider389ID.collider:SetHalfLengths(2.66392,5.98314,3.08762)
CollisionHandler.AddOBB(PineTree_Collider389ID.collider, 3)
table.insert(props,PineTree_Collider389ID)
PineTree_Collider389ID = nil

PineTree_Collider1390ID = {}
PineTree_Collider1390ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider1390ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(PineTree_Collider1390ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree_Collider1390ID.transformID, {x=0, y=0, z=0})
PineTree_Collider1390ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider1390ID.model, PineTree_Collider1390ID.transformID)
PineTree_Collider1390ID.collider = OBBCollider.Create(PineTree_Collider1390ID.transformID)
PineTree_Collider1390ID.collider:SetOffset(0,4,0)
PineTree_Collider1390ID.collider:SetZAxis(0,0,1)
PineTree_Collider1390ID.collider:SetHalfLengths(2.5,4,2.5)
CollisionHandler.AddOBB(PineTree_Collider1390ID.collider, 3)
table.insert(props,PineTree_Collider1390ID)
PineTree_Collider1390ID = nil

PineTree_Collider2391ID = {}
PineTree_Collider2391ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider2391ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(PineTree_Collider2391ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(PineTree_Collider2391ID.transformID, {x=0, y=0, z=0})
PineTree_Collider2391ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider2391ID.model, PineTree_Collider2391ID.transformID)
PineTree_Collider2391ID.collider = OBBCollider.Create(PineTree_Collider2391ID.transformID)
PineTree_Collider2391ID.collider:SetOffset(0,4,0)
PineTree_Collider2391ID.collider:SetZAxis(0,0,1)
PineTree_Collider2391ID.collider:SetHalfLengths(3.18928,5.74361,3.11039)
CollisionHandler.AddOBB(PineTree_Collider2391ID.collider, 3)
table.insert(props,PineTree_Collider2391ID)
PineTree_Collider2391ID = nil

PineTree_NoCollider1392ID = {}
PineTree_NoCollider1392ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider1392ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(PineTree_NoCollider1392ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(PineTree_NoCollider1392ID.transformID, {x=0, y=2.74772, z=0})
PineTree_NoCollider1392ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider1392ID.model, PineTree_NoCollider1392ID.transformID)
table.insert(props,PineTree_NoCollider1392ID)
PineTree_NoCollider1392ID = nil

PineTree_NoCollider11393ID = {}
PineTree_NoCollider11393ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider11393ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(PineTree_NoCollider11393ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(PineTree_NoCollider11393ID.transformID, {x=0, y=0, z=0})
PineTree_NoCollider11393ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider11393ID.model, PineTree_NoCollider11393ID.transformID)
table.insert(props,PineTree_NoCollider11393ID)
PineTree_NoCollider11393ID = nil

PineTree_NoCollider12394ID = {}
PineTree_NoCollider12394ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider12394ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(PineTree_NoCollider12394ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(PineTree_NoCollider12394ID.transformID, {x=0, y=0, z=0})
PineTree_NoCollider12394ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider12394ID.model, PineTree_NoCollider12394ID.transformID)
table.insert(props,PineTree_NoCollider12394ID)
PineTree_NoCollider12394ID = nil

PineTree_NoCollider13395ID = {}
PineTree_NoCollider13395ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider13395ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(PineTree_NoCollider13395ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree_NoCollider13395ID.transformID, {x=0, y=0.550171, z=0})
PineTree_NoCollider13395ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider13395ID.model, PineTree_NoCollider13395ID.transformID)
table.insert(props,PineTree_NoCollider13395ID)
PineTree_NoCollider13395ID = nil

PineTree_NoCollider14396ID = {}
PineTree_NoCollider14396ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider14396ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(PineTree_NoCollider14396ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree_NoCollider14396ID.transformID, {x=0, y=2.98311, z=0})
PineTree_NoCollider14396ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider14396ID.model, PineTree_NoCollider14396ID.transformID)
table.insert(props,PineTree_NoCollider14396ID)
PineTree_NoCollider14396ID = nil

PineTree_NoCollider15397ID = {}
PineTree_NoCollider15397ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider15397ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(PineTree_NoCollider15397ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(PineTree_NoCollider15397ID.transformID, {x=0, y=-7.32886, z=0})
PineTree_NoCollider15397ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider15397ID.model, PineTree_NoCollider15397ID.transformID)
table.insert(props,PineTree_NoCollider15397ID)
PineTree_NoCollider15397ID = nil

PineTree_NoCollider16398ID = {}
PineTree_NoCollider16398ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider16398ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(PineTree_NoCollider16398ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(PineTree_NoCollider16398ID.transformID, {x=0, y=-2.98524, z=0})
PineTree_NoCollider16398ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider16398ID.model, PineTree_NoCollider16398ID.transformID)
table.insert(props,PineTree_NoCollider16398ID)
PineTree_NoCollider16398ID = nil

PineTree_NoCollider17399ID = {}
PineTree_NoCollider17399ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider17399ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(PineTree_NoCollider17399ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(PineTree_NoCollider17399ID.transformID, {x=0, y=-2.76387, z=0})
PineTree_NoCollider17399ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider17399ID.model, PineTree_NoCollider17399ID.transformID)
table.insert(props,PineTree_NoCollider17399ID)
PineTree_NoCollider17399ID = nil

PineTree_NoCollider18400ID = {}
PineTree_NoCollider18400ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider18400ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(PineTree_NoCollider18400ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(PineTree_NoCollider18400ID.transformID, {x=0, y=1.82048, z=0})
PineTree_NoCollider18400ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider18400ID.model, PineTree_NoCollider18400ID.transformID)
table.insert(props,PineTree_NoCollider18400ID)
PineTree_NoCollider18400ID = nil

PineTree_NoCollider19401ID = {}
PineTree_NoCollider19401ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider19401ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(PineTree_NoCollider19401ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(PineTree_NoCollider19401ID.transformID, {x=0, y=-2.19759, z=0})
PineTree_NoCollider19401ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider19401ID.model, PineTree_NoCollider19401ID.transformID)
table.insert(props,PineTree_NoCollider19401ID)
PineTree_NoCollider19401ID = nil

OakTree_Collider4402ID = {}
OakTree_Collider4402ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider4402ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(OakTree_Collider4402ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(OakTree_Collider4402ID.transformID, {x=0, y=3.64905, z=0})
OakTree_Collider4402ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider4402ID.model, OakTree_Collider4402ID.transformID)
OakTree_Collider4402ID.collider = OBBCollider.Create(OakTree_Collider4402ID.transformID)
OakTree_Collider4402ID.collider:SetOffset(0,4,0)
OakTree_Collider4402ID.collider:SetZAxis(-0.485958,0,-0.873982)
OakTree_Collider4402ID.collider:SetHalfLengths(1.82423,5.38972,2.04467)
CollisionHandler.AddOBB(OakTree_Collider4402ID.collider, 3)
table.insert(props,OakTree_Collider4402ID)
OakTree_Collider4402ID = nil

OakTree_Collider41403ID = {}
OakTree_Collider41403ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider41403ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(OakTree_Collider41403ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(OakTree_Collider41403ID.transformID, {x=0, y=0, z=0})
OakTree_Collider41403ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider41403ID.model, OakTree_Collider41403ID.transformID)
OakTree_Collider41403ID.collider = OBBCollider.Create(OakTree_Collider41403ID.transformID)
OakTree_Collider41403ID.collider:SetOffset(0,4,0)
OakTree_Collider41403ID.collider:SetZAxis(0,0,1)
OakTree_Collider41403ID.collider:SetHalfLengths(1.91668,5.26999,2.05246)
CollisionHandler.AddOBB(OakTree_Collider41403ID.collider, 3)
table.insert(props,OakTree_Collider41403ID)
OakTree_Collider41403ID = nil

OakTree_Collider42404ID = {}
OakTree_Collider42404ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider42404ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(OakTree_Collider42404ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(OakTree_Collider42404ID.transformID, {x=0, y=0, z=0})
OakTree_Collider42404ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider42404ID.model, OakTree_Collider42404ID.transformID)
OakTree_Collider42404ID.collider = OBBCollider.Create(OakTree_Collider42404ID.transformID)
OakTree_Collider42404ID.collider:SetOffset(0,4,0)
OakTree_Collider42404ID.collider:SetZAxis(0,0,1)
OakTree_Collider42404ID.collider:SetHalfLengths(2.03198,5.81552,1.96803)
CollisionHandler.AddOBB(OakTree_Collider42404ID.collider, 3)
table.insert(props,OakTree_Collider42404ID)
OakTree_Collider42404ID = nil

OakTree_Collider43405ID = {}
OakTree_Collider43405ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider43405ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(OakTree_Collider43405ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(OakTree_Collider43405ID.transformID, {x=0, y=0, z=0})
OakTree_Collider43405ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider43405ID.model, OakTree_Collider43405ID.transformID)
OakTree_Collider43405ID.collider = OBBCollider.Create(OakTree_Collider43405ID.transformID)
OakTree_Collider43405ID.collider:SetOffset(0,4,0)
OakTree_Collider43405ID.collider:SetZAxis(0,0,1)
OakTree_Collider43405ID.collider:SetHalfLengths(1.88068,4.83337,1.99714)
CollisionHandler.AddOBB(OakTree_Collider43405ID.collider, 3)
table.insert(props,OakTree_Collider43405ID)
OakTree_Collider43405ID = nil

OakTree_Collider44406ID = {}
OakTree_Collider44406ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider44406ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(OakTree_Collider44406ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(OakTree_Collider44406ID.transformID, {x=0, y=0, z=0})
OakTree_Collider44406ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider44406ID.model, OakTree_Collider44406ID.transformID)
OakTree_Collider44406ID.collider = OBBCollider.Create(OakTree_Collider44406ID.transformID)
OakTree_Collider44406ID.collider:SetOffset(0,4,0)
OakTree_Collider44406ID.collider:SetZAxis(0,0,1)
OakTree_Collider44406ID.collider:SetHalfLengths(1.85948,4.92038,1.9785)
CollisionHandler.AddOBB(OakTree_Collider44406ID.collider, 3)
table.insert(props,OakTree_Collider44406ID)
OakTree_Collider44406ID = nil

OakTree_Collider45407ID = {}
OakTree_Collider45407ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider45407ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(OakTree_Collider45407ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree_Collider45407ID.transformID, {x=0, y=0, z=0})
OakTree_Collider45407ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider45407ID.model, OakTree_Collider45407ID.transformID)
OakTree_Collider45407ID.collider = OBBCollider.Create(OakTree_Collider45407ID.transformID)
OakTree_Collider45407ID.collider:SetOffset(0,4,0)
OakTree_Collider45407ID.collider:SetZAxis(0,0,1)
OakTree_Collider45407ID.collider:SetHalfLengths(1.75,4,1.75)
CollisionHandler.AddOBB(OakTree_Collider45407ID.collider, 3)
table.insert(props,OakTree_Collider45407ID)
OakTree_Collider45407ID = nil

OakTree_Collider46408ID = {}
OakTree_Collider46408ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider46408ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(OakTree_Collider46408ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(OakTree_Collider46408ID.transformID, {x=0, y=0, z=0})
OakTree_Collider46408ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider46408ID.model, OakTree_Collider46408ID.transformID)
OakTree_Collider46408ID.collider = OBBCollider.Create(OakTree_Collider46408ID.transformID)
OakTree_Collider46408ID.collider:SetOffset(0,4,0)
OakTree_Collider46408ID.collider:SetZAxis(0,0,1)
OakTree_Collider46408ID.collider:SetHalfLengths(2.14269,5.42911,1.96576)
CollisionHandler.AddOBB(OakTree_Collider46408ID.collider, 3)
table.insert(props,OakTree_Collider46408ID)
OakTree_Collider46408ID = nil

OakTree_NoCollider1409ID = {}
OakTree_NoCollider1409ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider1409ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(OakTree_NoCollider1409ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(OakTree_NoCollider1409ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider1409ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider1409ID.model, OakTree_NoCollider1409ID.transformID)
table.insert(props,OakTree_NoCollider1409ID)
OakTree_NoCollider1409ID = nil

OakTree_NoCollider15410ID = {}
OakTree_NoCollider15410ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider15410ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(OakTree_NoCollider15410ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(OakTree_NoCollider15410ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider15410ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider15410ID.model, OakTree_NoCollider15410ID.transformID)
table.insert(props,OakTree_NoCollider15410ID)
OakTree_NoCollider15410ID = nil

OakTree_NoCollider111411ID = {}
OakTree_NoCollider111411ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider111411ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(OakTree_NoCollider111411ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(OakTree_NoCollider111411ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider111411ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider111411ID.model, OakTree_NoCollider111411ID.transformID)
table.insert(props,OakTree_NoCollider111411ID)
OakTree_NoCollider111411ID = nil

OakTree_NoCollider112412ID = {}
OakTree_NoCollider112412ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider112412ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(OakTree_NoCollider112412ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree_NoCollider112412ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider112412ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider112412ID.model, OakTree_NoCollider112412ID.transformID)
table.insert(props,OakTree_NoCollider112412ID)
OakTree_NoCollider112412ID = nil

OakTree_NoCollider113413ID = {}
OakTree_NoCollider113413ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider113413ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(OakTree_NoCollider113413ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(OakTree_NoCollider113413ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider113413ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider113413ID.model, OakTree_NoCollider113413ID.transformID)
table.insert(props,OakTree_NoCollider113413ID)
OakTree_NoCollider113413ID = nil

OakTree_NoCollider114414ID = {}
OakTree_NoCollider114414ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider114414ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(OakTree_NoCollider114414ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(OakTree_NoCollider114414ID.transformID, {x=0, y=-5.86132, z=0})
OakTree_NoCollider114414ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider114414ID.model, OakTree_NoCollider114414ID.transformID)
table.insert(props,OakTree_NoCollider114414ID)
OakTree_NoCollider114414ID = nil

OakTree_NoCollider115415ID = {}
OakTree_NoCollider115415ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider115415ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(OakTree_NoCollider115415ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(OakTree_NoCollider115415ID.transformID, {x=0, y=1.59683, z=0})
OakTree_NoCollider115415ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider115415ID.model, OakTree_NoCollider115415ID.transformID)
table.insert(props,OakTree_NoCollider115415ID)
OakTree_NoCollider115415ID = nil

OakTree_NoCollider116416ID = {}
OakTree_NoCollider116416ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider116416ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(OakTree_NoCollider116416ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(OakTree_NoCollider116416ID.transformID, {x=0, y=-1.86515, z=0})
OakTree_NoCollider116416ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider116416ID.model, OakTree_NoCollider116416ID.transformID)
table.insert(props,OakTree_NoCollider116416ID)
OakTree_NoCollider116416ID = nil

OakTree_NoCollider117417ID = {}
OakTree_NoCollider117417ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider117417ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(OakTree_NoCollider117417ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(OakTree_NoCollider117417ID.transformID, {x=0, y=-1.52942, z=0})
OakTree_NoCollider117417ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider117417ID.model, OakTree_NoCollider117417ID.transformID)
table.insert(props,OakTree_NoCollider117417ID)
OakTree_NoCollider117417ID = nil

OakTree_NoCollider118418ID = {}
OakTree_NoCollider118418ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider118418ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(OakTree_NoCollider118418ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(OakTree_NoCollider118418ID.transformID, {x=0, y=3.43332, z=0})
OakTree_NoCollider118418ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider118418ID.model, OakTree_NoCollider118418ID.transformID)
table.insert(props,OakTree_NoCollider118418ID)
OakTree_NoCollider118418ID = nil

OakTree_NoCollider119419ID = {}
OakTree_NoCollider119419ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider119419ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(OakTree_NoCollider119419ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(OakTree_NoCollider119419ID.transformID, {x=0, y=1.121, z=0})
OakTree_NoCollider119419ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider119419ID.model, OakTree_NoCollider119419ID.transformID)
table.insert(props,OakTree_NoCollider119419ID)
OakTree_NoCollider119419ID = nil

OakTree_NoCollider120420ID = {}
OakTree_NoCollider120420ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider120420ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(OakTree_NoCollider120420ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(OakTree_NoCollider120420ID.transformID, {x=0, y=1.69246, z=0})
OakTree_NoCollider120420ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider120420ID.model, OakTree_NoCollider120420ID.transformID)
table.insert(props,OakTree_NoCollider120420ID)
OakTree_NoCollider120420ID = nil

OakTree_NoCollider121421ID = {}
OakTree_NoCollider121421ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider121421ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(OakTree_NoCollider121421ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(OakTree_NoCollider121421ID.transformID, {x=0, y=1.70454, z=0})
OakTree_NoCollider121421ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider121421ID.model, OakTree_NoCollider121421ID.transformID)
table.insert(props,OakTree_NoCollider121421ID)
OakTree_NoCollider121421ID = nil

OakTree_NoCollider122422ID = {}
OakTree_NoCollider122422ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider122422ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(OakTree_NoCollider122422ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(OakTree_NoCollider122422ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider122422ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider122422ID.model, OakTree_NoCollider122422ID.transformID)
table.insert(props,OakTree_NoCollider122422ID)
OakTree_NoCollider122422ID = nil

OakTree_NoCollider123423ID = {}
OakTree_NoCollider123423ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider123423ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(OakTree_NoCollider123423ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(OakTree_NoCollider123423ID.transformID, {x=0, y=2.28254, z=0})
OakTree_NoCollider123423ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider123423ID.model, OakTree_NoCollider123423ID.transformID)
table.insert(props,OakTree_NoCollider123423ID)
OakTree_NoCollider123423ID = nil

OakTree_NoCollider124424ID = {}
OakTree_NoCollider124424ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider124424ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(OakTree_NoCollider124424ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(OakTree_NoCollider124424ID.transformID, {x=0, y=-7.63234, z=0})
OakTree_NoCollider124424ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider124424ID.model, OakTree_NoCollider124424ID.transformID)
table.insert(props,OakTree_NoCollider124424ID)
OakTree_NoCollider124424ID = nil

OakTree_NoCollider125425ID = {}
OakTree_NoCollider125425ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider125425ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(OakTree_NoCollider125425ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(OakTree_NoCollider125425ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider125425ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider125425ID.model, OakTree_NoCollider125425ID.transformID)
table.insert(props,OakTree_NoCollider125425ID)
OakTree_NoCollider125425ID = nil

OakTree_NoCollider126430ID = {}
OakTree_NoCollider126430ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider126430ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(OakTree_NoCollider126430ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(OakTree_NoCollider126430ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider126430ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider126430ID.model, OakTree_NoCollider126430ID.transformID)
table.insert(props,OakTree_NoCollider126430ID)
OakTree_NoCollider126430ID = nil

OakTree_NoCollider127431ID = {}
OakTree_NoCollider127431ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider127431ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(OakTree_NoCollider127431ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(OakTree_NoCollider127431ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider127431ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider127431ID.model, OakTree_NoCollider127431ID.transformID)
table.insert(props,OakTree_NoCollider127431ID)
OakTree_NoCollider127431ID = nil

OakTree_NoCollider128432ID = {}
OakTree_NoCollider128432ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider128432ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(OakTree_NoCollider128432ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(OakTree_NoCollider128432ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider128432ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider128432ID.model, OakTree_NoCollider128432ID.transformID)
table.insert(props,OakTree_NoCollider128432ID)
OakTree_NoCollider128432ID = nil

OakTree_NoCollider129433ID = {}
OakTree_NoCollider129433ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider129433ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(OakTree_NoCollider129433ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(OakTree_NoCollider129433ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider129433ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider129433ID.model, OakTree_NoCollider129433ID.transformID)
table.insert(props,OakTree_NoCollider129433ID)
OakTree_NoCollider129433ID = nil

OakTree_NoCollider130434ID = {}
OakTree_NoCollider130434ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider130434ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(OakTree_NoCollider130434ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(OakTree_NoCollider130434ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider130434ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider130434ID.model, OakTree_NoCollider130434ID.transformID)
table.insert(props,OakTree_NoCollider130434ID)
OakTree_NoCollider130434ID = nil

OakTree_NoCollider131435ID = {}
OakTree_NoCollider131435ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider131435ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(OakTree_NoCollider131435ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(OakTree_NoCollider131435ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider131435ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider131435ID.model, OakTree_NoCollider131435ID.transformID)
table.insert(props,OakTree_NoCollider131435ID)
OakTree_NoCollider131435ID = nil

OakTree_NoCollider132436ID = {}
OakTree_NoCollider132436ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider132436ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(OakTree_NoCollider132436ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(OakTree_NoCollider132436ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider132436ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider132436ID.model, OakTree_NoCollider132436ID.transformID)
table.insert(props,OakTree_NoCollider132436ID)
OakTree_NoCollider132436ID = nil

OakTree_NoCollider133437ID = {}
OakTree_NoCollider133437ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider133437ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(OakTree_NoCollider133437ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(OakTree_NoCollider133437ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider133437ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider133437ID.model, OakTree_NoCollider133437ID.transformID)
table.insert(props,OakTree_NoCollider133437ID)
OakTree_NoCollider133437ID = nil

OakTree_NoCollider134438ID = {}
OakTree_NoCollider134438ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider134438ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(OakTree_NoCollider134438ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(OakTree_NoCollider134438ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider134438ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider134438ID.model, OakTree_NoCollider134438ID.transformID)
table.insert(props,OakTree_NoCollider134438ID)
OakTree_NoCollider134438ID = nil

OakTree_NoCollider135439ID = {}
OakTree_NoCollider135439ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_NoCollider135439ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(OakTree_NoCollider135439ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(OakTree_NoCollider135439ID.transformID, {x=0, y=0, z=0})
OakTree_NoCollider135439ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_NoCollider135439ID.model, OakTree_NoCollider135439ID.transformID)
table.insert(props,OakTree_NoCollider135439ID)
OakTree_NoCollider135439ID = nil

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
t3s136ID = {}
t3s136ID.transformID = Transform.Bind()
Transform.SetPosition(t3s136ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s136ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s136ID.transformID, {x=0, y=0, z=0})
t3s136ID.model = Assets.LoadModel('Models/tile3_s1.model')
Gear.AddStaticInstance(t3s136ID.model, t3s136ID.transformID)
table.insert(props,t3s136ID)
t3s136ID = nil

tile337ID = {}
tile337ID.transformID = Transform.Bind()
Transform.SetPosition(tile337ID.transformID, {x=384, y=0, z=128})
Transform.SetScaleNonUniform(tile337ID.transformID, 1, 1, 1)
Transform.SetRotation(tile337ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile337ID)
tile337ID = nil

t3s243ID = {}
t3s243ID.transformID = Transform.Bind()
Transform.SetPosition(t3s243ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s243ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s243ID.transformID, {x=0, y=0, z=0})
t3s243ID.model = Assets.LoadModel('Models/tile3_s2.model')
Gear.AddStaticInstance(t3s243ID.model, t3s243ID.transformID)
table.insert(props,t3s243ID)
t3s243ID = nil

t3s344ID = {}
t3s344ID.transformID = Transform.Bind()
Transform.SetPosition(t3s344ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s344ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s344ID.transformID, {x=0, y=0, z=0})
t3s344ID.model = Assets.LoadModel('Models/tile3_s3.model')
Gear.AddStaticInstance(t3s344ID.model, t3s344ID.transformID)
table.insert(props,t3s344ID)
t3s344ID = nil

t3s445ID = {}
t3s445ID.transformID = Transform.Bind()
Transform.SetPosition(t3s445ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s445ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s445ID.transformID, {x=0, y=0, z=0})
t3s445ID.model = Assets.LoadModel('Models/tile3_s4.model')
Gear.AddStaticInstance(t3s445ID.model, t3s445ID.transformID)
table.insert(props,t3s445ID)
t3s445ID = nil

Tile3_wallNr324ID = {}
Tile3_wallNr324ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr324ID.transformID, {x=388.5, y=36.4629, z=157})
Transform.SetScaleNonUniform(Tile3_wallNr324ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr324ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr324ID.collider = OBBCollider.Create(Tile3_wallNr324ID.transformID)
Tile3_wallNr324ID.collider:SetOffset(0,0,0)
Tile3_wallNr324ID.collider:SetZAxis(1,0,0)
Tile3_wallNr324ID.collider:SetHalfLengths(0.3,5.15847,4.5)
CollisionHandler.AddOBB(Tile3_wallNr324ID.collider, 3)
table.insert(colliders,Tile3_wallNr324ID)
Tile3_wallNr324ID = nil

Tile3_wallNr1325ID = {}
Tile3_wallNr1325ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr1325ID.transformID, {x=398, y=36.3044, z=158})
Transform.SetScaleNonUniform(Tile3_wallNr1325ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr1325ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr1325ID.collider = OBBCollider.Create(Tile3_wallNr1325ID.transformID)
Tile3_wallNr1325ID.collider:SetOffset(0,0,0)
Tile3_wallNr1325ID.collider:SetZAxis(0.980581,0,0.196116)
Tile3_wallNr1325ID.collider:SetHalfLengths(0.3,5.15847,5.09902)
CollisionHandler.AddOBB(Tile3_wallNr1325ID.collider, 3)
table.insert(colliders,Tile3_wallNr1325ID)
Tile3_wallNr1325ID = nil

Tile3_wallNr2326ID = {}
Tile3_wallNr2326ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr2326ID.transformID, {x=404, y=36.146, z=160})
Transform.SetScaleNonUniform(Tile3_wallNr2326ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr2326ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr2326ID.collider = OBBCollider.Create(Tile3_wallNr2326ID.transformID)
Tile3_wallNr2326ID.collider:SetOffset(0,0,0)
Tile3_wallNr2326ID.collider:SetZAxis(0.707107,0,0.707107)
Tile3_wallNr2326ID.collider:SetHalfLengths(0.3,5.15847,1.41421)
CollisionHandler.AddOBB(Tile3_wallNr2326ID.collider, 3)
table.insert(colliders,Tile3_wallNr2326ID)
Tile3_wallNr2326ID = nil

Tile3_wallNr3327ID = {}
Tile3_wallNr3327ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr3327ID.transformID, {x=406, y=36.3044, z=162.5})
Transform.SetScaleNonUniform(Tile3_wallNr3327ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr3327ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr3327ID.collider = OBBCollider.Create(Tile3_wallNr3327ID.transformID)
Tile3_wallNr3327ID.collider:SetOffset(0,0,0)
Tile3_wallNr3327ID.collider:SetZAxis(0.5547,0,0.83205)
Tile3_wallNr3327ID.collider:SetHalfLengths(0.3,5.15847,1.80278)
CollisionHandler.AddOBB(Tile3_wallNr3327ID.collider, 3)
table.insert(colliders,Tile3_wallNr3327ID)
Tile3_wallNr3327ID = nil

Tile3_wallNr4328ID = {}
Tile3_wallNr4328ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr4328ID.transformID, {x=409, y=36.4629, z=168})
Transform.SetScaleNonUniform(Tile3_wallNr4328ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr4328ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr4328ID.collider = OBBCollider.Create(Tile3_wallNr4328ID.transformID)
Tile3_wallNr4328ID.collider:SetOffset(0,0,0)
Tile3_wallNr4328ID.collider:SetZAxis(0.447214,0,0.894427)
Tile3_wallNr4328ID.collider:SetHalfLengths(0.3,5.31694,4.47214)
CollisionHandler.AddOBB(Tile3_wallNr4328ID.collider, 3)
table.insert(colliders,Tile3_wallNr4328ID)
Tile3_wallNr4328ID = nil

Tile3_wallNr5329ID = {}
Tile3_wallNr5329ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr5329ID.transformID, {x=412.5, y=36.7798, z=176})
Transform.SetScaleNonUniform(Tile3_wallNr5329ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr5329ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr5329ID.collider = OBBCollider.Create(Tile3_wallNr5329ID.transformID)
Tile3_wallNr5329ID.collider:SetOffset(0,0,0)
Tile3_wallNr5329ID.collider:SetZAxis(0.351123,0,0.936329)
Tile3_wallNr5329ID.collider:SetHalfLengths(0.3,5.79235,4.272)
CollisionHandler.AddOBB(Tile3_wallNr5329ID.collider, 3)
table.insert(colliders,Tile3_wallNr5329ID)
Tile3_wallNr5329ID = nil

Tile3_wallNr6330ID = {}
Tile3_wallNr6330ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr6330ID.transformID, {x=415.5, y=37.5722, z=185})
Transform.SetScaleNonUniform(Tile3_wallNr6330ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr6330ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr6330ID.collider = OBBCollider.Create(Tile3_wallNr6330ID.transformID)
Tile3_wallNr6330ID.collider:SetOffset(0,0,0)
Tile3_wallNr6330ID.collider:SetZAxis(0.287348,0,0.957826)
Tile3_wallNr6330ID.collider:SetHalfLengths(0.3,5.63388,5.22015)
CollisionHandler.AddOBB(Tile3_wallNr6330ID.collider, 3)
table.insert(colliders,Tile3_wallNr6330ID)
Tile3_wallNr6330ID = nil

Tile3_wallNr7331ID = {}
Tile3_wallNr7331ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr7331ID.transformID, {x=418, y=38.2061, z=195.5})
Transform.SetScaleNonUniform(Tile3_wallNr7331ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr7331ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr7331ID.collider = OBBCollider.Create(Tile3_wallNr7331ID.transformID)
Tile3_wallNr7331ID.collider:SetOffset(0,0,0)
Tile3_wallNr7331ID.collider:SetZAxis(0.178885,0,0.98387)
Tile3_wallNr7331ID.collider:SetHalfLengths(0.3,7.0601,5.59017)
CollisionHandler.AddOBB(Tile3_wallNr7331ID.collider, 3)
table.insert(colliders,Tile3_wallNr7331ID)
Tile3_wallNr7331ID = nil

Tile3_wallNr8332ID = {}
Tile3_wallNr8332ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr8332ID.transformID, {x=419.5, y=40.2662, z=208.5})
Transform.SetScaleNonUniform(Tile3_wallNr8332ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr8332ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr8332ID.collider = OBBCollider.Create(Tile3_wallNr8332ID.transformID)
Tile3_wallNr8332ID.collider:SetOffset(0,0,0)
Tile3_wallNr8332ID.collider:SetZAxis(0.066519,0,0.997785)
Tile3_wallNr8332ID.collider:SetHalfLengths(0.3,9.27867,7.51665)
CollisionHandler.AddOBB(Tile3_wallNr8332ID.collider, 3)
table.insert(colliders,Tile3_wallNr8332ID)
Tile3_wallNr8332ID = nil

Tile3_wallNr9333ID = {}
Tile3_wallNr9333ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr9333ID.transformID, {x=418.5, y=44.5448, z=223.5})
Transform.SetScaleNonUniform(Tile3_wallNr9333ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr9333ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr9333ID.collider = OBBCollider.Create(Tile3_wallNr9333ID.transformID)
Tile3_wallNr9333ID.collider:SetOffset(0,0,0)
Tile3_wallNr9333ID.collider:SetZAxis(-0.196116,0,0.980581)
Tile3_wallNr9333ID.collider:SetHalfLengths(0.3,8.80326,7.64853)
CollisionHandler.AddOBB(Tile3_wallNr9333ID.collider, 3)
table.insert(colliders,Tile3_wallNr9333ID)
Tile3_wallNr9333ID = nil

Tile3_wallNr10334ID = {}
Tile3_wallNr10334ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr10334ID.transformID, {x=416, y=48.3481, z=235})
Transform.SetScaleNonUniform(Tile3_wallNr10334ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr10334ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr10334ID.collider = OBBCollider.Create(Tile3_wallNr10334ID.transformID)
Tile3_wallNr10334ID.collider:SetOffset(0,0,0)
Tile3_wallNr10334ID.collider:SetZAxis(-0.242536,0,0.970143)
Tile3_wallNr10334ID.collider:SetHalfLengths(0.3,7.37704,4.12311)
CollisionHandler.AddOBB(Tile3_wallNr10334ID.collider, 3)
table.insert(colliders,Tile3_wallNr10334ID)
Tile3_wallNr10334ID = nil

Tile3_wallNr11335ID = {}
Tile3_wallNr11335ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr11335ID.transformID, {x=422, y=50.7251, z=242})
Transform.SetScaleNonUniform(Tile3_wallNr11335ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr11335ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr11335ID.collider = OBBCollider.Create(Tile3_wallNr11335ID.transformID)
Tile3_wallNr11335ID.collider:SetOffset(0,0,0)
Tile3_wallNr11335ID.collider:SetZAxis(0.919145,0,0.393919)
Tile3_wallNr11335ID.collider:SetHalfLengths(0.3,5.79234,7.61577)
CollisionHandler.AddOBB(Tile3_wallNr11335ID.collider, 3)
table.insert(colliders,Tile3_wallNr11335ID)
Tile3_wallNr11335ID = nil

Tile3_wallNr12336ID = {}
Tile3_wallNr12336ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr12336ID.transformID, {x=432.5, y=51.5175, z=250})
Transform.SetScaleNonUniform(Tile3_wallNr12336ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr12336ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr12336ID.collider = OBBCollider.Create(Tile3_wallNr12336ID.transformID)
Tile3_wallNr12336ID.collider:SetOffset(0,0,0)
Tile3_wallNr12336ID.collider:SetZAxis(0.573462,0,0.819232)
Tile3_wallNr12336ID.collider:SetHalfLengths(0.3,5.79235,6.10328)
CollisionHandler.AddOBB(Tile3_wallNr12336ID.collider, 3)
table.insert(colliders,Tile3_wallNr12336ID)
Tile3_wallNr12336ID = nil

Tile3_wallNr13337ID = {}
Tile3_wallNr13337ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr13337ID.transformID, {x=453.5, y=52.3098, z=255})
Transform.SetScaleNonUniform(Tile3_wallNr13337ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr13337ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr13337ID.collider = OBBCollider.Create(Tile3_wallNr13337ID.transformID)
Tile3_wallNr13337ID.collider:SetOffset(0,0,0)
Tile3_wallNr13337ID.collider:SetZAxis(1,0,0)
Tile3_wallNr13337ID.collider:SetHalfLengths(0.3,16.5682,17.5)
CollisionHandler.AddOBB(Tile3_wallNr13337ID.collider, 3)
table.insert(colliders,Tile3_wallNr13337ID)
Tile3_wallNr13337ID = nil

Tile3_wallNr14338ID = {}
Tile3_wallNr14338ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr14338ID.transformID, {x=511.5, y=41.5339, z=241.5})
Transform.SetScaleNonUniform(Tile3_wallNr14338ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr14338ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr14338ID.collider = OBBCollider.Create(Tile3_wallNr14338ID.transformID)
Tile3_wallNr14338ID.collider:SetOffset(0,0,0)
Tile3_wallNr14338ID.collider:SetZAxis(-0.0370117,0,-0.999315)
Tile3_wallNr14338ID.collider:SetHalfLengths(0.3,5.31694,13.5093)
CollisionHandler.AddOBB(Tile3_wallNr14338ID.collider, 3)
table.insert(colliders,Tile3_wallNr14338ID)
Tile3_wallNr14338ID = nil

Tile3_wallNr15339ID = {}
Tile3_wallNr15339ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr15339ID.transformID, {x=510, y=41.8508, z=221})
Transform.SetScaleNonUniform(Tile3_wallNr15339ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr15339ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr15339ID.collider = OBBCollider.Create(Tile3_wallNr15339ID.transformID)
Tile3_wallNr15339ID.collider:SetOffset(0,0,0)
Tile3_wallNr15339ID.collider:SetZAxis(-0.141421,0,-0.98995)
Tile3_wallNr15339ID.collider:SetHalfLengths(0.3,5.31694,7.07107)
CollisionHandler.AddOBB(Tile3_wallNr15339ID.collider, 3)
table.insert(colliders,Tile3_wallNr15339ID)
Tile3_wallNr15339ID = nil

Tile3_wallNr16340ID = {}
Tile3_wallNr16340ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr16340ID.transformID, {x=506.5, y=42.1678, z=206.5})
Transform.SetScaleNonUniform(Tile3_wallNr16340ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr16340ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr16340ID.collider = OBBCollider.Create(Tile3_wallNr16340ID.transformID)
Tile3_wallNr16340ID.collider:SetOffset(0,0,0)
Tile3_wallNr16340ID.collider:SetZAxis(-0.316228,0,-0.948683)
Tile3_wallNr16340ID.collider:SetHalfLengths(0.3,5.31694,7.90569)
CollisionHandler.AddOBB(Tile3_wallNr16340ID.collider, 3)
table.insert(colliders,Tile3_wallNr16340ID)
Tile3_wallNr16340ID = nil

Tile3_wallNr17341ID = {}
Tile3_wallNr17341ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr17341ID.transformID, {x=500.5, y=41.8508, z=190})
Transform.SetScaleNonUniform(Tile3_wallNr17341ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr17341ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr17341ID.collider = OBBCollider.Create(Tile3_wallNr17341ID.transformID)
Tile3_wallNr17341ID.collider:SetOffset(0,0,0)
Tile3_wallNr17341ID.collider:SetZAxis(-0.362446,0,-0.932005)
Tile3_wallNr17341ID.collider:SetHalfLengths(0.3,5.63388,9.6566)
CollisionHandler.AddOBB(Tile3_wallNr17341ID.collider, 3)
table.insert(colliders,Tile3_wallNr17341ID)
Tile3_wallNr17341ID = nil

Tile3_wallNr18342ID = {}
Tile3_wallNr18342ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr18342ID.transformID, {x=492, y=41.217, z=172})
Transform.SetScaleNonUniform(Tile3_wallNr18342ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr18342ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr18342ID.collider = OBBCollider.Create(Tile3_wallNr18342ID.transformID)
Tile3_wallNr18342ID.collider:SetOffset(0,0,0)
Tile3_wallNr18342ID.collider:SetZAxis(-0.485643,0,-0.874157)
Tile3_wallNr18342ID.collider:SetHalfLengths(0.3,6.42622,10.2956)
CollisionHandler.AddOBB(Tile3_wallNr18342ID.collider, 3)
table.insert(colliders,Tile3_wallNr18342ID)
Tile3_wallNr18342ID = nil

Tile3_wallNr19343ID = {}
Tile3_wallNr19343ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr19343ID.transformID, {x=481, y=39.7907, z=154.5})
Transform.SetScaleNonUniform(Tile3_wallNr19343ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr19343ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr19343ID.collider = OBBCollider.Create(Tile3_wallNr19343ID.transformID)
Tile3_wallNr19343ID.collider:SetOffset(0,0,0)
Tile3_wallNr19343ID.collider:SetZAxis(-0.576683,0,-0.816968)
Tile3_wallNr19343ID.collider:SetHalfLengths(0.3,6.58469,10.4043)
CollisionHandler.AddOBB(Tile3_wallNr19343ID.collider, 3)
table.insert(colliders,Tile3_wallNr19343ID)
Tile3_wallNr19343ID = nil

Tile3_wallNr20344ID = {}
Tile3_wallNr20344ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr20344ID.transformID, {x=463.5, y=38.2061, z=139.5})
Transform.SetScaleNonUniform(Tile3_wallNr20344ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr20344ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr20344ID.collider = OBBCollider.Create(Tile3_wallNr20344ID.transformID)
Tile3_wallNr20344ID.collider:SetOffset(0,0,0)
Tile3_wallNr20344ID.collider:SetZAxis(-0.870563,0,-0.492057)
Tile3_wallNr20344ID.collider:SetHalfLengths(0.3,6.42622,13.2098)
CollisionHandler.AddOBB(Tile3_wallNr20344ID.collider, 3)
table.insert(colliders,Tile3_wallNr20344ID)
Tile3_wallNr20344ID = nil

Tile3_wallNr21345ID = {}
Tile3_wallNr21345ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr21345ID.transformID, {x=443, y=36.7798, z=130.5})
Transform.SetScaleNonUniform(Tile3_wallNr21345ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr21345ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr21345ID.collider = OBBCollider.Create(Tile3_wallNr21345ID.transformID)
Tile3_wallNr21345ID.collider:SetOffset(0,0,0)
Tile3_wallNr21345ID.collider:SetZAxis(-0.963518,0,-0.267644)
Tile3_wallNr21345ID.collider:SetHalfLengths(0.3,5.95082,9.34077)
CollisionHandler.AddOBB(Tile3_wallNr21345ID.collider, 3)
table.insert(colliders,Tile3_wallNr21345ID)
Tile3_wallNr21345ID = nil

Tile3_wallNr22346ID = {}
Tile3_wallNr22346ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr22346ID.transformID, {x=428, y=35.829, z=131.5})
Transform.SetScaleNonUniform(Tile3_wallNr22346ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr22346ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr22346ID.collider = OBBCollider.Create(Tile3_wallNr22346ID.transformID)
Tile3_wallNr22346ID.collider:SetOffset(0,0,0)
Tile3_wallNr22346ID.collider:SetZAxis(-0.863779,0,0.503871)
Tile3_wallNr22346ID.collider:SetHalfLengths(0.3,5.31694,6.94622)
CollisionHandler.AddOBB(Tile3_wallNr22346ID.collider, 3)
table.insert(colliders,Tile3_wallNr22346ID)
Tile3_wallNr22346ID = nil

Tile3_wallNr23347ID = {}
Tile3_wallNr23347ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr23347ID.transformID, {x=412.5, y=35.5121, z=139.5})
Transform.SetScaleNonUniform(Tile3_wallNr23347ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr23347ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr23347ID.collider = OBBCollider.Create(Tile3_wallNr23347ID.transformID)
Tile3_wallNr23347ID.collider:SetOffset(0,0,0)
Tile3_wallNr23347ID.collider:SetZAxis(-0.903738,0,0.428086)
Tile3_wallNr23347ID.collider:SetHalfLengths(0.3,5.15847,10.5119)
CollisionHandler.AddOBB(Tile3_wallNr23347ID.collider, 3)
table.insert(colliders,Tile3_wallNr23347ID)
Tile3_wallNr23347ID = nil

Tile3_wallNr24348ID = {}
Tile3_wallNr24348ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr24348ID.transformID, {x=401.5, y=35.3536, z=144.5})
Transform.SetScaleNonUniform(Tile3_wallNr24348ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr24348ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr24348ID.collider = OBBCollider.Create(Tile3_wallNr24348ID.transformID)
Tile3_wallNr24348ID.collider:SetOffset(0,0,0)
Tile3_wallNr24348ID.collider:SetZAxis(-0.948683,0,0.316228)
Tile3_wallNr24348ID.collider:SetHalfLengths(0.3,5,1.58114)
CollisionHandler.AddOBB(Tile3_wallNr24348ID.collider, 3)
table.insert(colliders,Tile3_wallNr24348ID)
Tile3_wallNr24348ID = nil

Tile3_wallNr25349ID = {}
Tile3_wallNr25349ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr25349ID.transformID, {x=392, y=35.3536, z=145})
Transform.SetScaleNonUniform(Tile3_wallNr25349ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr25349ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr25349ID.collider = OBBCollider.Create(Tile3_wallNr25349ID.transformID)
Tile3_wallNr25349ID.collider:SetOffset(0,0,0)
Tile3_wallNr25349ID.collider:SetZAxis(-1,0,0)
Tile3_wallNr25349ID.collider:SetHalfLengths(0.3,5.15847,8)
CollisionHandler.AddOBB(Tile3_wallNr25349ID.collider, 3)
table.insert(colliders,Tile3_wallNr25349ID)
Tile3_wallNr25349ID = nil

Tile3_wallNr26350ID = {}
Tile3_wallNr26350ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr26350ID.transformID, {x=384, y=35.1951, z=146})
Transform.SetScaleNonUniform(Tile3_wallNr26350ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr26350ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr26350ID.collider = OBBCollider.Create(Tile3_wallNr26350ID.transformID)
Tile3_wallNr26350ID.collider:SetOffset(0,0,0)
Tile3_wallNr26350ID.collider:SetZAxis(0,0,1)
Tile3_wallNr26350ID.collider:SetHalfLengths(0.3,5,1)
CollisionHandler.AddOBB(Tile3_wallNr26350ID.collider, 3)
table.insert(colliders,Tile3_wallNr26350ID)
Tile3_wallNr26350ID = nil

table.insert(level03, props)
table.insert(level03, colliders)
table.insert(level03, triggers)
end
level03.unload = function()
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


-------------------------------------level04-----------------------------------------------

level04 = {}
level04.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile438ID = {}
tile438ID.transformID = Transform.Bind()
Transform.SetPosition(tile438ID.transformID, {x=384, y=0, z=256})
Transform.SetScaleNonUniform(tile438ID.transformID, 1, 1, 1)
Transform.SetRotation(tile438ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile438ID)
tile438ID = nil

t4s146ID = {}
t4s146ID.transformID = Transform.Bind()
Transform.SetPosition(t4s146ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s146ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s146ID.transformID, {x=0, y=0, z=0})
t4s146ID.model = Assets.LoadModel('Models/tile4_s1.model')
Gear.AddStaticInstance(t4s146ID.model, t4s146ID.transformID)
table.insert(props,t4s146ID)
t4s146ID = nil

t4s247ID = {}
t4s247ID.transformID = Transform.Bind()
Transform.SetPosition(t4s247ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s247ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s247ID.transformID, {x=0, y=0, z=0})
t4s247ID.model = Assets.LoadModel('Models/tile4_s2.model')
Gear.AddStaticInstance(t4s247ID.model, t4s247ID.transformID)
table.insert(props,t4s247ID)
t4s247ID = nil

t4s348ID = {}
t4s348ID.transformID = Transform.Bind()
Transform.SetPosition(t4s348ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s348ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s348ID.transformID, {x=0, y=0, z=0})
t4s348ID.model = Assets.LoadModel('Models/tile4_s3.model')
Gear.AddStaticInstance(t4s348ID.model, t4s348ID.transformID)
table.insert(props,t4s348ID)
t4s348ID = nil

t4s449ID = {}
t4s449ID.transformID = Transform.Bind()
Transform.SetPosition(t4s449ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s449ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s449ID.transformID, {x=0, y=0, z=0})
t4s449ID.model = Assets.LoadModel('Models/tile4_s4.model')
Gear.AddStaticInstance(t4s449ID.model, t4s449ID.transformID)
table.insert(props,t4s449ID)
t4s449ID = nil

Tile4_wallNr351ID = {}
Tile4_wallNr351ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr351ID.transformID, {x=512, y=41.5953, z=300.5})
Transform.SetScaleNonUniform(Tile4_wallNr351ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr351ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr351ID.collider = OBBCollider.Create(Tile4_wallNr351ID.transformID)
Tile4_wallNr351ID.collider:SetOffset(0,0,0)
Tile4_wallNr351ID.collider:SetZAxis(0,0,1)
Tile4_wallNr351ID.collider:SetHalfLengths(0.3,11.8118,44.5)
CollisionHandler.AddOBB(Tile4_wallNr351ID.collider, 3)
table.insert(colliders,Tile4_wallNr351ID)
Tile4_wallNr351ID = nil

Tile4_wallNr1352ID = {}
Tile4_wallNr1352ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr1352ID.transformID, {x=508, y=34.7835, z=352.5})
Transform.SetScaleNonUniform(Tile4_wallNr1352ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr1352ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr1352ID.collider = OBBCollider.Create(Tile4_wallNr1352ID.transformID)
Tile4_wallNr1352ID.collider:SetOffset(0,0,0)
Tile4_wallNr1352ID.collider:SetZAxis(-0.470588,0,0.882353)
Tile4_wallNr1352ID.collider:SetHalfLengths(0.3,6.02178,8.5)
CollisionHandler.AddOBB(Tile4_wallNr1352ID.collider, 3)
table.insert(colliders,Tile4_wallNr1352ID)
Tile4_wallNr1352ID = nil

Tile4_wallNr2353ID = {}
Tile4_wallNr2353ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr2353ID.transformID, {x=502.5, y=35.8052, z=364.5})
Transform.SetScaleNonUniform(Tile4_wallNr2353ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr2353ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr2353ID.collider = OBBCollider.Create(Tile4_wallNr2353ID.transformID)
Tile4_wallNr2353ID.collider:SetOffset(0,0,0)
Tile4_wallNr2353ID.collider:SetZAxis(-0.316228,0,0.948683)
Tile4_wallNr2353ID.collider:SetHalfLengths(0.3,6.24884,4.74342)
CollisionHandler.AddOBB(Tile4_wallNr2353ID.collider, 3)
table.insert(colliders,Tile4_wallNr2353ID)
Tile4_wallNr2353ID = nil

Tile4_wallNr3354ID = {}
Tile4_wallNr3354ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr3354ID.transformID, {x=502.5, y=37.0541, z=372.5})
Transform.SetScaleNonUniform(Tile4_wallNr3354ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr3354ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr3354ID.collider = OBBCollider.Create(Tile4_wallNr3354ID.transformID)
Tile4_wallNr3354ID.collider:SetOffset(0,0,0)
Tile4_wallNr3354ID.collider:SetZAxis(0.393919,0,0.919145)
Tile4_wallNr3354ID.collider:SetHalfLengths(0.3,5.68118,3.80789)
CollisionHandler.AddOBB(Tile4_wallNr3354ID.collider, 3)
table.insert(colliders,Tile4_wallNr3354ID)
Tile4_wallNr3354ID = nil

Tile4_wallNr4355ID = {}
Tile4_wallNr4355ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr4355ID.transformID, {x=506, y=37.7352, z=379.5})
Transform.SetScaleNonUniform(Tile4_wallNr4355ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr4355ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr4355ID.collider = OBBCollider.Create(Tile4_wallNr4355ID.transformID)
Tile4_wallNr4355ID.collider:SetOffset(0,0,0)
Tile4_wallNr4355ID.collider:SetZAxis(0.496139,0,0.868243)
Tile4_wallNr4355ID.collider:SetHalfLengths(0.3,5.90825,4.03113)
CollisionHandler.AddOBB(Tile4_wallNr4355ID.collider, 3)
table.insert(colliders,Tile4_wallNr4355ID)
Tile4_wallNr4355ID = nil

Tile4_wallNr5356ID = {}
Tile4_wallNr5356ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr5356ID.transformID, {x=474, y=40.2329, z=303.5})
Transform.SetScaleNonUniform(Tile4_wallNr5356ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr5356ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr5356ID.collider = OBBCollider.Create(Tile4_wallNr5356ID.transformID)
Tile4_wallNr5356ID.collider:SetOffset(0,0,0)
Tile4_wallNr5356ID.collider:SetZAxis(0.178885,0,0.98387)
Tile4_wallNr5356ID.collider:SetHalfLengths(0.3,7.15708,16.7705)
CollisionHandler.AddOBB(Tile4_wallNr5356ID.collider, 3)
table.insert(colliders,Tile4_wallNr5356ID)
Tile4_wallNr5356ID = nil

Tile4_wallNr6357ID = {}
Tile4_wallNr6357ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr6357ID.transformID, {x=475.5, y=42.39, z=334})
Transform.SetScaleNonUniform(Tile4_wallNr6357ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr6357ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr6357ID.collider = OBBCollider.Create(Tile4_wallNr6357ID.transformID)
Tile4_wallNr6357ID.collider:SetOffset(0,0,0)
Tile4_wallNr6357ID.collider:SetZAxis(-0.106533,0,0.994309)
Tile4_wallNr6357ID.collider:SetHalfLengths(0.3,6.58943,14.0801)
CollisionHandler.AddOBB(Tile4_wallNr6357ID.collider, 3)
table.insert(colliders,Tile4_wallNr6357ID)
Tile4_wallNr6357ID = nil

Tile4_wallNr7358ID = {}
Tile4_wallNr7358ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr7358ID.transformID, {x=475.5, y=43.9794, z=365.5})
Transform.SetScaleNonUniform(Tile4_wallNr7358ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr7358ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr7358ID.collider = OBBCollider.Create(Tile4_wallNr7358ID.transformID)
Tile4_wallNr7358ID.collider:SetOffset(0,0,0)
Tile4_wallNr7358ID.collider:SetZAxis(0.0854011,0,0.996347)
Tile4_wallNr7358ID.collider:SetHalfLengths(0.3,5.34059,17.5642)
CollisionHandler.AddOBB(Tile4_wallNr7358ID.collider, 3)
table.insert(colliders,Tile4_wallNr7358ID)
Tile4_wallNr7358ID = nil

Tile4_wallNr8359ID = {}
Tile4_wallNr8359ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr8359ID.transformID, {x=467.5, y=40.2329, z=291.5})
Transform.SetScaleNonUniform(Tile4_wallNr8359ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr8359ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr8359ID.collider = OBBCollider.Create(Tile4_wallNr8359ID.transformID)
Tile4_wallNr8359ID.collider:SetOffset(0,0,0)
Tile4_wallNr8359ID.collider:SetZAxis(-0.613941,0,0.789352)
Tile4_wallNr8359ID.collider:SetHalfLengths(0.3,15.3313,5.70088)
CollisionHandler.AddOBB(Tile4_wallNr8359ID.collider, 3)
table.insert(colliders,Tile4_wallNr8359ID)
Tile4_wallNr8359ID = nil

Tile4_wallNr9360ID = {}
Tile4_wallNr9360ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr9360ID.transformID, {x=466, y=50.5642, z=306})
Transform.SetScaleNonUniform(Tile4_wallNr9360ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr9360ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr9360ID.collider = OBBCollider.Create(Tile4_wallNr9360ID.transformID)
Tile4_wallNr9360ID.collider:SetOffset(0,0,0)
Tile4_wallNr9360ID.collider:SetZAxis(0.196116,0,0.980581)
Tile4_wallNr9360ID.collider:SetHalfLengths(0.3,5.68119,10.198)
CollisionHandler.AddOBB(Tile4_wallNr9360ID.collider, 3)
table.insert(colliders,Tile4_wallNr9360ID)
Tile4_wallNr9360ID = nil

Tile4_wallNr10361ID = {}
Tile4_wallNr10361ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr10361ID.transformID, {x=468.5, y=51.2454, z=325.5})
Transform.SetScaleNonUniform(Tile4_wallNr10361ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr10361ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr10361ID.collider = OBBCollider.Create(Tile4_wallNr10361ID.transformID)
Tile4_wallNr10361ID.collider:SetOffset(0,0,0)
Tile4_wallNr10361ID.collider:SetZAxis(0.0525588,0,0.998618)
Tile4_wallNr10361ID.collider:SetHalfLengths(0.3,8.29239,9.51315)
CollisionHandler.AddOBB(Tile4_wallNr10361ID.collider, 3)
table.insert(colliders,Tile4_wallNr10361ID)
Tile4_wallNr10361ID = nil

Tile4_wallNr11362ID = {}
Tile4_wallNr11362ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr11362ID.transformID, {x=469.5, y=54.5378, z=347.5})
Transform.SetScaleNonUniform(Tile4_wallNr11362ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr11362ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr11362ID.collider = OBBCollider.Create(Tile4_wallNr11362ID.transformID)
Tile4_wallNr11362ID.collider:SetOffset(0,0,0)
Tile4_wallNr11362ID.collider:SetZAxis(0.039968,0,0.999201)
Tile4_wallNr11362ID.collider:SetHalfLengths(0.3,6.81649,12.51)
CollisionHandler.AddOBB(Tile4_wallNr11362ID.collider, 3)
table.insert(colliders,Tile4_wallNr11362ID)
Tile4_wallNr11362ID = nil

Tile4_wallNr12363ID = {}
Tile4_wallNr12363ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr12363ID.transformID, {x=470, y=56.3543, z=371.5})
Transform.SetScaleNonUniform(Tile4_wallNr12363ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr12363ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr12363ID.collider = OBBCollider.Create(Tile4_wallNr12363ID.transformID)
Tile4_wallNr12363ID.collider:SetOffset(0,0,0)
Tile4_wallNr12363ID.collider:SetZAxis(0,0,1)
Tile4_wallNr12363ID.collider:SetHalfLengths(0.3,7.49767,11.5)
CollisionHandler.AddOBB(Tile4_wallNr12363ID.collider, 3)
table.insert(colliders,Tile4_wallNr12363ID)
Tile4_wallNr12363ID = nil

Tile4_wallNr13364ID = {}
Tile4_wallNr13364ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr13364ID.transformID, {x=453, y=40.9141, z=256})
Transform.SetScaleNonUniform(Tile4_wallNr13364ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr13364ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr13364ID.collider = OBBCollider.Create(Tile4_wallNr13364ID.transformID)
Tile4_wallNr13364ID.collider:SetOffset(0,0,0)
Tile4_wallNr13364ID.collider:SetZAxis(-1,0,0)
Tile4_wallNr13364ID.collider:SetHalfLengths(0.3,16.9207,18)
CollisionHandler.AddOBB(Tile4_wallNr13364ID.collider, 3)
table.insert(colliders,Tile4_wallNr13364ID)
Tile4_wallNr13364ID = nil

Tile4_wallNr14365ID = {}
Tile4_wallNr14365ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr14365ID.transformID, {x=435, y=52.8348, z=263})
Transform.SetScaleNonUniform(Tile4_wallNr14365ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr14365ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr14365ID.collider = OBBCollider.Create(Tile4_wallNr14365ID.transformID)
Tile4_wallNr14365ID.collider:SetOffset(0,0,0)
Tile4_wallNr14365ID.collider:SetZAxis(0,0,1)
Tile4_wallNr14365ID.collider:SetHalfLengths(0.3,6.1353,7)
CollisionHandler.AddOBB(Tile4_wallNr14365ID.collider, 3)
table.insert(colliders,Tile4_wallNr14365ID)
Tile4_wallNr14365ID = nil

Tile4_wallNr15366ID = {}
Tile4_wallNr15366ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr15366ID.transformID, {x=436, y=53.9701, z=283.5})
Transform.SetScaleNonUniform(Tile4_wallNr15366ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr15366ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr15366ID.collider = OBBCollider.Create(Tile4_wallNr15366ID.transformID)
Tile4_wallNr15366ID.collider:SetOffset(0,0,0)
Tile4_wallNr15366ID.collider:SetZAxis(0.0738717,0,0.997268)
Tile4_wallNr15366ID.collider:SetHalfLengths(0.3,6.81649,13.537)
CollisionHandler.AddOBB(Tile4_wallNr15366ID.collider, 3)
table.insert(colliders,Tile4_wallNr15366ID)
Tile4_wallNr15366ID = nil

Tile4_wallNr16367ID = {}
Tile4_wallNr16367ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr16367ID.transformID, {x=439, y=55.7866, z=309.5})
Transform.SetScaleNonUniform(Tile4_wallNr16367ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr16367ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr16367ID.collider = OBBCollider.Create(Tile4_wallNr16367ID.transformID)
Tile4_wallNr16367ID.collider:SetOffset(0,0,0)
Tile4_wallNr16367ID.collider:SetZAxis(0.157991,0,0.987441)
Tile4_wallNr16367ID.collider:SetHalfLengths(0.3,5.3406,12.659)
CollisionHandler.AddOBB(Tile4_wallNr16367ID.collider, 3)
table.insert(colliders,Tile4_wallNr16367ID)
Tile4_wallNr16367ID = nil

Tile4_wallNr17368ID = {}
Tile4_wallNr17368ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr17368ID.transformID, {x=442.5, y=56.1272, z=328.5})
Transform.SetScaleNonUniform(Tile4_wallNr17368ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr17368ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr17368ID.collider = OBBCollider.Create(Tile4_wallNr17368ID.transformID)
Tile4_wallNr17368ID.collider:SetOffset(0,0,0)
Tile4_wallNr17368ID.collider:SetZAxis(0.22486,0,0.974391)
Tile4_wallNr17368ID.collider:SetHalfLengths(0.3,6.13531,6.67083)
CollisionHandler.AddOBB(Tile4_wallNr17368ID.collider, 3)
table.insert(colliders,Tile4_wallNr17368ID)
Tile4_wallNr17368ID = nil

Tile4_wallNr18369ID = {}
Tile4_wallNr18369ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr18369ID.transformID, {x=447, y=57.2625, z=342.5})
Transform.SetScaleNonUniform(Tile4_wallNr18369ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr18369ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr18369ID.collider = OBBCollider.Create(Tile4_wallNr18369ID.transformID)
Tile4_wallNr18369ID.collider:SetOffset(0,0,0)
Tile4_wallNr18369ID.collider:SetZAxis(0.371391,0,0.928477)
Tile4_wallNr18369ID.collider:SetHalfLengths(0.3,7.95179,8.07775)
CollisionHandler.AddOBB(Tile4_wallNr18369ID.collider, 3)
table.insert(colliders,Tile4_wallNr18369ID)
Tile4_wallNr18369ID = nil

Tile4_wallNr19370ID = {}
Tile4_wallNr19370ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr19370ID.transformID, {x=450.5, y=60.2143, z=356.5})
Transform.SetScaleNonUniform(Tile4_wallNr19370ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr19370ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr19370ID.collider = OBBCollider.Create(Tile4_wallNr19370ID.transformID)
Tile4_wallNr19370ID.collider:SetOffset(0,0,0)
Tile4_wallNr19370ID.collider:SetZAxis(0.0766965,0,0.997055)
Tile4_wallNr19370ID.collider:SetHalfLengths(0.3,5.90825,6.5192)
CollisionHandler.AddOBB(Tile4_wallNr19370ID.collider, 3)
table.insert(colliders,Tile4_wallNr19370ID)
Tile4_wallNr19370ID = nil

Tile4_wallNr20371ID = {}
Tile4_wallNr20371ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr20371ID.transformID, {x=452, y=61.1226, z=373})
Transform.SetScaleNonUniform(Tile4_wallNr20371ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr20371ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr20371ID.collider = OBBCollider.Create(Tile4_wallNr20371ID.transformID)
Tile4_wallNr20371ID.collider:SetOffset(0,0,0)
Tile4_wallNr20371ID.collider:SetZAxis(0.0995037,0,0.995037)
Tile4_wallNr20371ID.collider:SetHalfLengths(0.3,7.38414,10.0499)
CollisionHandler.AddOBB(Tile4_wallNr20371ID.collider, 3)
table.insert(colliders,Tile4_wallNr20371ID)
Tile4_wallNr20371ID = nil

Tile4_wallNr21372ID = {}
Tile4_wallNr21372ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr21372ID.transformID, {x=473.5, y=58.852, z=383})
Transform.SetScaleNonUniform(Tile4_wallNr21372ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr21372ID.transformID, {x=0, y=0, z=0})
Tile4_wallNr21372ID.collider = OBBCollider.Create(Tile4_wallNr21372ID.transformID)
Tile4_wallNr21372ID.collider:SetOffset(0,0,0)
Tile4_wallNr21372ID.collider:SetZAxis(1,0,0)
Tile4_wallNr21372ID.collider:SetHalfLengths(0.3,19.5319,3.5)
CollisionHandler.AddOBB(Tile4_wallNr21372ID.collider, 3)
table.insert(colliders,Tile4_wallNr21372ID)
Tile4_wallNr21372ID = nil

table.insert(level04, props)
table.insert(level04, colliders)
table.insert(level04, triggers)
end
level04.unload = function()
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


-------------------------------------level05-----------------------------------------------

level05 = {}
level05.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile539ID = {}
tile539ID.transformID = Transform.Bind()
Transform.SetPosition(tile539ID.transformID, {x=384, y=0, z=384})
Transform.SetScaleNonUniform(tile539ID.transformID, 1, 1, 1)
Transform.SetRotation(tile539ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile539ID)
tile539ID = nil

t5s150ID = {}
t5s150ID.transformID = Transform.Bind()
Transform.SetPosition(t5s150ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s150ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s150ID.transformID, {x=0, y=0, z=0})
t5s150ID.model = Assets.LoadModel('Models/tile5_s1.model')
Gear.AddStaticInstance(t5s150ID.model, t5s150ID.transformID)
table.insert(props,t5s150ID)
t5s150ID = nil

t5s251ID = {}
t5s251ID.transformID = Transform.Bind()
Transform.SetPosition(t5s251ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s251ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s251ID.transformID, {x=0, y=0, z=0})
t5s251ID.model = Assets.LoadModel('Models/tile5_s2.model')
Gear.AddStaticInstance(t5s251ID.model, t5s251ID.transformID)
table.insert(props,t5s251ID)
t5s251ID = nil

t5s352ID = {}
t5s352ID.transformID = Transform.Bind()
Transform.SetPosition(t5s352ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s352ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s352ID.transformID, {x=0, y=0, z=0})
t5s352ID.model = Assets.LoadModel('Models/tile5_s3.model')
Gear.AddStaticInstance(t5s352ID.model, t5s352ID.transformID)
table.insert(props,t5s352ID)
t5s352ID = nil

t5s453ID = {}
t5s453ID.transformID = Transform.Bind()
Transform.SetPosition(t5s453ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s453ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s453ID.transformID, {x=0, y=0, z=0})
t5s453ID.model = Assets.LoadModel('Models/tile5_s4.model')
Gear.AddStaticInstance(t5s453ID.model, t5s453ID.transformID)
table.insert(props,t5s453ID)
t5s453ID = nil

t5s554ID = {}
t5s554ID.transformID = Transform.Bind()
Transform.SetPosition(t5s554ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s554ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s554ID.transformID, {x=0, y=0, z=0})
t5s554ID.model = Assets.LoadModel('Models/tile5_s5.model')
Gear.AddStaticInstance(t5s554ID.model, t5s554ID.transformID)
table.insert(props,t5s554ID)
t5s554ID = nil

t5s655ID = {}
t5s655ID.transformID = Transform.Bind()
Transform.SetPosition(t5s655ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s655ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s655ID.transformID, {x=0, y=0, z=0})
t5s655ID.model = Assets.LoadModel('Models/tile5_s6.model')
Gear.AddStaticInstance(t5s655ID.model, t5s655ID.transformID)
table.insert(props,t5s655ID)
t5s655ID = nil

t6s459ID = {}
t6s459ID.transformID = Transform.Bind()
Transform.SetPosition(t6s459ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s459ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s459ID.transformID, {x=0, y=0, z=0})
t6s459ID.model = Assets.LoadModel('Models/tile6_s4.model')
Gear.AddStaticInstance(t6s459ID.model, t6s459ID.transformID)
table.insert(props,t6s459ID)
t6s459ID = nil

table.insert(level05, props)
table.insert(level05, colliders)
table.insert(level05, triggers)
end
level05.unload = function()
end
levels[5] = level05
-------------------------------------level05-----------------------------------------------


-------------------------------------level06-----------------------------------------------

level06 = {}
level06.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile640ID = {}
tile640ID.transformID = Transform.Bind()
Transform.SetPosition(tile640ID.transformID, {x=384, y=0, z=640})
Transform.SetScaleNonUniform(tile640ID.transformID, 1, 1, 1)
Transform.SetRotation(tile640ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile640ID)
tile640ID = nil

t6s156ID = {}
t6s156ID.transformID = Transform.Bind()
Transform.SetPosition(t6s156ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s156ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s156ID.transformID, {x=0, y=0, z=0})
t6s156ID.model = Assets.LoadModel('Models/tile6_s1.model')
Gear.AddStaticInstance(t6s156ID.model, t6s156ID.transformID)
table.insert(props,t6s156ID)
t6s156ID = nil

t6s257ID = {}
t6s257ID.transformID = Transform.Bind()
Transform.SetPosition(t6s257ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s257ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s257ID.transformID, {x=0, y=0, z=0})
t6s257ID.model = Assets.LoadModel('Models/tile6_s2.model')
Gear.AddStaticInstance(t6s257ID.model, t6s257ID.transformID)
table.insert(props,t6s257ID)
t6s257ID = nil

t6s358ID = {}
t6s358ID.transformID = Transform.Bind()
Transform.SetPosition(t6s358ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s358ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s358ID.transformID, {x=0, y=0, z=0})
t6s358ID.model = Assets.LoadModel('Models/tile6_s3.model')
Gear.AddStaticInstance(t6s358ID.model, t6s358ID.transformID)
table.insert(props,t6s358ID)
t6s358ID = nil

t6s560ID = {}
t6s560ID.transformID = Transform.Bind()
Transform.SetPosition(t6s560ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s560ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s560ID.transformID, {x=0, y=0, z=0})
t6s560ID.model = Assets.LoadModel('Models/tile6_s5.model')
Gear.AddStaticInstance(t6s560ID.model, t6s560ID.transformID)
table.insert(props,t6s560ID)
t6s560ID = nil

t6s661ID = {}
t6s661ID.transformID = Transform.Bind()
Transform.SetPosition(t6s661ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s661ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s661ID.transformID, {x=0, y=0, z=0})
t6s661ID.model = Assets.LoadModel('Models/tile6_s6.model')
Gear.AddStaticInstance(t6s661ID.model, t6s661ID.transformID)
table.insert(props,t6s661ID)
t6s661ID = nil

t6s762ID = {}
t6s762ID.transformID = Transform.Bind()
Transform.SetPosition(t6s762ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s762ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s762ID.transformID, {x=0, y=0, z=0})
t6s762ID.model = Assets.LoadModel('Models/tile6_s7.model')
Gear.AddStaticInstance(t6s762ID.model, t6s762ID.transformID)
table.insert(props,t6s762ID)
t6s762ID = nil

t6s863ID = {}
t6s863ID.transformID = Transform.Bind()
Transform.SetPosition(t6s863ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s863ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s863ID.transformID, {x=0, y=0, z=0})
t6s863ID.model = Assets.LoadModel('Models/tile6_s8.model')
Gear.AddStaticInstance(t6s863ID.model, t6s863ID.transformID)
table.insert(props,t6s863ID)
t6s863ID = nil

t6s964ID = {}
t6s964ID.transformID = Transform.Bind()
Transform.SetPosition(t6s964ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s964ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s964ID.transformID, {x=0, y=0, z=0})
t6s964ID.model = Assets.LoadModel('Models/tile6_s9.model')
Gear.AddStaticInstance(t6s964ID.model, t6s964ID.transformID)
table.insert(props,t6s964ID)
t6s964ID = nil

t6s1065ID = {}
t6s1065ID.transformID = Transform.Bind()
Transform.SetPosition(t6s1065ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s1065ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s1065ID.transformID, {x=0, y=0, z=0})
t6s1065ID.model = Assets.LoadModel('Models/tile6_s10.model')
Gear.AddStaticInstance(t6s1065ID.model, t6s1065ID.transformID)
table.insert(props,t6s1065ID)
t6s1065ID = nil

table.insert(level06, props)
table.insert(level06, colliders)
table.insert(level06, triggers)
end
level06.unload = function()
end
levels[6] = level06
-------------------------------------level06-----------------------------------------------


-------------------------------------level07-----------------------------------------------

level07 = {}
level07.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile741ID = {}
tile741ID.transformID = Transform.Bind()
Transform.SetPosition(tile741ID.transformID, {x=128, y=0, z=512})
Transform.SetScaleNonUniform(tile741ID.transformID, 1, 1, 1)
Transform.SetRotation(tile741ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile741ID)
tile741ID = nil

t7s166ID = {}
t7s166ID.transformID = Transform.Bind()
Transform.SetPosition(t7s166ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s166ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s166ID.transformID, {x=0, y=0, z=0})
t7s166ID.model = Assets.LoadModel('Models/tile7_s1.model')
Gear.AddStaticInstance(t7s166ID.model, t7s166ID.transformID)
table.insert(props,t7s166ID)
t7s166ID = nil

t7s267ID = {}
t7s267ID.transformID = Transform.Bind()
Transform.SetPosition(t7s267ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s267ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s267ID.transformID, {x=0, y=0, z=0})
t7s267ID.model = Assets.LoadModel('Models/tile7_s2.model')
Gear.AddStaticInstance(t7s267ID.model, t7s267ID.transformID)
table.insert(props,t7s267ID)
t7s267ID = nil

t7s368ID = {}
t7s368ID.transformID = Transform.Bind()
Transform.SetPosition(t7s368ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s368ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s368ID.transformID, {x=0, y=0, z=0})
t7s368ID.model = Assets.LoadModel('Models/tile7_s3.model')
Gear.AddStaticInstance(t7s368ID.model, t7s368ID.transformID)
table.insert(props,t7s368ID)
t7s368ID = nil

t7s469ID = {}
t7s469ID.transformID = Transform.Bind()
Transform.SetPosition(t7s469ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s469ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s469ID.transformID, {x=0, y=0, z=0})
t7s469ID.model = Assets.LoadModel('Models/tile7_s4.model')
Gear.AddStaticInstance(t7s469ID.model, t7s469ID.transformID)
table.insert(props,t7s469ID)
t7s469ID = nil

t7s570ID = {}
t7s570ID.transformID = Transform.Bind()
Transform.SetPosition(t7s570ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s570ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s570ID.transformID, {x=0, y=0, z=0})
t7s570ID.model = Assets.LoadModel('Models/tile7_s5.model')
Gear.AddStaticInstance(t7s570ID.model, t7s570ID.transformID)
table.insert(props,t7s570ID)
t7s570ID = nil

t7s671ID = {}
t7s671ID.transformID = Transform.Bind()
Transform.SetPosition(t7s671ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s671ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s671ID.transformID, {x=0, y=0, z=0})
t7s671ID.model = Assets.LoadModel('Models/tile7_s6.model')
Gear.AddStaticInstance(t7s671ID.model, t7s671ID.transformID)
table.insert(props,t7s671ID)
t7s671ID = nil

t7s772ID = {}
t7s772ID.transformID = Transform.Bind()
Transform.SetPosition(t7s772ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s772ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s772ID.transformID, {x=0, y=0, z=0})
t7s772ID.model = Assets.LoadModel('Models/tile7_s7.model')
Gear.AddStaticInstance(t7s772ID.model, t7s772ID.transformID)
table.insert(props,t7s772ID)
t7s772ID = nil

t7s873ID = {}
t7s873ID.transformID = Transform.Bind()
Transform.SetPosition(t7s873ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s873ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s873ID.transformID, {x=0, y=0, z=0})
t7s873ID.model = Assets.LoadModel('Models/tile7_s8.model')
Gear.AddStaticInstance(t7s873ID.model, t7s873ID.transformID)
table.insert(props,t7s873ID)
t7s873ID = nil

t7s974ID = {}
t7s974ID.transformID = Transform.Bind()
Transform.SetPosition(t7s974ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s974ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s974ID.transformID, {x=0, y=0, z=0})
t7s974ID.model = Assets.LoadModel('Models/tile7_s9.model')
Gear.AddStaticInstance(t7s974ID.model, t7s974ID.transformID)
table.insert(props,t7s974ID)
t7s974ID = nil

table.insert(level07, props)
table.insert(level07, colliders)
table.insert(level07, triggers)
end
level07.unload = function()
end
levels[7] = level07
-------------------------------------level07-----------------------------------------------


-------------------------------------level08-----------------------------------------------

level08 = {}
level08.load = function()
props = props or {}
colliders = colliders or {}
triggers = triggers or {}
tile842ID = {}
tile842ID.transformID = Transform.Bind()
Transform.SetPosition(tile842ID.transformID, {x=256, y=0, z=384})
Transform.SetScaleNonUniform(tile842ID.transformID, 1, 1, 1)
Transform.SetRotation(tile842ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile842ID)
tile842ID = nil

t8s175ID = {}
t8s175ID.transformID = Transform.Bind()
Transform.SetPosition(t8s175ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s175ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s175ID.transformID, {x=0, y=0, z=0})
t8s175ID.model = Assets.LoadModel('Models/tile8_s1.model')
Gear.AddStaticInstance(t8s175ID.model, t8s175ID.transformID)
table.insert(props,t8s175ID)
t8s175ID = nil

t8s276ID = {}
t8s276ID.transformID = Transform.Bind()
Transform.SetPosition(t8s276ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s276ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s276ID.transformID, {x=0, y=0, z=0})
t8s276ID.model = Assets.LoadModel('Models/tile8_s2.model')
Gear.AddStaticInstance(t8s276ID.model, t8s276ID.transformID)
table.insert(props,t8s276ID)
t8s276ID = nil

t8s377ID = {}
t8s377ID.transformID = Transform.Bind()
Transform.SetPosition(t8s377ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s377ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s377ID.transformID, {x=0, y=0, z=0})
t8s377ID.model = Assets.LoadModel('Models/tile8_s3.model')
Gear.AddStaticInstance(t8s377ID.model, t8s377ID.transformID)
table.insert(props,t8s377ID)
t8s377ID = nil

table.insert(level08, props)
table.insert(level08, colliders)
table.insert(level08, triggers)
end
level08.unload = function()
end
levels[8] = level08
-------------------------------------level08-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
AI.AddHeightMap(heightmaps[i].asset,i)
end
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)
