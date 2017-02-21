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
player:ChangeHeightmap(1)
table.insert(props,TileSettings4ID)
TileSettings4ID = nil

m16ID = {}
m16ID.model = Assets.LoadModel('Models/tiel1_m1.model')
m16ID.transformID = Gear.BindStaticInstance(m16ID.model)
--m16ID.transformID = Transform.Bind()
Transform.SetPosition(m16ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m16ID.transformID, 1, 1, 1)
Transform.SetRotation(m16ID.transformID, {x=0, y=0, z=0})
--m16ID.model = Assets.LoadModel('Models/tile1_m1.model')
--Gear.AddStaticInstance(m16ID.model, m16ID.transformID)
table.insert(props,m16ID)
m16ID = nil

m27ID = {}
--m27ID.transformID = Transform.Bind()
m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
Gear.AddStaticInstance(m27ID.model, m27ID.transformID)
Transform.SetPosition(m27ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m27ID.transformID, 1, 1, 1)
Transform.SetRotation(m27ID.transformID, {x=0, y=0, z=0})
--m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
--Gear.AddStaticInstance(m27ID.model, m27ID.transformID)
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
table.insert(colliders,Obb3835ID)
Obb3835ID = nil

OpWall78ID = {}
OpWall78ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall78ID.transformID, {x=6, y=6.83489, z=143})
Transform.SetScaleNonUniform(OpWall78ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall78ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall78ID)
OpWall78ID = nil

OpWall179ID = {}
OpWall179ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall179ID.transformID, {x=10.5, y=7.12947, z=140})
Transform.SetScaleNonUniform(OpWall179ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall179ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall179ID)
OpWall179ID = nil

OpWall280ID = {}
OpWall280ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall280ID.transformID, {x=17, y=6.98218, z=141})
Transform.SetScaleNonUniform(OpWall280ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall280ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall280ID)
OpWall280ID = nil

OpWall381ID = {}
OpWall381ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall381ID.transformID, {x=45, y=8.60238, z=129.5})
Transform.SetScaleNonUniform(OpWall381ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall381ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall381ID)
OpWall381ID = nil

OpWall482ID = {}
OpWall482ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall482ID.transformID, {x=51.5, y=8.60238, z=137})
Transform.SetScaleNonUniform(OpWall482ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall482ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall482ID)
OpWall482ID = nil

OpWall583ID = {}
OpWall583ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall583ID.transformID, {x=55.5, y=9.33883, z=145.5})
Transform.SetScaleNonUniform(OpWall583ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall583ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall583ID)
OpWall583ID = nil

OpWall684ID = {}
OpWall684ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall684ID.transformID, {x=52.5, y=9.33883, z=152})
Transform.SetScaleNonUniform(OpWall684ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall684ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall684ID)
OpWall684ID = nil

OpWall785ID = {}
OpWall785ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall785ID.transformID, {x=44, y=9.48612, z=157})
Transform.SetScaleNonUniform(OpWall785ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall785ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall785ID)
OpWall785ID = nil

OpWall886ID = {}
OpWall886ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall886ID.transformID, {x=35, y=7.12947, z=155})
Transform.SetScaleNonUniform(OpWall886ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall886ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall886ID)
OpWall886ID = nil

OpWall987ID = {}
OpWall987ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall987ID.transformID, {x=37, y=7.27676, z=160})
Transform.SetScaleNonUniform(OpWall987ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall987ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall987ID)
OpWall987ID = nil

OpWall1088ID = {}
OpWall1088ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1088ID.transformID, {x=39.5, y=6.98218, z=163})
Transform.SetScaleNonUniform(OpWall1088ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1088ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1088ID)
OpWall1088ID = nil

OpWall1189ID = {}
OpWall1189ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1189ID.transformID, {x=43.5, y=7.12947, z=165})
Transform.SetScaleNonUniform(OpWall1189ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1189ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1189ID)
OpWall1189ID = nil

OpWall1290ID = {}
OpWall1290ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1290ID.transformID, {x=48.5, y=7.57134, z=166})
Transform.SetScaleNonUniform(OpWall1290ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1290ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1290ID)
OpWall1290ID = nil

OpWall1391ID = {}
OpWall1391ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1391ID.transformID, {x=54, y=8.01322, z=168})
Transform.SetScaleNonUniform(OpWall1391ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1391ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1391ID)
OpWall1391ID = nil

OpWall1492ID = {}
OpWall1492ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1492ID.transformID, {x=57.5, y=8.01322, z=171})
Transform.SetScaleNonUniform(OpWall1492ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1492ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1492ID)
OpWall1492ID = nil

OpWall1593ID = {}
OpWall1593ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1593ID.transformID, {x=57.5, y=8.01322, z=176})
Transform.SetScaleNonUniform(OpWall1593ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1593ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1593ID)
OpWall1593ID = nil

OpWall1694ID = {}
OpWall1694ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1694ID.transformID, {x=54.5, y=8.01322, z=183})
Transform.SetScaleNonUniform(OpWall1694ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1694ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1694ID)
OpWall1694ID = nil

OpWall1795ID = {}
OpWall1795ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1795ID.transformID, {x=49, y=8.01322, z=186.5})
Transform.SetScaleNonUniform(OpWall1795ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1795ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1795ID)
OpWall1795ID = nil

OpWall1896ID = {}
OpWall1896ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1896ID.transformID, {x=44, y=8.01322, z=187})
Transform.SetScaleNonUniform(OpWall1896ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1896ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1896ID)
OpWall1896ID = nil

OpWall1997ID = {}
OpWall1997ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1997ID.transformID, {x=40, y=8.01322, z=185.5})
Transform.SetScaleNonUniform(OpWall1997ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1997ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1997ID)
OpWall1997ID = nil

OpWall2098ID = {}
OpWall2098ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2098ID.transformID, {x=37, y=7.71863, z=182})
Transform.SetScaleNonUniform(OpWall2098ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2098ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2098ID)
OpWall2098ID = nil

OpWall2199ID = {}
OpWall2199ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2199ID.transformID, {x=35, y=7.12947, z=176.5})
Transform.SetScaleNonUniform(OpWall2199ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2199ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2199ID)
OpWall2199ID = nil

OpWall22100ID = {}
OpWall22100ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall22100ID.transformID, {x=32.5, y=6.54031, z=170.5})
Transform.SetScaleNonUniform(OpWall22100ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall22100ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall22100ID)
OpWall22100ID = nil

OpWall23101ID = {}
OpWall23101ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall23101ID.transformID, {x=29.5, y=6.54031, z=168})
Transform.SetScaleNonUniform(OpWall23101ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall23101ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall23101ID)
OpWall23101ID = nil

OpWall24102ID = {}
OpWall24102ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall24102ID.transformID, {x=25, y=6.09844, z=170.5})
Transform.SetScaleNonUniform(OpWall24102ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall24102ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall24102ID)
OpWall24102ID = nil

OpWall25103ID = {}
OpWall25103ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall25103ID.transformID, {x=22, y=5.80386, z=174.5})
Transform.SetScaleNonUniform(OpWall25103ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall25103ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall25103ID)
OpWall25103ID = nil

OpWall26104ID = {}
OpWall26104ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall26104ID.transformID, {x=23.5, y=5.80386, z=179.5})
Transform.SetScaleNonUniform(OpWall26104ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall26104ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall26104ID)
OpWall26104ID = nil

OpWall27105ID = {}
OpWall27105ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall27105ID.transformID, {x=32, y=5.50927, z=189.5})
Transform.SetScaleNonUniform(OpWall27105ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall27105ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall27105ID)
OpWall27105ID = nil

OpWall28106ID = {}
OpWall28106ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall28106ID.transformID, {x=37.5, y=8.16051, z=196.5})
Transform.SetScaleNonUniform(OpWall28106ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall28106ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall28106ID)
OpWall28106ID = nil

OpWall29107ID = {}
OpWall29107ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall29107ID.transformID, {x=35.5, y=8.16051, z=198})
Transform.SetScaleNonUniform(OpWall29107ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall29107ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall29107ID)
OpWall29107ID = nil

OpWall30108ID = {}
OpWall30108ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall30108ID.transformID, {x=42.5, y=8.3078, z=200})
Transform.SetScaleNonUniform(OpWall30108ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall30108ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall30108ID)
OpWall30108ID = nil

OpWall31109ID = {}
OpWall31109ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall31109ID.transformID, {x=50.5, y=9.63341, z=202.5})
Transform.SetScaleNonUniform(OpWall31109ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall31109ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall31109ID)
OpWall31109ID = nil

OpWall32110ID = {}
OpWall32110ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall32110ID.transformID, {x=55, y=10.3699, z=207.5})
Transform.SetScaleNonUniform(OpWall32110ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall32110ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall32110ID)
OpWall32110ID = nil

OpWall33111ID = {}
OpWall33111ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall33111ID.transformID, {x=62, y=11.4009, z=208})
Transform.SetScaleNonUniform(OpWall33111ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall33111ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall33111ID)
OpWall33111ID = nil

OpWall34112ID = {}
OpWall34112ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall34112ID.transformID, {x=71.5, y=15.0832, z=205.5})
Transform.SetScaleNonUniform(OpWall34112ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall34112ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall34112ID)
OpWall34112ID = nil

OpWall35113ID = {}
OpWall35113ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall35113ID.transformID, {x=79, y=18.3236, z=202.5})
Transform.SetScaleNonUniform(OpWall35113ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall35113ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall35113ID)
OpWall35113ID = nil

OpWall36114ID = {}
OpWall36114ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall36114ID.transformID, {x=85.5, y=20.091, z=198})
Transform.SetScaleNonUniform(OpWall36114ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall36114ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall36114ID)
OpWall36114ID = nil

OpWall37115ID = {}
OpWall37115ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall37115ID.transformID, {x=95, y=23.1841, z=192.5})
Transform.SetScaleNonUniform(OpWall37115ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall37115ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall37115ID)
OpWall37115ID = nil

OpWall38116ID = {}
OpWall38116ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall38116ID.transformID, {x=105, y=27.0137, z=192.5})
Transform.SetScaleNonUniform(OpWall38116ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall38116ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall38116ID)
OpWall38116ID = nil

OpWall39117ID = {}
OpWall39117ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall39117ID.transformID, {x=111, y=30.696, z=195.5})
Transform.SetScaleNonUniform(OpWall39117ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall39117ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall39117ID)
OpWall39117ID = nil

OpWall40118ID = {}
OpWall40118ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall40118ID.transformID, {x=115.5, y=31.8743, z=198})
Transform.SetScaleNonUniform(OpWall40118ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall40118ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall40118ID)
OpWall40118ID = nil

OpWall41119ID = {}
OpWall41119ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall41119ID.transformID, {x=121, y=34.6728, z=206})
Transform.SetScaleNonUniform(OpWall41119ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall41119ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall41119ID)
OpWall41119ID = nil

OpWall42120ID = {}
OpWall42120ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall42120ID.transformID, {x=126, y=32.9053, z=211.5})
Transform.SetScaleNonUniform(OpWall42120ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall42120ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall42120ID)
OpWall42120ID = nil

OpWall43121ID = {}
OpWall43121ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall43121ID.transformID, {x=90, y=21.5639, z=213.5})
Transform.SetScaleNonUniform(OpWall43121ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall43121ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall43121ID)
OpWall43121ID = nil

OpWall44122ID = {}
OpWall44122ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall44122ID.transformID, {x=98, y=22.4477, z=219.5})
Transform.SetScaleNonUniform(OpWall44122ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall44122ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall44122ID)
OpWall44122ID = nil

OpWall45123ID = {}
OpWall45123ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall45123ID.transformID, {x=105.5, y=26.8664, z=222.5})
Transform.SetScaleNonUniform(OpWall45123ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall45123ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall45123ID)
OpWall45123ID = nil

OpWall46124ID = {}
OpWall46124ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall46124ID.transformID, {x=111.5, y=28.3393, z=222})
Transform.SetScaleNonUniform(OpWall46124ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall46124ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall46124ID)
OpWall46124ID = nil

OpWall47125ID = {}
OpWall47125ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall47125ID.transformID, {x=116, y=30.9905, z=217})
Transform.SetScaleNonUniform(OpWall47125ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall47125ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall47125ID)
OpWall47125ID = nil

OpWall48126ID = {}
OpWall48126ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall48126ID.transformID, {x=114, y=36.1457, z=210.5})
Transform.SetScaleNonUniform(OpWall48126ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall48126ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall48126ID)
OpWall48126ID = nil

OpWall49127ID = {}
OpWall49127ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall49127ID.transformID, {x=107, y=34.6728, z=203})
Transform.SetScaleNonUniform(OpWall49127ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall49127ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall49127ID)
OpWall49127ID = nil

OpWall50128ID = {}
OpWall50128ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall50128ID.transformID, {x=101, y=28.6339, z=199})
Transform.SetScaleNonUniform(OpWall50128ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall50128ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall50128ID)
OpWall50128ID = nil

OpWall51129ID = {}
OpWall51129ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall51129ID.transformID, {x=95, y=27.3083, z=202.5})
Transform.SetScaleNonUniform(OpWall51129ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall51129ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall51129ID)
OpWall51129ID = nil

OpWall52130ID = {}
OpWall52130ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall52130ID.transformID, {x=89, y=22.595, z=207.5})
Transform.SetScaleNonUniform(OpWall52130ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall52130ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall52130ID)
OpWall52130ID = nil

OpWall53131ID = {}
OpWall53131ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall53131ID.transformID, {x=4.5, y=6.83489, z=147.5})
Transform.SetScaleNonUniform(OpWall53131ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall53131ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall53131ID)
OpWall53131ID = nil

OpWall54132ID = {}
OpWall54132ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall54132ID.transformID, {x=5, y=6.98218, z=151.5})
Transform.SetScaleNonUniform(OpWall54132ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall54132ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall54132ID)
OpWall54132ID = nil

OpWall55133ID = {}
OpWall55133ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall55133ID.transformID, {x=4.5, y=7.42405, z=159})
Transform.SetScaleNonUniform(OpWall55133ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall55133ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall55133ID)
OpWall55133ID = nil

OpWall56134ID = {}
OpWall56134ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall56134ID.transformID, {x=7, y=6.54031, z=167})
Transform.SetScaleNonUniform(OpWall56134ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall56134ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall56134ID)
OpWall56134ID = nil

OpWall57135ID = {}
OpWall57135ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall57135ID.transformID, {x=10, y=6.24573, z=173.5})
Transform.SetScaleNonUniform(OpWall57135ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall57135ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall57135ID)
OpWall57135ID = nil

OpWall58136ID = {}
OpWall58136ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall58136ID.transformID, {x=6.5, y=5.65657, z=179})
Transform.SetScaleNonUniform(OpWall58136ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall58136ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall58136ID)
OpWall58136ID = nil

OpWall59137ID = {}
OpWall59137ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall59137ID.transformID, {x=2.5, y=5.36198, z=188})
Transform.SetScaleNonUniform(OpWall59137ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall59137ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall59137ID)
OpWall59137ID = nil

OpWall60138ID = {}
OpWall60138ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall60138ID.transformID, {x=3.5, y=4.03637, z=196.5})
Transform.SetScaleNonUniform(OpWall60138ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall60138ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall60138ID)
OpWall60138ID = nil

OpWall61139ID = {}
OpWall61139ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall61139ID.transformID, {x=6, y=3.44721, z=200.5})
Transform.SetScaleNonUniform(OpWall61139ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall61139ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall61139ID)
OpWall61139ID = nil

OpWall62140ID = {}
OpWall62140ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall62140ID.transformID, {x=7.5, y=3.44721, z=203})
Transform.SetScaleNonUniform(OpWall62140ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall62140ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall62140ID)
OpWall62140ID = nil

OpWall63141ID = {}
OpWall63141ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall63141ID.transformID, {x=15, y=3.29992, z=202.5})
Transform.SetScaleNonUniform(OpWall63141ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall63141ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall63141ID)
OpWall63141ID = nil

OpWall64142ID = {}
OpWall64142ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall64142ID.transformID, {x=24.5, y=3.15263, z=199.5})
Transform.SetScaleNonUniform(OpWall64142ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall64142ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall64142ID)
OpWall64142ID = nil

OpWall65143ID = {}
OpWall65143ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall65143ID.transformID, {x=23, y=4.33095, z=190.5})
Transform.SetScaleNonUniform(OpWall65143ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall65143ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall65143ID)
OpWall65143ID = nil

OpWall66144ID = {}
OpWall66144ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall66144ID.transformID, {x=27, y=5.36198, z=196.5})
Transform.SetScaleNonUniform(OpWall66144ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall66144ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall66144ID)
OpWall66144ID = nil

OpWall67145ID = {}
OpWall67145ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall67145ID.transformID, {x=29, y=7.71863, z=197})
Transform.SetScaleNonUniform(OpWall67145ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall67145ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall67145ID)
OpWall67145ID = nil

OpWall68146ID = {}
OpWall68146ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall68146ID.transformID, {x=31.5, y=8.16051, z=200})
Transform.SetScaleNonUniform(OpWall68146ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall68146ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall68146ID)
OpWall68146ID = nil

OpWall69147ID = {}
OpWall69147ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall69147ID.transformID, {x=32.5, y=8.89696, z=203.5})
Transform.SetScaleNonUniform(OpWall69147ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall69147ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall69147ID)
OpWall69147ID = nil

OpWall70148ID = {}
OpWall70148ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall70148ID.transformID, {x=34.5, y=8.45509, z=207.5})
Transform.SetScaleNonUniform(OpWall70148ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall70148ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall70148ID)
OpWall70148ID = nil

OpWall71149ID = {}
OpWall71149ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall71149ID.transformID, {x=40.5, y=8.60238, z=213})
Transform.SetScaleNonUniform(OpWall71149ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall71149ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall71149ID)
OpWall71149ID = nil

OpWall72150ID = {}
OpWall72150ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall72150ID.transformID, {x=51, y=9.33883, z=216})
Transform.SetScaleNonUniform(OpWall72150ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall72150ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall72150ID)
OpWall72150ID = nil

OpWall73151ID = {}
OpWall73151ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall73151ID.transformID, {x=63, y=8.74967, z=217})
Transform.SetScaleNonUniform(OpWall73151ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall73151ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall73151ID)
OpWall73151ID = nil

OpWall74152ID = {}
OpWall74152ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall74152ID.transformID, {x=76, y=14.1994, z=221.5})
Transform.SetScaleNonUniform(OpWall74152ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall74152ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall74152ID)
OpWall74152ID = nil

OpWall75153ID = {}
OpWall75153ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall75153ID.transformID, {x=91, y=15.6723, z=230.5})
Transform.SetScaleNonUniform(OpWall75153ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall75153ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall75153ID)
OpWall75153ID = nil

OpWall76154ID = {}
OpWall76154ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall76154ID.transformID, {x=104.5, y=22.595, z=236})
Transform.SetScaleNonUniform(OpWall76154ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall76154ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall76154ID)
OpWall76154ID = nil

OpWall77155ID = {}
OpWall77155ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall77155ID.transformID, {x=115, y=28.4866, z=235})
Transform.SetScaleNonUniform(OpWall77155ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall77155ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall77155ID)
OpWall77155ID = nil

OpWall78156ID = {}
OpWall78156ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall78156ID.transformID, {x=122, y=30.4014, z=233.5})
Transform.SetScaleNonUniform(OpWall78156ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall78156ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall78156ID)
OpWall78156ID = nil

OpWall79157ID = {}
OpWall79157ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall79157ID.transformID, {x=125.5, y=32.1689, z=229})
Transform.SetScaleNonUniform(OpWall79157ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall79157ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall79157ID)
OpWall79157ID = nil

OpWall80158ID = {}
OpWall80158ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall80158ID.transformID, {x=127, y=32.758, z=224})
Transform.SetScaleNonUniform(OpWall80158ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall80158ID.transformID, {x=0, y=0, z=0})
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
table.insert(props,OakTree_Collider384ID)
OakTree_Collider384ID = nil

OakTree_Collider1385ID = {}
OakTree_Collider1385ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider1385ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(OakTree_Collider1385ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(OakTree_Collider1385ID.transformID, {x=0, y=0.376574, z=0})
OakTree_Collider1385ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider1385ID.model, OakTree_Collider1385ID.transformID)
table.insert(props,OakTree_Collider1385ID)
OakTree_Collider1385ID = nil

OakTree_Collider2386ID = {}
OakTree_Collider2386ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider2386ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(OakTree_Collider2386ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(OakTree_Collider2386ID.transformID, {x=0, y=-2.0418, z=0})
OakTree_Collider2386ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider2386ID.model, OakTree_Collider2386ID.transformID)
table.insert(props,OakTree_Collider2386ID)
OakTree_Collider2386ID = nil

OakTree_Collider3387ID = {}
OakTree_Collider3387ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider3387ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(OakTree_Collider3387ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(OakTree_Collider3387ID.transformID, {x=0, y=-1.42165, z=0})
OakTree_Collider3387ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider3387ID.model, OakTree_Collider3387ID.transformID)
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



Stone21445ID = {}
Stone21445ID.transformID = Transform.Bind()
Transform.SetPosition(Stone21445ID.transformID, {x=8.2625, y=6.93359, z=144.445})
Transform.SetScaleNonUniform(Stone21445ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone21445ID.transformID, {x=0, y=0, z=0})
Stone21445ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone21445ID.model, Stone21445ID.transformID)
table.insert(props,Stone21445ID)
Stone21445ID = nil

Stone22446ID = {}
Stone22446ID.transformID = Transform.Bind()
Transform.SetPosition(Stone22446ID.transformID, {x=7, y=6.98704, z=146})
Transform.SetScaleNonUniform(Stone22446ID.transformID, 1, 1, 1)
Transform.SetRotation(Stone22446ID.transformID, {x=0, y=0.523599, z=0})
Stone22446ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone22446ID.model, Stone22446ID.transformID)
table.insert(props,Stone22446ID)
Stone22446ID = nil



New2448ID = {}
New2448ID.transformID = Transform.Bind()
Transform.SetPosition(New2448ID.transformID, {x=18.4219, y=3.97461, z=194.5})
Transform.SetScaleNonUniform(New2448ID.transformID, 1, 1, 1)
Transform.SetRotation(New2448ID.transformID, {x=0, y=0, z=0})
table.insert(props,New2448ID)
New2448ID = nil

WoodenFence2449ID = {}
WoodenFence2449ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence2449ID.transformID, {x=10.5605, y=3.37981, z=203.137})
Transform.SetScaleNonUniform(WoodenFence2449ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence2449ID.transformID, {x=0, y=1.8, z=0})
WoodenFence2449ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence2449ID.model, WoodenFence2449ID.transformID)
table.insert(props,WoodenFence2449ID)
WoodenFence2449ID = nil

WoodenFence3450ID = {}
WoodenFence3450ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence3450ID.transformID, {x=15.6596, y=3.4214, z=201.972})
Transform.SetScaleNonUniform(WoodenFence3450ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence3450ID.transformID, {x=0, y=1.8, z=0})
WoodenFence3450ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence3450ID.model, WoodenFence3450ID.transformID)
table.insert(props,WoodenFence3450ID)
WoodenFence3450ID = nil

WoodenFence4451ID = {}
WoodenFence4451ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence4451ID.transformID, {x=20.7617, y=3.72358, z=200.509})
Transform.SetScaleNonUniform(WoodenFence4451ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence4451ID.transformID, {x=0, y=1.9, z=0})
WoodenFence4451ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence4451ID.model, WoodenFence4451ID.transformID)
table.insert(props,WoodenFence4451ID)
WoodenFence4451ID = nil

WoodenFence5452ID = {}
WoodenFence5452ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence5452ID.transformID, {x=25.4186, y=3.67454, z=198.239})
Transform.SetScaleNonUniform(WoodenFence5452ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence5452ID.transformID, {x=0, y=2.1, z=0})
WoodenFence5452ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence5452ID.model, WoodenFence5452ID.transformID)
table.insert(props,WoodenFence5452ID)
WoodenFence5452ID = nil



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

AutoGenParent1457ID = {}
AutoGenParent1457ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1457ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1457ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1457ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1457ID)
AutoGenParent1457ID = nil

AutoGenParent2458ID = {}
AutoGenParent2458ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent2458ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent2458ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent2458ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent2458ID)
AutoGenParent2458ID = nil

AutoGenParent3459ID = {}
AutoGenParent3459ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent3459ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent3459ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent3459ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent3459ID)
AutoGenParent3459ID = nil

AutoGenParent4460ID = {}
AutoGenParent4460ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent4460ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent4460ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent4460ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent4460ID)
AutoGenParent4460ID = nil

AutoGenParent5461ID = {}
AutoGenParent5461ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent5461ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent5461ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent5461ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent5461ID)
AutoGenParent5461ID = nil

AutoGenParent6462ID = {}
AutoGenParent6462ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent6462ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent6462ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent6462ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent6462ID)
AutoGenParent6462ID = nil

AutoGenParent7463ID = {}
AutoGenParent7463ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent7463ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent7463ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent7463ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent7463ID)
AutoGenParent7463ID = nil

AutoGenParent8464ID = {}
AutoGenParent8464ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent8464ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent8464ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent8464ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent8464ID)
AutoGenParent8464ID = nil

AutoGenParent9465ID = {}
AutoGenParent9465ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent9465ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent9465ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent9465ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent9465ID)
AutoGenParent9465ID = nil

AutoGenParent10466ID = {}
AutoGenParent10466ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent10466ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent10466ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent10466ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent10466ID)
AutoGenParent10466ID = nil

AutoGenParent11467ID = {}
AutoGenParent11467ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent11467ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent11467ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent11467ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent11467ID)
AutoGenParent11467ID = nil

AutoGenParent12468ID = {}
AutoGenParent12468ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent12468ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent12468ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent12468ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent12468ID)
AutoGenParent12468ID = nil

AutoGenParent13469ID = {}
AutoGenParent13469ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent13469ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent13469ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent13469ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent13469ID)
AutoGenParent13469ID = nil

AutoGenParent14470ID = {}
AutoGenParent14470ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent14470ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent14470ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent14470ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent14470ID)
AutoGenParent14470ID = nil

AutoGenParent15471ID = {}
AutoGenParent15471ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent15471ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent15471ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent15471ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent15471ID)
AutoGenParent15471ID = nil

AutoGenParent16472ID = {}
AutoGenParent16472ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent16472ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent16472ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent16472ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent16472ID)
AutoGenParent16472ID = nil

AutoGenParent17473ID = {}
AutoGenParent17473ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent17473ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent17473ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent17473ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent17473ID)
AutoGenParent17473ID = nil

AutoGenParent18474ID = {}
AutoGenParent18474ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent18474ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent18474ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent18474ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent18474ID)
AutoGenParent18474ID = nil

AutoGenParent19475ID = {}
AutoGenParent19475ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent19475ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent19475ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent19475ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent19475ID)
AutoGenParent19475ID = nil

AutoGenParent20476ID = {}
AutoGenParent20476ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent20476ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent20476ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent20476ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent20476ID)
AutoGenParent20476ID = nil

AutoGenParent21477ID = {}
AutoGenParent21477ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent21477ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent21477ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent21477ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent21477ID)
AutoGenParent21477ID = nil

AutoGenParent22478ID = {}
AutoGenParent22478ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent22478ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent22478ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent22478ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent22478ID)
AutoGenParent22478ID = nil

AutoGenParent23479ID = {}
AutoGenParent23479ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent23479ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent23479ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent23479ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent23479ID)
AutoGenParent23479ID = nil

AutoGenParent24480ID = {}
AutoGenParent24480ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent24480ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent24480ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent24480ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent24480ID)
AutoGenParent24480ID = nil

AutoGenParent25481ID = {}
AutoGenParent25481ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent25481ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent25481ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent25481ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent25481ID)
AutoGenParent25481ID = nil

AutoGenParent26482ID = {}
AutoGenParent26482ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent26482ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent26482ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent26482ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent26482ID)
AutoGenParent26482ID = nil

AutoGenParent27483ID = {}
AutoGenParent27483ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent27483ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent27483ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent27483ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent27483ID)
AutoGenParent27483ID = nil

AutoGenParent28484ID = {}
AutoGenParent28484ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent28484ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent28484ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent28484ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent28484ID)
AutoGenParent28484ID = nil

AutoGenParent29485ID = {}
AutoGenParent29485ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent29485ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent29485ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent29485ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent29485ID)
AutoGenParent29485ID = nil

AutoGenParent30486ID = {}
AutoGenParent30486ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent30486ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent30486ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent30486ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent30486ID)
AutoGenParent30486ID = nil

AutoGenParent31487ID = {}
AutoGenParent31487ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent31487ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent31487ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent31487ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent31487ID)
AutoGenParent31487ID = nil

AutoGenParent32488ID = {}
AutoGenParent32488ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent32488ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent32488ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent32488ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent32488ID)
AutoGenParent32488ID = nil

AutoGenParent33489ID = {}
AutoGenParent33489ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent33489ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent33489ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent33489ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent33489ID)
AutoGenParent33489ID = nil

AutoGenParent34490ID = {}
AutoGenParent34490ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent34490ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent34490ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent34490ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent34490ID)
AutoGenParent34490ID = nil

AutoGenParent35491ID = {}
AutoGenParent35491ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent35491ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent35491ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent35491ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent35491ID)
AutoGenParent35491ID = nil

AutoGenParent36492ID = {}
AutoGenParent36492ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent36492ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent36492ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent36492ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent36492ID)
AutoGenParent36492ID = nil

AutoGenParent37493ID = {}
AutoGenParent37493ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent37493ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent37493ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent37493ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent37493ID)
AutoGenParent37493ID = nil

AutoGenParent38494ID = {}
AutoGenParent38494ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent38494ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent38494ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent38494ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent38494ID)
AutoGenParent38494ID = nil

AutoGenParent39495ID = {}
AutoGenParent39495ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent39495ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent39495ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent39495ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent39495ID)
AutoGenParent39495ID = nil

AutoGenParent40496ID = {}
AutoGenParent40496ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent40496ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent40496ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent40496ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent40496ID)
AutoGenParent40496ID = nil

AutoGenParent41497ID = {}
AutoGenParent41497ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent41497ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent41497ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent41497ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent41497ID)
AutoGenParent41497ID = nil

AutoGenParent42498ID = {}
AutoGenParent42498ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent42498ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent42498ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent42498ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent42498ID)
AutoGenParent42498ID = nil

AutoGenParent43499ID = {}
AutoGenParent43499ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent43499ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent43499ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent43499ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent43499ID)
AutoGenParent43499ID = nil

AutoGenParent44500ID = {}
AutoGenParent44500ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent44500ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent44500ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent44500ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent44500ID)
AutoGenParent44500ID = nil

AutoGenParent45501ID = {}
AutoGenParent45501ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent45501ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent45501ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent45501ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent45501ID)
AutoGenParent45501ID = nil

AutoGenParent46502ID = {}
AutoGenParent46502ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent46502ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent46502ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent46502ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent46502ID)
AutoGenParent46502ID = nil

AutoGenParent47503ID = {}
AutoGenParent47503ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent47503ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent47503ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent47503ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent47503ID)
AutoGenParent47503ID = nil

AutoGenParent48504ID = {}
AutoGenParent48504ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent48504ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent48504ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent48504ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent48504ID)
AutoGenParent48504ID = nil

AutoGenParent49505ID = {}
AutoGenParent49505ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent49505ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent49505ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent49505ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent49505ID)
AutoGenParent49505ID = nil

AutoGenParent50506ID = {}
AutoGenParent50506ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent50506ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent50506ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent50506ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent50506ID)
AutoGenParent50506ID = nil

AutoGenParent51507ID = {}
AutoGenParent51507ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent51507ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent51507ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent51507ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent51507ID)
AutoGenParent51507ID = nil

AutoGenParent52508ID = {}
AutoGenParent52508ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent52508ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent52508ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent52508ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent52508ID)
AutoGenParent52508ID = nil

AutoGenParent53509ID = {}
AutoGenParent53509ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent53509ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent53509ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent53509ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent53509ID)
AutoGenParent53509ID = nil

AutoGenParent54510ID = {}
AutoGenParent54510ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent54510ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent54510ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent54510ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent54510ID)
AutoGenParent54510ID = nil

AutoGenParent55511ID = {}
AutoGenParent55511ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent55511ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent55511ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent55511ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent55511ID)
AutoGenParent55511ID = nil

AutoGenParent56512ID = {}
AutoGenParent56512ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent56512ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent56512ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent56512ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent56512ID)
AutoGenParent56512ID = nil

AutoGenParent57513ID = {}
AutoGenParent57513ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent57513ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent57513ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent57513ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent57513ID)
AutoGenParent57513ID = nil

AutoGenParent58514ID = {}
AutoGenParent58514ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent58514ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent58514ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent58514ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent58514ID)
AutoGenParent58514ID = nil

AutoGenParent59515ID = {}
AutoGenParent59515ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent59515ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent59515ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent59515ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent59515ID)
AutoGenParent59515ID = nil

AutoGenParent60516ID = {}
AutoGenParent60516ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent60516ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent60516ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent60516ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent60516ID)
AutoGenParent60516ID = nil

AutoGenParent61517ID = {}
AutoGenParent61517ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent61517ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent61517ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent61517ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent61517ID)
AutoGenParent61517ID = nil

AutoGenParent62518ID = {}
AutoGenParent62518ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent62518ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent62518ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent62518ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent62518ID)
AutoGenParent62518ID = nil

AutoGenParent63519ID = {}
AutoGenParent63519ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent63519ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent63519ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent63519ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent63519ID)
AutoGenParent63519ID = nil

AutoGenParent64520ID = {}
AutoGenParent64520ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent64520ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent64520ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent64520ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent64520ID)
AutoGenParent64520ID = nil

AutoGenParent65521ID = {}
AutoGenParent65521ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent65521ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent65521ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent65521ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent65521ID)
AutoGenParent65521ID = nil

AutoGenParent66522ID = {}
AutoGenParent66522ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent66522ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent66522ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent66522ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent66522ID)
AutoGenParent66522ID = nil

AutoGenParent67523ID = {}
AutoGenParent67523ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent67523ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent67523ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent67523ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent67523ID)
AutoGenParent67523ID = nil

AutoGenParent68524ID = {}
AutoGenParent68524ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent68524ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent68524ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent68524ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent68524ID)
AutoGenParent68524ID = nil

AutoGenParent69525ID = {}
AutoGenParent69525ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent69525ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent69525ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent69525ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent69525ID)
AutoGenParent69525ID = nil

AutoGenParent70526ID = {}
AutoGenParent70526ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent70526ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent70526ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent70526ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent70526ID)
AutoGenParent70526ID = nil

AutoGenParent71527ID = {}
AutoGenParent71527ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent71527ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent71527ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent71527ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent71527ID)
AutoGenParent71527ID = nil

AutoGenParent72528ID = {}
AutoGenParent72528ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent72528ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent72528ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent72528ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent72528ID)
AutoGenParent72528ID = nil

AutoGenParent73529ID = {}
AutoGenParent73529ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent73529ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent73529ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent73529ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent73529ID)
AutoGenParent73529ID = nil

AutoGenParent74530ID = {}
AutoGenParent74530ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent74530ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent74530ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent74530ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent74530ID)
AutoGenParent74530ID = nil

AutoGenParent75531ID = {}
AutoGenParent75531ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent75531ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent75531ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent75531ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent75531ID)
AutoGenParent75531ID = nil

AutoGenParent76532ID = {}
AutoGenParent76532ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent76532ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent76532ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent76532ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent76532ID)
AutoGenParent76532ID = nil

AutoGenParent77533ID = {}
AutoGenParent77533ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent77533ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent77533ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent77533ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent77533ID)
AutoGenParent77533ID = nil

AutoGenParent78534ID = {}
AutoGenParent78534ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent78534ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent78534ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent78534ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent78534ID)
AutoGenParent78534ID = nil

AutoGenParent79535ID = {}
AutoGenParent79535ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent79535ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent79535ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent79535ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent79535ID)
AutoGenParent79535ID = nil

AutoGenParent80536ID = {}
AutoGenParent80536ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent80536ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent80536ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent80536ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent80536ID)
AutoGenParent80536ID = nil

AutoGenParent81537ID = {}
AutoGenParent81537ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent81537ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent81537ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent81537ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent81537ID)
AutoGenParent81537ID = nil

AutoGenParent82538ID = {}
AutoGenParent82538ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent82538ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent82538ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent82538ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent82538ID)
AutoGenParent82538ID = nil

AutoGenParent83539ID = {}
AutoGenParent83539ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent83539ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent83539ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent83539ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent83539ID)
AutoGenParent83539ID = nil

AutoGenParent84540ID = {}
AutoGenParent84540ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent84540ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent84540ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent84540ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent84540ID)
AutoGenParent84540ID = nil

AutoGenParent85541ID = {}
AutoGenParent85541ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent85541ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent85541ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent85541ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent85541ID)
AutoGenParent85541ID = nil

AutoGenParent86542ID = {}
AutoGenParent86542ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent86542ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent86542ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent86542ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent86542ID)
AutoGenParent86542ID = nil

AutoGenParent87543ID = {}
AutoGenParent87543ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent87543ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent87543ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent87543ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent87543ID)
AutoGenParent87543ID = nil

AutoGenParent88544ID = {}
AutoGenParent88544ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent88544ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent88544ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent88544ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent88544ID)
AutoGenParent88544ID = nil

AutoGenParent89545ID = {}
AutoGenParent89545ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent89545ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent89545ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent89545ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent89545ID)
AutoGenParent89545ID = nil

AutoGenParent90546ID = {}
AutoGenParent90546ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent90546ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent90546ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent90546ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent90546ID)
AutoGenParent90546ID = nil

AutoGenParent91547ID = {}
AutoGenParent91547ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent91547ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent91547ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent91547ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent91547ID)
AutoGenParent91547ID = nil

AutoGenParent92548ID = {}
AutoGenParent92548ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent92548ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent92548ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent92548ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent92548ID)
AutoGenParent92548ID = nil

AutoGenParent93549ID = {}
AutoGenParent93549ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent93549ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent93549ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent93549ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent93549ID)
AutoGenParent93549ID = nil

AutoGenParent94550ID = {}
AutoGenParent94550ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent94550ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent94550ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent94550ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent94550ID)
AutoGenParent94550ID = nil

AutoGenParent95551ID = {}
AutoGenParent95551ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent95551ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent95551ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent95551ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent95551ID)
AutoGenParent95551ID = nil

AutoGenParent96552ID = {}
AutoGenParent96552ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent96552ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent96552ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent96552ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent96552ID)
AutoGenParent96552ID = nil

AutoGenParent97553ID = {}
AutoGenParent97553ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent97553ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent97553ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent97553ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent97553ID)
AutoGenParent97553ID = nil

AutoGenParent98554ID = {}
AutoGenParent98554ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent98554ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent98554ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent98554ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent98554ID)
AutoGenParent98554ID = nil

AutoGenParent99555ID = {}
AutoGenParent99555ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent99555ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent99555ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent99555ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent99555ID)
AutoGenParent99555ID = nil

AutoGenParent100556ID = {}
AutoGenParent100556ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent100556ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent100556ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent100556ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent100556ID)
AutoGenParent100556ID = nil

AutoGenParent101557ID = {}
AutoGenParent101557ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent101557ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent101557ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent101557ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent101557ID)
AutoGenParent101557ID = nil

AutoGenParent102558ID = {}
AutoGenParent102558ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent102558ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent102558ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent102558ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent102558ID)
AutoGenParent102558ID = nil

AutoGenParent103559ID = {}
AutoGenParent103559ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent103559ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent103559ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent103559ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent103559ID)
AutoGenParent103559ID = nil

AutoGenParent104560ID = {}
AutoGenParent104560ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent104560ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent104560ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent104560ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent104560ID)
AutoGenParent104560ID = nil

AutoGenParent105561ID = {}
AutoGenParent105561ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent105561ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent105561ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent105561ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent105561ID)
AutoGenParent105561ID = nil

AutoGenParent106562ID = {}
AutoGenParent106562ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent106562ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent106562ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent106562ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent106562ID)
AutoGenParent106562ID = nil

AutoGenParent107563ID = {}
AutoGenParent107563ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent107563ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent107563ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent107563ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent107563ID)
AutoGenParent107563ID = nil

AutoGenParent108564ID = {}
AutoGenParent108564ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent108564ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent108564ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent108564ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent108564ID)
AutoGenParent108564ID = nil

AutoGenParent109565ID = {}
AutoGenParent109565ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent109565ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent109565ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent109565ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent109565ID)
AutoGenParent109565ID = nil

AutoGenParent110566ID = {}
AutoGenParent110566ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent110566ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent110566ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent110566ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent110566ID)
AutoGenParent110566ID = nil

AutoGenParent111567ID = {}
AutoGenParent111567ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent111567ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent111567ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent111567ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent111567ID)
AutoGenParent111567ID = nil

AutoGenParent112568ID = {}
AutoGenParent112568ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent112568ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent112568ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent112568ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent112568ID)
AutoGenParent112568ID = nil

AutoGenParent113569ID = {}
AutoGenParent113569ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent113569ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent113569ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent113569ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent113569ID)
AutoGenParent113569ID = nil

AutoGenParent114570ID = {}
AutoGenParent114570ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent114570ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent114570ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent114570ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent114570ID)
AutoGenParent114570ID = nil

AutoGenParent115571ID = {}
AutoGenParent115571ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent115571ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent115571ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent115571ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent115571ID)
AutoGenParent115571ID = nil

AutoGenParent116572ID = {}
AutoGenParent116572ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent116572ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent116572ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent116572ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent116572ID)
AutoGenParent116572ID = nil

AutoGenParent117573ID = {}
AutoGenParent117573ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent117573ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent117573ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent117573ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent117573ID)
AutoGenParent117573ID = nil

AutoGenParent118574ID = {}
AutoGenParent118574ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent118574ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent118574ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent118574ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent118574ID)
AutoGenParent118574ID = nil

AutoGenParent119575ID = {}
AutoGenParent119575ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent119575ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent119575ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent119575ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent119575ID)
AutoGenParent119575ID = nil

AutoGenParent120576ID = {}
AutoGenParent120576ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent120576ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent120576ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent120576ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent120576ID)
AutoGenParent120576ID = nil

AutoGenParent121577ID = {}
AutoGenParent121577ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent121577ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent121577ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent121577ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent121577ID)
AutoGenParent121577ID = nil

AutoGenParent122578ID = {}
AutoGenParent122578ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent122578ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent122578ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent122578ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent122578ID)
AutoGenParent122578ID = nil

AutoGenParent123579ID = {}
AutoGenParent123579ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent123579ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent123579ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent123579ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent123579ID)
AutoGenParent123579ID = nil

AutoGenParent124580ID = {}
AutoGenParent124580ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent124580ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent124580ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent124580ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent124580ID)
AutoGenParent124580ID = nil

AutoGenParent125581ID = {}
AutoGenParent125581ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent125581ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent125581ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent125581ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent125581ID)
AutoGenParent125581ID = nil

AutoGenParent126582ID = {}
AutoGenParent126582ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent126582ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent126582ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent126582ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent126582ID)
AutoGenParent126582ID = nil

AutoGenParent127583ID = {}
AutoGenParent127583ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent127583ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent127583ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent127583ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent127583ID)
AutoGenParent127583ID = nil

AutoGenParent128584ID = {}
AutoGenParent128584ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent128584ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent128584ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent128584ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent128584ID)
AutoGenParent128584ID = nil

AutoGenParent129585ID = {}
AutoGenParent129585ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent129585ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent129585ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent129585ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent129585ID)
AutoGenParent129585ID = nil

AutoGenParent130586ID = {}
AutoGenParent130586ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent130586ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent130586ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent130586ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent130586ID)
AutoGenParent130586ID = nil

AutoGenParent131587ID = {}
AutoGenParent131587ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent131587ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent131587ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent131587ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent131587ID)
AutoGenParent131587ID = nil

AutoGenParent132588ID = {}
AutoGenParent132588ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent132588ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent132588ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent132588ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent132588ID)
AutoGenParent132588ID = nil

AutoGenParent133589ID = {}
AutoGenParent133589ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent133589ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent133589ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent133589ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent133589ID)
AutoGenParent133589ID = nil

AutoGenParent134590ID = {}
AutoGenParent134590ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent134590ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent134590ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent134590ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent134590ID)
AutoGenParent134590ID = nil

AutoGenParent135591ID = {}
AutoGenParent135591ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent135591ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent135591ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent135591ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent135591ID)
AutoGenParent135591ID = nil

AutoGenParent136592ID = {}
AutoGenParent136592ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent136592ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent136592ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent136592ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent136592ID)
AutoGenParent136592ID = nil

AutoGenParent137593ID = {}
AutoGenParent137593ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent137593ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent137593ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent137593ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent137593ID)
AutoGenParent137593ID = nil

AutoGenParent138594ID = {}
AutoGenParent138594ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent138594ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent138594ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent138594ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent138594ID)
AutoGenParent138594ID = nil

AutoGenParent139595ID = {}
AutoGenParent139595ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent139595ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent139595ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent139595ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent139595ID)
AutoGenParent139595ID = nil

AutoGenParent140596ID = {}
AutoGenParent140596ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent140596ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent140596ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent140596ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent140596ID)
AutoGenParent140596ID = nil

AutoGenParent141597ID = {}
AutoGenParent141597ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent141597ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent141597ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent141597ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent141597ID)
AutoGenParent141597ID = nil

AutoGenParent142598ID = {}
AutoGenParent142598ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent142598ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent142598ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent142598ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent142598ID)
AutoGenParent142598ID = nil

AutoGenParent143599ID = {}
AutoGenParent143599ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent143599ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent143599ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent143599ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent143599ID)
AutoGenParent143599ID = nil

AutoGenParent144600ID = {}
AutoGenParent144600ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent144600ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent144600ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent144600ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent144600ID)
AutoGenParent144600ID = nil

AutoGenParent145601ID = {}
AutoGenParent145601ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent145601ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent145601ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent145601ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent145601ID)
AutoGenParent145601ID = nil

AutoGenParent146602ID = {}
AutoGenParent146602ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent146602ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent146602ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent146602ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent146602ID)
AutoGenParent146602ID = nil

AutoGenParent147603ID = {}
AutoGenParent147603ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent147603ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent147603ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent147603ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent147603ID)
AutoGenParent147603ID = nil

AutoGenParent148604ID = {}
AutoGenParent148604ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent148604ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent148604ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent148604ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent148604ID)
AutoGenParent148604ID = nil

AutoGenParent149605ID = {}
AutoGenParent149605ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent149605ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent149605ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent149605ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent149605ID)
AutoGenParent149605ID = nil

AutoGenParent150606ID = {}
AutoGenParent150606ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent150606ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent150606ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent150606ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent150606ID)
AutoGenParent150606ID = nil

AutoGenParent151607ID = {}
AutoGenParent151607ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent151607ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent151607ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent151607ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent151607ID)
AutoGenParent151607ID = nil

AutoGenParent152608ID = {}
AutoGenParent152608ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent152608ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent152608ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent152608ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent152608ID)
AutoGenParent152608ID = nil

AutoGenParent153609ID = {}
AutoGenParent153609ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent153609ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent153609ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent153609ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent153609ID)
AutoGenParent153609ID = nil

AutoGenParent154610ID = {}
AutoGenParent154610ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent154610ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent154610ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent154610ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent154610ID)
AutoGenParent154610ID = nil

AutoGenParent155611ID = {}
AutoGenParent155611ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent155611ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent155611ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent155611ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent155611ID)
AutoGenParent155611ID = nil

AutoGenParent156612ID = {}
AutoGenParent156612ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent156612ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent156612ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent156612ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent156612ID)
AutoGenParent156612ID = nil

AutoGenParent157613ID = {}
AutoGenParent157613ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent157613ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent157613ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent157613ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent157613ID)
AutoGenParent157613ID = nil

AutoGenParent158614ID = {}
AutoGenParent158614ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent158614ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent158614ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent158614ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent158614ID)
AutoGenParent158614ID = nil

AutoGenParent615ID = {}
AutoGenParent615ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent615ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent615ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent615ID.transformID, {x=0, y=0, z=0})
AutoGenParent615ID.collider = AABBCollider.Create(AutoGenParent615ID.transformID)
AutoGenParent615ID.collider:SetOffset(0,0,0)
AutoGenParent615ID.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent615ID1 = {}
AutoGenParent615ID1.collider = AABBCollider.Create(-1)
AutoGenParent615ID1.collider:SetOffset(0,0,0)
AutoGenParent615ID1.collider:SetMinPos(1.70104,-3.32028,33.7004)
AutoGenParent615ID1.collider:SetMaxPos(384,67.2657,255.3)
AutoGenParent615ID.collider:AddChild(AutoGenParent615ID1.collider)
table.insert(colliders,AutoGenParent615ID1)
AutoGenParent615ID2 = {}
AutoGenParent615ID2.collider = AABBCollider.Create(-1)
AutoGenParent615ID2.collider:SetOffset(0,0,0)
AutoGenParent615ID2.collider:SetMinPos(1.74275,-3.32028,33.7004)
AutoGenParent615ID2.collider:SetMaxPos(290.212,62.1411,240.042)
AutoGenParent615ID1.collider:AddChild(AutoGenParent615ID2.collider)
table.insert(colliders,AutoGenParent615ID2)
AutoGenParent615ID3 = {}
AutoGenParent615ID3.collider = AABBCollider.Create(-1)
AutoGenParent615ID3.collider:SetOffset(0,0,0)
AutoGenParent615ID3.collider:SetMinPos(1.74275,-1.99466,33.7004)
AutoGenParent615ID3.collider:SetMaxPos(268.183,61.9183,234.296)
AutoGenParent615ID2.collider:AddChild(AutoGenParent615ID3.collider)
table.insert(colliders,AutoGenParent615ID3)
AutoGenParent615ID4 = {}
AutoGenParent615ID4.collider = AABBCollider.Create(-1)
AutoGenParent615ID4.collider:SetOffset(0,0,0)
AutoGenParent615ID4.collider:SetMinPos(1.74275,-1.99466,33.7004)
AutoGenParent615ID4.collider:SetMaxPos(225.016,61.9183,215.26)
AutoGenParent615ID3.collider:AddChild(AutoGenParent615ID4.collider)
table.insert(colliders,AutoGenParent615ID4)
AutoGenParent615ID5 = {}
AutoGenParent615ID5.collider = AABBCollider.Create(-1)
AutoGenParent615ID5.collider:SetOffset(0,0,0)
AutoGenParent615ID5.collider:SetMinPos(1.74275,-1.55279,44.8336)
AutoGenParent615ID5.collider:SetMaxPos(189.25,61.9183,199.154)
AutoGenParent615ID4.collider:AddChild(AutoGenParent615ID5.collider)
table.insert(colliders,AutoGenParent615ID5)
AutoGenParent615ID6 = {}
AutoGenParent615ID6.collider = OBBCollider.Create(-1)
AutoGenParent615ID6.collider:SetOffset(3.5,4.03637,196.5)
AutoGenParent615ID6.collider:SetZAxis(0.514496,0,0.857493)
AutoGenParent615ID6.collider:SetHalfLengths(0.3,5.58916,2.91548)
AutoGenParent615ID5.collider:AddChild(AutoGenParent615ID6.collider)
table.insert(colliders,AutoGenParent615ID6)
AutoGenParent615ID7 = {}
AutoGenParent615ID7.collider = OBBCollider.Create(-1)
AutoGenParent615ID7.collider:SetOffset(176.5,56.584,78.5)
AutoGenParent615ID7.collider:SetZAxis(0.058722,0,-0.998274)
AutoGenParent615ID7.collider:SetHalfLengths(0.3,5.33421,8.51469)
AutoGenParent615ID5.collider:AddChild(AutoGenParent615ID7.collider)
table.insert(colliders,AutoGenParent615ID7)
AutoGenParent615ID8 = {}
AutoGenParent615ID8.collider = OBBCollider.Create(-1)
AutoGenParent615ID8.collider:SetOffset(185,54.5788,51)
AutoGenParent615ID8.collider:SetZAxis(0.5547,0,-0.83205)
AutoGenParent615ID8.collider:SetHalfLengths(0.3,6.00264,7.2111)
AutoGenParent615ID5.collider:AddChild(AutoGenParent615ID8.collider)
table.insert(colliders,AutoGenParent615ID8)
AutoGenParent615ID9 = {}
AutoGenParent615ID9.collider = AABBCollider.Create(-1)
AutoGenParent615ID9.collider:SetOffset(0,0,0)
AutoGenParent615ID9.collider:SetMinPos(25.8658,-1.99466,37.7542)
AutoGenParent615ID9.collider:SetMaxPos(199.172,59.2445,201.134)
AutoGenParent615ID4.collider:AddChild(AutoGenParent615ID9.collider)
table.insert(colliders,AutoGenParent615ID9)
AutoGenParent615ID10 = {}
AutoGenParent615ID10.collider = OBBCollider.Create(-1)
AutoGenParent615ID10.collider:SetOffset(35.5,8.16051,198)
AutoGenParent615ID10.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID10.collider:SetHalfLengths(0.3,5.14729,3.3541)
AutoGenParent615ID9.collider:AddChild(AutoGenParent615ID10.collider)
table.insert(colliders,AutoGenParent615ID10)
AutoGenParent615ID11 = {}
AutoGenParent615ID11.collider = OBBCollider.Create(-1)
AutoGenParent615ID11.collider:SetOffset(27,5.36198,196.5)
AutoGenParent615ID11.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent615ID11.collider:SetHalfLengths(0.3,7.35665,1.11803)
AutoGenParent615ID9.collider:AddChild(AutoGenParent615ID11.collider)
table.insert(colliders,AutoGenParent615ID11)
AutoGenParent615ID12 = {}
AutoGenParent615ID12.collider = OBBCollider.Create(-1)
AutoGenParent615ID12.collider:SetOffset(194,53.5761,41.5)
AutoGenParent615ID12.collider:SetZAxis(0.819232,0,-0.573462)
AutoGenParent615ID12.collider:SetHalfLengths(0.3,5.66843,6.10328)
AutoGenParent615ID9.collider:AddChild(AutoGenParent615ID12.collider)
table.insert(colliders,AutoGenParent615ID12)
AutoGenParent615ID13 = {}
AutoGenParent615ID13.collider = AABBCollider.Create(-1)
AutoGenParent615ID13.collider:SetOffset(0,0,0)
AutoGenParent615ID13.collider:SetMinPos(36.8512,2.86592,33.7004)
AutoGenParent615ID13.collider:SetMaxPos(225.016,61.584,215.26)
AutoGenParent615ID4.collider:AddChild(AutoGenParent615ID13.collider)
table.insert(colliders,AutoGenParent615ID13)
AutoGenParent615ID14 = {}
AutoGenParent615ID14.collider = OBBCollider.Create(-1)
AutoGenParent615ID14.collider:SetOffset(40.5,8.60238,213)
AutoGenParent615ID14.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent615ID14.collider:SetHalfLengths(0.3,5.73645,4.03113)
AutoGenParent615ID13.collider:AddChild(AutoGenParent615ID14.collider)
table.insert(colliders,AutoGenParent615ID14)
AutoGenParent615ID15 = {}
AutoGenParent615ID15.collider = OBBCollider.Create(-1)
AutoGenParent615ID15.collider:SetOffset(215.5,52.0165,34.5)
AutoGenParent615ID15.collider:SetZAxis(0.998618,0,0.0525588)
AutoGenParent615ID15.collider:SetHalfLengths(0.3,9.01056,9.51315)
AutoGenParent615ID13.collider:AddChild(AutoGenParent615ID15.collider)
table.insert(colliders,AutoGenParent615ID15)
AutoGenParent615ID16 = {}
AutoGenParent615ID16.collider = OBBCollider.Create(-1)
AutoGenParent615ID16.collider:SetOffset(194,55.5814,84)
AutoGenParent615ID16.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent615ID16.collider:SetHalfLengths(0.3,6.00264,7.07107)
AutoGenParent615ID13.collider:AddChild(AutoGenParent615ID16.collider)
table.insert(colliders,AutoGenParent615ID16)
AutoGenParent615ID17 = {}
AutoGenParent615ID17.collider = AABBCollider.Create(-1)
AutoGenParent615ID17.collider:SetOffset(0,0,0)
AutoGenParent615ID17.collider:SetMinPos(3.73167,1.54031,48.7154)
AutoGenParent615ID17.collider:SetMaxPos(268.183,60.3586,234.296)
AutoGenParent615ID3.collider:AddChild(AutoGenParent615ID17.collider)
table.insert(colliders,AutoGenParent615ID17)
AutoGenParent615ID18 = {}
AutoGenParent615ID18.collider = AABBCollider.Create(-1)
AutoGenParent615ID18.collider:SetOffset(0,0,0)
AutoGenParent615ID18.collider:SetMinPos(3.73167,1.54031,130.849)
AutoGenParent615ID18.collider:SetMaxPos(55.2591,14.3388,147.134)
AutoGenParent615ID17.collider:AddChild(AutoGenParent615ID18.collider)
table.insert(colliders,AutoGenParent615ID18)
AutoGenParent615ID19 = {}
AutoGenParent615ID19.collider = OBBCollider.Create(-1)
AutoGenParent615ID19.collider:SetOffset(6,6.83489,143)
AutoGenParent615ID19.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent615ID19.collider:SetHalfLengths(0.3,5.29458,4.47214)
AutoGenParent615ID18.collider:AddChild(AutoGenParent615ID19.collider)
table.insert(colliders,AutoGenParent615ID19)
AutoGenParent615ID20 = {}
AutoGenParent615ID20.collider = OBBCollider.Create(-1)
AutoGenParent615ID20.collider:SetOffset(10.5,7.12947,140)
AutoGenParent615ID20.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent615ID20.collider:SetHalfLengths(0.3,5.14729,2.69258)
AutoGenParent615ID18.collider:AddChild(AutoGenParent615ID20.collider)
table.insert(colliders,AutoGenParent615ID20)
AutoGenParent615ID21 = {}
AutoGenParent615ID21.collider = OBBCollider.Create(-1)
AutoGenParent615ID21.collider:SetOffset(51.5,8.60238,137)
AutoGenParent615ID21.collider:SetZAxis(0.503871,0,0.863779)
AutoGenParent615ID21.collider:SetHalfLengths(0.3,5.73645,6.94622)
AutoGenParent615ID18.collider:AddChild(AutoGenParent615ID21.collider)
table.insert(colliders,AutoGenParent615ID21)
AutoGenParent615ID22 = {}
AutoGenParent615ID22.collider = AABBCollider.Create(-1)
AutoGenParent615ID22.collider:SetOffset(0,0,0)
AutoGenParent615ID22.collider:SetMinPos(117.732,27.9053,48.7154)
AutoGenParent615ID22.collider:SetMaxPos(241.095,60.3586,212.134)
AutoGenParent615ID17.collider:AddChild(AutoGenParent615ID22.collider)
table.insert(colliders,AutoGenParent615ID22)
AutoGenParent615ID23 = {}
AutoGenParent615ID23.collider = OBBCollider.Create(-1)
AutoGenParent615ID23.collider:SetOffset(121,34.6728,206)
AutoGenParent615ID23.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID23.collider:SetHalfLengths(0.3,6.76749,6.7082)
AutoGenParent615ID22.collider:AddChild(AutoGenParent615ID23.collider)
table.insert(colliders,AutoGenParent615ID23)
AutoGenParent615ID24 = {}
AutoGenParent615ID24.collider = OBBCollider.Create(-1)
AutoGenParent615ID24.collider:SetOffset(187.5,55.2472,133)
AutoGenParent615ID24.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent615ID24.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent615ID22.collider:AddChild(AutoGenParent615ID24.collider)
table.insert(colliders,AutoGenParent615ID24)
AutoGenParent615ID25 = {}
AutoGenParent615ID25.collider = OBBCollider.Create(-1)
AutoGenParent615ID25.collider:SetOffset(233.5,44.998,51.5)
AutoGenParent615ID25.collider:SetZAxis(-0.948683,0,-0.316228)
AutoGenParent615ID25.collider:SetHalfLengths(0.3,8.45354,7.90569)
AutoGenParent615ID22.collider:AddChild(AutoGenParent615ID25.collider)
table.insert(colliders,AutoGenParent615ID25)
AutoGenParent615ID26 = {}
AutoGenParent615ID26.collider = AABBCollider.Create(-1)
AutoGenParent615ID26.collider:SetOffset(0,0,0)
AutoGenParent615ID26.collider:SetMinPos(118.951,23.6339,59.7622)
AutoGenParent615ID26.collider:SetMaxPos(268.183,45.9874,234.296)
AutoGenParent615ID17.collider:AddChild(AutoGenParent615ID26.collider)
table.insert(colliders,AutoGenParent615ID26)
AutoGenParent615ID27 = {}
AutoGenParent615ID27.collider = OBBCollider.Create(-1)
AutoGenParent615ID27.collider:SetOffset(122,30.4014,233.5)
AutoGenParent615ID27.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent615ID27.collider:SetHalfLengths(0.3,6.76749,3.04138)
AutoGenParent615ID26.collider:AddChild(AutoGenParent615ID27.collider)
table.insert(colliders,AutoGenParent615ID27)
AutoGenParent615ID28 = {}
AutoGenParent615ID28.collider = OBBCollider.Create(-1)
AutoGenParent615ID28.collider:SetOffset(143,35.1944,220.5)
AutoGenParent615ID28.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent615ID28.collider:SetHalfLengths(0.3,5,2.06155)
AutoGenParent615ID26.collider:AddChild(AutoGenParent615ID28.collider)
table.insert(colliders,AutoGenParent615ID28)
AutoGenParent615ID29 = {}
AutoGenParent615ID29.collider = OBBCollider.Create(-1)
AutoGenParent615ID29.collider:SetOffset(261.5,38.7593,65)
AutoGenParent615ID29.collider:SetZAxis(-0.792624,0,-0.609711)
AutoGenParent615ID29.collider:SetHalfLengths(0.3,7.22809,8.20061)
AutoGenParent615ID26.collider:AddChild(AutoGenParent615ID29.collider)
table.insert(colliders,AutoGenParent615ID29)
AutoGenParent615ID30 = {}
AutoGenParent615ID30.collider = AABBCollider.Create(-1)
AutoGenParent615ID30.collider:SetOffset(0,0,0)
AutoGenParent615ID30.collider:SetMinPos(3.78787,1.54031,33.7395)
AutoGenParent615ID30.collider:SetMaxPos(206.149,59.5788,158.294)
AutoGenParent615ID3.collider:AddChild(AutoGenParent615ID30.collider)
table.insert(colliders,AutoGenParent615ID30)
AutoGenParent615ID31 = {}
AutoGenParent615ID31.collider = AABBCollider.Create(-1)
AutoGenParent615ID31.collider:SetOffset(0,0,0)
AutoGenParent615ID31.collider:SetMinPos(3.78787,1.54031,144.634)
AutoGenParent615ID31.collider:SetMaxPos(8.66603,12.4241,155)
AutoGenParent615ID30.collider:AddChild(AutoGenParent615ID31.collider)
table.insert(colliders,AutoGenParent615ID31)
AutoGenParent615ID32 = {}
AutoGenParent615ID32.collider = OBBCollider.Create(-1)
AutoGenParent615ID32.collider:SetOffset(4.5,6.83489,147.5)
AutoGenParent615ID32.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID32.collider:SetHalfLengths(0.3,5.14729,0.707107)
AutoGenParent615ID31.collider:AddChild(AutoGenParent615ID32.collider)
table.insert(colliders,AutoGenParent615ID32)
AutoGenParent615ID33 = {}
AutoGenParent615ID33.collider = OBBCollider.Create(-1)
AutoGenParent615ID33.collider:SetOffset(5,6.98218,151.5)
AutoGenParent615ID33.collider:SetZAxis(0,0,1)
AutoGenParent615ID33.collider:SetHalfLengths(0.3,5.44187,3.5)
AutoGenParent615ID31.collider:AddChild(AutoGenParent615ID33.collider)
table.insert(colliders,AutoGenParent615ID33)
AutoGenParent615ID34 = {}
AutoGenParent615ID34.collider = OBBCollider.Create(-1)
AutoGenParent615ID34.collider:SetOffset(7.3,7.58704,146)
AutoGenParent615ID34.collider:SetZAxis(0.5,0,0.866025)
AutoGenParent615ID34.collider:SetHalfLengths(1,0.6,1)
AutoGenParent615ID31.collider:AddChild(AutoGenParent615ID34.collider)
table.insert(colliders,AutoGenParent615ID34)
AutoGenParent615ID35 = {}
AutoGenParent615ID35.collider = AABBCollider.Create(-1)
AutoGenParent615ID35.collider:SetOffset(0,0,0)
AutoGenParent615ID35.collider:SetMinPos(36.9889,4.19154,147.802)
AutoGenParent615ID35.collider:SetMaxPos(56.2258,18.8731,158.294)
AutoGenParent615ID30.collider:AddChild(AutoGenParent615ID35.collider)
table.insert(colliders,AutoGenParent615ID35)
AutoGenParent615ID36 = {}
AutoGenParent615ID36.collider = OBBCollider.Create(-1)
AutoGenParent615ID36.collider:SetOffset(52.5,9.33883,152)
AutoGenParent615ID36.collider:SetZAxis(-0.658505,0,0.752577)
AutoGenParent615ID36.collider:SetHalfLengths(0.3,5.14729,5.31507)
AutoGenParent615ID35.collider:AddChild(AutoGenParent615ID36.collider)
table.insert(colliders,AutoGenParent615ID36)
AutoGenParent615ID37 = {}
AutoGenParent615ID37.collider = OBBCollider.Create(-1)
AutoGenParent615ID37.collider:SetOffset(44,9.48612,157)
AutoGenParent615ID37.collider:SetZAxis(-0.980581,0,0.196116)
AutoGenParent615ID37.collider:SetHalfLengths(0.3,5.14729,5.09902)
AutoGenParent615ID35.collider:AddChild(AutoGenParent615ID37.collider)
table.insert(colliders,AutoGenParent615ID37)
AutoGenParent615ID38 = {}
AutoGenParent615ID38.collider = OBBCollider.Create(-1)
AutoGenParent615ID38.collider:SetOffset(39.8641,12.8281,155.087)
AutoGenParent615ID38.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
AutoGenParent615ID38.collider:SetHalfLengths(2.11687,6.02749,2.51378)
AutoGenParent615ID35.collider:AddChild(AutoGenParent615ID38.collider)
table.insert(colliders,AutoGenParent615ID38)
AutoGenParent615ID39 = {}
AutoGenParent615ID39.collider = AABBCollider.Create(-1)
AutoGenParent615ID39.collider:SetOffset(0,0,0)
AutoGenParent615ID39.collider:SetMinPos(137.719,42.3375,33.7395)
AutoGenParent615ID39.collider:SetMaxPos(206.149,59.5788,157.105)
AutoGenParent615ID30.collider:AddChild(AutoGenParent615ID39.collider)
table.insert(colliders,AutoGenParent615ID39)
AutoGenParent615ID40 = {}
AutoGenParent615ID40.collider = OBBCollider.Create(-1)
AutoGenParent615ID40.collider:SetOffset(139.5,48.7857,153)
AutoGenParent615ID40.collider:SetZAxis(0.351123,0,-0.936329)
AutoGenParent615ID40.collider:SetHalfLengths(0.3,6.44826,4.272)
AutoGenParent615ID39.collider:AddChild(AutoGenParent615ID40.collider)
table.insert(colliders,AutoGenParent615ID40)
AutoGenParent615ID41 = {}
AutoGenParent615ID41.collider = OBBCollider.Create(-1)
AutoGenParent615ID41.collider:SetOffset(202.5,52.9077,36)
AutoGenParent615ID41.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent615ID41.collider:SetHalfLengths(0.3,5.89124,4.03113)
AutoGenParent615ID39.collider:AddChild(AutoGenParent615ID41.collider)
table.insert(colliders,AutoGenParent615ID41)
AutoGenParent615ID42 = {}
AutoGenParent615ID42.collider = OBBCollider.Create(-1)
AutoGenParent615ID42.collider:SetOffset(197,53.6875,59.5)
AutoGenParent615ID42.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent615ID42.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent615ID39.collider:AddChild(AutoGenParent615ID42.collider)
table.insert(colliders,AutoGenParent615ID42)
AutoGenParent615ID43 = {}
AutoGenParent615ID43.collider = AABBCollider.Create(-1)
AutoGenParent615ID43.collider:SetOffset(0,0,0)
AutoGenParent615ID43.collider:SetMinPos(3.70232,1.24573,37.73)
AutoGenParent615ID43.collider:SetMaxPos(285.233,62.1411,240.042)
AutoGenParent615ID2.collider:AddChild(AutoGenParent615ID43.collider)
table.insert(colliders,AutoGenParent615ID43)
AutoGenParent615ID44 = {}
AutoGenParent615ID44.collider = AABBCollider.Create(-1)
AutoGenParent615ID44.collider:SetOffset(0,0,0)
AutoGenParent615ID44.collider:SetMinPos(3.70232,1.54031,90.9051)
AutoGenParent615ID44.collider:SetMaxPos(200.285,62.1411,199.3)
AutoGenParent615ID43.collider:AddChild(AutoGenParent615ID44.collider)
table.insert(colliders,AutoGenParent615ID44)
AutoGenParent615ID45 = {}
AutoGenParent615ID45.collider = AABBCollider.Create(-1)
AutoGenParent615ID45.collider:SetOffset(0,0,0)
AutoGenParent615ID45.collider:SetMinPos(5.66861,1.98218,140.7)
AutoGenParent615ID45.collider:SetMaxPos(21,11.9822,145.656)
AutoGenParent615ID44.collider:AddChild(AutoGenParent615ID45.collider)
table.insert(colliders,AutoGenParent615ID45)
AutoGenParent615ID46 = {}
AutoGenParent615ID46.collider = OBBCollider.Create(-1)
AutoGenParent615ID46.collider:SetOffset(17,6.98218,141)
AutoGenParent615ID46.collider:SetZAxis(1,0,0)
AutoGenParent615ID46.collider:SetHalfLengths(0.3,5,4)
AutoGenParent615ID45.collider:AddChild(AutoGenParent615ID46.collider)
table.insert(colliders,AutoGenParent615ID46)
AutoGenParent615ID47 = {}
AutoGenParent615ID47.collider = OBBCollider.Create(-1)
AutoGenParent615ID47.collider:SetOffset(6.66861,7.11953,144.656)
AutoGenParent615ID47.collider:SetZAxis(0,0,1)
AutoGenParent615ID47.collider:SetHalfLengths(1,0.6,1)
AutoGenParent615ID45.collider:AddChild(AutoGenParent615ID47.collider)
table.insert(colliders,AutoGenParent615ID47)
AutoGenParent615ID48 = {}
AutoGenParent615ID48.collider = OBBCollider.Create(-1)
AutoGenParent615ID48.collider:SetOffset(8.5625,7.53359,144.445)
AutoGenParent615ID48.collider:SetZAxis(0,0,1)
AutoGenParent615ID48.collider:SetHalfLengths(1,0.6,1)
AutoGenParent615ID45.collider:AddChild(AutoGenParent615ID48.collider)
table.insert(colliders,AutoGenParent615ID48)
AutoGenParent615ID49 = {}
AutoGenParent615ID49.collider = AABBCollider.Create(-1)
AutoGenParent615ID49.collider:SetOffset(0,0,0)
AutoGenParent615ID49.collider:SetMinPos(3.70232,1.54031,142.941)
AutoGenParent615ID49.collider:SetMaxPos(56.2942,14.3388,163.037)
AutoGenParent615ID44.collider:AddChild(AutoGenParent615ID49.collider)
table.insert(colliders,AutoGenParent615ID49)
AutoGenParent615ID50 = {}
AutoGenParent615ID50.collider = OBBCollider.Create(-1)
AutoGenParent615ID50.collider:SetOffset(55.5,9.33883,145.5)
AutoGenParent615ID50.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent615ID50.collider:SetHalfLengths(0.3,5,2.54951)
AutoGenParent615ID49.collider:AddChild(AutoGenParent615ID50.collider)
table.insert(colliders,AutoGenParent615ID50)
AutoGenParent615ID51 = {}
AutoGenParent615ID51.collider = OBBCollider.Create(-1)
AutoGenParent615ID51.collider:SetOffset(35,7.12947,155)
AutoGenParent615ID51.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent615ID51.collider:SetHalfLengths(0.3,5.14729,3.16228)
AutoGenParent615ID49.collider:AddChild(AutoGenParent615ID51.collider)
table.insert(colliders,AutoGenParent615ID51)
AutoGenParent615ID52 = {}
AutoGenParent615ID52.collider = OBBCollider.Create(-1)
AutoGenParent615ID52.collider:SetOffset(4.5,7.42405,159)
AutoGenParent615ID52.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent615ID52.collider:SetHalfLengths(0.3,5.88374,4.03113)
AutoGenParent615ID49.collider:AddChild(AutoGenParent615ID52.collider)
table.insert(colliders,AutoGenParent615ID52)
AutoGenParent615ID53 = {}
AutoGenParent615ID53.collider = AABBCollider.Create(-1)
AutoGenParent615ID53.collider:SetOffset(0,0,0)
AutoGenParent615ID53.collider:SetMinPos(100,22.3083,90.9051)
AutoGenParent615ID53.collider:SetMaxPos(200.285,62.1411,199.3)
AutoGenParent615ID44.collider:AddChild(AutoGenParent615ID53.collider)
table.insert(colliders,AutoGenParent615ID53)
AutoGenParent615ID54 = {}
AutoGenParent615ID54.collider = OBBCollider.Create(-1)
AutoGenParent615ID54.collider:SetOffset(101,28.6339,199)
AutoGenParent615ID54.collider:SetZAxis(-1,0,0)
AutoGenParent615ID54.collider:SetHalfLengths(0.3,6.32562,1)
AutoGenParent615ID53.collider:AddChild(AutoGenParent615ID54.collider)
table.insert(colliders,AutoGenParent615ID54)
AutoGenParent615ID55 = {}
AutoGenParent615ID55.collider = OBBCollider.Create(-1)
AutoGenParent615ID55.collider:SetOffset(197.5,56.584,98.5)
AutoGenParent615ID55.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent615ID55.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent615ID53.collider:AddChild(AutoGenParent615ID55.collider)
table.insert(colliders,AutoGenParent615ID55)
AutoGenParent615ID56 = {}
AutoGenParent615ID56.collider = OBBCollider.Create(-1)
AutoGenParent615ID56.collider:SetOffset(153.5,50.5682,161.5)
AutoGenParent615ID56.collider:SetZAxis(-0.393919,0,0.919145)
AutoGenParent615ID56.collider:SetHalfLengths(0.3,6.67107,3.80789)
AutoGenParent615ID53.collider:AddChild(AutoGenParent615ID56.collider)
table.insert(colliders,AutoGenParent615ID56)
AutoGenParent615ID57 = {}
AutoGenParent615ID57.collider = AABBCollider.Create(-1)
AutoGenParent615ID57.collider:SetOffset(0,0,0)
AutoGenParent615ID57.collider:SetMinPos(3.76,1.24573,63.977)
AutoGenParent615ID57.collider:SetMaxPos(194.299,61.8068,209.24)
AutoGenParent615ID43.collider:AddChild(AutoGenParent615ID57.collider)
table.insert(colliders,AutoGenParent615ID57)
AutoGenParent615ID58 = {}
AutoGenParent615ID58.collider = AABBCollider.Create(-1)
AutoGenParent615ID58.collider:SetOffset(0,0,0)
AutoGenParent615ID58.collider:SetMinPos(3.76,1.24573,157.866)
AutoGenParent615ID58.collider:SetMaxPos(41.1664,12.5713,171.18)
AutoGenParent615ID57.collider:AddChild(AutoGenParent615ID58.collider)
table.insert(colliders,AutoGenParent615ID58)
AutoGenParent615ID59 = {}
AutoGenParent615ID59.collider = OBBCollider.Create(-1)
AutoGenParent615ID59.collider:SetOffset(37,7.27676,160)
AutoGenParent615ID59.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID59.collider:SetHalfLengths(0.3,5.29458,2.23607)
AutoGenParent615ID58.collider:AddChild(AutoGenParent615ID59.collider)
table.insert(colliders,AutoGenParent615ID59)
AutoGenParent615ID60 = {}
AutoGenParent615ID60.collider = OBBCollider.Create(-1)
AutoGenParent615ID60.collider:SetOffset(39.5,6.98218,163)
AutoGenParent615ID60.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent615ID60.collider:SetHalfLengths(0.3,5.14729,1.80278)
AutoGenParent615ID58.collider:AddChild(AutoGenParent615ID60.collider)
table.insert(colliders,AutoGenParent615ID60)
AutoGenParent615ID61 = {}
AutoGenParent615ID61.collider = OBBCollider.Create(-1)
AutoGenParent615ID61.collider:SetOffset(7,6.54031,167)
AutoGenParent615ID61.collider:SetZAxis(0.6,0,0.8)
AutoGenParent615ID61.collider:SetHalfLengths(0.3,5.29458,5)
AutoGenParent615ID58.collider:AddChild(AutoGenParent615ID61.collider)
table.insert(colliders,AutoGenParent615ID61)
AutoGenParent615ID62 = {}
AutoGenParent615ID62.collider = AABBCollider.Create(-1)
AutoGenParent615ID62.collider:SetOffset(0,0,0)
AutoGenParent615ID62.collider:SetMinPos(140.882,45.0112,63.977)
AutoGenParent615ID62.collider:SetMaxPos(194.299,61.8068,149.276)
AutoGenParent615ID57.collider:AddChild(AutoGenParent615ID62.collider)
table.insert(colliders,AutoGenParent615ID62)
AutoGenParent615ID63 = {}
AutoGenParent615ID63.collider = OBBCollider.Create(-1)
AutoGenParent615ID63.collider:SetOffset(144.5,50.234,147.5)
AutoGenParent615ID63.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent615ID63.collider:SetHalfLengths(0.3,5.22281,3.80789)
AutoGenParent615ID62.collider:AddChild(AutoGenParent615ID63.collider)
table.insert(colliders,AutoGenParent615ID63)
AutoGenParent615ID64 = {}
AutoGenParent615ID64.collider = OBBCollider.Create(-1)
AutoGenParent615ID64.collider:SetOffset(181.5,55.2472,112)
AutoGenParent615ID64.collider:SetZAxis(-0.287348,0,-0.957826)
AutoGenParent615ID64.collider:SetHalfLengths(0.3,6.55966,15.6605)
AutoGenParent615ID62.collider:AddChild(AutoGenParent615ID64.collider)
table.insert(colliders,AutoGenParent615ID64)
AutoGenParent615ID65 = {}
AutoGenParent615ID65.collider = OBBCollider.Create(-1)
AutoGenParent615ID65.collider:SetOffset(193.5,54.5788,70.5)
AutoGenParent615ID65.collider:SetZAxis(-0.0766965,0,0.997055)
AutoGenParent615ID65.collider:SetHalfLengths(0.3,6.00264,6.5192)
AutoGenParent615ID62.collider:AddChild(AutoGenParent615ID65.collider)
table.insert(colliders,AutoGenParent615ID65)
AutoGenParent615ID66 = {}
AutoGenParent615ID66.collider = AABBCollider.Create(-1)
AutoGenParent615ID66.collider:SetOffset(0,0,0)
AutoGenParent615ID66.collider:SetMinPos(52.82,4.33883,145.702)
AutoGenParent615ID66.collider:SetMaxPos(156.037,55.6796,209.24)
AutoGenParent615ID57.collider:AddChild(AutoGenParent615ID66.collider)
table.insert(colliders,AutoGenParent615ID66)
AutoGenParent615ID67 = {}
AutoGenParent615ID67.collider = OBBCollider.Create(-1)
AutoGenParent615ID67.collider:SetOffset(55,10.3699,207.5)
AutoGenParent615ID67.collider:SetZAxis(0.8,0,0.6)
AutoGenParent615ID67.collider:SetHalfLengths(0.3,6.03103,2.5)
AutoGenParent615ID66.collider:AddChild(AutoGenParent615ID67.collider)
table.insert(colliders,AutoGenParent615ID67)
AutoGenParent615ID68 = {}
AutoGenParent615ID68.collider = OBBCollider.Create(-1)
AutoGenParent615ID68.collider:SetOffset(139,44.2181,162.5)
AutoGenParent615ID68.collider:SetZAxis(-0.178885,0,-0.98387)
AutoGenParent615ID68.collider:SetHalfLengths(0.3,9.56758,5.59017)
AutoGenParent615ID66.collider:AddChild(AutoGenParent615ID68.collider)
table.insert(colliders,AutoGenParent615ID68)
AutoGenParent615ID69 = {}
AutoGenParent615ID69.collider = OBBCollider.Create(-1)
AutoGenParent615ID69.collider:SetOffset(152,50.4568,146.5)
AutoGenParent615ID69.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent615ID69.collider:SetHalfLengths(0.3,5.22281,4.03113)
AutoGenParent615ID66.collider:AddChild(AutoGenParent615ID69.collider)
table.insert(colliders,AutoGenParent615ID69)
AutoGenParent615ID70 = {}
AutoGenParent615ID70.collider = AABBCollider.Create(-1)
AutoGenParent615ID70.collider:SetOffset(0,0,0)
AutoGenParent615ID70.collider:SetMinPos(106.878,20.6881,37.73)
AutoGenParent615ID70.collider:SetMaxPos(285.233,60.47,240.042)
AutoGenParent615ID43.collider:AddChild(AutoGenParent615ID70.collider)
table.insert(colliders,AutoGenParent615ID70)
AutoGenParent615ID71 = {}
AutoGenParent615ID71.collider = AABBCollider.Create(-1)
AutoGenParent615ID71.collider:SetOffset(0,0,0)
AutoGenParent615ID71.collider:SetMinPos(106.878,20.6881,126.973)
AutoGenParent615ID71.collider:SetMaxPos(206.299,60.47,224.274)
AutoGenParent615ID70.collider:AddChild(AutoGenParent615ID71.collider)
table.insert(colliders,AutoGenParent615ID71)
AutoGenParent615ID72 = {}
AutoGenParent615ID72.collider = OBBCollider.Create(-1)
AutoGenParent615ID72.collider:SetOffset(126,32.9053,211.5)
AutoGenParent615ID72.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent615ID72.collider:SetHalfLengths(0.3,5.88375,2.06155)
AutoGenParent615ID71.collider:AddChild(AutoGenParent615ID72.collider)
table.insert(colliders,AutoGenParent615ID72)
AutoGenParent615ID73 = {}
AutoGenParent615ID73.collider = OBBCollider.Create(-1)
AutoGenParent615ID73.collider:SetOffset(111.5,28.3393,222)
AutoGenParent615ID73.collider:SetZAxis(0.913812,0,-0.406139)
AutoGenParent615ID73.collider:SetHalfLengths(0.3,7.65123,4.92443)
AutoGenParent615ID71.collider:AddChild(AutoGenParent615ID73.collider)
table.insert(colliders,AutoGenParent615ID73)
AutoGenParent615ID74 = {}
AutoGenParent615ID74.collider = OBBCollider.Create(-1)
AutoGenParent615ID74.collider:SetOffset(205.5,55.1358,132.5)
AutoGenParent615ID74.collider:SetZAxis(0.0905358,0,0.995893)
AutoGenParent615ID74.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent615ID71.collider:AddChild(AutoGenParent615ID74.collider)
table.insert(colliders,AutoGenParent615ID74)
AutoGenParent615ID75 = {}
AutoGenParent615ID75.collider = AABBCollider.Create(-1)
AutoGenParent615ID75.collider:SetOffset(0,0,0)
AutoGenParent615ID75.collider:SetMinPos(160.696,35.4304,37.73)
AutoGenParent615ID75.collider:SetMaxPos(276.131,54.4542,196.351)
AutoGenParent615ID70.collider:AddChild(AutoGenParent615ID75.collider)
table.insert(colliders,AutoGenParent615ID75)
AutoGenParent615ID76 = {}
AutoGenParent615ID76.collider = OBBCollider.Create(-1)
AutoGenParent615ID76.collider:SetOffset(260.5,45.2208,45.5)
AutoGenParent615ID76.collider:SetZAxis(0.900159,0,0.435561)
AutoGenParent615ID76.collider:SetHalfLengths(0.3,9.23337,17.2192)
AutoGenParent615ID75.collider:AddChild(AutoGenParent615ID76.collider)
table.insert(colliders,AutoGenParent615ID76)
AutoGenParent615ID77 = {}
AutoGenParent615ID77.collider = OBBCollider.Create(-1)
AutoGenParent615ID77.collider:SetOffset(221.5,41.3216,126)
AutoGenParent615ID77.collider:SetZAxis(0.83205,0,-0.5547)
AutoGenParent615ID77.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent615ID75.collider:AddChild(AutoGenParent615ID77.collider)
table.insert(colliders,AutoGenParent615ID77)
AutoGenParent615ID78 = {}
AutoGenParent615ID78.collider = OBBCollider.Create(-1)
AutoGenParent615ID78.collider:SetOffset(163.885,45.0938,193.24)
AutoGenParent615ID78.collider:SetZAxis(0,0,1)
AutoGenParent615ID78.collider:SetHalfLengths(3.18928,5.74361,3.11039)
AutoGenParent615ID75.collider:AddChild(AutoGenParent615ID78.collider)
table.insert(colliders,AutoGenParent615ID78)
AutoGenParent615ID79 = {}
AutoGenParent615ID79.collider = AABBCollider.Create(-1)
AutoGenParent615ID79.collider:SetOffset(0,0,0)
AutoGenParent615ID79.collider:SetMinPos(148.703,31.197,69.8112)
AutoGenParent615ID79.collider:SetMaxPos(285.233,45.319,240.042)
AutoGenParent615ID70.collider:AddChild(AutoGenParent615ID79.collider)
table.insert(colliders,AutoGenParent615ID79)
AutoGenParent615ID80 = {}
AutoGenParent615ID80.collider = OBBCollider.Create(-1)
AutoGenParent615ID80.collider:SetOffset(149.5,37.0883,236.5)
AutoGenParent615ID80.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent615ID80.collider:SetHalfLengths(0.3,5.1114,3.53553)
AutoGenParent615ID79.collider:AddChild(AutoGenParent615ID80.collider)
table.insert(colliders,AutoGenParent615ID80)
AutoGenParent615ID81 = {}
AutoGenParent615ID81.collider = OBBCollider.Create(-1)
AutoGenParent615ID81.collider:SetOffset(276.5,39.5392,80.5)
AutoGenParent615ID81.collider:SetZAxis(-0.629198,0,-0.777245)
AutoGenParent615ID81.collider:SetHalfLengths(0.3,5.77983,13.5093)
AutoGenParent615ID79.collider:AddChild(AutoGenParent615ID81.collider)
table.insert(colliders,AutoGenParent615ID81)
AutoGenParent615ID82 = {}
AutoGenParent615ID82.collider = OBBCollider.Create(-1)
AutoGenParent615ID82.collider:SetOffset(240,36.754,139)
AutoGenParent615ID82.collider:SetZAxis(0,0,-1)
AutoGenParent615ID82.collider:SetHalfLengths(0.3,5.55702,2)
AutoGenParent615ID79.collider:AddChild(AutoGenParent615ID82.collider)
table.insert(colliders,AutoGenParent615ID82)
AutoGenParent615ID83 = {}
AutoGenParent615ID83.collider = AABBCollider.Create(-1)
AutoGenParent615ID83.collider:SetOffset(0,0,0)
AutoGenParent615ID83.collider:SetMinPos(2.80476,-3.32028,34.7033)
AutoGenParent615ID83.collider:SetMaxPos(290.212,62.0297,237.268)
AutoGenParent615ID2.collider:AddChild(AutoGenParent615ID83.collider)
table.insert(colliders,AutoGenParent615ID83)
AutoGenParent615ID84 = {}
AutoGenParent615ID84.collider = AABBCollider.Create(-1)
AutoGenParent615ID84.collider:SetOffset(0,0,0)
AutoGenParent615ID84.collider:SetMinPos(2.80476,0.361984,120.706)
AutoGenParent615ID84.collider:SetMaxPos(236.059,49.3295,237.268)
AutoGenParent615ID83.collider:AddChild(AutoGenParent615ID84.collider)
table.insert(colliders,AutoGenParent615ID84)
AutoGenParent615ID85 = {}
AutoGenParent615ID85.collider = AABBCollider.Create(-1)
AutoGenParent615ID85.collider:SetOffset(0,0,0)
AutoGenParent615ID85.collider:SetMinPos(9.7,0.656566,165.7)
AutoGenParent615ID85.collider:SetMaxPos(51,13.0132,176)
AutoGenParent615ID84.collider:AddChild(AutoGenParent615ID85.collider)
table.insert(colliders,AutoGenParent615ID85)
AutoGenParent615ID86 = {}
AutoGenParent615ID86.collider = OBBCollider.Create(-1)
AutoGenParent615ID86.collider:SetOffset(48.5,7.57134,166)
AutoGenParent615ID86.collider:SetZAxis(1,0,0)
AutoGenParent615ID86.collider:SetHalfLengths(0.3,5.44187,2.5)
AutoGenParent615ID85.collider:AddChild(AutoGenParent615ID86.collider)
table.insert(colliders,AutoGenParent615ID86)
AutoGenParent615ID87 = {}
AutoGenParent615ID87.collider = OBBCollider.Create(-1)
AutoGenParent615ID87.collider:SetOffset(32.5,6.54031,170.5)
AutoGenParent615ID87.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent615ID87.collider:SetHalfLengths(0.3,5,2.91548)
AutoGenParent615ID85.collider:AddChild(AutoGenParent615ID87.collider)
table.insert(colliders,AutoGenParent615ID87)
AutoGenParent615ID88 = {}
AutoGenParent615ID88.collider = OBBCollider.Create(-1)
AutoGenParent615ID88.collider:SetOffset(10,6.24573,173.5)
AutoGenParent615ID88.collider:SetZAxis(0,0,1)
AutoGenParent615ID88.collider:SetHalfLengths(0.3,5.58916,2.5)
AutoGenParent615ID85.collider:AddChild(AutoGenParent615ID88.collider)
table.insert(colliders,AutoGenParent615ID88)
AutoGenParent615ID89 = {}
AutoGenParent615ID89.collider = AABBCollider.Create(-1)
AutoGenParent615ID89.collider:SetOffset(0,0,0)
AutoGenParent615ID89.collider:SetMinPos(2.80476,0.361984,165.75)
AutoGenParent615ID89.collider:SetMaxPos(57.1664,13.0132,182.228)
AutoGenParent615ID84.collider:AddChild(AutoGenParent615ID89.collider)
table.insert(colliders,AutoGenParent615ID89)
AutoGenParent615ID90 = {}
AutoGenParent615ID90.collider = OBBCollider.Create(-1)
AutoGenParent615ID90.collider:SetOffset(54,8.01322,168)
AutoGenParent615ID90.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent615ID90.collider:SetHalfLengths(0.3,5,3.60555)
AutoGenParent615ID89.collider:AddChild(AutoGenParent615ID90.collider)
table.insert(colliders,AutoGenParent615ID90)
AutoGenParent615ID91 = {}
AutoGenParent615ID91.collider = OBBCollider.Create(-1)
AutoGenParent615ID91.collider:SetOffset(22,5.80386,174.5)
AutoGenParent615ID91.collider:SetZAxis(0,0,1)
AutoGenParent615ID91.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent615ID89.collider:AddChild(AutoGenParent615ID91.collider)
table.insert(colliders,AutoGenParent615ID91)
AutoGenParent615ID92 = {}
AutoGenParent615ID92.collider = OBBCollider.Create(-1)
AutoGenParent615ID92.collider:SetOffset(6.5,5.65657,179)
AutoGenParent615ID92.collider:SetZAxis(-0.759257,0,0.650791)
AutoGenParent615ID92.collider:SetHalfLengths(0.3,5.29458,4.60977)
AutoGenParent615ID89.collider:AddChild(AutoGenParent615ID92.collider)
table.insert(colliders,AutoGenParent615ID92)
AutoGenParent615ID93 = {}
AutoGenParent615ID93.collider = AABBCollider.Create(-1)
AutoGenParent615ID93.collider:SetOffset(0,0,0)
AutoGenParent615ID93.collider:SetMinPos(110.866,21.5718,120.706)
AutoGenParent615ID93.collider:SetMaxPos(236.059,49.3295,237.268)
AutoGenParent615ID84.collider:AddChild(AutoGenParent615ID93.collider)
table.insert(colliders,AutoGenParent615ID93)
AutoGenParent615ID94 = {}
AutoGenParent615ID94.collider = OBBCollider.Create(-1)
AutoGenParent615ID94.collider:SetOffset(115,28.4866,235)
AutoGenParent615ID94.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent615ID94.collider:SetHalfLengths(0.3,6.91478,4.47214)
AutoGenParent615ID93.collider:AddChild(AutoGenParent615ID94.collider)
table.insert(colliders,AutoGenParent615ID94)
AutoGenParent615ID95 = {}
AutoGenParent615ID95.collider = OBBCollider.Create(-1)
AutoGenParent615ID95.collider:SetOffset(132,33.8575,223.5)
AutoGenParent615ID95.collider:SetZAxis(0.992278,0,-0.124035)
AutoGenParent615ID95.collider:SetHalfLengths(0.3,6.67107,4.03113)
AutoGenParent615ID93.collider:AddChild(AutoGenParent615ID95.collider)
table.insert(colliders,AutoGenParent615ID95)
AutoGenParent615ID96 = {}
AutoGenParent615ID96.collider = OBBCollider.Create(-1)
AutoGenParent615ID96.collider:SetOffset(231,42.2129,122)
AutoGenParent615ID96.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent615ID96.collider:SetHalfLengths(0.3,7.11668,5.09902)
AutoGenParent615ID93.collider:AddChild(AutoGenParent615ID96.collider)
table.insert(colliders,AutoGenParent615ID96)
AutoGenParent615ID97 = {}
AutoGenParent615ID97.collider = AABBCollider.Create(-1)
AutoGenParent615ID97.collider:SetOffset(0,0,0)
AutoGenParent615ID97.collider:SetMinPos(111.74,29.6728,34.7033)
AutoGenParent615ID97.collider:SetMaxPos(290.212,62.0297,224.111)
AutoGenParent615ID83.collider:AddChild(AutoGenParent615ID97.collider)
table.insert(colliders,AutoGenParent615ID97)
AutoGenParent615ID98 = {}
AutoGenParent615ID98.collider = AABBCollider.Create(-1)
AutoGenParent615ID98.collider:SetOffset(0,0,0)
AutoGenParent615ID98.collider:SetMinPos(185.709,40.2208,34.7033)
AutoGenParent615ID98.collider:SetMaxPos(245.044,61.9183,131.073)
AutoGenParent615ID97.collider:AddChild(AutoGenParent615ID98.collider)
table.insert(colliders,AutoGenParent615ID98)
AutoGenParent615ID99 = {}
AutoGenParent615ID99.collider = OBBCollider.Create(-1)
AutoGenParent615ID99.collider:SetOffset(186.5,55.3586,129)
AutoGenParent615ID99.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent615ID99.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent615ID98.collider:AddChild(AutoGenParent615ID99.collider)
table.insert(colliders,AutoGenParent615ID99)
AutoGenParent615ID100 = {}
AutoGenParent615ID100.collider = OBBCollider.Create(-1)
AutoGenParent615ID100.collider:SetOffset(235,48.0059,36.5)
AutoGenParent615ID100.collider:SetZAxis(0.988936,0,0.14834)
AutoGenParent615ID100.collider:SetHalfLengths(0.3,7.78511,10.1119)
AutoGenParent615ID98.collider:AddChild(AutoGenParent615ID100.collider)
table.insert(colliders,AutoGenParent615ID100)
AutoGenParent615ID101 = {}
AutoGenParent615ID101.collider = OBBCollider.Create(-1)
AutoGenParent615ID101.collider:SetOffset(202.5,56.027,116.5)
AutoGenParent615ID101.collider:SetZAxis(0.231621,0,0.972806)
AutoGenParent615ID101.collider:SetHalfLengths(0.3,5.89124,10.7935)
AutoGenParent615ID98.collider:AddChild(AutoGenParent615ID101.collider)
table.insert(colliders,AutoGenParent615ID101)
AutoGenParent615ID102 = {}
AutoGenParent615ID102.collider = AABBCollider.Create(-1)
AutoGenParent615ID102.collider:SetOffset(0,0,0)
AutoGenParent615ID102.collider:SetMinPos(111.74,29.6728,140.889)
AutoGenParent615ID102.collider:SetMaxPos(187.279,62.0297,214.149)
AutoGenParent615ID97.collider:AddChild(AutoGenParent615ID102.collider)
table.insert(colliders,AutoGenParent615ID102)
AutoGenParent615ID103 = {}
AutoGenParent615ID103.collider = OBBCollider.Create(-1)
AutoGenParent615ID103.collider:SetOffset(114,36.1457,210.5)
AutoGenParent615ID103.collider:SetZAxis(-0.496139,0,-0.868243)
AutoGenParent615ID103.collider:SetHalfLengths(0.3,6.4729,4.03113)
AutoGenParent615ID102.collider:AddChild(AutoGenParent615ID103.collider)
table.insert(colliders,AutoGenParent615ID103)
AutoGenParent615ID104 = {}
AutoGenParent615ID104.collider = OBBCollider.Create(-1)
AutoGenParent615ID104.collider:SetOffset(186,55.5814,143.5)
AutoGenParent615ID104.collider:SetZAxis(0.371391,0,-0.928477)
AutoGenParent615ID104.collider:SetHalfLengths(0.3,5.33421,2.69258)
AutoGenParent615ID102.collider:AddChild(AutoGenParent615ID104.collider)
table.insert(colliders,AutoGenParent615ID104)
AutoGenParent615ID105 = {}
AutoGenParent615ID105.collider = OBBCollider.Create(-1)
AutoGenParent615ID105.collider:SetOffset(170.5,55.5814,165.5)
AutoGenParent615ID105.collider:SetZAxis(-0.874157,0,-0.485643)
AutoGenParent615ID105.collider:SetHalfLengths(0.3,6.44826,5.14782)
AutoGenParent615ID102.collider:AddChild(AutoGenParent615ID105.collider)
table.insert(colliders,AutoGenParent615ID105)
AutoGenParent615ID106 = {}
AutoGenParent615ID106.collider = AABBCollider.Create(-1)
AutoGenParent615ID106.collider:SetOffset(0,0,0)
AutoGenParent615ID106.collider:SetMinPos(176.721,33.9821,52.7879)
AutoGenParent615ID106.collider:SetMaxPos(290.212,48.5497,224.111)
AutoGenParent615ID97.collider:AddChild(AutoGenParent615ID106.collider)
table.insert(colliders,AutoGenParent615ID106)
AutoGenParent615ID107 = {}
AutoGenParent615ID107.collider = OBBCollider.Create(-1)
AutoGenParent615ID107.collider:SetOffset(283,40.9874,60)
AutoGenParent615ID107.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID107.collider:SetHalfLengths(0.3,5.33421,9.8995)
AutoGenParent615ID106.collider:AddChild(AutoGenParent615ID107.collider)
table.insert(colliders,AutoGenParent615ID107)
AutoGenParent615ID108 = {}
AutoGenParent615ID108.collider = OBBCollider.Create(-1)
AutoGenParent615ID108.collider:SetOffset(178,42.7699,221.5)
AutoGenParent615ID108.collider:SetZAxis(-0.371391,0,-0.928477)
AutoGenParent615ID108.collider:SetHalfLengths(0.3,5.77983,2.69258)
AutoGenParent615ID106.collider:AddChild(AutoGenParent615ID108.collider)
table.insert(colliders,AutoGenParent615ID108)
AutoGenParent615ID109 = {}
AutoGenParent615ID109.collider = OBBCollider.Create(-1)
AutoGenParent615ID109.collider:SetOffset(204.5,39.6506,198.5)
AutoGenParent615ID109.collider:SetZAxis(0.514496,0,-0.857493)
AutoGenParent615ID109.collider:SetHalfLengths(0.3,5.66843,2.91548)
AutoGenParent615ID106.collider:AddChild(AutoGenParent615ID109.collider)
table.insert(colliders,AutoGenParent615ID109)
AutoGenParent615ID110 = {}
AutoGenParent615ID110.collider = AABBCollider.Create(-1)
AutoGenParent615ID110.collider:SetOffset(0,0,0)
AutoGenParent615ID110.collider:SetMinPos(4.75038,-3.32028,130.451)
AutoGenParent615ID110.collider:SetMaxPos(237.588,47.7647,233.03)
AutoGenParent615ID83.collider:AddChild(AutoGenParent615ID110.collider)
table.insert(colliders,AutoGenParent615ID110)
AutoGenParent615ID111 = {}
AutoGenParent615ID111.collider = AABBCollider.Create(-1)
AutoGenParent615ID111.collider:SetOffset(0,0,0)
AutoGenParent615ID111.collider:SetMinPos(4.75038,-3.32028,196.7)
AutoGenParent615ID111.collider:SetMaxPos(30,13.1605,202.166)
AutoGenParent615ID110.collider:AddChild(AutoGenParent615ID111.collider)
table.insert(colliders,AutoGenParent615ID111)
AutoGenParent615ID112 = {}
AutoGenParent615ID112.collider = OBBCollider.Create(-1)
AutoGenParent615ID112.collider:SetOffset(6,3.44721,200.5)
AutoGenParent615ID112.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent615ID112.collider:SetHalfLengths(0.3,5,1.80278)
AutoGenParent615ID111.collider:AddChild(AutoGenParent615ID112.collider)
table.insert(colliders,AutoGenParent615ID112)
AutoGenParent615ID113 = {}
AutoGenParent615ID113.collider = OBBCollider.Create(-1)
AutoGenParent615ID113.collider:SetOffset(24.5,3.15263,199.5)
AutoGenParent615ID113.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent615ID113.collider:SetHalfLengths(0.3,6.47291,2.91548)
AutoGenParent615ID111.collider:AddChild(AutoGenParent615ID113.collider)
table.insert(colliders,AutoGenParent615ID113)
AutoGenParent615ID114 = {}
AutoGenParent615ID114.collider = OBBCollider.Create(-1)
AutoGenParent615ID114.collider:SetOffset(29,7.71863,197)
AutoGenParent615ID114.collider:SetZAxis(1,0,0)
AutoGenParent615ID114.collider:SetHalfLengths(0.3,5.44187,1)
AutoGenParent615ID111.collider:AddChild(AutoGenParent615ID114.collider)
table.insert(colliders,AutoGenParent615ID114)
AutoGenParent615ID115 = {}
AutoGenParent615ID115.collider = AABBCollider.Create(-1)
AutoGenParent615ID115.collider:SetOffset(0,0,0)
AutoGenParent615ID115.collider:SetMinPos(7.93714,-1.84737,195.715)
AutoGenParent615ID115.collider:SetMaxPos(39.0949,13.897,204.293)
AutoGenParent615ID110.collider:AddChild(AutoGenParent615ID115.collider)
table.insert(colliders,AutoGenParent615ID115)
AutoGenParent615ID116 = {}
AutoGenParent615ID116.collider = OBBCollider.Create(-1)
AutoGenParent615ID116.collider:SetOffset(37.5,8.16051,196.5)
AutoGenParent615ID116.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent615ID116.collider:SetHalfLengths(0.3,5.14729,1.58114)
AutoGenParent615ID115.collider:AddChild(AutoGenParent615ID116.collider)
table.insert(colliders,AutoGenParent615ID116)
AutoGenParent615ID117 = {}
AutoGenParent615ID117.collider = OBBCollider.Create(-1)
AutoGenParent615ID117.collider:SetOffset(15,3.29992,202.5)
AutoGenParent615ID117.collider:SetZAxis(0.977802,0,-0.209529)
AutoGenParent615ID117.collider:SetHalfLengths(0.3,5.14729,7.15891)
AutoGenParent615ID115.collider:AddChild(AutoGenParent615ID117.collider)
table.insert(colliders,AutoGenParent615ID117)
AutoGenParent615ID118 = {}
AutoGenParent615ID118.collider = OBBCollider.Create(-1)
AutoGenParent615ID118.collider:SetOffset(31.5,8.16051,200)
AutoGenParent615ID118.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID118.collider:SetHalfLengths(0.3,5.73645,3.3541)
AutoGenParent615ID115.collider:AddChild(AutoGenParent615ID118.collider)
table.insert(colliders,AutoGenParent615ID118)
AutoGenParent615ID119 = {}
AutoGenParent615ID119.collider = AABBCollider.Create(-1)
AutoGenParent615ID119.collider:SetOffset(0,0,0)
AutoGenParent615ID119.collider:SetMinPos(147.701,30.083,130.451)
AutoGenParent615ID119.collider:SetMaxPos(237.588,47.7647,233.03)
AutoGenParent615ID110.collider:AddChild(AutoGenParent615ID119.collider)
table.insert(colliders,AutoGenParent615ID119)
AutoGenParent615ID120 = {}
AutoGenParent615ID120.collider = OBBCollider.Create(-1)
AutoGenParent615ID120.collider:SetOffset(148.5,36.0856,228)
AutoGenParent615ID120.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent615ID120.collider:SetHalfLengths(0.3,6.00264,5.02494)
AutoGenParent615ID119.collider:AddChild(AutoGenParent615ID120.collider)
table.insert(colliders,AutoGenParent615ID120)
AutoGenParent615ID121 = {}
AutoGenParent615ID121.collider = OBBCollider.Create(-1)
AutoGenParent615ID121.collider:SetOffset(219,36.4198,158)
AutoGenParent615ID121.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent615ID121.collider:SetHalfLengths(0.3,5.1114,3.16228)
AutoGenParent615ID119.collider:AddChild(AutoGenParent615ID121.collider)
table.insert(colliders,AutoGenParent615ID121)
AutoGenParent615ID122 = {}
AutoGenParent615ID122.collider = OBBCollider.Create(-1)
AutoGenParent615ID122.collider:SetOffset(235,42.375,133.125)
AutoGenParent615ID122.collider:SetZAxis(-0.485958,0,-0.873982)
AutoGenParent615ID122.collider:SetHalfLengths(1.82423,5.38972,2.04467)
AutoGenParent615ID119.collider:AddChild(AutoGenParent615ID122.collider)
table.insert(colliders,AutoGenParent615ID122)
AutoGenParent615ID123 = {}
AutoGenParent615ID123.collider = AABBCollider.Create(-1)
AutoGenParent615ID123.collider:SetOffset(0,0,0)
AutoGenParent615ID123.collider:SetMinPos(1.70104,-2.14196,47.7018)
AutoGenParent615ID123.collider:SetMaxPos(322.234,63.9235,250.277)
AutoGenParent615ID1.collider:AddChild(AutoGenParent615ID123.collider)
table.insert(colliders,AutoGenParent615ID123)
AutoGenParent615ID124 = {}
AutoGenParent615ID124.collider = AABBCollider.Create(-1)
AutoGenParent615ID124.collider:SetOffset(0,0,0)
AutoGenParent615ID124.collider:SetMinPos(1.70104,-2.14196,47.7018)
AutoGenParent615ID124.collider:SetMaxPos(255.118,62.9209,207.234)
AutoGenParent615ID123.collider:AddChild(AutoGenParent615ID124.collider)
table.insert(colliders,AutoGenParent615ID124)
AutoGenParent615ID125 = {}
AutoGenParent615ID125.collider = AABBCollider.Create(-1)
AutoGenParent615ID125.collider:SetOffset(0,0,0)
AutoGenParent615ID125.collider:SetMinPos(6.73167,-1.70008,48.7504)
AutoGenParent615ID125.collider:SetMaxPos(209.166,62.9209,204.134)
AutoGenParent615ID124.collider:AddChild(AutoGenParent615ID125.collider)
table.insert(colliders,AutoGenParent615ID125)
AutoGenParent615ID126 = {}
AutoGenParent615ID126.collider = AABBCollider.Create(-1)
AutoGenParent615ID126.collider:SetOffset(0,0,0)
AutoGenParent615ID126.collider:SetMinPos(42,3.01322,56.9118)
AutoGenParent615ID126.collider:SetMaxPos(181.287,62.9209,187.3)
AutoGenParent615ID125.collider:AddChild(AutoGenParent615ID126.collider)
table.insert(colliders,AutoGenParent615ID126)
AutoGenParent615ID127 = {}
AutoGenParent615ID127.collider = OBBCollider.Create(-1)
AutoGenParent615ID127.collider:SetOffset(49,8.01322,186.5)
AutoGenParent615ID127.collider:SetZAxis(-0.986394,0,0.164399)
AutoGenParent615ID127.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent615ID126.collider:AddChild(AutoGenParent615ID127.collider)
table.insert(colliders,AutoGenParent615ID127)
AutoGenParent615ID128 = {}
AutoGenParent615ID128.collider = OBBCollider.Create(-1)
AutoGenParent615ID128.collider:SetOffset(44,8.01322,187)
AutoGenParent615ID128.collider:SetZAxis(-1,0,0)
AutoGenParent615ID128.collider:SetHalfLengths(0.3,5,2)
AutoGenParent615ID126.collider:AddChild(AutoGenParent615ID128.collider)
table.insert(colliders,AutoGenParent615ID128)
AutoGenParent615ID129 = {}
AutoGenParent615ID129.collider = OBBCollider.Create(-1)
AutoGenParent615ID129.collider:SetOffset(179,56.2498,63.5)
AutoGenParent615ID129.collider:SetZAxis(0.294086,0,-0.955779)
AutoGenParent615ID129.collider:SetHalfLengths(0.3,6.67107,6.80074)
AutoGenParent615ID126.collider:AddChild(AutoGenParent615ID129.collider)
table.insert(colliders,AutoGenParent615ID129)
AutoGenParent615ID130 = {}
AutoGenParent615ID130.collider = AABBCollider.Create(-1)
AutoGenParent615ID130.collider:SetOffset(0,0,0)
AutoGenParent615ID130.collider:SetMinPos(6.73167,-1.70008,86.9701)
AutoGenParent615ID130.collider:SetMaxPos(177.299,62.0297,204.134)
AutoGenParent615ID125.collider:AddChild(AutoGenParent615ID130.collider)
table.insert(colliders,AutoGenParent615ID130)
AutoGenParent615ID131 = {}
AutoGenParent615ID131.collider = OBBCollider.Create(-1)
AutoGenParent615ID131.collider:SetOffset(42.5,8.3078,200)
AutoGenParent615ID131.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent615ID131.collider:SetHalfLengths(0.3,6.32561,5.59017)
AutoGenParent615ID130.collider:AddChild(AutoGenParent615ID131.collider)
table.insert(colliders,AutoGenParent615ID131)
AutoGenParent615ID132 = {}
AutoGenParent615ID132.collider = OBBCollider.Create(-1)
AutoGenParent615ID132.collider:SetOffset(7.5,3.44721,203)
AutoGenParent615ID132.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID132.collider:SetHalfLengths(0.3,5.14729,1.11803)
AutoGenParent615ID130.collider:AddChild(AutoGenParent615ID132.collider)
table.insert(colliders,AutoGenParent615ID132)
AutoGenParent615ID133 = {}
AutoGenParent615ID133.collider = OBBCollider.Create(-1)
AutoGenParent615ID133.collider:SetOffset(176.5,56.8068,92)
AutoGenParent615ID133.collider:SetZAxis(-0.0995037,0,-0.995037)
AutoGenParent615ID133.collider:SetHalfLengths(0.3,5.22281,5.02494)
AutoGenParent615ID130.collider:AddChild(AutoGenParent615ID133.collider)
table.insert(colliders,AutoGenParent615ID133)
AutoGenParent615ID134 = {}
AutoGenParent615ID134.collider = AABBCollider.Create(-1)
AutoGenParent615ID134.collider:SetOffset(0,0,0)
AutoGenParent615ID134.collider:SetMinPos(81.8048,11.9979,48.7504)
AutoGenParent615ID134.collider:SetMaxPos(209.166,58.6875,201.228)
AutoGenParent615ID125.collider:AddChild(AutoGenParent615ID134.collider)
table.insert(colliders,AutoGenParent615ID134)
AutoGenParent615ID135 = {}
AutoGenParent615ID135.collider = OBBCollider.Create(-1)
AutoGenParent615ID135.collider:SetOffset(85.5,20.091,198)
AutoGenParent615ID135.collider:SetZAxis(0.759257,0,-0.650791)
AutoGenParent615ID135.collider:SetHalfLengths(0.3,8.0931,4.60977)
AutoGenParent615ID134.collider:AddChild(AutoGenParent615ID135.collider)
table.insert(colliders,AutoGenParent615ID135)
AutoGenParent615ID136 = {}
AutoGenParent615ID136.collider = OBBCollider.Create(-1)
AutoGenParent615ID136.collider:SetOffset(95,23.1841,192.5)
AutoGenParent615ID136.collider:SetZAxis(0.923077,0,-0.384615)
AutoGenParent615ID136.collider:SetHalfLengths(0.3,8.82956,6.5)
AutoGenParent615ID134.collider:AddChild(AutoGenParent615ID136.collider)
table.insert(colliders,AutoGenParent615ID136)
AutoGenParent615ID137 = {}
AutoGenParent615ID137.collider = OBBCollider.Create(-1)
AutoGenParent615ID137.collider:SetOffset(204.5,52.2393,52)
AutoGenParent615ID137.collider:SetZAxis(-0.83205,0,0.5547)
AutoGenParent615ID137.collider:SetHalfLengths(0.3,6.44826,5.40833)
AutoGenParent615ID134.collider:AddChild(AutoGenParent615ID137.collider)
table.insert(colliders,AutoGenParent615ID137)
AutoGenParent615ID138 = {}
AutoGenParent615ID138.collider = AABBCollider.Create(-1)
AutoGenParent615ID138.collider:SetOffset(0,0,0)
AutoGenParent615ID138.collider:SetMinPos(21.0444,3.3078,47.7018)
AutoGenParent615ID138.collider:SetMaxPos(226.033,62.6981,207.234)
AutoGenParent615ID124.collider:AddChild(AutoGenParent615ID138.collider)
table.insert(colliders,AutoGenParent615ID138)
AutoGenParent615ID139 = {}
AutoGenParent615ID139.collider = AABBCollider.Create(-1)
AutoGenParent615ID139.collider:SetOffset(0,0,0)
AutoGenParent615ID139.collider:SetMinPos(21.0444,3.3078,127.732)
AutoGenParent615ID139.collider:SetMaxPos(48.1342,16.3583,141.856)
AutoGenParent615ID138.collider:AddChild(AutoGenParent615ID139.collider)
table.insert(colliders,AutoGenParent615ID139)
AutoGenParent615ID140 = {}
AutoGenParent615ID140.collider = OBBCollider.Create(-1)
AutoGenParent615ID140.collider:SetOffset(45,8.60238,129.5)
AutoGenParent615ID140.collider:SetZAxis(-0.894427,0,-0.447214)
AutoGenParent615ID140.collider:SetHalfLengths(0.3,5.29458,3.3541)
AutoGenParent615ID139.collider:AddChild(AutoGenParent615ID140.collider)
table.insert(colliders,AutoGenParent615ID140)
AutoGenParent615ID141 = {}
AutoGenParent615ID141.collider = OBBCollider.Create(-1)
AutoGenParent615ID141.collider:SetOffset(24,10.8555,139)
AutoGenParent615ID141.collider:SetZAxis(0.367737,0,0.92993)
AutoGenParent615ID141.collider:SetHalfLengths(2.32777,5.5028,2.15084)
AutoGenParent615ID139.collider:AddChild(AutoGenParent615ID141.collider)
table.insert(colliders,AutoGenParent615ID141)
AutoGenParent615ID142 = {}
AutoGenParent615ID142.collider = OBBCollider.Create(-1)
AutoGenParent615ID142.collider:SetOffset(35.3281,10.2578,134)
AutoGenParent615ID142.collider:SetZAxis(0,0,1)
AutoGenParent615ID142.collider:SetHalfLengths(-3.5,2.5,4.5)
AutoGenParent615ID139.collider:AddChild(AutoGenParent615ID142.collider)
table.insert(colliders,AutoGenParent615ID142)
AutoGenParent615ID143 = {}
AutoGenParent615ID143.collider = AABBCollider.Create(-1)
AutoGenParent615ID143.collider:SetOffset(0,0,0)
AutoGenParent615ID143.collider:SetMinPos(100.841,18.3314,47.7023)
AutoGenParent615ID143.collider:SetMaxPos(217.037,57.2393,195.254)
AutoGenParent615ID138.collider:AddChild(AutoGenParent615ID143.collider)
table.insert(colliders,AutoGenParent615ID143)
AutoGenParent615ID144 = {}
AutoGenParent615ID144.collider = OBBCollider.Create(-1)
AutoGenParent615ID144.collider:SetOffset(105,27.0137,192.5)
AutoGenParent615ID144.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent615ID144.collider:SetHalfLengths(0.3,8.68227,4.71699)
AutoGenParent615ID143.collider:AddChild(AutoGenParent615ID144.collider)
table.insert(colliders,AutoGenParent615ID144)
AutoGenParent615ID145 = {}
AutoGenParent615ID145.collider = OBBCollider.Create(-1)
AutoGenParent615ID145.collider:SetOffset(161.5,50.234,149)
AutoGenParent615ID145.collider:SetZAxis(0.939793,0,0.341743)
AutoGenParent615ID145.collider:SetHalfLengths(0.3,6.89388,5.85235)
AutoGenParent615ID143.collider:AddChild(AutoGenParent615ID145.collider)
table.insert(colliders,AutoGenParent615ID145)
AutoGenParent615ID146 = {}
AutoGenParent615ID146.collider = OBBCollider.Create(-1)
AutoGenParent615ID146.collider:SetOffset(213,50.4568,48.5)
AutoGenParent615ID146.collider:SetZAxis(-0.992278,0,0.124035)
AutoGenParent615ID146.collider:SetHalfLengths(0.3,6.78247,4.03113)
AutoGenParent615ID143.collider:AddChild(AutoGenParent615ID146.collider)
table.insert(colliders,AutoGenParent615ID146)
AutoGenParent615ID147 = {}
AutoGenParent615ID147.collider = AABBCollider.Create(-1)
AutoGenParent615ID147.collider:SetOffset(0,0,0)
AutoGenParent615ID147.collider:SetMinPos(101.813,23.6339,47.7018)
AutoGenParent615ID147.collider:SetMaxPos(226.033,62.6981,207.234)
AutoGenParent615ID138.collider:AddChild(AutoGenParent615ID147.collider)
table.insert(colliders,AutoGenParent615ID147)
AutoGenParent615ID148 = {}
AutoGenParent615ID148.collider = OBBCollider.Create(-1)
AutoGenParent615ID148.collider:SetOffset(107,34.6728,203)
AutoGenParent615ID148.collider:SetZAxis(-0.780869,0,-0.624695)
AutoGenParent615ID148.collider:SetHalfLengths(0.3,11.0389,6.40312)
AutoGenParent615ID147.collider:AddChild(AutoGenParent615ID148.collider)
table.insert(colliders,AutoGenParent615ID148)
AutoGenParent615ID149 = {}
AutoGenParent615ID149.collider = OBBCollider.Create(-1)
AutoGenParent615ID149.collider:SetOffset(221.5,48.4515,48.5)
AutoGenParent615ID149.collider:SetZAxis(-0.993884,0,-0.110432)
AutoGenParent615ID149.collider:SetHalfLengths(0.3,7.00528,4.52769)
AutoGenParent615ID147.collider:AddChild(AutoGenParent615ID149.collider)
table.insert(colliders,AutoGenParent615ID149)
AutoGenParent615ID150 = {}
AutoGenParent615ID150.collider = OBBCollider.Create(-1)
AutoGenParent615ID150.collider:SetOffset(160.5,54.1331,160.5)
AutoGenParent615ID150.collider:SetZAxis(-0.910366,0,-0.413803)
AutoGenParent615ID150.collider:SetHalfLengths(0.3,8.56494,6.04152)
AutoGenParent615ID147.collider:AddChild(AutoGenParent615ID150.collider)
table.insert(colliders,AutoGenParent615ID150)
AutoGenParent615ID151 = {}
AutoGenParent615ID151.collider = AABBCollider.Create(-1)
AutoGenParent615ID151.collider:SetOffset(0,0,0)
AutoGenParent615ID151.collider:SetMinPos(1.70104,-2.14196,53.7243)
AutoGenParent615ID151.collider:SetMaxPos(255.118,61.4726,204)
AutoGenParent615ID124.collider:AddChild(AutoGenParent615ID151.collider)
table.insert(colliders,AutoGenParent615ID151)
AutoGenParent615ID152 = {}
AutoGenParent615ID152.collider = AABBCollider.Create(-1)
AutoGenParent615ID152.collider:SetOffset(0,0,0)
AutoGenParent615ID152.collider:SetMinPos(1.70104,-2.14196,179.866)
AutoGenParent615ID152.collider:SetMaxPos(39.2041,13.3078,196.22)
AutoGenParent615ID151.collider:AddChild(AutoGenParent615ID152.collider)
table.insert(colliders,AutoGenParent615ID152)
AutoGenParent615ID153 = {}
AutoGenParent615ID153.collider = OBBCollider.Create(-1)
AutoGenParent615ID153.collider:SetOffset(37,7.71863,182)
AutoGenParent615ID153.collider:SetZAxis(-0.447214,0,-0.894427)
AutoGenParent615ID153.collider:SetHalfLengths(0.3,5.58916,2.23607)
AutoGenParent615ID152.collider:AddChild(AutoGenParent615ID153.collider)
table.insert(colliders,AutoGenParent615ID153)
AutoGenParent615ID154 = {}
AutoGenParent615ID154.collider = OBBCollider.Create(-1)
AutoGenParent615ID154.collider:SetOffset(32,5.50927,189.5)
AutoGenParent615ID154.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent615ID154.collider:SetHalfLengths(0.3,7.65123,9.55249)
AutoGenParent615ID152.collider:AddChild(AutoGenParent615ID154.collider)
table.insert(colliders,AutoGenParent615ID154)
AutoGenParent615ID155 = {}
AutoGenParent615ID155.collider = OBBCollider.Create(-1)
AutoGenParent615ID155.collider:SetOffset(2.5,5.36198,188)
AutoGenParent615ID155.collider:SetZAxis(-0.0830455,0,0.996546)
AutoGenParent615ID155.collider:SetHalfLengths(0.3,6.32562,6.0208)
AutoGenParent615ID152.collider:AddChild(AutoGenParent615ID155.collider)
table.insert(colliders,AutoGenParent615ID155)
AutoGenParent615ID156 = {}
AutoGenParent615ID156.collider = AABBCollider.Create(-1)
AutoGenParent615ID156.collider:SetOffset(0,0,0)
AutoGenParent615ID156.collider:SetMinPos(19.7366,-1.70008,179.808)
AutoGenParent615ID156.collider:SetMaxPos(57.2305,13.3078,196.144)
AutoGenParent615ID151.collider:AddChild(AutoGenParent615ID156.collider)
table.insert(colliders,AutoGenParent615ID156)
AutoGenParent615ID157 = {}
AutoGenParent615ID157.collider = OBBCollider.Create(-1)
AutoGenParent615ID157.collider:SetOffset(54.5,8.01322,183)
AutoGenParent615ID157.collider:SetZAxis(-0.640184,0,0.768221)
AutoGenParent615ID157.collider:SetHalfLengths(0.3,5,3.90512)
AutoGenParent615ID156.collider:AddChild(AutoGenParent615ID157.collider)
table.insert(colliders,AutoGenParent615ID157)
AutoGenParent615ID158 = {}
AutoGenParent615ID158.collider = OBBCollider.Create(-1)
AutoGenParent615ID158.collider:SetOffset(40,8.01322,185.5)
AutoGenParent615ID158.collider:SetZAxis(-0.8,0,-0.6)
AutoGenParent615ID158.collider:SetHalfLengths(0.3,5.29458,2.5)
AutoGenParent615ID156.collider:AddChild(AutoGenParent615ID158.collider)
table.insert(colliders,AutoGenParent615ID158)
AutoGenParent615ID159 = {}
AutoGenParent615ID159.collider = OBBCollider.Create(-1)
AutoGenParent615ID159.collider:SetOffset(23,4.33095,190.5)
AutoGenParent615ID159.collider:SetZAxis(0.478852,0,0.877896)
AutoGenParent615ID159.collider:SetHalfLengths(0.3,6.03103,6.26498)
AutoGenParent615ID156.collider:AddChild(AutoGenParent615ID159.collider)
table.insert(colliders,AutoGenParent615ID159)
AutoGenParent615ID160 = {}
AutoGenParent615ID160.collider = AABBCollider.Create(-1)
AutoGenParent615ID160.collider:SetOffset(0,0,0)
AutoGenParent615ID160.collider:SetMinPos(162.7,31.9768,53.7243)
AutoGenParent615ID160.collider:SetMaxPos(255.118,61.4726,204)
AutoGenParent615ID151.collider:AddChild(AutoGenParent615ID160.collider)
table.insert(colliders,AutoGenParent615ID160)
AutoGenParent615ID161 = {}
AutoGenParent615ID161.collider = OBBCollider.Create(-1)
AutoGenParent615ID161.collider:SetOffset(248,40.9874,57)
AutoGenParent615ID161.collider:SetZAxis(-0.919145,0,-0.393919)
AutoGenParent615ID161.collider:SetHalfLengths(0.3,9.01056,7.61577)
AutoGenParent615ID160.collider:AddChild(AutoGenParent615ID161.collider)
table.insert(colliders,AutoGenParent615ID161)
AutoGenParent615ID162 = {}
AutoGenParent615ID162.collider = OBBCollider.Create(-1)
AutoGenParent615ID162.collider:SetOffset(180,56.027,169)
AutoGenParent615ID162.collider:SetZAxis(-0.980581,0,-0.196116)
AutoGenParent615ID162.collider:SetHalfLengths(0.3,5.44562,5.09902)
AutoGenParent615ID160.collider:AddChild(AutoGenParent615ID162.collider)
table.insert(colliders,AutoGenParent615ID162)
AutoGenParent615ID163 = {}
AutoGenParent615ID163.collider = OBBCollider.Create(-1)
AutoGenParent615ID163.collider:SetOffset(163,43.6611,194.5)
AutoGenParent615ID163.collider:SetZAxis(0,0,1)
AutoGenParent615ID163.collider:SetHalfLengths(0.3,8.34213,9.5)
AutoGenParent615ID160.collider:AddChild(AutoGenParent615ID163.collider)
table.insert(colliders,AutoGenParent615ID163)
AutoGenParent615ID164 = {}
AutoGenParent615ID164.collider = AABBCollider.Create(-1)
AutoGenParent615ID164.collider:SetOffset(0,0,0)
AutoGenParent615ID164.collider:SetMinPos(21.8079,0.803856,96.8126)
AutoGenParent615ID164.collider:SetMaxPos(322.234,63.9235,248.279)
AutoGenParent615ID123.collider:AddChild(AutoGenParent615ID164.collider)
table.insert(colliders,AutoGenParent615ID164)
AutoGenParent615ID165 = {}
AutoGenParent615ID165.collider = AABBCollider.Create(-1)
AutoGenParent615ID165.collider:SetOffset(0,0,0)
AutoGenParent615ID165.collider:SetMinPos(21.8079,0.803856,128.937)
AutoGenParent615ID165.collider:SetMaxPos(220.293,60.6928,237.297)
AutoGenParent615ID164.collider:AddChild(AutoGenParent615ID165.collider)
table.insert(colliders,AutoGenParent615ID165)
AutoGenParent615ID166 = {}
AutoGenParent615ID166.collider = AABBCollider.Create(-1)
AutoGenParent615ID166.collider:SetOffset(0,0,0)
AutoGenParent615ID166.collider:SetMinPos(21.8079,0.803856,163.721)
AutoGenParent615ID166.collider:SetMaxPos(46.1114,12.5713,173.23)
AutoGenParent615ID165.collider:AddChild(AutoGenParent615ID166.collider)
table.insert(colliders,AutoGenParent615ID166)
AutoGenParent615ID167 = {}
AutoGenParent615ID167.collider = OBBCollider.Create(-1)
AutoGenParent615ID167.collider:SetOffset(43.5,7.12947,165)
AutoGenParent615ID167.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent615ID167.collider:SetHalfLengths(0.3,5.44187,2.69258)
AutoGenParent615ID166.collider:AddChild(AutoGenParent615ID167.collider)
table.insert(colliders,AutoGenParent615ID167)
AutoGenParent615ID168 = {}
AutoGenParent615ID168.collider = OBBCollider.Create(-1)
AutoGenParent615ID168.collider:SetOffset(29.5,6.54031,168)
AutoGenParent615ID168.collider:SetZAxis(-1,0,0)
AutoGenParent615ID168.collider:SetHalfLengths(0.3,5.44187,1.5)
AutoGenParent615ID166.collider:AddChild(AutoGenParent615ID168.collider)
table.insert(colliders,AutoGenParent615ID168)
AutoGenParent615ID169 = {}
AutoGenParent615ID169.collider = OBBCollider.Create(-1)
AutoGenParent615ID169.collider:SetOffset(25,6.09844,170.5)
AutoGenParent615ID169.collider:SetZAxis(-0.768221,0,0.640184)
AutoGenParent615ID169.collider:SetHalfLengths(0.3,5.29458,3.90512)
AutoGenParent615ID166.collider:AddChild(AutoGenParent615ID169.collider)
table.insert(colliders,AutoGenParent615ID169)
AutoGenParent615ID170 = {}
AutoGenParent615ID170.collider = AABBCollider.Create(-1)
AutoGenParent615ID170.collider:SetOffset(0,0,0)
AutoGenParent615ID170.collider:SetMinPos(91.9272,13.029,134.951)
AutoGenParent615ID170.collider:SetMaxPos(188.296,60.2472,221.291)
AutoGenParent615ID165.collider:AddChild(AutoGenParent615ID170.collider)
table.insert(colliders,AutoGenParent615ID170)
AutoGenParent615ID171 = {}
AutoGenParent615ID171.collider = OBBCollider.Create(-1)
AutoGenParent615ID171.collider:SetOffset(98,22.4477,219.5)
AutoGenParent615ID171.collider:SetZAxis(0.970142,0,0.242536)
AutoGenParent615ID171.collider:SetHalfLengths(0.3,9.41872,6.18466)
AutoGenParent615ID170.collider:AddChild(AutoGenParent615ID171.collider)
table.insert(colliders,AutoGenParent615ID171)
AutoGenParent615ID172 = {}
AutoGenParent615ID172.collider = OBBCollider.Create(-1)
AutoGenParent615ID172.collider:SetOffset(176.5,52.7963,152.5)
AutoGenParent615ID172.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent615ID172.collider:SetHalfLengths(0.3,6.33685,3.53553)
AutoGenParent615ID170.collider:AddChild(AutoGenParent615ID172.collider)
table.insert(colliders,AutoGenParent615ID172)
AutoGenParent615ID173 = {}
AutoGenParent615ID173.collider = OBBCollider.Create(-1)
AutoGenParent615ID173.collider:SetOffset(187.5,55.2472,138)
AutoGenParent615ID173.collider:SetZAxis(0.164399,0,-0.986394)
AutoGenParent615ID173.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent615ID170.collider:AddChild(AutoGenParent615ID173.collider)
table.insert(colliders,AutoGenParent615ID173)
AutoGenParent615ID174 = {}
AutoGenParent615ID174.collider = AABBCollider.Create(-1)
AutoGenParent615ID174.collider:SetOffset(0,0,0)
AutoGenParent615ID174.collider:SetMinPos(97.9544,11.7034,128.937)
AutoGenParent615ID174.collider:SetMaxPos(220.293,60.6928,237.297)
AutoGenParent615ID165.collider:AddChild(AutoGenParent615ID174.collider)
table.insert(colliders,AutoGenParent615ID174)
AutoGenParent615ID175 = {}
AutoGenParent615ID175.collider = OBBCollider.Create(-1)
AutoGenParent615ID175.collider:SetOffset(104.5,22.595,236)
AutoGenParent615ID175.collider:SetZAxis(0.988372,0,0.152057)
AutoGenParent615ID175.collider:SetHalfLengths(0.3,10.8916,6.57647)
AutoGenParent615ID174.collider:AddChild(AutoGenParent615ID175.collider)
table.insert(colliders,AutoGenParent615ID175)
AutoGenParent615ID176 = {}
AutoGenParent615ID176.collider = OBBCollider.Create(-1)
AutoGenParent615ID176.collider:SetOffset(206.5,55.47,143.5)
AutoGenParent615ID176.collider:SetZAxis(0.0905358,0,0.995893)
AutoGenParent615ID176.collider:SetHalfLengths(0.3,5.22281,5.52268)
AutoGenParent615ID174.collider:AddChild(AutoGenParent615ID176.collider)
table.insert(colliders,AutoGenParent615ID176)
AutoGenParent615ID177 = {}
AutoGenParent615ID177.collider = OBBCollider.Create(-1)
AutoGenParent615ID177.collider:SetOffset(218.5,38.9821,136)
AutoGenParent615ID177.collider:SetZAxis(-0.209529,0,-0.977802)
AutoGenParent615ID177.collider:SetHalfLengths(0.3,7.33949,7.15891)
AutoGenParent615ID174.collider:AddChild(AutoGenParent615ID177.collider)
table.insert(colliders,AutoGenParent615ID177)
AutoGenParent615ID178 = {}
AutoGenParent615ID178.collider = AABBCollider.Create(-1)
AutoGenParent615ID178.collider:SetOffset(0,0,0)
AutoGenParent615ID178.collider:SetMinPos(83.8378,3.74966,105.702)
AutoGenParent615ID178.collider:SetMaxPos(298.031,57.7963,235.252)
AutoGenParent615ID164.collider:AddChild(AutoGenParent615ID178.collider)
table.insert(colliders,AutoGenParent615ID178)
AutoGenParent615ID179 = {}
AutoGenParent615ID179.collider = AABBCollider.Create(-1)
AutoGenParent615ID179.collider:SetOffset(0,0,0)
AutoGenParent615ID179.collider:SetMinPos(141.703,32.1997,150.715)
AutoGenParent615ID179.collider:SetMaxPos(173.095,57.7963,192.042)
AutoGenParent615ID178.collider:AddChild(AutoGenParent615ID179.collider)
table.insert(colliders,AutoGenParent615ID179)
AutoGenParent615ID180 = {}
AutoGenParent615ID180.collider = OBBCollider.Create(-1)
AutoGenParent615ID180.collider:SetOffset(143,38.8707,185)
AutoGenParent615ID180.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent615ID180.collider:SetHalfLengths(0.3,6.67107,7.07107)
AutoGenParent615ID179.collider:AddChild(AutoGenParent615ID180.collider)
table.insert(colliders,AutoGenParent615ID180)
AutoGenParent615ID181 = {}
AutoGenParent615ID181.collider = OBBCollider.Create(-1)
AutoGenParent615ID181.collider:SetOffset(170,52.1279,152)
AutoGenParent615ID181.collider:SetZAxis(0.948683,0,0.316228)
AutoGenParent615ID181.collider:SetHalfLengths(0.3,5.66843,3.16228)
AutoGenParent615ID179.collider:AddChild(AutoGenParent615ID181.collider)
table.insert(colliders,AutoGenParent615ID181)
AutoGenParent615ID182 = {}
AutoGenParent615ID182.collider = OBBCollider.Create(-1)
AutoGenParent615ID182.collider:SetOffset(155.5,48.8971,169)
AutoGenParent615ID182.collider:SetZAxis(0.658505,0,0.752577)
AutoGenParent615ID182.collider:SetHalfLengths(0.3,5.44561,5.31507)
AutoGenParent615ID179.collider:AddChild(AutoGenParent615ID182.collider)
table.insert(colliders,AutoGenParent615ID182)
AutoGenParent615ID183 = {}
AutoGenParent615ID183.collider = AABBCollider.Create(-1)
AutoGenParent615ID183.collider:SetOffset(0,0,0)
AutoGenParent615ID183.collider:SetMinPos(83.8378,3.74966,191.918)
AutoGenParent615ID183.collider:SetMaxPos(144.288,43.8707,235.252)
AutoGenParent615ID178.collider:AddChild(AutoGenParent615ID183.collider)
table.insert(colliders,AutoGenParent615ID183)
AutoGenParent615ID184 = {}
AutoGenParent615ID184.collider = OBBCollider.Create(-1)
AutoGenParent615ID184.collider:SetOffset(91,15.6723,230.5)
AutoGenParent615ID184.collider:SetZAxis(0.841179,0,0.540758)
AutoGenParent615ID184.collider:SetHalfLengths(0.3,11.9227,8.32166)
AutoGenParent615ID183.collider:AddChild(AutoGenParent615ID184.collider)
table.insert(colliders,AutoGenParent615ID184)
AutoGenParent615ID185 = {}
AutoGenParent615ID185.collider = OBBCollider.Create(-1)
AutoGenParent615ID185.collider:SetOffset(139.5,34.7488,202.5)
AutoGenParent615ID185.collider:SetZAxis(0.581238,0,-0.813733)
AutoGenParent615ID185.collider:SetHalfLengths(0.3,7.22809,4.30116)
AutoGenParent615ID183.collider:AddChild(AutoGenParent615ID185.collider)
table.insert(colliders,AutoGenParent615ID185)
AutoGenParent615ID186 = {}
AutoGenParent615ID186.collider = OBBCollider.Create(-1)
AutoGenParent615ID186.collider:SetOffset(143,36.9769,195.5)
AutoGenParent615ID186.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent615ID186.collider:SetHalfLengths(0.3,6.89388,3.64005)
AutoGenParent615ID183.collider:AddChild(AutoGenParent615ID186.collider)
table.insert(colliders,AutoGenParent615ID186)
AutoGenParent615ID187 = {}
AutoGenParent615ID187.collider = AABBCollider.Create(-1)
AutoGenParent615ID187.collider:SetOffset(0,0,0)
AutoGenParent615ID187.collider:SetMinPos(178.878,30.7514,105.702)
AutoGenParent615ID187.collider:SetMaxPos(298.031,56.0138,228.274)
AutoGenParent615ID178.collider:AddChild(AutoGenParent615ID187.collider)
table.insert(colliders,AutoGenParent615ID187)
AutoGenParent615ID188 = {}
AutoGenParent615ID188.collider = OBBCollider.Create(-1)
AutoGenParent615ID188.collider:SetOffset(183.5,46.8918,226)
AutoGenParent615ID188.collider:SetZAxis(-0.913812,0,-0.406139)
AutoGenParent615ID188.collider:SetHalfLengths(0.3,9.12197,4.92443)
AutoGenParent615ID187.collider:AddChild(AutoGenParent615ID188.collider)
table.insert(colliders,AutoGenParent615ID188)
AutoGenParent615ID189 = {}
AutoGenParent615ID189.collider = OBBCollider.Create(-1)
AutoGenParent615ID189.collider:SetOffset(258,36.8654,140)
AutoGenParent615ID189.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent615ID189.collider:SetHalfLengths(0.3,5.44562,4.24264)
AutoGenParent615ID187.collider:AddChild(AutoGenParent615ID189.collider)
table.insert(colliders,AutoGenParent615ID189)
AutoGenParent615ID190 = {}
AutoGenParent615ID190.collider = OBBCollider.Create(-1)
AutoGenParent615ID190.collider:SetOffset(283.5,36.9769,107.5)
AutoGenParent615ID190.collider:SetZAxis(0.994692,0,-0.102899)
AutoGenParent615ID190.collider:SetHalfLengths(0.3,6.22545,14.5774)
AutoGenParent615ID187.collider:AddChild(AutoGenParent615ID190.collider)
table.insert(colliders,AutoGenParent615ID190)
AutoGenParent615ID191 = {}
AutoGenParent615ID191.collider = AABBCollider.Create(-1)
AutoGenParent615ID191.collider:SetOffset(0,0,0)
AutoGenParent615ID191.collider:SetMinPos(103.788,20.3935,96.8126)
AutoGenParent615ID191.collider:SetMaxPos(322.234,63.9235,248.279)
AutoGenParent615ID164.collider:AddChild(AutoGenParent615ID191.collider)
table.insert(colliders,AutoGenParent615ID191)
AutoGenParent615ID192 = {}
AutoGenParent615ID192.collider = AABBCollider.Create(-1)
AutoGenParent615ID192.collider:SetOffset(0,0,0)
AutoGenParent615ID192.collider:SetMinPos(103.788,20.3935,205.738)
AutoGenParent615ID192.collider:SetMaxPos(137.146,41.1457,224.212)
AutoGenParent615ID191.collider:AddChild(AutoGenParent615ID192.collider)
table.insert(colliders,AutoGenParent615ID192)
AutoGenParent615ID193 = {}
AutoGenParent615ID193.collider = OBBCollider.Create(-1)
AutoGenParent615ID193.collider:SetOffset(105.5,26.8664,222.5)
AutoGenParent615ID193.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID193.collider:SetHalfLengths(0.3,6.47291,2.12132)
AutoGenParent615ID192.collider:AddChild(AutoGenParent615ID193.collider)
table.insert(colliders,AutoGenParent615ID193)
AutoGenParent615ID194 = {}
AutoGenParent615ID194.collider = OBBCollider.Create(-1)
AutoGenParent615ID194.collider:SetOffset(116,30.9905,217)
AutoGenParent615ID194.collider:SetZAxis(0,0,-1)
AutoGenParent615ID194.collider:SetHalfLengths(0.3,10.1552,3)
AutoGenParent615ID192.collider:AddChild(AutoGenParent615ID194.collider)
table.insert(colliders,AutoGenParent615ID194)
AutoGenParent615ID195 = {}
AutoGenParent615ID195.collider = OBBCollider.Create(-1)
AutoGenParent615ID195.collider:SetOffset(132.5,34.0803,208.5)
AutoGenParent615ID195.collider:SetZAxis(0.874157,0,-0.485643)
AutoGenParent615ID195.collider:SetHalfLengths(0.3,5.66843,5.14782)
AutoGenParent615ID192.collider:AddChild(AutoGenParent615ID195.collider)
table.insert(colliders,AutoGenParent615ID195)
AutoGenParent615ID196 = {}
AutoGenParent615ID196.collider = AABBCollider.Create(-1)
AutoGenParent615ID196.collider:SetOffset(0,0,0)
AutoGenParent615ID196.collider:SetMinPos(188,32.1997,129.732)
AutoGenParent615ID196.collider:SetMaxPos(271.134,54.7884,228.3)
AutoGenParent615ID191.collider:AddChild(AutoGenParent615ID196.collider)
table.insert(colliders,AutoGenParent615ID196)
AutoGenParent615ID197 = {}
AutoGenParent615ID197.collider = OBBCollider.Create(-1)
AutoGenParent615ID197.collider:SetOffset(191.5,48.3401,228)
AutoGenParent615ID197.collider:SetZAxis(-1,0,0)
AutoGenParent615ID197.collider:SetHalfLengths(0.3,6.44826,3.5)
AutoGenParent615ID196.collider:AddChild(AutoGenParent615ID197.collider)
table.insert(colliders,AutoGenParent615ID197)
AutoGenParent615ID198 = {}
AutoGenParent615ID198.collider = OBBCollider.Create(-1)
AutoGenParent615ID198.collider:SetOffset(264,37.3111,134.5)
AutoGenParent615ID198.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent615ID198.collider:SetHalfLengths(0.3,5.1114,3.90512)
AutoGenParent615ID196.collider:AddChild(AutoGenParent615ID198.collider)
table.insert(colliders,AutoGenParent615ID198)
AutoGenParent615ID199 = {}
AutoGenParent615ID199.collider = OBBCollider.Create(-1)
AutoGenParent615ID199.collider:SetOffset(269,37.4225,131)
AutoGenParent615ID199.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent615ID199.collider:SetHalfLengths(0.3,5.1114,2.23607)
AutoGenParent615ID196.collider:AddChild(AutoGenParent615ID199.collider)
table.insert(colliders,AutoGenParent615ID199)
AutoGenParent615ID200 = {}
AutoGenParent615ID200.collider = AABBCollider.Create(-1)
AutoGenParent615ID200.collider:SetOffset(0,0,0)
AutoGenParent615ID200.collider:SetMinPos(209.889,30.3058,96.8126)
AutoGenParent615ID200.collider:SetMaxPos(322.234,63.9235,248.279)
AutoGenParent615ID191.collider:AddChild(AutoGenParent615ID200.collider)
table.insert(colliders,AutoGenParent615ID200)
AutoGenParent615ID201 = {}
AutoGenParent615ID201.collider = OBBCollider.Create(-1)
AutoGenParent615ID201.collider:SetOffset(318,42.1015,102)
AutoGenParent615ID201.collider:SetZAxis(0.624695,0,0.780869)
AutoGenParent615ID201.collider:SetHalfLengths(0.3,9.67899,6.40312)
AutoGenParent615ID200.collider:AddChild(AutoGenParent615ID201.collider)
table.insert(colliders,AutoGenParent615ID201)
AutoGenParent615ID202 = {}
AutoGenParent615ID202.collider = OBBCollider.Create(-1)
AutoGenParent615ID202.collider:SetOffset(212.5,56.6954,247)
AutoGenParent615ID202.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent615ID202.collider:SetHalfLengths(0.3,7.22809,2.69258)
AutoGenParent615ID200.collider:AddChild(AutoGenParent615ID202.collider)
table.insert(colliders,AutoGenParent615ID202)
AutoGenParent615ID203 = {}
AutoGenParent615ID203.collider = OBBCollider.Create(-1)
AutoGenParent615ID203.collider:SetOffset(306,36.3084,132)
AutoGenParent615ID203.collider:SetZAxis(0.961524,0,0.274721)
AutoGenParent615ID203.collider:SetHalfLengths(0.3,6.00264,7.28011)
AutoGenParent615ID200.collider:AddChild(AutoGenParent615ID203.collider)
table.insert(colliders,AutoGenParent615ID203)
AutoGenParent615ID204 = {}
AutoGenParent615ID204.collider = AABBCollider.Create(-1)
AutoGenParent615ID204.collider:SetOffset(0,0,0)
AutoGenParent615ID204.collider:SetMinPos(3.30575,-1.70009,142.788)
AutoGenParent615ID204.collider:SetMaxPos(255.212,49.2181,250.277)
AutoGenParent615ID123.collider:AddChild(AutoGenParent615ID204.collider)
table.insert(colliders,AutoGenParent615ID204)
AutoGenParent615ID205 = {}
AutoGenParent615ID205.collider = AABBCollider.Create(-1)
AutoGenParent615ID205.collider:SetOffset(0,0,0)
AutoGenParent615ID205.collider:SetMinPos(3.30575,0.509275,167.941)
AutoGenParent615ID205.collider:SetMaxPos(142.294,49.2181,217.297)
AutoGenParent615ID204.collider:AddChild(AutoGenParent615ID205.collider)
table.insert(colliders,AutoGenParent615ID205)
AutoGenParent615ID206 = {}
AutoGenParent615ID206.collider = AABBCollider.Create(-1)
AutoGenParent615ID206.collider:SetOffset(0,0,0)
AutoGenParent615ID206.collider:SetMinPos(3.30575,0.509275,172.918)
AutoGenParent615ID206.collider:SetMaxPos(36.2885,14.4158,183.858)
AutoGenParent615ID205.collider:AddChild(AutoGenParent615ID206.collider)
table.insert(colliders,AutoGenParent615ID206)
AutoGenParent615ID207 = {}
AutoGenParent615ID207.collider = OBBCollider.Create(-1)
AutoGenParent615ID207.collider:SetOffset(35,7.12947,176.5)
AutoGenParent615ID207.collider:SetZAxis(-0.274721,0,-0.961524)
AutoGenParent615ID207.collider:SetHalfLengths(0.3,5.58916,3.64005)
AutoGenParent615ID206.collider:AddChild(AutoGenParent615ID207.collider)
table.insert(colliders,AutoGenParent615ID207)
AutoGenParent615ID208 = {}
AutoGenParent615ID208.collider = OBBCollider.Create(-1)
AutoGenParent615ID208.collider:SetOffset(23.5,5.80386,179.5)
AutoGenParent615ID208.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent615ID208.collider:SetHalfLengths(0.3,5.29458,3.80789)
AutoGenParent615ID206.collider:AddChild(AutoGenParent615ID208.collider)
table.insert(colliders,AutoGenParent615ID208)
AutoGenParent615ID209 = {}
AutoGenParent615ID209.collider = OBBCollider.Create(-1)
AutoGenParent615ID209.collider:SetOffset(6.18867,8.53125,180.735)
AutoGenParent615ID209.collider:SetZAxis(-0.891114,0,-0.453779)
AutoGenParent615ID209.collider:SetHalfLengths(2.5078,5.88453,1.95815)
AutoGenParent615ID206.collider:AddChild(AutoGenParent615ID209.collider)
table.insert(colliders,AutoGenParent615ID209)
AutoGenParent615ID210 = {}
AutoGenParent615ID210.collider = AABBCollider.Create(-1)
AutoGenParent615ID210.collider:SetOffset(0,0,0)
AutoGenParent615ID210.collider:SetMinPos(33.9685,1.02224,169.866)
AutoGenParent615ID210.collider:SetMaxPos(58.2977,21.9153,186.678)
AutoGenParent615ID205.collider:AddChild(AutoGenParent615ID210.collider)
table.insert(colliders,AutoGenParent615ID210)
AutoGenParent615ID211 = {}
AutoGenParent615ID211.collider = OBBCollider.Create(-1)
AutoGenParent615ID211.collider:SetOffset(57.5,8.01322,171)
AutoGenParent615ID211.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID211.collider:SetHalfLengths(0.3,5,1.11803)
AutoGenParent615ID210.collider:AddChild(AutoGenParent615ID211.collider)
table.insert(colliders,AutoGenParent615ID211)
AutoGenParent615ID212 = {}
AutoGenParent615ID212.collider = OBBCollider.Create(-1)
AutoGenParent615ID212.collider:SetOffset(57.5,8.01322,176)
AutoGenParent615ID212.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent615ID212.collider:SetHalfLengths(0.3,5,4.03113)
AutoGenParent615ID210.collider:AddChild(AutoGenParent615ID212.collider)
table.insert(colliders,AutoGenParent615ID212)
AutoGenParent615ID213 = {}
AutoGenParent615ID213.collider = OBBCollider.Create(-1)
AutoGenParent615ID213.collider:SetOffset(37.7154,11.4688,182.582)
AutoGenParent615ID213.collider:SetZAxis(-0.988898,0,0.148599)
AutoGenParent615ID213.collider:SetHalfLengths(3.65554,10.4465,3.23962)
AutoGenParent615ID210.collider:AddChild(AutoGenParent615ID213.collider)
table.insert(colliders,AutoGenParent615ID213)
AutoGenParent615ID214 = {}
AutoGenParent615ID214.collider = AABBCollider.Create(-1)
AutoGenParent615ID214.collider:SetOffset(0,0,0)
AutoGenParent615ID214.collider:SetMinPos(43.9576,3.74967,167.941)
AutoGenParent615ID214.collider:SetMaxPos(142.294,49.2181,217.297)
AutoGenParent615ID205.collider:AddChild(AutoGenParent615ID214.collider)
table.insert(colliders,AutoGenParent615ID214)
AutoGenParent615ID215 = {}
AutoGenParent615ID215.collider = OBBCollider.Create(-1)
AutoGenParent615ID215.collider:SetOffset(95,27.3083,202.5)
AutoGenParent615ID215.collider:SetZAxis(-0.819232,0,0.573462)
AutoGenParent615ID215.collider:SetHalfLengths(0.3,9.7133,6.10328)
AutoGenParent615ID214.collider:AddChild(AutoGenParent615ID215.collider)
table.insert(colliders,AutoGenParent615ID215)
AutoGenParent615ID216 = {}
AutoGenParent615ID216.collider = OBBCollider.Create(-1)
AutoGenParent615ID216.collider:SetOffset(51,9.33883,216)
AutoGenParent615ID216.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent615ID216.collider:SetHalfLengths(0.3,5.58916,7.07107)
AutoGenParent615ID214.collider:AddChild(AutoGenParent615ID216.collider)
table.insert(colliders,AutoGenParent615ID216)
AutoGenParent615ID217 = {}
AutoGenParent615ID217.collider = OBBCollider.Create(-1)
AutoGenParent615ID217.collider:SetOffset(141,40.5418,173)
AutoGenParent615ID217.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent615ID217.collider:SetHalfLengths(0.3,8.67635,5.09902)
AutoGenParent615ID214.collider:AddChild(AutoGenParent615ID217.collider)
table.insert(colliders,AutoGenParent615ID217)
AutoGenParent615ID218 = {}
AutoGenParent615ID218.collider = AABBCollider.Create(-1)
AutoGenParent615ID218.collider:SetOffset(0,0,0)
AutoGenParent615ID218.collider:SetMinPos(31.7559,-1.70009,142.941)
AutoGenParent615ID218.collider:SetMaxPos(222.294,47.2129,223.212)
AutoGenParent615ID204.collider:AddChild(AutoGenParent615ID218.collider)
table.insert(colliders,AutoGenParent615ID218)
AutoGenParent615ID219 = {}
AutoGenParent615ID219.collider = AABBCollider.Create(-1)
AutoGenParent615ID219.collider:SetOffset(0,0,0)
AutoGenParent615ID219.collider:SetMinPos(31.7559,3.3078,198.826)
AutoGenParent615ID219.collider:SetMaxPos(53.2441,15.3699,211.174)
AutoGenParent615ID218.collider:AddChild(AutoGenParent615ID219.collider)
table.insert(colliders,AutoGenParent615ID219)
AutoGenParent615ID220 = {}
AutoGenParent615ID220.collider = OBBCollider.Create(-1)
AutoGenParent615ID220.collider:SetOffset(50.5,9.63341,202.5)
AutoGenParent615ID220.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent615ID220.collider:SetHalfLengths(0.3,5.73645,4.30116)
AutoGenParent615ID219.collider:AddChild(AutoGenParent615ID220.collider)
table.insert(colliders,AutoGenParent615ID220)
AutoGenParent615ID221 = {}
AutoGenParent615ID221.collider = OBBCollider.Create(-1)
AutoGenParent615ID221.collider:SetOffset(32.5,8.89696,203.5)
AutoGenParent615ID221.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent615ID221.collider:SetHalfLengths(0.3,5.44187,0.707107)
AutoGenParent615ID219.collider:AddChild(AutoGenParent615ID221.collider)
table.insert(colliders,AutoGenParent615ID221)
AutoGenParent615ID222 = {}
AutoGenParent615ID222.collider = OBBCollider.Create(-1)
AutoGenParent615ID222.collider:SetOffset(34.5,8.45509,207.5)
AutoGenParent615ID222.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent615ID222.collider:SetHalfLengths(0.3,5.14729,4.30116)
AutoGenParent615ID219.collider:AddChild(AutoGenParent615ID222.collider)
table.insert(colliders,AutoGenParent615ID222)
AutoGenParent615ID223 = {}
AutoGenParent615ID223.collider = AABBCollider.Create(-1)
AutoGenParent615ID223.collider:SetOffset(0,0,0)
AutoGenParent615ID223.collider:SetMinPos(58,-1.70009,194.709)
AutoGenParent615ID223.collider:SetMaxPos(113.073,36.8743,217.3)
AutoGenParent615ID218.collider:AddChild(AutoGenParent615ID223.collider)
table.insert(colliders,AutoGenParent615ID223)
AutoGenParent615ID224 = {}
AutoGenParent615ID224.collider = OBBCollider.Create(-1)
AutoGenParent615ID224.collider:SetOffset(111,30.696,195.5)
AutoGenParent615ID224.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent615ID224.collider:SetHalfLengths(0.3,6.17832,2.06155)
AutoGenParent615ID223.collider:AddChild(AutoGenParent615ID224.collider)
table.insert(colliders,AutoGenParent615ID224)
AutoGenParent615ID225 = {}
AutoGenParent615ID225.collider = OBBCollider.Create(-1)
AutoGenParent615ID225.collider:SetOffset(89,22.595,207.5)
AutoGenParent615ID225.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent615ID225.collider:SetHalfLengths(0.3,6.03103,1.80278)
AutoGenParent615ID223.collider:AddChild(AutoGenParent615ID225.collider)
table.insert(colliders,AutoGenParent615ID225)
AutoGenParent615ID226 = {}
AutoGenParent615ID226.collider = OBBCollider.Create(-1)
AutoGenParent615ID226.collider:SetOffset(63,8.74967,217)
AutoGenParent615ID226.collider:SetZAxis(1,0,0)
AutoGenParent615ID226.collider:SetHalfLengths(0.3,10.4498,5)
AutoGenParent615ID223.collider:AddChild(AutoGenParent615ID226.collider)
table.insert(colliders,AutoGenParent615ID226)
AutoGenParent615ID227 = {}
AutoGenParent615ID227.collider = AABBCollider.Create(-1)
AutoGenParent615ID227.collider:SetOffset(0,0,0)
AutoGenParent615ID227.collider:SetMinPos(144.788,29.3031,142.941)
AutoGenParent615ID227.collider:SetMaxPos(222.294,47.2129,223.212)
AutoGenParent615ID218.collider:AddChild(AutoGenParent615ID227.collider)
table.insert(colliders,AutoGenParent615ID227)
AutoGenParent615ID228 = {}
AutoGenParent615ID228.collider = OBBCollider.Create(-1)
AutoGenParent615ID228.collider:SetOffset(146.5,35.1944,221.5)
AutoGenParent615ID228.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID228.collider:SetHalfLengths(0.3,5.89124,2.12132)
AutoGenParent615ID227.collider:AddChild(AutoGenParent615ID228.collider)
table.insert(colliders,AutoGenParent615ID228)
AutoGenParent615ID229 = {}
AutoGenParent615ID229.collider = OBBCollider.Create(-1)
AutoGenParent615ID229.collider:SetOffset(213,39.3163,166.5)
AutoGenParent615ID229.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent615ID229.collider:SetHalfLengths(0.3,7.89651,7.43303)
AutoGenParent615ID227.collider:AddChild(AutoGenParent615ID229.collider)
table.insert(colliders,AutoGenParent615ID229)
AutoGenParent615ID230 = {}
AutoGenParent615ID230.collider = OBBCollider.Create(-1)
AutoGenParent615ID230.collider:SetOffset(221,36.6426,148)
AutoGenParent615ID230.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent615ID230.collider:SetHalfLengths(0.3,7.33949,5.09902)
AutoGenParent615ID227.collider:AddChild(AutoGenParent615ID230.collider)
table.insert(colliders,AutoGenParent615ID230)
AutoGenParent615ID231 = {}
AutoGenParent615ID231.collider = AABBCollider.Create(-1)
AutoGenParent615ID231.collider:SetOffset(0,0,0)
AutoGenParent615ID231.collider:SetMinPos(56.9412,2.71863,142.788)
AutoGenParent615ID231.collider:SetMaxPos(255.212,48.1041,250.277)
AutoGenParent615ID204.collider:AddChild(AutoGenParent615ID231.collider)
table.insert(colliders,AutoGenParent615ID231)
AutoGenParent615ID232 = {}
AutoGenParent615ID232.collider = AABBCollider.Create(-1)
AutoGenParent615ID232.collider:SetOffset(0,0,0)
AutoGenParent615ID232.collider:SetMinPos(56.9412,2.71863,200.732)
AutoGenParent615ID232.collider:SetMaxPos(82.1342,25.091,209.294)
AutoGenParent615ID231.collider:AddChild(AutoGenParent615ID232.collider)
table.insert(colliders,AutoGenParent615ID232)
AutoGenParent615ID233 = {}
AutoGenParent615ID233.collider = OBBCollider.Create(-1)
AutoGenParent615ID233.collider:SetOffset(62,11.4009,208)
AutoGenParent615ID233.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent615ID233.collider:SetHalfLengths(0.3,8.68226,5.09902)
AutoGenParent615ID232.collider:AddChild(AutoGenParent615ID233.collider)
table.insert(colliders,AutoGenParent615ID233)
AutoGenParent615ID234 = {}
AutoGenParent615ID234.collider = OBBCollider.Create(-1)
AutoGenParent615ID234.collider:SetOffset(71.5,15.0832,205.5)
AutoGenParent615ID234.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent615ID234.collider:SetHalfLengths(0.3,8.24039,4.74342)
AutoGenParent615ID232.collider:AddChild(AutoGenParent615ID234.collider)
table.insert(colliders,AutoGenParent615ID234)
AutoGenParent615ID235 = {}
AutoGenParent615ID235.collider = OBBCollider.Create(-1)
AutoGenParent615ID235.collider:SetOffset(79,18.3236,202.5)
AutoGenParent615ID235.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent615ID235.collider:SetHalfLengths(0.3,6.76749,3.3541)
AutoGenParent615ID232.collider:AddChild(AutoGenParent615ID235.collider)
table.insert(colliders,AutoGenParent615ID235)
AutoGenParent615ID236 = {}
AutoGenParent615ID236.collider = AABBCollider.Create(-1)
AutoGenParent615ID236.collider:SetOffset(0,0,0)
AutoGenParent615ID236.collider:SetMinPos(67.8529,7.72652,195.766)
AutoGenParent615ID236.collider:SetMaxPos(118.187,39.6728,226.261)
AutoGenParent615ID231.collider:AddChild(AutoGenParent615ID236.collider)
table.insert(colliders,AutoGenParent615ID236)
AutoGenParent615ID237 = {}
AutoGenParent615ID237.collider = OBBCollider.Create(-1)
AutoGenParent615ID237.collider:SetOffset(115.5,31.8743,198)
AutoGenParent615ID237.collider:SetZAxis(0.780869,0,0.624695)
AutoGenParent615ID237.collider:SetHalfLengths(0.3,7.79852,3.20156)
AutoGenParent615ID236.collider:AddChild(AutoGenParent615ID237.collider)
table.insert(colliders,AutoGenParent615ID237)
AutoGenParent615ID238 = {}
AutoGenParent615ID238.collider = OBBCollider.Create(-1)
AutoGenParent615ID238.collider:SetOffset(90,21.5639,213.5)
AutoGenParent615ID238.collider:SetZAxis(0.406139,0,0.913812)
AutoGenParent615ID238.collider:SetHalfLengths(0.3,5.88374,4.92443)
AutoGenParent615ID236.collider:AddChild(AutoGenParent615ID238.collider)
table.insert(colliders,AutoGenParent615ID238)
AutoGenParent615ID239 = {}
AutoGenParent615ID239.collider = OBBCollider.Create(-1)
AutoGenParent615ID239.collider:SetOffset(76,14.1994,221.5)
AutoGenParent615ID239.collider:SetZAxis(0.871576,0,0.490261)
AutoGenParent615ID239.collider:SetHalfLengths(0.3,6.4729,9.17878)
AutoGenParent615ID236.collider:AddChild(AutoGenParent615ID239.collider)
table.insert(colliders,AutoGenParent615ID239)
AutoGenParent615ID240 = {}
AutoGenParent615ID240.collider = AABBCollider.Create(-1)
AutoGenParent615ID240.collider:SetOffset(0,0,0)
AutoGenParent615ID240.collider:SetMinPos(149.7,26.2952,142.788)
AutoGenParent615ID240.collider:SetMaxPos(255.212,48.1041,250.277)
AutoGenParent615ID231.collider:AddChild(AutoGenParent615ID240.collider)
table.insert(colliders,AutoGenParent615ID240)
AutoGenParent615ID241 = {}
AutoGenParent615ID241.collider = OBBCollider.Create(-1)
AutoGenParent615ID241.collider:SetOffset(150,37.1997,241.5)
AutoGenParent615ID241.collider:SetZAxis(0,0,1)
AutoGenParent615ID241.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent615ID240.collider:AddChild(AutoGenParent615ID241.collider)
table.insert(colliders,AutoGenParent615ID241)
AutoGenParent615ID242 = {}
AutoGenParent615ID242.collider = OBBCollider.Create(-1)
AutoGenParent615ID242.collider:SetOffset(158.5,37.1997,246.5)
AutoGenParent615ID242.collider:SetZAxis(0.924678,0,0.38075)
AutoGenParent615ID242.collider:SetHalfLengths(0.3,10.9044,9.19239)
AutoGenParent615ID240.collider:AddChild(AutoGenParent615ID242.collider)
table.insert(colliders,AutoGenParent615ID242)
AutoGenParent615ID243 = {}
AutoGenParent615ID243.collider = OBBCollider.Create(-1)
AutoGenParent615ID243.collider:SetOffset(249.5,36.0856,148.5)
AutoGenParent615ID243.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent615ID243.collider:SetHalfLengths(0.3,5.77983,7.77817)
AutoGenParent615ID240.collider:AddChild(AutoGenParent615ID243.collider)
table.insert(colliders,AutoGenParent615ID243)
AutoGenParent615ID244 = {}
AutoGenParent615ID244.collider = AABBCollider.Create(-1)
AutoGenParent615ID244.collider:SetOffset(0,0,0)
AutoGenParent615ID244.collider:SetMinPos(124.701,26.5797,66.8138)
AutoGenParent615ID244.collider:SetMaxPos(384,67.2657,255.3)
AutoGenParent615ID1.collider:AddChild(AutoGenParent615ID244.collider)
table.insert(colliders,AutoGenParent615ID244)
AutoGenParent615ID245 = {}
AutoGenParent615ID245.collider = AABBCollider.Create(-1)
AutoGenParent615ID245.collider:SetOffset(0,0,0)
AutoGenParent615ID245.collider:SetMinPos(124.701,26.5797,66.8138)
AutoGenParent615ID245.collider:SetMaxPos(309.235,66.1516,245.297)
AutoGenParent615ID244.collider:AddChild(AutoGenParent615ID245.collider)
table.insert(colliders,AutoGenParent615ID245)
AutoGenParent615ID246 = {}
AutoGenParent615ID246.collider = AABBCollider.Create(-1)
AutoGenParent615ID246.collider:SetOffset(0,0,0)
AutoGenParent615ID246.collider:SetMinPos(135.889,30.1944,117.788)
AutoGenParent615ID246.collider:SetMaxPos(258.212,60.5814,223.279)
AutoGenParent615ID245.collider:AddChild(AutoGenParent615ID246.collider)
table.insert(colliders,AutoGenParent615ID246)
AutoGenParent615ID247 = {}
AutoGenParent615ID247.collider = AABBCollider.Create(-1)
AutoGenParent615ID247.collider:SetOffset(0,0,0)
AutoGenParent615ID247.collider:SetMinPos(158.715,38.6611,145.905)
AutoGenParent615ID247.collider:SetMaxPos(185.285,60.5814,185.095)
AutoGenParent615ID246.collider:AddChild(AutoGenParent615ID247.collider)
table.insert(colliders,AutoGenParent615ID247)
AutoGenParent615ID248 = {}
AutoGenParent615ID248.collider = OBBCollider.Create(-1)
AutoGenParent615ID248.collider:SetOffset(182,54.1331,150.5)
AutoGenParent615ID248.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent615ID248.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent615ID247.collider:AddChild(AutoGenParent615ID248.collider)
table.insert(colliders,AutoGenParent615ID248)
AutoGenParent615ID249 = {}
AutoGenParent615ID249.collider = OBBCollider.Create(-1)
AutoGenParent615ID249.collider:SetOffset(184.5,54.8016,147.5)
AutoGenParent615ID249.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent615ID249.collider:SetHalfLengths(0.3,5.77983,1.58114)
AutoGenParent615ID247.collider:AddChild(AutoGenParent615ID249.collider)
table.insert(colliders,AutoGenParent615ID249)
AutoGenParent615ID250 = {}
AutoGenParent615ID250.collider = OBBCollider.Create(-1)
AutoGenParent615ID250.collider:SetOffset(161,48.4515,179)
AutoGenParent615ID250.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent615ID250.collider:SetHalfLengths(0.3,9.7904,6.32456)
AutoGenParent615ID247.collider:AddChild(AutoGenParent615ID250.collider)
table.insert(colliders,AutoGenParent615ID250)
AutoGenParent615ID251 = {}
AutoGenParent615ID251.collider = AABBCollider.Create(-1)
AutoGenParent615ID251.collider:SetOffset(0,0,0)
AutoGenParent615ID251.collider:SetMinPos(135.889,30.1944,171.748)
AutoGenParent615ID251.collider:SetMaxPos(208.162,48.1041,223.279)
AutoGenParent615ID246.collider:AddChild(AutoGenParent615ID251.collider)
table.insert(colliders,AutoGenParent615ID251)
AutoGenParent615ID252 = {}
AutoGenParent615ID252.collider = OBBCollider.Create(-1)
AutoGenParent615ID252.collider:SetOffset(138.5,35.5286,222)
AutoGenParent615ID252.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent615ID252.collider:SetHalfLengths(0.3,5.33422,2.69258)
AutoGenParent615ID251.collider:AddChild(AutoGenParent615ID252.collider)
table.insert(colliders,AutoGenParent615ID252)
AutoGenParent615ID253 = {}
AutoGenParent615ID253.collider = OBBCollider.Create(-1)
AutoGenParent615ID253.collider:SetOffset(184,42.8813,193)
AutoGenParent615ID253.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent615ID253.collider:SetHalfLengths(0.3,5.22281,7.61577)
AutoGenParent615ID251.collider:AddChild(AutoGenParent615ID253.collider)
table.insert(colliders,AutoGenParent615ID253)
AutoGenParent615ID254 = {}
AutoGenParent615ID254.collider = OBBCollider.Create(-1)
AutoGenParent615ID254.collider:SetOffset(201,40.319,176.5)
AutoGenParent615ID254.collider:SetZAxis(0.841179,0,-0.540758)
AutoGenParent615ID254.collider:SetHalfLengths(0.3,6.00264,8.32166)
AutoGenParent615ID251.collider:AddChild(AutoGenParent615ID254.collider)
table.insert(colliders,AutoGenParent615ID254)
AutoGenParent615ID255 = {}
AutoGenParent615ID255.collider = AABBCollider.Create(-1)
AutoGenParent615ID255.collider:SetOffset(0,0,0)
AutoGenParent615ID255.collider:SetMinPos(182.941,30.64,117.788)
AutoGenParent615ID255.collider:SetMaxPos(258.212,47.4357,207.294)
AutoGenParent615ID246.collider:AddChild(AutoGenParent615ID255.collider)
table.insert(colliders,AutoGenParent615ID255)
AutoGenParent615ID256 = {}
AutoGenParent615ID256.collider = OBBCollider.Create(-1)
AutoGenParent615ID256.collider:SetOffset(185.5,41.8786,206.5)
AutoGenParent615ID256.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent615ID256.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent615ID255.collider:AddChild(AutoGenParent615ID256.collider)
table.insert(colliders,AutoGenParent615ID256)
AutoGenParent615ID257 = {}
AutoGenParent615ID257.collider = OBBCollider.Create(-1)
AutoGenParent615ID257.collider:SetOffset(220.5,36.0856,175)
AutoGenParent615ID257.collider:SetZAxis(0.573462,0,-0.819232)
AutoGenParent615ID257.collider:SetHalfLengths(0.3,5.44562,6.10328)
AutoGenParent615ID255.collider:AddChild(AutoGenParent615ID257.collider)
table.insert(colliders,AutoGenParent615ID257)
AutoGenParent615ID258 = {}
AutoGenParent615ID258.collider = OBBCollider.Create(-1)
AutoGenParent615ID258.collider:SetOffset(253,37.9795,123)
AutoGenParent615ID258.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent615ID258.collider:SetHalfLengths(0.3,5.55702,7.07107)
AutoGenParent615ID255.collider:AddChild(AutoGenParent615ID258.collider)
table.insert(colliders,AutoGenParent615ID258)
AutoGenParent615ID259 = {}
AutoGenParent615ID259.collider = AABBCollider.Create(-1)
AutoGenParent615ID259.collider:SetOffset(0,0,0)
AutoGenParent615ID259.collider:SetMinPos(124.701,26.5797,127.704)
AutoGenParent615ID259.collider:SetMaxPos(299.049,66.1516,245.297)
AutoGenParent615ID245.collider:AddChild(AutoGenParent615ID259.collider)
table.insert(colliders,AutoGenParent615ID259)
AutoGenParent615ID260 = {}
AutoGenParent615ID260.collider = AABBCollider.Create(-1)
AutoGenParent615ID260.collider:SetOffset(0,0,0)
AutoGenParent615ID260.collider:SetMinPos(124.701,26.5797,195.74)
AutoGenParent615ID260.collider:SetMaxPos(177.149,47.8813,234.03)
AutoGenParent615ID259.collider:AddChild(AutoGenParent615ID260.collider)
table.insert(colliders,AutoGenParent615ID260)
AutoGenParent615ID261 = {}
AutoGenParent615ID261.collider = OBBCollider.Create(-1)
AutoGenParent615ID261.collider:SetOffset(125.5,32.1689,229)
AutoGenParent615ID261.collider:SetZAxis(0.0995037,0,-0.995037)
AutoGenParent615ID261.collider:SetHalfLengths(0.3,5.58916,5.02494)
AutoGenParent615ID260.collider:AddChild(AutoGenParent615ID261.collider)
table.insert(colliders,AutoGenParent615ID261)
AutoGenParent615ID262 = {}
AutoGenParent615ID262.collider = OBBCollider.Create(-1)
AutoGenParent615ID262.collider:SetOffset(127,32.758,224)
AutoGenParent615ID262.collider:SetZAxis(1,0,0)
AutoGenParent615ID262.collider:SetHalfLengths(0.3,5.14729,1)
AutoGenParent615ID260.collider:AddChild(AutoGenParent615ID262.collider)
table.insert(colliders,AutoGenParent615ID262)
AutoGenParent615ID263 = {}
AutoGenParent615ID263.collider = OBBCollider.Create(-1)
AutoGenParent615ID263.collider:SetOffset(170,40.319,200)
AutoGenParent615ID263.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent615ID263.collider:SetHalfLengths(0.3,7.5623,8.06226)
AutoGenParent615ID260.collider:AddChild(AutoGenParent615ID263.collider)
table.insert(colliders,AutoGenParent615ID263)
AutoGenParent615ID264 = {}
AutoGenParent615ID264.collider = AABBCollider.Create(-1)
AutoGenParent615ID264.collider:SetOffset(0,0,0)
AutoGenParent615ID264.collider:SetMinPos(175.706,30.1944,153.771)
AutoGenParent615ID264.collider:SetMaxPos(244.194,47.5471,219.059)
AutoGenParent615ID259.collider:AddChild(AutoGenParent615ID264.collider)
table.insert(colliders,AutoGenParent615ID264)
AutoGenParent615ID265 = {}
AutoGenParent615ID265.collider = OBBCollider.Create(-1)
AutoGenParent615ID265.collider:SetOffset(176.5,41.9901,216.5)
AutoGenParent615ID265.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent615ID265.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent615ID264.collider:AddChild(AutoGenParent615ID265.collider)
table.insert(colliders,AutoGenParent615ID265)
AutoGenParent615ID266 = {}
AutoGenParent615ID266.collider = OBBCollider.Create(-1)
AutoGenParent615ID266.collider:SetOffset(207.5,38.9821,191)
AutoGenParent615ID266.collider:SetZAxis(0.287348,0,-0.957826)
AutoGenParent615ID266.collider:SetHalfLengths(0.3,6.22545,5.22015)
AutoGenParent615ID264.collider:AddChild(AutoGenParent615ID266.collider)
table.insert(colliders,AutoGenParent615ID266)
AutoGenParent615ID267 = {}
AutoGenParent615ID267.collider = OBBCollider.Create(-1)
AutoGenParent615ID267.collider:SetOffset(237.5,35.64,159.5)
AutoGenParent615ID267.collider:SetZAxis(0.763386,0,-0.645942)
AutoGenParent615ID267.collider:SetHalfLengths(0.3,5.44562,8.51469)
AutoGenParent615ID264.collider:AddChild(AutoGenParent615ID267.collider)
table.insert(colliders,AutoGenParent615ID267)
AutoGenParent615ID268 = {}
AutoGenParent615ID268.collider = AABBCollider.Create(-1)
AutoGenParent615ID268.collider:SetOffset(0,0,0)
AutoGenParent615ID268.collider:SetMinPos(196.958,31.3084,127.704)
AutoGenParent615ID268.collider:SetMaxPos(299.049,66.1516,245.297)
AutoGenParent615ID259.collider:AddChild(AutoGenParent615ID268.collider)
table.insert(colliders,AutoGenParent615ID268)
AutoGenParent615ID269 = {}
AutoGenParent615ID269.collider = OBBCollider.Create(-1)
AutoGenParent615ID269.collider:SetOffset(200.5,53.2419,244.5)
AutoGenParent615ID269.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent615ID269.collider:SetHalfLengths(0.3,7.00528,3.53553)
AutoGenParent615ID268.collider:AddChild(AutoGenParent615ID269.collider)
table.insert(colliders,AutoGenParent615ID269)
AutoGenParent615ID270 = {}
AutoGenParent615ID270.collider = OBBCollider.Create(-1)
AutoGenParent615ID270.collider:SetOffset(220.5,56.3612,226)
AutoGenParent615ID270.collider:SetZAxis(-0.658505,0,-0.752577)
AutoGenParent615ID270.collider:SetHalfLengths(0.3,9.79039,5.31507)
AutoGenParent615ID268.collider:AddChild(AutoGenParent615ID270.collider)
table.insert(colliders,AutoGenParent615ID270)
AutoGenParent615ID271 = {}
AutoGenParent615ID271.collider = OBBCollider.Create(-1)
AutoGenParent615ID271.collider:SetOffset(293,37.1997,129)
AutoGenParent615ID271.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent615ID271.collider:SetHalfLengths(0.3,5.89124,6.08276)
AutoGenParent615ID268.collider:AddChild(AutoGenParent615ID271.collider)
table.insert(colliders,AutoGenParent615ID271)
AutoGenParent615ID272 = {}
AutoGenParent615ID272.collider = AABBCollider.Create(-1)
AutoGenParent615ID272.collider:SetOffset(0,0,0)
AutoGenParent615ID272.collider:SetMinPos(172.899,31.3084,66.8138)
AutoGenParent615ID272.collider:SetMaxPos(309.235,51.2525,218.715)
AutoGenParent615ID245.collider:AddChild(AutoGenParent615ID272.collider)
table.insert(colliders,AutoGenParent615ID272)
AutoGenParent615ID273 = {}
AutoGenParent615ID273.collider = AABBCollider.Create(-1)
AutoGenParent615ID273.collider:SetOffset(0,0,0)
AutoGenParent615ID273.collider:SetMinPos(223.905,31.3084,132.788)
AutoGenParent615ID273.collider:SetMaxPos(240.226,43.3137,152.285)
AutoGenParent615ID272.collider:AddChild(AutoGenParent615ID273.collider)
table.insert(colliders,AutoGenParent615ID273)
AutoGenParent615ID274 = {}
AutoGenParent615ID274.collider = OBBCollider.Create(-1)
AutoGenParent615ID274.collider:SetOffset(228.5,36.6426,150.5)
AutoGenParent615ID274.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent615ID274.collider:SetHalfLengths(0.3,5.1114,4.74342)
AutoGenParent615ID273.collider:AddChild(AutoGenParent615ID274.collider)
table.insert(colliders,AutoGenParent615ID274)
AutoGenParent615ID275 = {}
AutoGenParent615ID275.collider = OBBCollider.Create(-1)
AutoGenParent615ID275.collider:SetOffset(236.5,36.5312,145)
AutoGenParent615ID275.collider:SetZAxis(0.658505,0,-0.752577)
AutoGenParent615ID275.collider:SetHalfLengths(0.3,5.22281,5.31507)
AutoGenParent615ID273.collider:AddChild(AutoGenParent615ID275.collider)
table.insert(colliders,AutoGenParent615ID275)
AutoGenParent615ID276 = {}
AutoGenParent615ID276.collider = OBBCollider.Create(-1)
AutoGenParent615ID276.collider:SetOffset(238,37.3111,135)
AutoGenParent615ID276.collider:SetZAxis(-0.707107,0,-0.707107)
AutoGenParent615ID276.collider:SetHalfLengths(0.3,6.00264,2.82843)
AutoGenParent615ID273.collider:AddChild(AutoGenParent615ID276.collider)
table.insert(colliders,AutoGenParent615ID276)
AutoGenParent615ID277 = {}
AutoGenParent615ID277.collider = AABBCollider.Create(-1)
AutoGenParent615ID277.collider:SetOffset(0,0,0)
AutoGenParent615ID277.collider:SetMinPos(172.899,36.2102,206.743)
AutoGenParent615ID277.collider:SetMaxPos(183.154,51.2525,218.715)
AutoGenParent615ID272.collider:AddChild(AutoGenParent615ID277.collider)
table.insert(colliders,AutoGenParent615ID277)
AutoGenParent615ID278 = {}
AutoGenParent615ID278.collider = OBBCollider.Create(-1)
AutoGenParent615ID278.collider:SetOffset(177,41.433,212)
AutoGenParent615ID278.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent615ID278.collider:SetHalfLengths(0.3,5.22281,2.23607)
AutoGenParent615ID277.collider:AddChild(AutoGenParent615ID278.collider)
table.insert(colliders,AutoGenParent615ID278)
AutoGenParent615ID279 = {}
AutoGenParent615ID279.collider = OBBCollider.Create(-1)
AutoGenParent615ID279.collider:SetOffset(180.5,41.6558,208.5)
AutoGenParent615ID279.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent615ID279.collider:SetHalfLengths(0.3,5.22281,2.91548)
AutoGenParent615ID277.collider:AddChild(AutoGenParent615ID279.collider)
table.insert(colliders,AutoGenParent615ID279)
AutoGenParent615ID280 = {}
AutoGenParent615ID280.collider = OBBCollider.Create(-1)
AutoGenParent615ID280.collider:SetOffset(176.796,45.2188,214.625)
AutoGenParent615ID280.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
AutoGenParent615ID280.collider:SetHalfLengths(2.66392,5.98314,3.08762)
AutoGenParent615ID277.collider:AddChild(AutoGenParent615ID280.collider)
table.insert(colliders,AutoGenParent615ID280)
AutoGenParent615ID281 = {}
AutoGenParent615ID281.collider = AABBCollider.Create(-1)
AutoGenParent615ID281.collider:SetOffset(0,0,0)
AutoGenParent615ID281.collider:SetMinPos(270.941,31.8654,66.8138)
AutoGenParent615ID281.collider:SetMaxPos(309.235,47.6585,130.294)
AutoGenParent615ID272.collider:AddChild(AutoGenParent615ID281.collider)
table.insert(colliders,AutoGenParent615ID281)
AutoGenParent615ID282 = {}
AutoGenParent615ID282.collider = OBBCollider.Create(-1)
AutoGenParent615ID282.collider:SetOffset(299.5,41.3216,79)
AutoGenParent615ID282.collider:SetZAxis(0.620703,0,0.784046)
AutoGenParent615ID282.collider:SetHalfLengths(0.3,6.33685,15.3052)
AutoGenParent615ID281.collider:AddChild(AutoGenParent615ID282.collider)
table.insert(colliders,AutoGenParent615ID282)
AutoGenParent615ID283 = {}
AutoGenParent615ID283.collider = OBBCollider.Create(-1)
AutoGenParent615ID283.collider:SetOffset(273.5,37.3111,129.5)
AutoGenParent615ID283.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent615ID283.collider:SetHalfLengths(0.3,5.22281,2.54951)
AutoGenParent615ID281.collider:AddChild(AutoGenParent615ID283.collider)
table.insert(colliders,AutoGenParent615ID283)
AutoGenParent615ID284 = {}
AutoGenParent615ID284.collider = OBBCollider.Create(-1)
AutoGenParent615ID284.collider:SetOffset(291.5,38.2023,98.5)
AutoGenParent615ID284.collider:SetZAxis(-0.654931,0,-0.755689)
AutoGenParent615ID284.collider:SetHalfLengths(0.3,6.33685,9.92472)
AutoGenParent615ID281.collider:AddChild(AutoGenParent615ID284.collider)
table.insert(colliders,AutoGenParent615ID284)
AutoGenParent615ID285 = {}
AutoGenParent615ID285.collider = AABBCollider.Create(-1)
AutoGenParent615ID285.collider:SetOffset(0,0,0)
AutoGenParent615ID285.collider:SetMinPos(166.951,29.7488,90.7879)
AutoGenParent615ID285.collider:SetMaxPos(350.246,65.3718,254.212)
AutoGenParent615ID244.collider:AddChild(AutoGenParent615ID285.collider)
table.insert(colliders,AutoGenParent615ID285)
AutoGenParent615ID286 = {}
AutoGenParent615ID286.collider = AABBCollider.Create(-1)
AutoGenParent615ID286.collider:SetOffset(0,0,0)
AutoGenParent615ID286.collider:SetMinPos(190.715,31.0856,90.7879)
AutoGenParent615ID286.collider:SetMaxPos(315.212,62.1411,246.296)
AutoGenParent615ID285.collider:AddChild(AutoGenParent615ID286.collider)
table.insert(colliders,AutoGenParent615ID286)
AutoGenParent615ID287 = {}
AutoGenParent615ID287.collider = AABBCollider.Create(-1)
AutoGenParent615ID287.collider:SetOffset(0,0,0)
AutoGenParent615ID287.collider:SetMinPos(190.715,31.4198,120.741)
AutoGenParent615ID287.collider:SetMaxPos(248.151,49.998,190.095)
AutoGenParent615ID286.collider:AddChild(AutoGenParent615ID287.collider)
table.insert(colliders,AutoGenParent615ID287)
AutoGenParent615ID288 = {}
AutoGenParent615ID288.collider = OBBCollider.Create(-1)
AutoGenParent615ID288.collider:SetOffset(192.5,42.6585,185.5)
AutoGenParent615ID288.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent615ID288.collider:SetHalfLengths(0.3,7.33949,4.74342)
AutoGenParent615ID287.collider:AddChild(AutoGenParent615ID288.collider)
table.insert(colliders,AutoGenParent615ID288)
AutoGenParent615ID289 = {}
AutoGenParent615ID289.collider = OBBCollider.Create(-1)
AutoGenParent615ID289.collider:SetOffset(222,36.5312,153.5)
AutoGenParent615ID289.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent615ID289.collider:SetHalfLengths(0.3,5.1114,2.5)
AutoGenParent615ID287.collider:AddChild(AutoGenParent615ID289.collider)
table.insert(colliders,AutoGenParent615ID289)
AutoGenParent615ID290 = {}
AutoGenParent615ID290.collider = OBBCollider.Create(-1)
AutoGenParent615ID290.collider:SetOffset(242,40.0962,124.5)
AutoGenParent615ID290.collider:SetZAxis(0.863779,0,0.503871)
AutoGenParent615ID290.collider:SetHalfLengths(0.3,7.11668,6.94622)
AutoGenParent615ID287.collider:AddChild(AutoGenParent615ID290.collider)
table.insert(colliders,AutoGenParent615ID290)
AutoGenParent615ID291 = {}
AutoGenParent615ID291.collider = AABBCollider.Create(-1)
AutoGenParent615ID291.collider:SetOffset(0,0,0)
AutoGenParent615ID291.collider:SetMinPos(192.889,31.0856,108.768)
AutoGenParent615ID291.collider:SetMaxPos(269.19,46.6558,205.279)
AutoGenParent615ID286.collider:AddChild(AutoGenParent615ID291.collider)
table.insert(colliders,AutoGenParent615ID291)
AutoGenParent615ID292 = {}
AutoGenParent615ID292.collider = OBBCollider.Create(-1)
AutoGenParent615ID292.collider:SetOffset(198,40.6532,203)
AutoGenParent615ID292.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent615ID292.collider:SetHalfLengths(0.3,6.00264,5.38516)
AutoGenParent615ID291.collider:AddChild(AutoGenParent615ID292.collider)
table.insert(colliders,AutoGenParent615ID292)
AutoGenParent615ID293 = {}
AutoGenParent615ID293.collider = OBBCollider.Create(-1)
AutoGenParent615ID293.collider:SetOffset(215,36.9769,181.5)
AutoGenParent615ID293.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent615ID293.collider:SetHalfLengths(0.3,5.89124,2.5)
AutoGenParent615ID291.collider:AddChild(AutoGenParent615ID293.collider)
table.insert(colliders,AutoGenParent615ID293)
AutoGenParent615ID294 = {}
AutoGenParent615ID294.collider = OBBCollider.Create(-1)
AutoGenParent615ID294.collider:SetOffset(263.5,37.4225,113.5)
AutoGenParent615ID294.collider:SetZAxis(0.773957,0,-0.633238)
AutoGenParent615ID294.collider:SetHalfLengths(0.3,5.44562,7.10634)
AutoGenParent615ID291.collider:AddChild(AutoGenParent615ID294.collider)
table.insert(colliders,AutoGenParent615ID294)
AutoGenParent615ID295 = {}
AutoGenParent615ID295.collider = AABBCollider.Create(-1)
AutoGenParent615ID295.collider:SetOffset(0,0,0)
AutoGenParent615ID295.collider:SetMinPos(203.951,36.3216,90.7879)
AutoGenParent615ID295.collider:SetMaxPos(315.212,62.1411,246.296)
AutoGenParent615ID286.collider:AddChild(AutoGenParent615ID295.collider)
table.insert(colliders,AutoGenParent615ID295)
AutoGenParent615ID296 = {}
AutoGenParent615ID296.collider = OBBCollider.Create(-1)
AutoGenParent615ID296.collider:SetOffset(312,42.6585,94)
AutoGenParent615ID296.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID296.collider:SetHalfLengths(0.3,6.33685,4.24264)
AutoGenParent615ID295.collider:AddChild(AutoGenParent615ID296.collider)
table.insert(colliders,AutoGenParent615ID296)
AutoGenParent615ID297 = {}
AutoGenParent615ID297.collider = OBBCollider.Create(-1)
AutoGenParent615ID297.collider:SetOffset(207,55.2472,245.5)
AutoGenParent615ID297.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent615ID297.collider:SetHalfLengths(0.3,6.44826,3.04138)
AutoGenParent615ID295.collider:AddChild(AutoGenParent615ID297.collider)
table.insert(colliders,AutoGenParent615ID297)
AutoGenParent615ID298 = {}
AutoGenParent615ID298.collider = OBBCollider.Create(-1)
AutoGenParent615ID298.collider:SetOffset(227.5,56.3612,232)
AutoGenParent615ID298.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent615ID298.collider:SetHalfLengths(0.3,5.77983,4.03113)
AutoGenParent615ID295.collider:AddChild(AutoGenParent615ID298.collider)
table.insert(colliders,AutoGenParent615ID298)
AutoGenParent615ID299 = {}
AutoGenParent615ID299.collider = AABBCollider.Create(-1)
AutoGenParent615ID299.collider:SetOffset(0,0,0)
AutoGenParent615ID299.collider:SetMinPos(184.935,32.0883,106.78)
AutoGenParent615ID299.collider:SetMaxPos(336.204,65.2604,254.212)
AutoGenParent615ID285.collider:AddChild(AutoGenParent615ID299.collider)
table.insert(colliders,AutoGenParent615ID299)
AutoGenParent615ID300 = {}
AutoGenParent615ID300.collider = AABBCollider.Create(-1)
AutoGenParent615ID300.collider:SetOffset(0,0,0)
AutoGenParent615ID300.collider:SetMinPos(184.935,49.2445,148.889)
AutoGenParent615ID300.collider:SetMaxPos(207.279,61.027,170.293)
AutoGenParent615ID299.collider:AddChild(AutoGenParent615ID300.collider)
table.insert(colliders,AutoGenParent615ID300)
AutoGenParent615ID301 = {}
AutoGenParent615ID301.collider = OBBCollider.Create(-1)
AutoGenParent615ID301.collider:SetOffset(205,55.2472,154)
AutoGenParent615ID301.collider:SetZAxis(-0.371391,0,0.928477)
AutoGenParent615ID301.collider:SetHalfLengths(0.3,5.22281,5.38516)
AutoGenParent615ID300.collider:AddChild(AutoGenParent615ID301.collider)
table.insert(colliders,AutoGenParent615ID301)
AutoGenParent615ID302 = {}
AutoGenParent615ID302.collider = OBBCollider.Create(-1)
AutoGenParent615ID302.collider:SetOffset(198.5,55.0244,163.5)
AutoGenParent615ID302.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent615ID302.collider:SetHalfLengths(0.3,5.77983,6.36396)
AutoGenParent615ID300.collider:AddChild(AutoGenParent615ID302.collider)
table.insert(colliders,AutoGenParent615ID302)
AutoGenParent615ID303 = {}
AutoGenParent615ID303.collider = OBBCollider.Create(-1)
AutoGenParent615ID303.collider:SetOffset(189.5,55.8042,169)
AutoGenParent615ID303.collider:SetZAxis(-0.976187,0,0.21693)
AutoGenParent615ID303.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent615ID300.collider:AddChild(AutoGenParent615ID303.collider)
table.insert(colliders,AutoGenParent615ID303)
AutoGenParent615ID304 = {}
AutoGenParent615ID304.collider = AABBCollider.Create(-1)
AutoGenParent615ID304.collider:SetOffset(0,0,0)
AutoGenParent615ID304.collider:SetMinPos(201.905,32.1997,127.701)
AutoGenParent615ID304.collider:SetMaxPos(287.027,57.4621,227.285)
AutoGenParent615ID299.collider:AddChild(AutoGenParent615ID304.collider)
table.insert(colliders,AutoGenParent615ID304)
AutoGenParent615ID305 = {}
AutoGenParent615ID305.collider = OBBCollider.Create(-1)
AutoGenParent615ID305.collider:SetOffset(212.5,51.5708,223.5)
AutoGenParent615ID305.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent615ID305.collider:SetHalfLengths(0.3,5.89124,4.74342)
AutoGenParent615ID304.collider:AddChild(AutoGenParent615ID305.collider)
table.insert(colliders,AutoGenParent615ID305)
AutoGenParent615ID306 = {}
AutoGenParent615ID306.collider = OBBCollider.Create(-1)
AutoGenParent615ID306.collider:SetOffset(205,50.6796,226)
AutoGenParent615ID306.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent615ID306.collider:SetHalfLengths(0.3,6.11405,3.16228)
AutoGenParent615ID304.collider:AddChild(AutoGenParent615ID306.collider)
table.insert(colliders,AutoGenParent615ID306)
AutoGenParent615ID307 = {}
AutoGenParent615ID307.collider = OBBCollider.Create(-1)
AutoGenParent615ID307.collider:SetOffset(281.5,37.5339,128.5)
AutoGenParent615ID307.collider:SetZAxis(0.995893,0,-0.0905358)
AutoGenParent615ID307.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent615ID304.collider:AddChild(AutoGenParent615ID307.collider)
table.insert(colliders,AutoGenParent615ID307)
AutoGenParent615ID308 = {}
AutoGenParent615ID308.collider = AABBCollider.Create(-1)
AutoGenParent615ID308.collider:SetOffset(0,0,0)
AutoGenParent615ID308.collider:SetMinPos(219.788,32.0883,106.78)
AutoGenParent615ID308.collider:SetMaxPos(336.204,65.2604,254.212)
AutoGenParent615ID299.collider:AddChild(AutoGenParent615ID308.collider)
table.insert(colliders,AutoGenParent615ID308)
AutoGenParent615ID309 = {}
AutoGenParent615ID309.collider = OBBCollider.Create(-1)
AutoGenParent615ID309.collider:SetOffset(329,37.4225,113.5)
AutoGenParent615ID309.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent615ID309.collider:SetHalfLengths(0.3,5.33421,9.55249)
AutoGenParent615ID308.collider:AddChild(AutoGenParent615ID309.collider)
table.insert(colliders,AutoGenParent615ID309)
AutoGenParent615ID310 = {}
AutoGenParent615ID310.collider = OBBCollider.Create(-1)
AutoGenParent615ID310.collider:SetOffset(221.5,59.7034,252.5)
AutoGenParent615ID310.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID310.collider:SetHalfLengths(0.3,5.55702,2.12132)
AutoGenParent615ID308.collider:AddChild(AutoGenParent615ID310.collider)
table.insert(colliders,AutoGenParent615ID310)
AutoGenParent615ID311 = {}
AutoGenParent615ID311.collider = OBBCollider.Create(-1)
AutoGenParent615ID311.collider:SetOffset(247.5,57.5867,231.5)
AutoGenParent615ID311.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent615ID311.collider:SetHalfLengths(0.3,5.22281,3.53553)
AutoGenParent615ID308.collider:AddChild(AutoGenParent615ID311.collider)
table.insert(colliders,AutoGenParent615ID311)
AutoGenParent615ID312 = {}
AutoGenParent615ID312.collider = AABBCollider.Create(-1)
AutoGenParent615ID312.collider:SetOffset(0,0,0)
AutoGenParent615ID312.collider:SetMinPos(166.951,29.7488,119.828)
AutoGenParent615ID312.collider:SetMaxPos(350.246,65.3718,252.297)
AutoGenParent615ID285.collider:AddChild(AutoGenParent615ID312.collider)
table.insert(colliders,AutoGenParent615ID312)
AutoGenParent615ID313 = {}
AutoGenParent615ID313.collider = AABBCollider.Create(-1)
AutoGenParent615ID313.collider:SetOffset(0,0,0)
AutoGenParent615ID313.collider:SetMinPos(166.951,34.0935,226.703)
AutoGenParent615ID313.collider:SetMaxPos(202.042,55.8438,252.296)
AutoGenParent615ID312.collider:AddChild(AutoGenParent615ID313.collider)
table.insert(colliders,AutoGenParent615ID313)
AutoGenParent615ID314 = {}
AutoGenParent615ID314.collider = OBBCollider.Create(-1)
AutoGenParent615ID314.collider:SetOffset(173,43.1041,251)
AutoGenParent615ID314.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent615ID314.collider:SetHalfLengths(0.3,9.01056,6.08276)
AutoGenParent615ID313.collider:AddChild(AutoGenParent615ID314.collider)
table.insert(colliders,AutoGenParent615ID314)
AutoGenParent615ID315 = {}
AutoGenParent615ID315.collider = OBBCollider.Create(-1)
AutoGenParent615ID315.collider:SetOffset(198.5,49.5656,227.5)
AutoGenParent615ID315.collider:SetZAxis(-0.98995,0,0.141421)
AutoGenParent615ID315.collider:SetHalfLengths(0.3,6.22544,3.53553)
AutoGenParent615ID313.collider:AddChild(AutoGenParent615ID315.collider)
table.insert(colliders,AutoGenParent615ID315)
AutoGenParent615ID316 = {}
AutoGenParent615ID316.collider = OBBCollider.Create(-1)
AutoGenParent615ID316.collider:SetOffset(183.5,51.8438,240)
AutoGenParent615ID316.collider:SetZAxis(0,0,1)
AutoGenParent615ID316.collider:SetHalfLengths(2.5,4,2.5)
AutoGenParent615ID313.collider:AddChild(AutoGenParent615ID316.collider)
table.insert(colliders,AutoGenParent615ID316)
AutoGenParent615ID317 = {}
AutoGenParent615ID317.collider = AABBCollider.Create(-1)
AutoGenParent615ID317.collider:SetOffset(0,0,0)
AutoGenParent615ID317.collider:SetMinPos(266.985,29.7488,119.828)
AutoGenParent615ID317.collider:SetMaxPos(350.246,62.5867,234.3)
AutoGenParent615ID312.collider:AddChild(AutoGenParent615ID317.collider)
table.insert(colliders,AutoGenParent615ID317)
AutoGenParent615ID318 = {}
AutoGenParent615ID318.collider = OBBCollider.Create(-1)
AutoGenParent615ID318.collider:SetOffset(343,37.0883,130)
AutoGenParent615ID318.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent615ID318.collider:SetHalfLengths(0.3,6.78247,12.2066)
AutoGenParent615ID317.collider:AddChild(AutoGenParent615ID318.collider)
table.insert(colliders,AutoGenParent615ID318)
AutoGenParent615ID319 = {}
AutoGenParent615ID319.collider = OBBCollider.Create(-1)
AutoGenParent615ID319.collider:SetOffset(277,56.8068,233.5)
AutoGenParent615ID319.collider:SetZAxis(0.998752,0,0.0499376)
AutoGenParent615ID319.collider:SetHalfLengths(0.3,5.77983,10.0125)
AutoGenParent615ID317.collider:AddChild(AutoGenParent615ID319.collider)
table.insert(colliders,AutoGenParent615ID319)
AutoGenParent615ID320 = {}
AutoGenParent615ID320.collider = OBBCollider.Create(-1)
AutoGenParent615ID320.collider:SetOffset(330,35.64,149.5)
AutoGenParent615ID320.collider:SetZAxis(-0.524097,0,-0.851658)
AutoGenParent615ID320.collider:SetHalfLengths(0.3,5.89124,7.63217)
AutoGenParent615ID317.collider:AddChild(AutoGenParent615ID320.collider)
table.insert(colliders,AutoGenParent615ID320)
AutoGenParent615ID321 = {}
AutoGenParent615ID321.collider = AABBCollider.Create(-1)
AutoGenParent615ID321.collider:SetOffset(0,0,0)
AutoGenParent615ID321.collider:SetMinPos(251.98,30.64,155.78)
AutoGenParent615ID321.collider:SetMaxPos(347.203,65.3718,252.297)
AutoGenParent615ID312.collider:AddChild(AutoGenParent615ID321.collider)
table.insert(colliders,AutoGenParent615ID321)
AutoGenParent615ID322 = {}
AutoGenParent615ID322.collider = OBBCollider.Create(-1)
AutoGenParent615ID322.collider:SetOffset(259.5,59.9262,249.5)
AutoGenParent615ID322.collider:SetZAxis(0.997785,0,0.066519)
AutoGenParent615ID322.collider:SetHalfLengths(0.3,5.1114,7.51665)
AutoGenParent615ID321.collider:AddChild(AutoGenParent615ID322.collider)
table.insert(colliders,AutoGenParent615ID322)
AutoGenParent615ID323 = {}
AutoGenParent615ID323.collider = OBBCollider.Create(-1)
AutoGenParent615ID323.collider:SetOffset(274,60.0376,251)
AutoGenParent615ID323.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent615ID323.collider:SetHalfLengths(0.3,5.33421,7.07107)
AutoGenParent615ID321.collider:AddChild(AutoGenParent615ID323.collider)
table.insert(colliders,AutoGenParent615ID323)
AutoGenParent615ID324 = {}
AutoGenParent615ID324.collider = OBBCollider.Create(-1)
AutoGenParent615ID324.collider:SetOffset(340.5,36.197,162)
AutoGenParent615ID324.collider:SetZAxis(-0.734803,0,-0.67828)
AutoGenParent615ID324.collider:SetHalfLengths(0.3,5.55702,8.8459)
AutoGenParent615ID321.collider:AddChild(AutoGenParent615ID324.collider)
table.insert(colliders,AutoGenParent615ID324)
AutoGenParent615ID325 = {}
AutoGenParent615ID325.collider = AABBCollider.Create(-1)
AutoGenParent615ID325.collider:SetOffset(0,0,0)
AutoGenParent615ID325.collider:SetMinPos(178.882,29.1917,111.26)
AutoGenParent615ID325.collider:SetMaxPos(384,67.2657,255.3)
AutoGenParent615ID244.collider:AddChild(AutoGenParent615ID325.collider)
table.insert(colliders,AutoGenParent615ID325)
AutoGenParent615ID326 = {}
AutoGenParent615ID326.collider = AABBCollider.Create(-1)
AutoGenParent615ID326.collider:SetOffset(0,0,0)
AutoGenParent615ID326.collider:SetMinPos(187.941,29.1917,111.26)
AutoGenParent615ID326.collider:SetMaxPos(330.667,65.8174,254.298)
AutoGenParent615ID325.collider:AddChild(AutoGenParent615ID326.collider)
table.insert(colliders,AutoGenParent615ID326)
AutoGenParent615ID327 = {}
AutoGenParent615ID327.collider = AABBCollider.Create(-1)
AutoGenParent615ID327.collider:SetOffset(0,0,0)
AutoGenParent615ID327.collider:SetMinPos(187.941,30.64,164.756)
AutoGenParent615ID327.collider:SetMaxPos(231.174,46.9901,206.294)
AutoGenParent615ID326.collider:AddChild(AutoGenParent615ID327.collider)
table.insert(colliders,AutoGenParent615ID327)
AutoGenParent615ID328 = {}
AutoGenParent615ID328.collider = OBBCollider.Create(-1)
AutoGenParent615ID328.collider:SetOffset(190.5,41.3216,205.5)
AutoGenParent615ID328.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent615ID328.collider:SetHalfLengths(0.3,5.66843,2.54951)
AutoGenParent615ID327.collider:AddChild(AutoGenParent615ID328.collider)
table.insert(colliders,AutoGenParent615ID328)
AutoGenParent615ID329 = {}
AutoGenParent615ID329.collider = OBBCollider.Create(-1)
AutoGenParent615ID329.collider:SetOffset(211,37.7567,184.5)
AutoGenParent615ID329.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent615ID329.collider:SetHalfLengths(0.3,5.77983,2.5)
AutoGenParent615ID327.collider:AddChild(AutoGenParent615ID329.collider)
table.insert(colliders,AutoGenParent615ID329)
AutoGenParent615ID330 = {}
AutoGenParent615ID330.collider = OBBCollider.Create(-1)
AutoGenParent615ID330.collider:SetOffset(227.5,35.64,167.5)
AutoGenParent615ID330.collider:SetZAxis(0.813733,0,-0.581238)
AutoGenParent615ID330.collider:SetHalfLengths(0.3,5,4.30116)
AutoGenParent615ID327.collider:AddChild(AutoGenParent615ID330.collider)
table.insert(colliders,AutoGenParent615ID330)
AutoGenParent615ID331 = {}
AutoGenParent615ID331.collider = AABBCollider.Create(-1)
AutoGenParent615ID331.collider:SetOffset(0,0,0)
AutoGenParent615ID331.collider:SetMinPos(222.967,29.1917,133.753)
AutoGenParent615ID331.collider:SetMaxPos(326.171,65.3718,254.298)
AutoGenParent615ID326.collider:AddChild(AutoGenParent615ID331.collider)
table.insert(colliders,AutoGenParent615ID331)
AutoGenParent615ID332 = {}
AutoGenParent615ID332.collider = OBBCollider.Create(-1)
AutoGenParent615ID332.collider:SetOffset(227.5,60.2604,253.5)
AutoGenParent615ID332.collider:SetZAxis(0.993884,0,-0.110432)
AutoGenParent615ID332.collider:SetHalfLengths(0.3,5.1114,4.52769)
AutoGenParent615ID331.collider:AddChild(AutoGenParent615ID332.collider)
table.insert(colliders,AutoGenParent615ID332)
AutoGenParent615ID333 = {}
AutoGenParent615ID333.collider = OBBCollider.Create(-1)
AutoGenParent615ID333.collider:SetOffset(259,57.8095,232)
AutoGenParent615ID333.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent615ID333.collider:SetHalfLengths(0.3,6.00264,8.06226)
AutoGenParent615ID331.collider:AddChild(AutoGenParent615ID333.collider)
table.insert(colliders,AutoGenParent615ID333)
AutoGenParent615ID334 = {}
AutoGenParent615ID334.collider = OBBCollider.Create(-1)
AutoGenParent615ID334.collider:SetOffset(319.5,34.7488,138.5)
AutoGenParent615ID334.collider:SetZAxis(-0.822192,0,-0.56921)
AutoGenParent615ID334.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent615ID331.collider:AddChild(AutoGenParent615ID334.collider)
table.insert(colliders,AutoGenParent615ID334)
AutoGenParent615ID335 = {}
AutoGenParent615ID335.collider = AABBCollider.Create(-1)
AutoGenParent615ID335.collider:SetOffset(0,0,0)
AutoGenParent615ID335.collider:SetMinPos(231.935,35.7613,111.26)
AutoGenParent615ID335.collider:SetMaxPos(330.667,65.8174,253.293)
AutoGenParent615ID326.collider:AddChild(AutoGenParent615ID335.collider)
table.insert(colliders,AutoGenParent615ID335)
AutoGenParent615ID336 = {}
AutoGenParent615ID336.collider = OBBCollider.Create(-1)
AutoGenParent615ID336.collider:SetOffset(236.5,60.149,252)
AutoGenParent615ID336.collider:SetZAxis(0.976187,0,-0.21693)
AutoGenParent615ID336.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent615ID335.collider:AddChild(AutoGenParent615ID336.collider)
table.insert(colliders,AutoGenParent615ID336)
AutoGenParent615ID337 = {}
AutoGenParent615ID337.collider = OBBCollider.Create(-1)
AutoGenParent615ID337.collider:SetOffset(246.5,60.3718,250)
AutoGenParent615ID337.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent615ID337.collider:SetHalfLengths(0.3,5.44562,5.59017)
AutoGenParent615ID335.collider:AddChild(AutoGenParent615ID337.collider)
table.insert(colliders,AutoGenParent615ID337)
AutoGenParent615ID338 = {}
AutoGenParent615ID338.collider = OBBCollider.Create(-1)
AutoGenParent615ID338.collider:SetOffset(328.75,41.0313,113.313)
AutoGenParent615ID338.collider:SetZAxis(0,0,1)
AutoGenParent615ID338.collider:SetHalfLengths(1.91668,5.26999,2.05246)
AutoGenParent615ID335.collider:AddChild(AutoGenParent615ID338.collider)
table.insert(colliders,AutoGenParent615ID338)
AutoGenParent615ID339 = {}
AutoGenParent615ID339.collider = AABBCollider.Create(-1)
AutoGenParent615ID339.collider:SetOffset(0,0,0)
AutoGenParent615ID339.collider:SetMinPos(178.882,33.6479,139.746)
AutoGenParent615ID339.collider:SetMaxPos(358.159,67.2657,252.276)
AutoGenParent615ID325.collider:AddChild(AutoGenParent615ID339.collider)
table.insert(colliders,AutoGenParent615ID339)
AutoGenParent615ID340 = {}
AutoGenParent615ID340.collider = AABBCollider.Create(-1)
AutoGenParent615ID340.collider:SetOffset(0,0,0)
AutoGenParent615ID340.collider:SetMinPos(178.882,38.6611,243.7)
AutoGenParent615ID340.collider:SetMaxPos(197,58.2419,252.276)
AutoGenParent615ID339.collider:AddChild(AutoGenParent615ID340.collider)
table.insert(colliders,AutoGenParent615ID340)
AutoGenParent615ID341 = {}
AutoGenParent615ID341.collider = OBBCollider.Create(-1)
AutoGenParent615ID341.collider:SetOffset(182.5,47.1147,250.5)
AutoGenParent615ID341.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent615ID341.collider:SetHalfLengths(0.3,8.45354,3.80789)
AutoGenParent615ID340.collider:AddChild(AutoGenParent615ID341.collider)
table.insert(colliders,AutoGenParent615ID341)
AutoGenParent615ID342 = {}
AutoGenParent615ID342.collider = OBBCollider.Create(-1)
AutoGenParent615ID342.collider:SetOffset(189,50.5682,246.5)
AutoGenParent615ID342.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent615ID342.collider:SetHalfLengths(0.3,5.89124,3.90512)
AutoGenParent615ID340.collider:AddChild(AutoGenParent615ID342.collider)
table.insert(colliders,AutoGenParent615ID342)
AutoGenParent615ID343 = {}
AutoGenParent615ID343.collider = OBBCollider.Create(-1)
AutoGenParent615ID343.collider:SetOffset(194.5,51.4594,244)
AutoGenParent615ID343.collider:SetZAxis(1,0,0)
AutoGenParent615ID343.collider:SetHalfLengths(0.3,6.78247,2.5)
AutoGenParent615ID340.collider:AddChild(AutoGenParent615ID343.collider)
table.insert(colliders,AutoGenParent615ID343)
AutoGenParent615ID344 = {}
AutoGenParent615ID344.collider = AABBCollider.Create(-1)
AutoGenParent615ID344.collider:SetOffset(0,0,0)
AutoGenParent615ID344.collider:SetMinPos(214.846,51.4726,231.732)
AutoGenParent615ID344.collider:SetMaxPos(244.134,64.7034,251.257)
AutoGenParent615ID339.collider:AddChild(AutoGenParent615ID344.collider)
table.insert(colliders,AutoGenParent615ID344)
AutoGenParent615ID345 = {}
AutoGenParent615ID345.collider = OBBCollider.Create(-1)
AutoGenParent615ID345.collider:SetOffset(217.5,58.9235,249.5)
AutoGenParent615ID345.collider:SetZAxis(0.857493,0,0.514496)
AutoGenParent615ID345.collider:SetHalfLengths(0.3,5.77983,2.91548)
AutoGenParent615ID344.collider:AddChild(AutoGenParent615ID345.collider)
table.insert(colliders,AutoGenParent615ID345)
AutoGenParent615ID346 = {}
AutoGenParent615ID346.collider = OBBCollider.Create(-1)
AutoGenParent615ID346.collider:SetOffset(234.5,57.1411,234.5)
AutoGenParent615ID346.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent615ID346.collider:SetHalfLengths(0.3,5.66843,3.53553)
AutoGenParent615ID344.collider:AddChild(AutoGenParent615ID346.collider)
table.insert(colliders,AutoGenParent615ID346)
AutoGenParent615ID347 = {}
AutoGenParent615ID347.collider = OBBCollider.Create(-1)
AutoGenParent615ID347.collider:SetOffset(241,57.8095,233.5)
AutoGenParent615ID347.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent615ID347.collider:SetHalfLengths(0.3,5.22281,3.3541)
AutoGenParent615ID344.collider:AddChild(AutoGenParent615ID347.collider)
table.insert(colliders,AutoGenParent615ID347)
AutoGenParent615ID348 = {}
AutoGenParent615ID348.collider = AABBCollider.Create(-1)
AutoGenParent615ID348.collider:SetOffset(0,0,0)
AutoGenParent615ID348.collider:SetMinPos(286.927,33.6479,139.746)
AutoGenParent615ID348.collider:SetMaxPos(358.159,67.2657,234.291)
AutoGenParent615ID339.collider:AddChild(AutoGenParent615ID348.collider)
table.insert(colliders,AutoGenParent615ID348)
AutoGenParent615ID349 = {}
AutoGenParent615ID349.collider = OBBCollider.Create(-1)
AutoGenParent615ID349.collider:SetOffset(354,38.8707,142.5)
AutoGenParent615ID349.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent615ID349.collider:SetHalfLengths(0.3,5.22281,4.71699)
AutoGenParent615ID348.collider:AddChild(AutoGenParent615ID349.collider)
table.insert(colliders,AutoGenParent615ID349)
AutoGenParent615ID350 = {}
AutoGenParent615ID350.collider = OBBCollider.Create(-1)
AutoGenParent615ID350.collider:SetOffset(295,56.027,232)
AutoGenParent615ID350.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent615ID350.collider:SetHalfLengths(0.3,11.2386,8.24621)
AutoGenParent615ID348.collider:AddChild(AutoGenParent615ID350.collider)
table.insert(colliders,AutoGenParent615ID350)
AutoGenParent615ID351 = {}
AutoGenParent615ID351.collider = OBBCollider.Create(-1)
AutoGenParent615ID351.collider:SetOffset(339.5,40.3125,156.5)
AutoGenParent615ID351.collider:SetZAxis(0,0,1)
AutoGenParent615ID351.collider:SetHalfLengths(2.03198,5.81552,1.96803)
AutoGenParent615ID348.collider:AddChild(AutoGenParent615ID351.collider)
table.insert(colliders,AutoGenParent615ID351)
AutoGenParent615ID352 = {}
AutoGenParent615ID352.collider = AABBCollider.Create(-1)
AutoGenParent615ID352.collider:SetOffset(0,0,0)
AutoGenParent615ID352.collider:SetMinPos(293.927,31.0856,144.706)
AutoGenParent615ID352.collider:SetMaxPos(384,67.0429,255.3)
AutoGenParent615ID325.collider:AddChild(AutoGenParent615ID352.collider)
table.insert(colliders,AutoGenParent615ID352)
AutoGenParent615ID353 = {}
AutoGenParent615ID353.collider = AABBCollider.Create(-1)
AutoGenParent615ID353.collider:SetOffset(0,0,0)
AutoGenParent615ID353.collider:SetMinPos(293.927,31.197,144.706)
AutoGenParent615ID353.collider:SetMaxPos(368.059,67.0429,253.291)
AutoGenParent615ID352.collider:AddChild(AutoGenParent615ID353.collider)
table.insert(colliders,AutoGenParent615ID353)
AutoGenParent615ID354 = {}
AutoGenParent615ID354.collider = OBBCollider.Create(-1)
AutoGenParent615ID354.collider:SetOffset(363,38.6479,146)
AutoGenParent615ID354.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent615ID354.collider:SetHalfLengths(0.3,5.33421,5.09902)
AutoGenParent615ID353.collider:AddChild(AutoGenParent615ID354.collider)
table.insert(colliders,AutoGenParent615ID354)
AutoGenParent615ID355 = {}
AutoGenParent615ID355.collider = OBBCollider.Create(-1)
AutoGenParent615ID355.collider:SetOffset(296,58.5893,252.5)
AutoGenParent615ID355.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent615ID355.collider:SetHalfLengths(0.3,8.45354,2.06155)
AutoGenParent615ID353.collider:AddChild(AutoGenParent615ID355.collider)
table.insert(colliders,AutoGenParent615ID355)
AutoGenParent615ID356 = {}
AutoGenParent615ID356.collider = OBBCollider.Create(-1)
AutoGenParent615ID356.collider:SetOffset(350,37.0883,173)
AutoGenParent615ID356.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent615ID356.collider:SetHalfLengths(0.3,5.89124,5.83095)
AutoGenParent615ID353.collider:AddChild(AutoGenParent615ID356.collider)
table.insert(colliders,AutoGenParent615ID356)
AutoGenParent615ID357 = {}
AutoGenParent615ID357.collider = AABBCollider.Create(-1)
AutoGenParent615ID357.collider:SetOffset(0,0,0)
AutoGenParent615ID357.collider:SetMinPos(300,32.1997,146.7)
AutoGenParent615ID357.collider:SetMaxPos(376,64.2577,255.3)
AutoGenParent615ID352.collider:AddChild(AutoGenParent615ID357.collider)
table.insert(colliders,AutoGenParent615ID357)
AutoGenParent615ID358 = {}
AutoGenParent615ID358.collider = OBBCollider.Create(-1)
AutoGenParent615ID358.collider:SetOffset(372,38.3137,147)
AutoGenParent615ID358.collider:SetZAxis(1,0,0)
AutoGenParent615ID358.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent615ID357.collider:AddChild(AutoGenParent615ID358.collider)
table.insert(colliders,AutoGenParent615ID358)
AutoGenParent615ID359 = {}
AutoGenParent615ID359.collider = OBBCollider.Create(-1)
AutoGenParent615ID359.collider:SetOffset(307,55.2472,255)
AutoGenParent615ID359.collider:SetZAxis(1,0,0)
AutoGenParent615ID359.collider:SetHalfLengths(0.3,9.01056,7)
AutoGenParent615ID357.collider:AddChild(AutoGenParent615ID359.collider)
table.insert(colliders,AutoGenParent615ID359)
AutoGenParent615ID360 = {}
AutoGenParent615ID360.collider = OBBCollider.Create(-1)
AutoGenParent615ID360.collider:SetOffset(324.5,50.1226,244)
AutoGenParent615ID360.collider:SetZAxis(0.985212,0,-0.171341)
AutoGenParent615ID360.collider:SetHalfLengths(0.3,6.22545,11.6726)
AutoGenParent615ID357.collider:AddChild(AutoGenParent615ID360.collider)
table.insert(colliders,AutoGenParent615ID360)
AutoGenParent615ID361 = {}
AutoGenParent615ID361.collider = AABBCollider.Create(-1)
AutoGenParent615ID361.collider:SetOffset(0,0,0)
AutoGenParent615ID361.collider:SetMinPos(313.7,31.0856,146.7)
AutoGenParent615ID361.collider:SetMaxPos(384,56.9051,255)
AutoGenParent615ID352.collider:AddChild(AutoGenParent615ID361.collider)
table.insert(colliders,AutoGenParent615ID361)
AutoGenParent615ID362 = {}
AutoGenParent615ID362.collider = OBBCollider.Create(-1)
AutoGenParent615ID362.collider:SetOffset(380,37.1997,147)
AutoGenParent615ID362.collider:SetZAxis(1,0,0)
AutoGenParent615ID362.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent615ID361.collider:AddChild(AutoGenParent615ID362.collider)
table.insert(colliders,AutoGenParent615ID362)
AutoGenParent615ID363 = {}
AutoGenParent615ID363.collider = OBBCollider.Create(-1)
AutoGenParent615ID363.collider:SetOffset(314,51.2366,252.5)
AutoGenParent615ID363.collider:SetZAxis(0,0,-1)
AutoGenParent615ID363.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent615ID361.collider:AddChild(AutoGenParent615ID363.collider)
table.insert(colliders,AutoGenParent615ID363)
AutoGenParent615ID364 = {}
AutoGenParent615ID364.collider = OBBCollider.Create(-1)
AutoGenParent615ID364.collider:SetOffset(377.5,39.9848,162.5)
AutoGenParent615ID364.collider:SetZAxis(0.485643,0,-0.874157)
AutoGenParent615ID364.collider:SetHalfLengths(0.3,7.89651,5.14782)
AutoGenParent615ID361.collider:AddChild(AutoGenParent615ID364.collider)
table.insert(colliders,AutoGenParent615ID364)
AutoGenParent615ID365 = {}
AutoGenParent615ID365.collider = AABBCollider.Create(-1)
AutoGenParent615ID365.collider:SetOffset(0,0,0)
AutoGenParent615ID365.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID365.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent615ID.collider:AddChild(AutoGenParent615ID365.collider)
table.insert(colliders,AutoGenParent615ID365)
AutoGenParent615ID366 = {}
AutoGenParent615ID366.collider = AABBCollider.Create(-1)
AutoGenParent615ID366.collider:SetOffset(0,0,0)
AutoGenParent615ID366.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID366.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent615ID365.collider:AddChild(AutoGenParent615ID366.collider)
table.insert(colliders,AutoGenParent615ID366)
AutoGenParent615ID367 = {}
AutoGenParent615ID367.collider = AABBCollider.Create(-1)
AutoGenParent615ID367.collider:SetOffset(0,0,0)
AutoGenParent615ID367.collider:SetMinPos(281,30.1951,134.729)
AutoGenParent615ID367.collider:SetMaxPos(422.128,65.8174,255.212)
AutoGenParent615ID366.collider:AddChild(AutoGenParent615ID367.collider)
table.insert(colliders,AutoGenParent615ID367)
AutoGenParent615ID368 = {}
AutoGenParent615ID368.collider = AABBCollider.Create(-1)
AutoGenParent615ID368.collider:SetOffset(0,0,0)
AutoGenParent615ID368.collider:SetMinPos(281,32.0883,177.921)
AutoGenParent615ID368.collider:SetMaxPos(353.289,65.8174,255.212)
AutoGenParent615ID367.collider:AddChild(AutoGenParent615ID368.collider)
table.insert(colliders,AutoGenParent615ID368)
AutoGenParent615ID369 = {}
AutoGenParent615ID369.collider = AABBCollider.Create(-1)
AutoGenParent615ID369.collider:SetOffset(0,0,0)
AutoGenParent615ID369.collider:SetMinPos(281,42.5603,222.725)
AutoGenParent615ID369.collider:SetMaxPos(332.12,65.8174,252.3)
AutoGenParent615ID368.collider:AddChild(AutoGenParent615ID369.collider)
table.insert(colliders,AutoGenParent615ID369)
AutoGenParent615ID370 = {}
AutoGenParent615ID370.collider = OBBCollider.Create(-1)
AutoGenParent615ID370.collider:SetOffset(287.5,59.7034,252)
AutoGenParent615ID370.collider:SetZAxis(1,0,0)
AutoGenParent615ID370.collider:SetHalfLengths(0.3,6.11405,6.5)
AutoGenParent615ID369.collider:AddChild(AutoGenParent615ID370.collider)
table.insert(colliders,AutoGenParent615ID370)
AutoGenParent615ID371 = {}
AutoGenParent615ID371.collider = OBBCollider.Create(-1)
AutoGenParent615ID371.collider:SetOffset(306,49.7884,231.5)
AutoGenParent615ID371.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent615ID371.collider:SetHalfLengths(0.3,6.11404,3.3541)
AutoGenParent615ID369.collider:AddChild(AutoGenParent615ID371.collider)
table.insert(colliders,AutoGenParent615ID371)
AutoGenParent615ID372 = {}
AutoGenParent615ID372.collider = OBBCollider.Create(-1)
AutoGenParent615ID372.collider:SetOffset(320.5,48.1173,228)
AutoGenParent615ID372.collider:SetZAxis(-0.91707,0,0.398726)
AutoGenParent615ID372.collider:SetHalfLengths(0.3,5.55703,12.5399)
AutoGenParent615ID369.collider:AddChild(AutoGenParent615ID372.collider)
table.insert(colliders,AutoGenParent615ID372)
AutoGenParent615ID373 = {}
AutoGenParent615ID373.collider = AABBCollider.Create(-1)
AutoGenParent615ID373.collider:SetOffset(0,0,0)
AutoGenParent615ID373.collider:SetMinPos(297.788,32.0883,177.921)
AutoGenParent615ID373.collider:SetMaxPos(353.289,60.2472,255.212)
AutoGenParent615ID368.collider:AddChild(AutoGenParent615ID373.collider)
table.insert(colliders,AutoGenParent615ID373)
AutoGenParent615ID374 = {}
AutoGenParent615ID374.collider = OBBCollider.Create(-1)
AutoGenParent615ID374.collider:SetOffset(299,55.1358,254)
AutoGenParent615ID374.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID374.collider:SetHalfLengths(0.3,5.1114,1.41421)
AutoGenParent615ID373.collider:AddChild(AutoGenParent615ID374.collider)
table.insert(colliders,AutoGenParent615ID374)
AutoGenParent615ID375 = {}
AutoGenParent615ID375.collider = OBBCollider.Create(-1)
AutoGenParent615ID375.collider:SetOffset(339,48.1173,215.5)
AutoGenParent615ID375.collider:SetZAxis(0.682318,0,-0.731055)
AutoGenParent615ID375.collider:SetHalfLengths(0.3,12.0185,10.2591)
AutoGenParent615ID373.collider:AddChild(AutoGenParent615ID375.collider)
table.insert(colliders,AutoGenParent615ID375)
AutoGenParent615ID376 = {}
AutoGenParent615ID376.collider = OBBCollider.Create(-1)
AutoGenParent615ID376.collider:SetOffset(351.5,38.3137,183.5)
AutoGenParent615ID376.collider:SetZAxis(0.263117,0,-0.964764)
AutoGenParent615ID376.collider:SetHalfLengths(0.3,6.22545,5.70088)
AutoGenParent615ID373.collider:AddChild(AutoGenParent615ID376.collider)
table.insert(colliders,AutoGenParent615ID376)
AutoGenParent615ID377 = {}
AutoGenParent615ID377.collider = AABBCollider.Create(-1)
AutoGenParent615ID377.collider:SetOffset(0,0,0)
AutoGenParent615ID377.collider:SetMinPos(312.709,33.3137,189)
AutoGenParent615ID377.collider:SetMaxPos(350.3,56.0138,250.073)
AutoGenParent615ID368.collider:AddChild(AutoGenParent615ID377.collider)
table.insert(colliders,AutoGenParent615ID377)
AutoGenParent615ID378 = {}
AutoGenParent615ID378.collider = OBBCollider.Create(-1)
AutoGenParent615ID378.collider:SetOffset(313.5,50.5682,248)
AutoGenParent615ID378.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent615ID378.collider:SetHalfLengths(0.3,5.44562,2.06155)
AutoGenParent615ID377.collider:AddChild(AutoGenParent615ID378.collider)
table.insert(colliders,AutoGenParent615ID378)
AutoGenParent615ID379 = {}
AutoGenParent615ID379.collider = OBBCollider.Create(-1)
AutoGenParent615ID379.collider:SetOffset(348,41.0988,203.5)
AutoGenParent615ID379.collider:SetZAxis(0.406139,0,-0.913812)
AutoGenParent615ID379.collider:SetHalfLengths(0.3,6.67107,4.92443)
AutoGenParent615ID377.collider:AddChild(AutoGenParent615ID379.collider)
table.insert(colliders,AutoGenParent615ID379)
AutoGenParent615ID380 = {}
AutoGenParent615ID380.collider = OBBCollider.Create(-1)
AutoGenParent615ID380.collider:SetOffset(350,39.4277,194)
AutoGenParent615ID380.collider:SetZAxis(0,0,-1)
AutoGenParent615ID380.collider:SetHalfLengths(0.3,6.11404,5)
AutoGenParent615ID377.collider:AddChild(AutoGenParent615ID380.collider)
table.insert(colliders,AutoGenParent615ID380)
AutoGenParent615ID381 = {}
AutoGenParent615ID381.collider = AABBCollider.Create(-1)
AutoGenParent615ID381.collider:SetOffset(0,0,0)
AutoGenParent615ID381.collider:SetMinPos(335.753,30.3536,134.729)
AutoGenParent615ID381.collider:SetMaxPos(422.128,64.592,255.171)
AutoGenParent615ID367.collider:AddChild(AutoGenParent615ID381.collider)
table.insert(colliders,AutoGenParent615ID381)
AutoGenParent615ID382 = {}
AutoGenParent615ID382.collider = AABBCollider.Create(-1)
AutoGenParent615ID382.collider:SetOffset(0,0,0)
AutoGenParent615ID382.collider:SetMinPos(335.753,31.3044,156.7)
AutoGenParent615ID382.collider:SetMaxPos(393,64.592,255.171)
AutoGenParent615ID381.collider:AddChild(AutoGenParent615ID382.collider)
table.insert(colliders,AutoGenParent615ID382)
AutoGenParent615ID383 = {}
AutoGenParent615ID383.collider = OBBCollider.Create(-1)
AutoGenParent615ID383.collider:SetOffset(340.5,55.47,248.5)
AutoGenParent615ID383.collider:SetZAxis(-0.56921,0,-0.822192)
AutoGenParent615ID383.collider:SetHalfLengths(0.3,9.12196,7.90569)
AutoGenParent615ID382.collider:AddChild(AutoGenParent615ID383.collider)
table.insert(colliders,AutoGenParent615ID383)
AutoGenParent615ID384 = {}
AutoGenParent615ID384.collider = OBBCollider.Create(-1)
AutoGenParent615ID384.collider:SetOffset(363,53.5761,226.5)
AutoGenParent615ID384.collider:SetZAxis(0.50702,0,-0.861934)
AutoGenParent615ID384.collider:SetHalfLengths(0.3,9.67899,9.86154)
AutoGenParent615ID382.collider:AddChild(AutoGenParent615ID384.collider)
table.insert(colliders,AutoGenParent615ID384)
AutoGenParent615ID385 = {}
AutoGenParent615ID385.collider = OBBCollider.Create(-1)
AutoGenParent615ID385.collider:SetOffset(388.5,36.4629,157)
AutoGenParent615ID385.collider:SetZAxis(1,0,0)
AutoGenParent615ID385.collider:SetHalfLengths(0.3,5.15847,4.5)
AutoGenParent615ID382.collider:AddChild(AutoGenParent615ID385.collider)
table.insert(colliders,AutoGenParent615ID385)
AutoGenParent615ID386 = {}
AutoGenParent615ID386.collider = AABBCollider.Create(-1)
AutoGenParent615ID386.collider:SetOffset(0,0,0)
AutoGenParent615ID386.collider:SetMinPos(345.384,31.146,156.706)
AutoGenParent615ID386.collider:SetMaxPos(403.059,61.4291,242.341)
AutoGenParent615ID381.collider:AddChild(AutoGenParent615ID386.collider)
table.insert(colliders,AutoGenParent615ID386)
AutoGenParent615ID387 = {}
AutoGenParent615ID387.collider = OBBCollider.Create(-1)
AutoGenParent615ID387.collider:SetOffset(398,36.3044,158)
AutoGenParent615ID387.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent615ID387.collider:SetHalfLengths(0.3,5.15847,5.09902)
AutoGenParent615ID386.collider:AddChild(AutoGenParent615ID387.collider)
table.insert(colliders,AutoGenParent615ID387)
AutoGenParent615ID388 = {}
AutoGenParent615ID388.collider = OBBCollider.Create(-1)
AutoGenParent615ID388.collider:SetOffset(365.671,47.676,214.229)
AutoGenParent615ID388.collider:SetZAxis(0,0,1)
AutoGenParent615ID388.collider:SetHalfLengths(1.85948,4.92038,1.9785)
AutoGenParent615ID386.collider:AddChild(AutoGenParent615ID388.collider)
table.insert(colliders,AutoGenParent615ID388)
AutoGenParent615ID389 = {}
AutoGenParent615ID389.collider = OBBCollider.Create(-1)
AutoGenParent615ID389.collider:SetOffset(347.526,56,240.375)
AutoGenParent615ID389.collider:SetZAxis(0,0,1)
AutoGenParent615ID389.collider:SetHalfLengths(2.14269,5.42911,1.96576)
AutoGenParent615ID386.collider:AddChild(AutoGenParent615ID389.collider)
table.insert(colliders,AutoGenParent615ID389)
AutoGenParent615ID390 = {}
AutoGenParent615ID390.collider = AABBCollider.Create(-1)
AutoGenParent615ID390.collider:SetOffset(0,0,0)
AutoGenParent615ID390.collider:SetMinPos(344.715,30.3536,134.729)
AutoGenParent615ID390.collider:SetMaxPos(422.128,62.0297,255.095)
AutoGenParent615ID381.collider:AddChild(AutoGenParent615ID390.collider)
table.insert(colliders,AutoGenParent615ID390)
AutoGenParent615ID391 = {}
AutoGenParent615ID391.collider = OBBCollider.Create(-1)
AutoGenParent615ID391.collider:SetOffset(346.5,55.47,250.5)
AutoGenParent615ID391.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent615ID391.collider:SetHalfLengths(0.3,6.55966,4.74342)
AutoGenParent615ID390.collider:AddChild(AutoGenParent615ID391.collider)
table.insert(colliders,AutoGenParent615ID391)
AutoGenParent615ID392 = {}
AutoGenParent615ID392.collider = OBBCollider.Create(-1)
AutoGenParent615ID392.collider:SetOffset(412.5,35.5121,139.5)
AutoGenParent615ID392.collider:SetZAxis(-0.903738,0,0.428086)
AutoGenParent615ID392.collider:SetHalfLengths(0.3,5.15847,10.5119)
AutoGenParent615ID390.collider:AddChild(AutoGenParent615ID392.collider)
table.insert(colliders,AutoGenParent615ID392)
AutoGenParent615ID393 = {}
AutoGenParent615ID393.collider = OBBCollider.Create(-1)
AutoGenParent615ID393.collider:SetOffset(401.5,35.3536,144.5)
AutoGenParent615ID393.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent615ID393.collider:SetHalfLengths(0.3,5,1.58114)
AutoGenParent615ID390.collider:AddChild(AutoGenParent615ID393.collider)
table.insert(colliders,AutoGenParent615ID393)
AutoGenParent615ID394 = {}
AutoGenParent615ID394.collider = AABBCollider.Create(-1)
AutoGenParent615ID394.collider:SetOffset(0,0,0)
AutoGenParent615ID394.collider:SetMinPos(347.778,30.1951,144.7)
AutoGenParent615ID394.collider:SetMaxPos(400,65.4832,246.202)
AutoGenParent615ID367.collider:AddChild(AutoGenParent615ID394.collider)
table.insert(colliders,AutoGenParent615ID394)
AutoGenParent615ID395 = {}
AutoGenParent615ID395.collider = AABBCollider.Create(-1)
AutoGenParent615ID395.collider:SetOffset(0,0,0)
AutoGenParent615ID395.collider:SetMinPos(372.712,30.1951,144.7)
AutoGenParent615ID395.collider:SetMaxPos(400,44.9848,174.082)
AutoGenParent615ID394.collider:AddChild(AutoGenParent615ID395.collider)
table.insert(colliders,AutoGenParent615ID395)
AutoGenParent615ID396 = {}
AutoGenParent615ID396.collider = OBBCollider.Create(-1)
AutoGenParent615ID396.collider:SetOffset(374,39.4277,170.5)
AutoGenParent615ID396.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent615ID396.collider:SetHalfLengths(0.3,5.55702,3.64005)
AutoGenParent615ID395.collider:AddChild(AutoGenParent615ID396.collider)
table.insert(colliders,AutoGenParent615ID396)
AutoGenParent615ID397 = {}
AutoGenParent615ID397.collider = OBBCollider.Create(-1)
AutoGenParent615ID397.collider:SetOffset(392,35.3536,145)
AutoGenParent615ID397.collider:SetZAxis(-1,0,0)
AutoGenParent615ID397.collider:SetHalfLengths(0.3,5.15847,8)
AutoGenParent615ID395.collider:AddChild(AutoGenParent615ID397.collider)
table.insert(colliders,AutoGenParent615ID397)
AutoGenParent615ID398 = {}
AutoGenParent615ID398.collider = OBBCollider.Create(-1)
AutoGenParent615ID398.collider:SetOffset(384,35.1951,146)
AutoGenParent615ID398.collider:SetZAxis(0,0,1)
AutoGenParent615ID398.collider:SetHalfLengths(0.3,5,1)
AutoGenParent615ID395.collider:AddChild(AutoGenParent615ID398.collider)
table.insert(colliders,AutoGenParent615ID398)
AutoGenParent615ID399 = {}
AutoGenParent615ID399.collider = AABBCollider.Create(-1)
AutoGenParent615ID399.collider:SetOffset(0,0,0)
AutoGenParent615ID399.collider:SetMinPos(368.199,31.9769,156.709)
AutoGenParent615ID399.collider:SetMaxPos(384.073,58.4647,204.01)
AutoGenParent615ID394.collider:AddChild(AutoGenParent615ID399.collider)
table.insert(colliders,AutoGenParent615ID399)
AutoGenParent615ID400 = {}
AutoGenParent615ID400.collider = OBBCollider.Create(-1)
AutoGenParent615ID400.collider:SetOffset(373.5,46.4462,189)
AutoGenParent615ID400.collider:SetZAxis(-0.0333148,0,-0.999445)
AutoGenParent615ID400.collider:SetHalfLengths(0.3,12.0185,15.0083)
AutoGenParent615ID399.collider:AddChild(AutoGenParent615ID400.collider)
table.insert(colliders,AutoGenParent615ID400)
AutoGenParent615ID401 = {}
AutoGenParent615ID401.collider = OBBCollider.Create(-1)
AutoGenParent615ID401.collider:SetOffset(382,37.0883,157.5)
AutoGenParent615ID401.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent615ID401.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent615ID399.collider:AddChild(AutoGenParent615ID401.collider)
table.insert(colliders,AutoGenParent615ID401)
AutoGenParent615ID402 = {}
AutoGenParent615ID402.collider = OBBCollider.Create(-1)
AutoGenParent615ID402.collider:SetOffset(370.079,42.4331,185.415)
AutoGenParent615ID402.collider:SetZAxis(0,0,1)
AutoGenParent615ID402.collider:SetHalfLengths(1.88068,4.83337,1.99714)
AutoGenParent615ID399.collider:AddChild(AutoGenParent615ID402.collider)
table.insert(colliders,AutoGenParent615ID402)
AutoGenParent615ID403 = {}
AutoGenParent615ID403.collider = AABBCollider.Create(-1)
AutoGenParent615ID403.collider:SetOffset(0,0,0)
AutoGenParent615ID403.collider:SetMinPos(347.778,41.4462,203.882)
AutoGenParent615ID403.collider:SetMaxPos(374.276,65.4832,246.202)
AutoGenParent615ID394.collider:AddChild(AutoGenParent615ID403.collider)
table.insert(colliders,AutoGenParent615ID403)
AutoGenParent615ID404 = {}
AutoGenParent615ID404.collider = OBBCollider.Create(-1)
AutoGenParent615ID404.collider:SetOffset(353,57.0297,240.5)
AutoGenParent615ID404.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent615ID404.collider:SetHalfLengths(0.3,8.45354,7.43303)
AutoGenParent615ID403.collider:AddChild(AutoGenParent615ID404.collider)
table.insert(colliders,AutoGenParent615ID404)
AutoGenParent615ID405 = {}
AutoGenParent615ID405.collider = OBBCollider.Create(-1)
AutoGenParent615ID405.collider:SetOffset(371,48.8971,211)
AutoGenParent615ID405.collider:SetZAxis(0.393919,0,-0.919145)
AutoGenParent615ID405.collider:SetHalfLengths(0.3,7.4509,7.61577)
AutoGenParent615ID403.collider:AddChild(AutoGenParent615ID405.collider)
table.insert(colliders,AutoGenParent615ID405)
AutoGenParent615ID406 = {}
AutoGenParent615ID406.collider = OBBCollider.Create(-1)
AutoGenParent615ID406.collider:SetOffset(354.858,50.9688,226.742)
AutoGenParent615ID406.collider:SetZAxis(0,0,1)
AutoGenParent615ID406.collider:SetHalfLengths(1.75,4,1.75)
AutoGenParent615ID403.collider:AddChild(AutoGenParent615ID406.collider)
table.insert(colliders,AutoGenParent615ID406)
AutoGenParent615ID407 = {}
AutoGenParent615ID407.collider = AABBCollider.Create(-1)
AutoGenParent615ID407.collider:SetOffset(0,0,0)
AutoGenParent615ID407.collider:SetMinPos(402.788,23.9934,127.711)
AutoGenParent615ID407.collider:SetMaxPos(512.3,68.8781,350.111)
AutoGenParent615ID366.collider:AddChild(AutoGenParent615ID407.collider)
table.insert(colliders,AutoGenParent615ID407)
AutoGenParent615ID408 = {}
AutoGenParent615ID408.collider = AABBCollider.Create(-1)
AutoGenParent615ID408.collider:SetOffset(0,0,0)
AutoGenParent615ID408.collider:SetMinPos(402.788,30.5121,127.741)
AutoGenParent615ID408.collider:SetMaxPos(475.148,55.7251,239.073)
AutoGenParent615ID407.collider:AddChild(AutoGenParent615ID408.collider)
table.insert(colliders,AutoGenParent615ID408)
AutoGenParent615ID409 = {}
AutoGenParent615ID409.collider = AABBCollider.Create(-1)
AutoGenParent615ID409.collider:SetOffset(0,0,0)
AutoGenParent615ID409.collider:SetMinPos(402.788,30.9875,158.788)
AutoGenParent615ID409.collider:SetMaxPos(411.268,41.7798,172.134)
AutoGenParent615ID408.collider:AddChild(AutoGenParent615ID409.collider)
table.insert(colliders,AutoGenParent615ID409)
AutoGenParent615ID410 = {}
AutoGenParent615ID410.collider = OBBCollider.Create(-1)
AutoGenParent615ID410.collider:SetOffset(404,36.146,160)
AutoGenParent615ID410.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent615ID410.collider:SetHalfLengths(0.3,5.15847,1.41421)
AutoGenParent615ID409.collider:AddChild(AutoGenParent615ID410.collider)
table.insert(colliders,AutoGenParent615ID410)
AutoGenParent615ID411 = {}
AutoGenParent615ID411.collider = OBBCollider.Create(-1)
AutoGenParent615ID411.collider:SetOffset(406,36.3044,162.5)
AutoGenParent615ID411.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent615ID411.collider:SetHalfLengths(0.3,5.15847,1.80278)
AutoGenParent615ID409.collider:AddChild(AutoGenParent615ID411.collider)
table.insert(colliders,AutoGenParent615ID411)
AutoGenParent615ID412 = {}
AutoGenParent615ID412.collider = OBBCollider.Create(-1)
AutoGenParent615ID412.collider:SetOffset(409,36.4629,168)
AutoGenParent615ID412.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent615ID412.collider:SetHalfLengths(0.3,5.31694,4.47214)
AutoGenParent615ID409.collider:AddChild(AutoGenParent615ID412.collider)
table.insert(colliders,AutoGenParent615ID412)
AutoGenParent615ID413 = {}
AutoGenParent615ID413.collider = AABBCollider.Create(-1)
AutoGenParent615ID413.collider:SetOffset(0,0,0)
AutoGenParent615ID413.collider:SetMinPos(410.719,30.5121,127.741)
AutoGenParent615ID413.collider:SetMaxPos(434.151,43.2061,190.086)
AutoGenParent615ID408.collider:AddChild(AutoGenParent615ID413.collider)
table.insert(colliders,AutoGenParent615ID413)
AutoGenParent615ID414 = {}
AutoGenParent615ID414.collider = OBBCollider.Create(-1)
AutoGenParent615ID414.collider:SetOffset(412.5,36.7798,176)
AutoGenParent615ID414.collider:SetZAxis(0.351123,0,0.936329)
AutoGenParent615ID414.collider:SetHalfLengths(0.3,5.79235,4.272)
AutoGenParent615ID413.collider:AddChild(AutoGenParent615ID414.collider)
table.insert(colliders,AutoGenParent615ID414)
AutoGenParent615ID415 = {}
AutoGenParent615ID415.collider = OBBCollider.Create(-1)
AutoGenParent615ID415.collider:SetOffset(415.5,37.5722,185)
AutoGenParent615ID415.collider:SetZAxis(0.287348,0,0.957826)
AutoGenParent615ID415.collider:SetHalfLengths(0.3,5.63388,5.22015)
AutoGenParent615ID413.collider:AddChild(AutoGenParent615ID415.collider)
table.insert(colliders,AutoGenParent615ID415)
AutoGenParent615ID416 = {}
AutoGenParent615ID416.collider = OBBCollider.Create(-1)
AutoGenParent615ID416.collider:SetOffset(428,35.829,131.5)
AutoGenParent615ID416.collider:SetZAxis(-0.863779,0,0.503871)
AutoGenParent615ID416.collider:SetHalfLengths(0.3,5.31694,6.94622)
AutoGenParent615ID413.collider:AddChild(AutoGenParent615ID416.collider)
table.insert(colliders,AutoGenParent615ID416)
AutoGenParent615ID417 = {}
AutoGenParent615ID417.collider = AABBCollider.Create(-1)
AutoGenParent615ID417.collider:SetOffset(0,0,0)
AutoGenParent615ID417.collider:SetMinPos(414.709,31.7798,132.739)
AutoGenParent615ID417.collider:SetMaxPos(475.148,55.7251,239.073)
AutoGenParent615ID408.collider:AddChild(AutoGenParent615ID417.collider)
table.insert(colliders,AutoGenParent615ID417)
AutoGenParent615ID418 = {}
AutoGenParent615ID418.collider = OBBCollider.Create(-1)
AutoGenParent615ID418.collider:SetOffset(418.5,44.5448,223.5)
AutoGenParent615ID418.collider:SetZAxis(-0.196116,0,0.980581)
AutoGenParent615ID418.collider:SetHalfLengths(0.3,8.80326,7.64853)
AutoGenParent615ID417.collider:AddChild(AutoGenParent615ID418.collider)
table.insert(colliders,AutoGenParent615ID418)
AutoGenParent615ID419 = {}
AutoGenParent615ID419.collider = OBBCollider.Create(-1)
AutoGenParent615ID419.collider:SetOffset(416,48.3481,235)
AutoGenParent615ID419.collider:SetZAxis(-0.242536,0,0.970143)
AutoGenParent615ID419.collider:SetHalfLengths(0.3,7.37704,4.12311)
AutoGenParent615ID417.collider:AddChild(AutoGenParent615ID419.collider)
table.insert(colliders,AutoGenParent615ID419)
AutoGenParent615ID420 = {}
AutoGenParent615ID420.collider = OBBCollider.Create(-1)
AutoGenParent615ID420.collider:SetOffset(463.5,38.2061,139.5)
AutoGenParent615ID420.collider:SetZAxis(-0.870563,0,-0.492057)
AutoGenParent615ID420.collider:SetHalfLengths(0.3,6.42622,13.2098)
AutoGenParent615ID417.collider:AddChild(AutoGenParent615ID420.collider)
table.insert(colliders,AutoGenParent615ID420)
AutoGenParent615ID421 = {}
AutoGenParent615ID421.collider = AABBCollider.Create(-1)
AutoGenParent615ID421.collider:SetOffset(0,0,0)
AutoGenParent615ID421.collider:SetMinPos(414.882,30.829,127.711)
AutoGenParent615ID421.collider:SetMaxPos(504.28,60.7866,297.022)
AutoGenParent615ID407.collider:AddChild(AutoGenParent615ID421.collider)
table.insert(colliders,AutoGenParent615ID421)
AutoGenParent615ID422 = {}
AutoGenParent615ID422.collider = AABBCollider.Create(-1)
AutoGenParent615ID422.collider:SetOffset(0,0,0)
AutoGenParent615ID422.collider:SetMinPos(416.705,30.829,127.711)
AutoGenParent615ID422.collider:SetMaxPos(452.08,49.5448,216.02)
AutoGenParent615ID421.collider:AddChild(AutoGenParent615ID422.collider)
table.insert(colliders,AutoGenParent615ID422)
AutoGenParent615ID423 = {}
AutoGenParent615ID423.collider = OBBCollider.Create(-1)
AutoGenParent615ID423.collider:SetOffset(418,38.2061,195.5)
AutoGenParent615ID423.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent615ID423.collider:SetHalfLengths(0.3,7.0601,5.59017)
AutoGenParent615ID422.collider:AddChild(AutoGenParent615ID423.collider)
table.insert(colliders,AutoGenParent615ID423)
AutoGenParent615ID424 = {}
AutoGenParent615ID424.collider = OBBCollider.Create(-1)
AutoGenParent615ID424.collider:SetOffset(419.5,40.2662,208.5)
AutoGenParent615ID424.collider:SetZAxis(0.066519,0,0.997785)
AutoGenParent615ID424.collider:SetHalfLengths(0.3,9.27867,7.51665)
AutoGenParent615ID422.collider:AddChild(AutoGenParent615ID424.collider)
table.insert(colliders,AutoGenParent615ID424)
AutoGenParent615ID425 = {}
AutoGenParent615ID425.collider = OBBCollider.Create(-1)
AutoGenParent615ID425.collider:SetOffset(443,36.7798,130.5)
AutoGenParent615ID425.collider:SetZAxis(-0.963518,0,-0.267644)
AutoGenParent615ID425.collider:SetHalfLengths(0.3,5.95082,9.34077)
AutoGenParent615ID422.collider:AddChild(AutoGenParent615ID425.collider)
table.insert(colliders,AutoGenParent615ID425)
AutoGenParent615ID426 = {}
AutoGenParent615ID426.collider = AABBCollider.Create(-1)
AutoGenParent615ID426.collider:SetOffset(0,0,0)
AutoGenParent615ID426.collider:SetMinPos(414.882,33.2061,145.827)
AutoGenParent615ID426.collider:SetMaxPos(487.245,57.3098,255.172)
AutoGenParent615ID421.collider:AddChild(AutoGenParent615ID426.collider)
table.insert(colliders,AutoGenParent615ID426)
AutoGenParent615ID427 = {}
AutoGenParent615ID427.collider = OBBCollider.Create(-1)
AutoGenParent615ID427.collider:SetOffset(422,50.7251,242)
AutoGenParent615ID427.collider:SetZAxis(0.919145,0,0.393919)
AutoGenParent615ID427.collider:SetHalfLengths(0.3,5.79234,7.61577)
AutoGenParent615ID426.collider:AddChild(AutoGenParent615ID427.collider)
table.insert(colliders,AutoGenParent615ID427)
AutoGenParent615ID428 = {}
AutoGenParent615ID428.collider = OBBCollider.Create(-1)
AutoGenParent615ID428.collider:SetOffset(432.5,51.5175,250)
AutoGenParent615ID428.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent615ID428.collider:SetHalfLengths(0.3,5.79235,6.10328)
AutoGenParent615ID426.collider:AddChild(AutoGenParent615ID428.collider)
table.insert(colliders,AutoGenParent615ID428)
AutoGenParent615ID429 = {}
AutoGenParent615ID429.collider = OBBCollider.Create(-1)
AutoGenParent615ID429.collider:SetOffset(481,39.7907,154.5)
AutoGenParent615ID429.collider:SetZAxis(-0.576683,0,-0.816968)
AutoGenParent615ID429.collider:SetHalfLengths(0.3,6.58469,10.4043)
AutoGenParent615ID426.collider:AddChild(AutoGenParent615ID429.collider)
table.insert(colliders,AutoGenParent615ID429)
AutoGenParent615ID430 = {}
AutoGenParent615ID430.collider = AABBCollider.Create(-1)
AutoGenParent615ID430.collider:SetOffset(0,0,0)
AutoGenParent615ID430.collider:SetMinPos(434.701,34.7907,162.854)
AutoGenParent615ID430.collider:SetMaxPos(504.28,60.7866,297.022)
AutoGenParent615ID421.collider:AddChild(AutoGenParent615ID430.collider)
table.insert(colliders,AutoGenParent615ID430)
AutoGenParent615ID431 = {}
AutoGenParent615ID431.collider = OBBCollider.Create(-1)
AutoGenParent615ID431.collider:SetOffset(500.5,41.8508,190)
AutoGenParent615ID431.collider:SetZAxis(-0.362446,0,-0.932005)
AutoGenParent615ID431.collider:SetHalfLengths(0.3,5.63388,9.6566)
AutoGenParent615ID430.collider:AddChild(AutoGenParent615ID431.collider)
table.insert(colliders,AutoGenParent615ID431)
AutoGenParent615ID432 = {}
AutoGenParent615ID432.collider = OBBCollider.Create(-1)
AutoGenParent615ID432.collider:SetOffset(492,41.217,172)
AutoGenParent615ID432.collider:SetZAxis(-0.485643,0,-0.874157)
AutoGenParent615ID432.collider:SetHalfLengths(0.3,6.42622,10.2956)
AutoGenParent615ID430.collider:AddChild(AutoGenParent615ID432.collider)
table.insert(colliders,AutoGenParent615ID432)
AutoGenParent615ID433 = {}
AutoGenParent615ID433.collider = OBBCollider.Create(-1)
AutoGenParent615ID433.collider:SetOffset(436,53.9701,283.5)
AutoGenParent615ID433.collider:SetZAxis(0.0738717,0,0.997268)
AutoGenParent615ID433.collider:SetHalfLengths(0.3,6.81649,13.537)
AutoGenParent615ID430.collider:AddChild(AutoGenParent615ID433.collider)
table.insert(colliders,AutoGenParent615ID433)
AutoGenParent615ID434 = {}
AutoGenParent615ID434.collider = AABBCollider.Create(-1)
AutoGenParent615ID434.collider:SetOffset(0,0,0)
AutoGenParent615ID434.collider:SetMinPos(434.7,23.9934,198.905)
AutoGenParent615ID434.collider:SetMaxPos(512.3,68.8781,350.111)
AutoGenParent615ID407.collider:AddChild(AutoGenParent615ID434.collider)
table.insert(colliders,AutoGenParent615ID434)
AutoGenParent615ID435 = {}
AutoGenParent615ID435.collider = AABBCollider.Create(-1)
AutoGenParent615ID435.collider:SetOffset(0,0,0)
AutoGenParent615ID435.collider:SetMinPos(434.7,23.9934,254.7)
AutoGenParent615ID435.collider:SetMaxPos(471,68.8781,270)
AutoGenParent615ID434.collider:AddChild(AutoGenParent615ID435.collider)
table.insert(colliders,AutoGenParent615ID435)
AutoGenParent615ID436 = {}
AutoGenParent615ID436.collider = OBBCollider.Create(-1)
AutoGenParent615ID436.collider:SetOffset(453.5,52.3098,255)
AutoGenParent615ID436.collider:SetZAxis(1,0,0)
AutoGenParent615ID436.collider:SetHalfLengths(0.3,16.5682,17.5)
AutoGenParent615ID435.collider:AddChild(AutoGenParent615ID436.collider)
table.insert(colliders,AutoGenParent615ID436)
AutoGenParent615ID437 = {}
AutoGenParent615ID437.collider = OBBCollider.Create(-1)
AutoGenParent615ID437.collider:SetOffset(453,40.9141,256)
AutoGenParent615ID437.collider:SetZAxis(-1,0,0)
AutoGenParent615ID437.collider:SetHalfLengths(0.3,16.9207,18)
AutoGenParent615ID435.collider:AddChild(AutoGenParent615ID437.collider)
table.insert(colliders,AutoGenParent615ID437)
AutoGenParent615ID438 = {}
AutoGenParent615ID438.collider = OBBCollider.Create(-1)
AutoGenParent615ID438.collider:SetOffset(435,52.8348,263)
AutoGenParent615ID438.collider:SetZAxis(0,0,1)
AutoGenParent615ID438.collider:SetHalfLengths(0.3,6.1353,7)
AutoGenParent615ID435.collider:AddChild(AutoGenParent615ID438.collider)
table.insert(colliders,AutoGenParent615ID438)
AutoGenParent615ID439 = {}
AutoGenParent615ID439.collider = AABBCollider.Create(-1)
AutoGenParent615ID439.collider:SetOffset(0,0,0)
AutoGenParent615ID439.collider:SetMinPos(436.704,24.9016,198.905)
AutoGenParent615ID439.collider:SetMaxPos(509.285,61.1272,322.047)
AutoGenParent615ID434.collider:AddChild(AutoGenParent615ID439.collider)
table.insert(colliders,AutoGenParent615ID439)
AutoGenParent615ID440 = {}
AutoGenParent615ID440.collider = OBBCollider.Create(-1)
AutoGenParent615ID440.collider:SetOffset(506.5,42.1678,206.5)
AutoGenParent615ID440.collider:SetZAxis(-0.316228,0,-0.948683)
AutoGenParent615ID440.collider:SetHalfLengths(0.3,5.31694,7.90569)
AutoGenParent615ID439.collider:AddChild(AutoGenParent615ID440.collider)
table.insert(colliders,AutoGenParent615ID440)
AutoGenParent615ID441 = {}
AutoGenParent615ID441.collider = OBBCollider.Create(-1)
AutoGenParent615ID441.collider:SetOffset(467.5,40.2329,291.5)
AutoGenParent615ID441.collider:SetZAxis(-0.613941,0,0.789352)
AutoGenParent615ID441.collider:SetHalfLengths(0.3,15.3313,5.70088)
AutoGenParent615ID439.collider:AddChild(AutoGenParent615ID441.collider)
table.insert(colliders,AutoGenParent615ID441)
AutoGenParent615ID442 = {}
AutoGenParent615ID442.collider = OBBCollider.Create(-1)
AutoGenParent615ID442.collider:SetOffset(439,55.7866,309.5)
AutoGenParent615ID442.collider:SetZAxis(0.157991,0,0.987441)
AutoGenParent615ID442.collider:SetHalfLengths(0.3,5.3406,12.659)
AutoGenParent615ID439.collider:AddChild(AutoGenParent615ID442.collider)
table.insert(colliders,AutoGenParent615ID442)
AutoGenParent615ID443 = {}
AutoGenParent615ID443.collider = AABBCollider.Create(-1)
AutoGenParent615ID443.collider:SetOffset(0,0,0)
AutoGenParent615ID443.collider:SetMinPos(443.721,36.217,213.958)
AutoGenParent615ID443.collider:SetMaxPos(512.3,65.2143,350.111)
AutoGenParent615ID434.collider:AddChild(AutoGenParent615ID443.collider)
table.insert(colliders,AutoGenParent615ID443)
AutoGenParent615ID444 = {}
AutoGenParent615ID444.collider = OBBCollider.Create(-1)
AutoGenParent615ID444.collider:SetOffset(511.5,41.5339,241.5)
AutoGenParent615ID444.collider:SetZAxis(-0.0370117,0,-0.999315)
AutoGenParent615ID444.collider:SetHalfLengths(0.3,5.31694,13.5093)
AutoGenParent615ID443.collider:AddChild(AutoGenParent615ID444.collider)
table.insert(colliders,AutoGenParent615ID444)
AutoGenParent615ID445 = {}
AutoGenParent615ID445.collider = OBBCollider.Create(-1)
AutoGenParent615ID445.collider:SetOffset(510,41.8508,221)
AutoGenParent615ID445.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent615ID445.collider:SetHalfLengths(0.3,5.31694,7.07107)
AutoGenParent615ID443.collider:AddChild(AutoGenParent615ID445.collider)
table.insert(colliders,AutoGenParent615ID445)
AutoGenParent615ID446 = {}
AutoGenParent615ID446.collider = OBBCollider.Create(-1)
AutoGenParent615ID446.collider:SetOffset(447,57.2625,342.5)
AutoGenParent615ID446.collider:SetZAxis(0.371391,0,0.928477)
AutoGenParent615ID446.collider:SetHalfLengths(0.3,7.95179,8.07775)
AutoGenParent615ID443.collider:AddChild(AutoGenParent615ID446.collider)
table.insert(colliders,AutoGenParent615ID446)
AutoGenParent615ID447 = {}
AutoGenParent615ID447.collider = AABBCollider.Create(-1)
AutoGenParent615ID447.collider:SetOffset(0,0,0)
AutoGenParent615ID447.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID447.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent615ID366.collider:AddChild(AutoGenParent615ID447.collider)
table.insert(colliders,AutoGenParent615ID447)
AutoGenParent615ID448 = {}
AutoGenParent615ID448.collider = AABBCollider.Create(-1)
AutoGenParent615ID448.collider:SetOffset(0,0,0)
AutoGenParent615ID448.collider:SetMinPos(440.708,29.7835,256)
AutoGenParent615ID448.collider:SetMaxPos(512.3,68.5067,383.03)
AutoGenParent615ID447.collider:AddChild(AutoGenParent615ID448.collider)
table.insert(colliders,AutoGenParent615ID448)
AutoGenParent615ID449 = {}
AutoGenParent615ID449.collider = AABBCollider.Create(-1)
AutoGenParent615ID449.collider:SetOffset(0,0,0)
AutoGenParent615ID449.collider:SetMinPos(440.708,33.0758,286.946)
AutoGenParent615ID449.collider:SetMaxPos(477.295,62.2625,335.067)
AutoGenParent615ID448.collider:AddChild(AutoGenParent615ID449.collider)
table.insert(colliders,AutoGenParent615ID449)
AutoGenParent615ID450 = {}
AutoGenParent615ID450.collider = OBBCollider.Create(-1)
AutoGenParent615ID450.collider:SetOffset(474,40.2329,303.5)
AutoGenParent615ID450.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent615ID450.collider:SetHalfLengths(0.3,7.15708,16.7705)
AutoGenParent615ID449.collider:AddChild(AutoGenParent615ID450.collider)
table.insert(colliders,AutoGenParent615ID450)
AutoGenParent615ID451 = {}
AutoGenParent615ID451.collider = OBBCollider.Create(-1)
AutoGenParent615ID451.collider:SetOffset(466,50.5642,306)
AutoGenParent615ID451.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent615ID451.collider:SetHalfLengths(0.3,5.68119,10.198)
AutoGenParent615ID449.collider:AddChild(AutoGenParent615ID451.collider)
table.insert(colliders,AutoGenParent615ID451)
AutoGenParent615ID452 = {}
AutoGenParent615ID452.collider = OBBCollider.Create(-1)
AutoGenParent615ID452.collider:SetOffset(442.5,56.1272,328.5)
AutoGenParent615ID452.collider:SetZAxis(0.22486,0,0.974391)
AutoGenParent615ID452.collider:SetHalfLengths(0.3,6.13531,6.67083)
AutoGenParent615ID449.collider:AddChild(AutoGenParent615ID452.collider)
table.insert(colliders,AutoGenParent615ID452)
AutoGenParent615ID453 = {}
AutoGenParent615ID453.collider = AABBCollider.Create(-1)
AutoGenParent615ID453.collider:SetOffset(0,0,0)
AutoGenParent615ID453.collider:SetMinPos(449.701,35.8006,315.984)
AutoGenParent615ID453.collider:SetMaxPos(477.298,66.1226,363.023)
AutoGenParent615ID448.collider:AddChild(AutoGenParent615ID453.collider)
table.insert(colliders,AutoGenParent615ID453)
AutoGenParent615ID454 = {}
AutoGenParent615ID454.collider = OBBCollider.Create(-1)
AutoGenParent615ID454.collider:SetOffset(475.5,42.39,334)
AutoGenParent615ID454.collider:SetZAxis(-0.106533,0,0.994309)
AutoGenParent615ID454.collider:SetHalfLengths(0.3,6.58943,14.0801)
AutoGenParent615ID453.collider:AddChild(AutoGenParent615ID454.collider)
table.insert(colliders,AutoGenParent615ID454)
AutoGenParent615ID455 = {}
AutoGenParent615ID455.collider = OBBCollider.Create(-1)
AutoGenParent615ID455.collider:SetOffset(468.5,51.2454,325.5)
AutoGenParent615ID455.collider:SetZAxis(0.0525588,0,0.998618)
AutoGenParent615ID455.collider:SetHalfLengths(0.3,8.29239,9.51315)
AutoGenParent615ID453.collider:AddChild(AutoGenParent615ID455.collider)
table.insert(colliders,AutoGenParent615ID455)
AutoGenParent615ID456 = {}
AutoGenParent615ID456.collider = OBBCollider.Create(-1)
AutoGenParent615ID456.collider:SetOffset(450.5,60.2143,356.5)
AutoGenParent615ID456.collider:SetZAxis(0.0766965,0,0.997055)
AutoGenParent615ID456.collider:SetHalfLengths(0.3,5.90825,6.5192)
AutoGenParent615ID453.collider:AddChild(AutoGenParent615ID456.collider)
table.insert(colliders,AutoGenParent615ID456)
AutoGenParent615ID457 = {}
AutoGenParent615ID457.collider = AABBCollider.Create(-1)
AutoGenParent615ID457.collider:SetOffset(0,0,0)
AutoGenParent615ID457.collider:SetMinPos(450.701,29.7835,256)
AutoGenParent615ID457.collider:SetMaxPos(512.3,68.5067,383.03)
AutoGenParent615ID448.collider:AddChild(AutoGenParent615ID457.collider)
table.insert(colliders,AutoGenParent615ID457)
AutoGenParent615ID458 = {}
AutoGenParent615ID458.collider = OBBCollider.Create(-1)
AutoGenParent615ID458.collider:SetOffset(512,41.5953,300.5)
AutoGenParent615ID458.collider:SetZAxis(0,0,1)
AutoGenParent615ID458.collider:SetHalfLengths(0.3,11.8118,44.5)
AutoGenParent615ID457.collider:AddChild(AutoGenParent615ID458.collider)
table.insert(colliders,AutoGenParent615ID458)
AutoGenParent615ID459 = {}
AutoGenParent615ID459.collider = OBBCollider.Create(-1)
AutoGenParent615ID459.collider:SetOffset(469.5,54.5378,347.5)
AutoGenParent615ID459.collider:SetZAxis(0.039968,0,0.999201)
AutoGenParent615ID459.collider:SetHalfLengths(0.3,6.81649,12.51)
AutoGenParent615ID457.collider:AddChild(AutoGenParent615ID459.collider)
table.insert(colliders,AutoGenParent615ID459)
AutoGenParent615ID460 = {}
AutoGenParent615ID460.collider = OBBCollider.Create(-1)
AutoGenParent615ID460.collider:SetOffset(452,61.1226,373)
AutoGenParent615ID460.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent615ID460.collider:SetHalfLengths(0.3,7.38414,10.0499)
AutoGenParent615ID457.collider:AddChild(AutoGenParent615ID460.collider)
table.insert(colliders,AutoGenParent615ID460)
AutoGenParent615ID461 = {}
AutoGenParent615ID461.collider = AABBCollider.Create(-1)
AutoGenParent615ID461.collider:SetOffset(0,0,0)
AutoGenParent615ID461.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID461.collider:SetMaxPos(512.265,78.3839,383.3)
AutoGenParent615ID447.collider:AddChild(AutoGenParent615ID461.collider)
table.insert(colliders,AutoGenParent615ID461)
AutoGenParent615ID462 = {}
AutoGenParent615ID462.collider = AABBCollider.Create(-1)
AutoGenParent615ID462.collider:SetOffset(0,0,0)
AutoGenParent615ID462.collider:SetMinPos(469.7,38.6388,347.974)
AutoGenParent615ID462.collider:SetMaxPos(477.299,78.3839,383.3)
AutoGenParent615ID461.collider:AddChild(AutoGenParent615ID462.collider)
table.insert(colliders,AutoGenParent615ID462)
AutoGenParent615ID463 = {}
AutoGenParent615ID463.collider = OBBCollider.Create(-1)
AutoGenParent615ID463.collider:SetOffset(475.5,43.9794,365.5)
AutoGenParent615ID463.collider:SetZAxis(0.0854011,0,0.996347)
AutoGenParent615ID463.collider:SetHalfLengths(0.3,5.34059,17.5642)
AutoGenParent615ID462.collider:AddChild(AutoGenParent615ID463.collider)
table.insert(colliders,AutoGenParent615ID463)
AutoGenParent615ID464 = {}
AutoGenParent615ID464.collider = OBBCollider.Create(-1)
AutoGenParent615ID464.collider:SetOffset(470,56.3543,371.5)
AutoGenParent615ID464.collider:SetZAxis(0,0,1)
AutoGenParent615ID464.collider:SetHalfLengths(0.3,7.49767,11.5)
AutoGenParent615ID462.collider:AddChild(AutoGenParent615ID464.collider)
table.insert(colliders,AutoGenParent615ID464)
AutoGenParent615ID465 = {}
AutoGenParent615ID465.collider = OBBCollider.Create(-1)
AutoGenParent615ID465.collider:SetOffset(473.5,58.852,383)
AutoGenParent615ID465.collider:SetZAxis(1,0,0)
AutoGenParent615ID465.collider:SetHalfLengths(0.3,19.5319,3.5)
AutoGenParent615ID462.collider:AddChild(AutoGenParent615ID465.collider)
table.insert(colliders,AutoGenParent615ID465)
AutoGenParent615ID466 = {}
AutoGenParent615ID466.collider = AABBCollider.Create(-1)
AutoGenParent615ID466.collider:SetOffset(0,0,0)
AutoGenParent615ID466.collider:SetMinPos(500.715,28.7617,344.859)
AutoGenParent615ID466.collider:SetMaxPos(512.265,42.7352,376.118)
AutoGenParent615ID461.collider:AddChild(AutoGenParent615ID466.collider)
table.insert(colliders,AutoGenParent615ID466)
AutoGenParent615ID467 = {}
AutoGenParent615ID467.collider = OBBCollider.Create(-1)
AutoGenParent615ID467.collider:SetOffset(508,34.7835,352.5)
AutoGenParent615ID467.collider:SetZAxis(-0.470588,0,0.882353)
AutoGenParent615ID467.collider:SetHalfLengths(0.3,6.02178,8.5)
AutoGenParent615ID466.collider:AddChild(AutoGenParent615ID467.collider)
table.insert(colliders,AutoGenParent615ID467)
AutoGenParent615ID468 = {}
AutoGenParent615ID468.collider = OBBCollider.Create(-1)
AutoGenParent615ID468.collider:SetOffset(502.5,35.8052,364.5)
AutoGenParent615ID468.collider:SetZAxis(-0.316228,0,0.948683)
AutoGenParent615ID468.collider:SetHalfLengths(0.3,6.24884,4.74342)
AutoGenParent615ID466.collider:AddChild(AutoGenParent615ID468.collider)
table.insert(colliders,AutoGenParent615ID468)
AutoGenParent615ID469 = {}
AutoGenParent615ID469.collider = OBBCollider.Create(-1)
AutoGenParent615ID469.collider:SetOffset(502.5,37.0541,372.5)
AutoGenParent615ID469.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent615ID469.collider:SetHalfLengths(0.3,5.68118,3.80789)
AutoGenParent615ID466.collider:AddChild(AutoGenParent615ID469.collider)
table.insert(colliders,AutoGenParent615ID469)
AutoGenParent615ID470 = {}
AutoGenParent615ID470.collider = AABBCollider.Create(-1)
AutoGenParent615ID470.collider:SetOffset(0,0,0)
AutoGenParent615ID470.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID470.collider:SetMaxPos(508.26,43.6435,383.149)
AutoGenParent615ID461.collider:AddChild(AutoGenParent615ID470.collider)
table.insert(colliders,AutoGenParent615ID470)
AutoGenParent615ID471 = {}
AutoGenParent615ID471.collider = OBBCollider.Create(-1)
AutoGenParent615ID471.collider:SetOffset(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent615ID471.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent615ID471.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent615ID470.collider:AddChild(AutoGenParent615ID471.collider)
table.insert(colliders,AutoGenParent615ID471)
AutoGenParent615ID472 = {}
AutoGenParent615ID472.collider = OBBCollider.Create(-1)
AutoGenParent615ID472.collider:SetOffset(506,37.7352,379.5)
AutoGenParent615ID472.collider:SetZAxis(0.496139,0,0.868243)
AutoGenParent615ID472.collider:SetHalfLengths(0.3,5.90825,4.03113)
AutoGenParent615ID470.collider:AddChild(AutoGenParent615ID472.collider)
table.insert(colliders,AutoGenParent615ID472)
CollisionHandler.AddAABB(AutoGenParent615ID.collider, 3)
AutoGenParent615ID1 = nil
AutoGenParent615ID2 = nil
AutoGenParent615ID3 = nil
AutoGenParent615ID4 = nil
AutoGenParent615ID5 = nil
AutoGenParent615ID6 = nil
AutoGenParent615ID7 = nil
AutoGenParent615ID8 = nil
AutoGenParent615ID9 = nil
AutoGenParent615ID10 = nil
AutoGenParent615ID11 = nil
AutoGenParent615ID12 = nil
AutoGenParent615ID13 = nil
AutoGenParent615ID14 = nil
AutoGenParent615ID15 = nil
AutoGenParent615ID16 = nil
AutoGenParent615ID17 = nil
AutoGenParent615ID18 = nil
AutoGenParent615ID19 = nil
AutoGenParent615ID20 = nil
AutoGenParent615ID21 = nil
AutoGenParent615ID22 = nil
AutoGenParent615ID23 = nil
AutoGenParent615ID24 = nil
AutoGenParent615ID25 = nil
AutoGenParent615ID26 = nil
AutoGenParent615ID27 = nil
AutoGenParent615ID28 = nil
AutoGenParent615ID29 = nil
AutoGenParent615ID30 = nil
AutoGenParent615ID31 = nil
AutoGenParent615ID32 = nil
AutoGenParent615ID33 = nil
AutoGenParent615ID34 = nil
AutoGenParent615ID35 = nil
AutoGenParent615ID36 = nil
AutoGenParent615ID37 = nil
AutoGenParent615ID38 = nil
AutoGenParent615ID39 = nil
AutoGenParent615ID40 = nil
AutoGenParent615ID41 = nil
AutoGenParent615ID42 = nil
AutoGenParent615ID43 = nil
AutoGenParent615ID44 = nil
AutoGenParent615ID45 = nil
AutoGenParent615ID46 = nil
AutoGenParent615ID47 = nil
AutoGenParent615ID48 = nil
AutoGenParent615ID49 = nil
AutoGenParent615ID50 = nil
AutoGenParent615ID51 = nil
AutoGenParent615ID52 = nil
AutoGenParent615ID53 = nil
AutoGenParent615ID54 = nil
AutoGenParent615ID55 = nil
AutoGenParent615ID56 = nil
AutoGenParent615ID57 = nil
AutoGenParent615ID58 = nil
AutoGenParent615ID59 = nil
AutoGenParent615ID60 = nil
AutoGenParent615ID61 = nil
AutoGenParent615ID62 = nil
AutoGenParent615ID63 = nil
AutoGenParent615ID64 = nil
AutoGenParent615ID65 = nil
AutoGenParent615ID66 = nil
AutoGenParent615ID67 = nil
AutoGenParent615ID68 = nil
AutoGenParent615ID69 = nil
AutoGenParent615ID70 = nil
AutoGenParent615ID71 = nil
AutoGenParent615ID72 = nil
AutoGenParent615ID73 = nil
AutoGenParent615ID74 = nil
AutoGenParent615ID75 = nil
AutoGenParent615ID76 = nil
AutoGenParent615ID77 = nil
AutoGenParent615ID78 = nil
AutoGenParent615ID79 = nil
AutoGenParent615ID80 = nil
AutoGenParent615ID81 = nil
AutoGenParent615ID82 = nil
AutoGenParent615ID83 = nil
AutoGenParent615ID84 = nil
AutoGenParent615ID85 = nil
AutoGenParent615ID86 = nil
AutoGenParent615ID87 = nil
AutoGenParent615ID88 = nil
AutoGenParent615ID89 = nil
AutoGenParent615ID90 = nil
AutoGenParent615ID91 = nil
AutoGenParent615ID92 = nil
AutoGenParent615ID93 = nil
AutoGenParent615ID94 = nil
AutoGenParent615ID95 = nil
AutoGenParent615ID96 = nil
AutoGenParent615ID97 = nil
AutoGenParent615ID98 = nil
AutoGenParent615ID99 = nil
AutoGenParent615ID100 = nil
AutoGenParent615ID101 = nil
AutoGenParent615ID102 = nil
AutoGenParent615ID103 = nil
AutoGenParent615ID104 = nil
AutoGenParent615ID105 = nil
AutoGenParent615ID106 = nil
AutoGenParent615ID107 = nil
AutoGenParent615ID108 = nil
AutoGenParent615ID109 = nil
AutoGenParent615ID110 = nil
AutoGenParent615ID111 = nil
AutoGenParent615ID112 = nil
AutoGenParent615ID113 = nil
AutoGenParent615ID114 = nil
AutoGenParent615ID115 = nil
AutoGenParent615ID116 = nil
AutoGenParent615ID117 = nil
AutoGenParent615ID118 = nil
AutoGenParent615ID119 = nil
AutoGenParent615ID120 = nil
AutoGenParent615ID121 = nil
AutoGenParent615ID122 = nil
AutoGenParent615ID123 = nil
AutoGenParent615ID124 = nil
AutoGenParent615ID125 = nil
AutoGenParent615ID126 = nil
AutoGenParent615ID127 = nil
AutoGenParent615ID128 = nil
AutoGenParent615ID129 = nil
AutoGenParent615ID130 = nil
AutoGenParent615ID131 = nil
AutoGenParent615ID132 = nil
AutoGenParent615ID133 = nil
AutoGenParent615ID134 = nil
AutoGenParent615ID135 = nil
AutoGenParent615ID136 = nil
AutoGenParent615ID137 = nil
AutoGenParent615ID138 = nil
AutoGenParent615ID139 = nil
AutoGenParent615ID140 = nil
AutoGenParent615ID141 = nil
AutoGenParent615ID142 = nil
AutoGenParent615ID143 = nil
AutoGenParent615ID144 = nil
AutoGenParent615ID145 = nil
AutoGenParent615ID146 = nil
AutoGenParent615ID147 = nil
AutoGenParent615ID148 = nil
AutoGenParent615ID149 = nil
AutoGenParent615ID150 = nil
AutoGenParent615ID151 = nil
AutoGenParent615ID152 = nil
AutoGenParent615ID153 = nil
AutoGenParent615ID154 = nil
AutoGenParent615ID155 = nil
AutoGenParent615ID156 = nil
AutoGenParent615ID157 = nil
AutoGenParent615ID158 = nil
AutoGenParent615ID159 = nil
AutoGenParent615ID160 = nil
AutoGenParent615ID161 = nil
AutoGenParent615ID162 = nil
AutoGenParent615ID163 = nil
AutoGenParent615ID164 = nil
AutoGenParent615ID165 = nil
AutoGenParent615ID166 = nil
AutoGenParent615ID167 = nil
AutoGenParent615ID168 = nil
AutoGenParent615ID169 = nil
AutoGenParent615ID170 = nil
AutoGenParent615ID171 = nil
AutoGenParent615ID172 = nil
AutoGenParent615ID173 = nil
AutoGenParent615ID174 = nil
AutoGenParent615ID175 = nil
AutoGenParent615ID176 = nil
AutoGenParent615ID177 = nil
AutoGenParent615ID178 = nil
AutoGenParent615ID179 = nil
AutoGenParent615ID180 = nil
AutoGenParent615ID181 = nil
AutoGenParent615ID182 = nil
AutoGenParent615ID183 = nil
AutoGenParent615ID184 = nil
AutoGenParent615ID185 = nil
AutoGenParent615ID186 = nil
AutoGenParent615ID187 = nil
AutoGenParent615ID188 = nil
AutoGenParent615ID189 = nil
AutoGenParent615ID190 = nil
AutoGenParent615ID191 = nil
AutoGenParent615ID192 = nil
AutoGenParent615ID193 = nil
AutoGenParent615ID194 = nil
AutoGenParent615ID195 = nil
AutoGenParent615ID196 = nil
AutoGenParent615ID197 = nil
AutoGenParent615ID198 = nil
AutoGenParent615ID199 = nil
AutoGenParent615ID200 = nil
AutoGenParent615ID201 = nil
AutoGenParent615ID202 = nil
AutoGenParent615ID203 = nil
AutoGenParent615ID204 = nil
AutoGenParent615ID205 = nil
AutoGenParent615ID206 = nil
AutoGenParent615ID207 = nil
AutoGenParent615ID208 = nil
AutoGenParent615ID209 = nil
AutoGenParent615ID210 = nil
AutoGenParent615ID211 = nil
AutoGenParent615ID212 = nil
AutoGenParent615ID213 = nil
AutoGenParent615ID214 = nil
AutoGenParent615ID215 = nil
AutoGenParent615ID216 = nil
AutoGenParent615ID217 = nil
AutoGenParent615ID218 = nil
AutoGenParent615ID219 = nil
AutoGenParent615ID220 = nil
AutoGenParent615ID221 = nil
AutoGenParent615ID222 = nil
AutoGenParent615ID223 = nil
AutoGenParent615ID224 = nil
AutoGenParent615ID225 = nil
AutoGenParent615ID226 = nil
AutoGenParent615ID227 = nil
AutoGenParent615ID228 = nil
AutoGenParent615ID229 = nil
AutoGenParent615ID230 = nil
AutoGenParent615ID231 = nil
AutoGenParent615ID232 = nil
AutoGenParent615ID233 = nil
AutoGenParent615ID234 = nil
AutoGenParent615ID235 = nil
AutoGenParent615ID236 = nil
AutoGenParent615ID237 = nil
AutoGenParent615ID238 = nil
AutoGenParent615ID239 = nil
AutoGenParent615ID240 = nil
AutoGenParent615ID241 = nil
AutoGenParent615ID242 = nil
AutoGenParent615ID243 = nil
AutoGenParent615ID244 = nil
AutoGenParent615ID245 = nil
AutoGenParent615ID246 = nil
AutoGenParent615ID247 = nil
AutoGenParent615ID248 = nil
AutoGenParent615ID249 = nil
AutoGenParent615ID250 = nil
AutoGenParent615ID251 = nil
AutoGenParent615ID252 = nil
AutoGenParent615ID253 = nil
AutoGenParent615ID254 = nil
AutoGenParent615ID255 = nil
AutoGenParent615ID256 = nil
AutoGenParent615ID257 = nil
AutoGenParent615ID258 = nil
AutoGenParent615ID259 = nil
AutoGenParent615ID260 = nil
AutoGenParent615ID261 = nil
AutoGenParent615ID262 = nil
AutoGenParent615ID263 = nil
AutoGenParent615ID264 = nil
AutoGenParent615ID265 = nil
AutoGenParent615ID266 = nil
AutoGenParent615ID267 = nil
AutoGenParent615ID268 = nil
AutoGenParent615ID269 = nil
AutoGenParent615ID270 = nil
AutoGenParent615ID271 = nil
AutoGenParent615ID272 = nil
AutoGenParent615ID273 = nil
AutoGenParent615ID274 = nil
AutoGenParent615ID275 = nil
AutoGenParent615ID276 = nil
AutoGenParent615ID277 = nil
AutoGenParent615ID278 = nil
AutoGenParent615ID279 = nil
AutoGenParent615ID280 = nil
AutoGenParent615ID281 = nil
AutoGenParent615ID282 = nil
AutoGenParent615ID283 = nil
AutoGenParent615ID284 = nil
AutoGenParent615ID285 = nil
AutoGenParent615ID286 = nil
AutoGenParent615ID287 = nil
AutoGenParent615ID288 = nil
AutoGenParent615ID289 = nil
AutoGenParent615ID290 = nil
AutoGenParent615ID291 = nil
AutoGenParent615ID292 = nil
AutoGenParent615ID293 = nil
AutoGenParent615ID294 = nil
AutoGenParent615ID295 = nil
AutoGenParent615ID296 = nil
AutoGenParent615ID297 = nil
AutoGenParent615ID298 = nil
AutoGenParent615ID299 = nil
AutoGenParent615ID300 = nil
AutoGenParent615ID301 = nil
AutoGenParent615ID302 = nil
AutoGenParent615ID303 = nil
AutoGenParent615ID304 = nil
AutoGenParent615ID305 = nil
AutoGenParent615ID306 = nil
AutoGenParent615ID307 = nil
AutoGenParent615ID308 = nil
AutoGenParent615ID309 = nil
AutoGenParent615ID310 = nil
AutoGenParent615ID311 = nil
AutoGenParent615ID312 = nil
AutoGenParent615ID313 = nil
AutoGenParent615ID314 = nil
AutoGenParent615ID315 = nil
AutoGenParent615ID316 = nil
AutoGenParent615ID317 = nil
AutoGenParent615ID318 = nil
AutoGenParent615ID319 = nil
AutoGenParent615ID320 = nil
AutoGenParent615ID321 = nil
AutoGenParent615ID322 = nil
AutoGenParent615ID323 = nil
AutoGenParent615ID324 = nil
AutoGenParent615ID325 = nil
AutoGenParent615ID326 = nil
AutoGenParent615ID327 = nil
AutoGenParent615ID328 = nil
AutoGenParent615ID329 = nil
AutoGenParent615ID330 = nil
AutoGenParent615ID331 = nil
AutoGenParent615ID332 = nil
AutoGenParent615ID333 = nil
AutoGenParent615ID334 = nil
AutoGenParent615ID335 = nil
AutoGenParent615ID336 = nil
AutoGenParent615ID337 = nil
AutoGenParent615ID338 = nil
AutoGenParent615ID339 = nil
AutoGenParent615ID340 = nil
AutoGenParent615ID341 = nil
AutoGenParent615ID342 = nil
AutoGenParent615ID343 = nil
AutoGenParent615ID344 = nil
AutoGenParent615ID345 = nil
AutoGenParent615ID346 = nil
AutoGenParent615ID347 = nil
AutoGenParent615ID348 = nil
AutoGenParent615ID349 = nil
AutoGenParent615ID350 = nil
AutoGenParent615ID351 = nil
AutoGenParent615ID352 = nil
AutoGenParent615ID353 = nil
AutoGenParent615ID354 = nil
AutoGenParent615ID355 = nil
AutoGenParent615ID356 = nil
AutoGenParent615ID357 = nil
AutoGenParent615ID358 = nil
AutoGenParent615ID359 = nil
AutoGenParent615ID360 = nil
AutoGenParent615ID361 = nil
AutoGenParent615ID362 = nil
AutoGenParent615ID363 = nil
AutoGenParent615ID364 = nil
AutoGenParent615ID365 = nil
AutoGenParent615ID366 = nil
AutoGenParent615ID367 = nil
AutoGenParent615ID368 = nil
AutoGenParent615ID369 = nil
AutoGenParent615ID370 = nil
AutoGenParent615ID371 = nil
AutoGenParent615ID372 = nil
AutoGenParent615ID373 = nil
AutoGenParent615ID374 = nil
AutoGenParent615ID375 = nil
AutoGenParent615ID376 = nil
AutoGenParent615ID377 = nil
AutoGenParent615ID378 = nil
AutoGenParent615ID379 = nil
AutoGenParent615ID380 = nil
AutoGenParent615ID381 = nil
AutoGenParent615ID382 = nil
AutoGenParent615ID383 = nil
AutoGenParent615ID384 = nil
AutoGenParent615ID385 = nil
AutoGenParent615ID386 = nil
AutoGenParent615ID387 = nil
AutoGenParent615ID388 = nil
AutoGenParent615ID389 = nil
AutoGenParent615ID390 = nil
AutoGenParent615ID391 = nil
AutoGenParent615ID392 = nil
AutoGenParent615ID393 = nil
AutoGenParent615ID394 = nil
AutoGenParent615ID395 = nil
AutoGenParent615ID396 = nil
AutoGenParent615ID397 = nil
AutoGenParent615ID398 = nil
AutoGenParent615ID399 = nil
AutoGenParent615ID400 = nil
AutoGenParent615ID401 = nil
AutoGenParent615ID402 = nil
AutoGenParent615ID403 = nil
AutoGenParent615ID404 = nil
AutoGenParent615ID405 = nil
AutoGenParent615ID406 = nil
AutoGenParent615ID407 = nil
AutoGenParent615ID408 = nil
AutoGenParent615ID409 = nil
AutoGenParent615ID410 = nil
AutoGenParent615ID411 = nil
AutoGenParent615ID412 = nil
AutoGenParent615ID413 = nil
AutoGenParent615ID414 = nil
AutoGenParent615ID415 = nil
AutoGenParent615ID416 = nil
AutoGenParent615ID417 = nil
AutoGenParent615ID418 = nil
AutoGenParent615ID419 = nil
AutoGenParent615ID420 = nil
AutoGenParent615ID421 = nil
AutoGenParent615ID422 = nil
AutoGenParent615ID423 = nil
AutoGenParent615ID424 = nil
AutoGenParent615ID425 = nil
AutoGenParent615ID426 = nil
AutoGenParent615ID427 = nil
AutoGenParent615ID428 = nil
AutoGenParent615ID429 = nil
AutoGenParent615ID430 = nil
AutoGenParent615ID431 = nil
AutoGenParent615ID432 = nil
AutoGenParent615ID433 = nil
AutoGenParent615ID434 = nil
AutoGenParent615ID435 = nil
AutoGenParent615ID436 = nil
AutoGenParent615ID437 = nil
AutoGenParent615ID438 = nil
AutoGenParent615ID439 = nil
AutoGenParent615ID440 = nil
AutoGenParent615ID441 = nil
AutoGenParent615ID442 = nil
AutoGenParent615ID443 = nil
AutoGenParent615ID444 = nil
AutoGenParent615ID445 = nil
AutoGenParent615ID446 = nil
AutoGenParent615ID447 = nil
AutoGenParent615ID448 = nil
AutoGenParent615ID449 = nil
AutoGenParent615ID450 = nil
AutoGenParent615ID451 = nil
AutoGenParent615ID452 = nil
AutoGenParent615ID453 = nil
AutoGenParent615ID454 = nil
AutoGenParent615ID455 = nil
AutoGenParent615ID456 = nil
AutoGenParent615ID457 = nil
AutoGenParent615ID458 = nil
AutoGenParent615ID459 = nil
AutoGenParent615ID460 = nil
AutoGenParent615ID461 = nil
AutoGenParent615ID462 = nil
AutoGenParent615ID463 = nil
AutoGenParent615ID464 = nil
AutoGenParent615ID465 = nil
AutoGenParent615ID466 = nil
AutoGenParent615ID467 = nil
AutoGenParent615ID468 = nil
AutoGenParent615ID469 = nil
AutoGenParent615ID470 = nil
AutoGenParent615ID471 = nil
AutoGenParent615ID472 = nil
table.insert(colliders,AutoGenParent615ID)
AutoGenParent615ID = nil

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
table.insert(colliders,Tile2_wallNr159ID)
Tile2_wallNr159ID = nil

Tile2_wallNr1160ID = {}
Tile2_wallNr1160ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr1160ID.transformID, {x=139.5, y=34.7488, z=202.5})
Transform.SetScaleNonUniform(Tile2_wallNr1160ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr1160ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr1160ID)
Tile2_wallNr1160ID = nil

Tile2_wallNr2161ID = {}
Tile2_wallNr2161ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr2161ID.transformID, {x=143, y=36.9769, z=195.5})
Transform.SetScaleNonUniform(Tile2_wallNr2161ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr2161ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr2161ID)
Tile2_wallNr2161ID = nil

Tile2_wallNr3162ID = {}
Tile2_wallNr3162ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr3162ID.transformID, {x=143, y=38.8707, z=185})
Transform.SetScaleNonUniform(Tile2_wallNr3162ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr3162ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr3162ID)
Tile2_wallNr3162ID = nil

Tile2_wallNr4163ID = {}
Tile2_wallNr4163ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr4163ID.transformID, {x=141, y=40.5418, z=173})
Transform.SetScaleNonUniform(Tile2_wallNr4163ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr4163ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr4163ID)
Tile2_wallNr4163ID = nil

Tile2_wallNr5164ID = {}
Tile2_wallNr5164ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr5164ID.transformID, {x=139, y=44.2181, z=162.5})
Transform.SetScaleNonUniform(Tile2_wallNr5164ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr5164ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr5164ID)
Tile2_wallNr5164ID = nil

Tile2_wallNr6165ID = {}
Tile2_wallNr6165ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr6165ID.transformID, {x=139.5, y=48.7857, z=153})
Transform.SetScaleNonUniform(Tile2_wallNr6165ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr6165ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr6165ID)
Tile2_wallNr6165ID = nil

Tile2_wallNr7166ID = {}
Tile2_wallNr7166ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr7166ID.transformID, {x=144.5, y=50.234, z=147.5})
Transform.SetScaleNonUniform(Tile2_wallNr7166ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr7166ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr7166ID)
Tile2_wallNr7166ID = nil

Tile2_wallNr8167ID = {}
Tile2_wallNr8167ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr8167ID.transformID, {x=152, y=50.4568, z=146.5})
Transform.SetScaleNonUniform(Tile2_wallNr8167ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr8167ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr8167ID)
Tile2_wallNr8167ID = nil

Tile2_wallNr9168ID = {}
Tile2_wallNr9168ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr9168ID.transformID, {x=161.5, y=50.234, z=149})
Transform.SetScaleNonUniform(Tile2_wallNr9168ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr9168ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr9168ID)
Tile2_wallNr9168ID = nil

Tile2_wallNr10169ID = {}
Tile2_wallNr10169ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr10169ID.transformID, {x=170, y=52.1279, z=152})
Transform.SetScaleNonUniform(Tile2_wallNr10169ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr10169ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr10169ID)
Tile2_wallNr10169ID = nil

Tile2_wallNr11170ID = {}
Tile2_wallNr11170ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr11170ID.transformID, {x=176.5, y=52.7963, z=152.5})
Transform.SetScaleNonUniform(Tile2_wallNr11170ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr11170ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr11170ID)
Tile2_wallNr11170ID = nil

Tile2_wallNr12171ID = {}
Tile2_wallNr12171ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr12171ID.transformID, {x=182, y=54.1331, z=150.5})
Transform.SetScaleNonUniform(Tile2_wallNr12171ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr12171ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr12171ID)
Tile2_wallNr12171ID = nil

Tile2_wallNr13172ID = {}
Tile2_wallNr13172ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr13172ID.transformID, {x=184.5, y=54.8016, z=147.5})
Transform.SetScaleNonUniform(Tile2_wallNr13172ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr13172ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr13172ID)
Tile2_wallNr13172ID = nil

Tile2_wallNr14173ID = {}
Tile2_wallNr14173ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr14173ID.transformID, {x=186, y=55.5814, z=143.5})
Transform.SetScaleNonUniform(Tile2_wallNr14173ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr14173ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr14173ID)
Tile2_wallNr14173ID = nil

Tile2_wallNr15174ID = {}
Tile2_wallNr15174ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr15174ID.transformID, {x=187.5, y=55.2472, z=138})
Transform.SetScaleNonUniform(Tile2_wallNr15174ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr15174ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr15174ID)
Tile2_wallNr15174ID = nil

Tile2_wallNr16175ID = {}
Tile2_wallNr16175ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr16175ID.transformID, {x=187.5, y=55.2472, z=133})
Transform.SetScaleNonUniform(Tile2_wallNr16175ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr16175ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr16175ID)
Tile2_wallNr16175ID = nil

Tile2_wallNr17176ID = {}
Tile2_wallNr17176ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr17176ID.transformID, {x=186.5, y=55.3586, z=129})
Transform.SetScaleNonUniform(Tile2_wallNr17176ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr17176ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr17176ID)
Tile2_wallNr17176ID = nil

Tile2_wallNr18177ID = {}
Tile2_wallNr18177ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr18177ID.transformID, {x=181.5, y=55.2472, z=112})
Transform.SetScaleNonUniform(Tile2_wallNr18177ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr18177ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr18177ID)
Tile2_wallNr18177ID = nil

Tile2_wallNr19178ID = {}
Tile2_wallNr19178ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr19178ID.transformID, {x=176.5, y=56.8068, z=92})
Transform.SetScaleNonUniform(Tile2_wallNr19178ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr19178ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr19178ID)
Tile2_wallNr19178ID = nil

Tile2_wallNr20179ID = {}
Tile2_wallNr20179ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr20179ID.transformID, {x=176.5, y=56.584, z=78.5})
Transform.SetScaleNonUniform(Tile2_wallNr20179ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr20179ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr20179ID)
Tile2_wallNr20179ID = nil

Tile2_wallNr21180ID = {}
Tile2_wallNr21180ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr21180ID.transformID, {x=179, y=56.2498, z=63.5})
Transform.SetScaleNonUniform(Tile2_wallNr21180ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr21180ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr21180ID)
Tile2_wallNr21180ID = nil

Tile2_wallNr22181ID = {}
Tile2_wallNr22181ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr22181ID.transformID, {x=185, y=54.5788, z=51})
Transform.SetScaleNonUniform(Tile2_wallNr22181ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr22181ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr22181ID)
Tile2_wallNr22181ID = nil

Tile2_wallNr23182ID = {}
Tile2_wallNr23182ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr23182ID.transformID, {x=194, y=53.5761, z=41.5})
Transform.SetScaleNonUniform(Tile2_wallNr23182ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr23182ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr23182ID)
Tile2_wallNr23182ID = nil

Tile2_wallNr24183ID = {}
Tile2_wallNr24183ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr24183ID.transformID, {x=202.5, y=52.9077, z=36})
Transform.SetScaleNonUniform(Tile2_wallNr24183ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr24183ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr24183ID)
Tile2_wallNr24183ID = nil

Tile2_wallNr25184ID = {}
Tile2_wallNr25184ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr25184ID.transformID, {x=215.5, y=52.0165, z=34.5})
Transform.SetScaleNonUniform(Tile2_wallNr25184ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr25184ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr25184ID)
Tile2_wallNr25184ID = nil

Tile2_wallNr26185ID = {}
Tile2_wallNr26185ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr26185ID.transformID, {x=235, y=48.0059, z=36.5})
Transform.SetScaleNonUniform(Tile2_wallNr26185ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr26185ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr26185ID)
Tile2_wallNr26185ID = nil

Tile2_wallNr27186ID = {}
Tile2_wallNr27186ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr27186ID.transformID, {x=260.5, y=45.2208, z=45.5})
Transform.SetScaleNonUniform(Tile2_wallNr27186ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr27186ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr27186ID)
Tile2_wallNr27186ID = nil

Tile2_wallNr28187ID = {}
Tile2_wallNr28187ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr28187ID.transformID, {x=283, y=40.9874, z=60})
Transform.SetScaleNonUniform(Tile2_wallNr28187ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr28187ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr28187ID)
Tile2_wallNr28187ID = nil

Tile2_wallNr29188ID = {}
Tile2_wallNr29188ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr29188ID.transformID, {x=299.5, y=41.3216, z=79})
Transform.SetScaleNonUniform(Tile2_wallNr29188ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr29188ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr29188ID)
Tile2_wallNr29188ID = nil

Tile2_wallNr30189ID = {}
Tile2_wallNr30189ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr30189ID.transformID, {x=312, y=42.6585, z=94})
Transform.SetScaleNonUniform(Tile2_wallNr30189ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr30189ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr30189ID)
Tile2_wallNr30189ID = nil

Tile2_wallNr31190ID = {}
Tile2_wallNr31190ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr31190ID.transformID, {x=318, y=42.1015, z=102})
Transform.SetScaleNonUniform(Tile2_wallNr31190ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr31190ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr31190ID)
Tile2_wallNr31190ID = nil

Tile2_wallNr32191ID = {}
Tile2_wallNr32191ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr32191ID.transformID, {x=329, y=37.4225, z=113.5})
Transform.SetScaleNonUniform(Tile2_wallNr32191ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr32191ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr32191ID)
Tile2_wallNr32191ID = nil

Tile2_wallNr33192ID = {}
Tile2_wallNr33192ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr33192ID.transformID, {x=343, y=37.0883, z=130})
Transform.SetScaleNonUniform(Tile2_wallNr33192ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr33192ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr33192ID)
Tile2_wallNr33192ID = nil

Tile2_wallNr34193ID = {}
Tile2_wallNr34193ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr34193ID.transformID, {x=354, y=38.8707, z=142.5})
Transform.SetScaleNonUniform(Tile2_wallNr34193ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr34193ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr34193ID)
Tile2_wallNr34193ID = nil

Tile2_wallNr35194ID = {}
Tile2_wallNr35194ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr35194ID.transformID, {x=363, y=38.6479, z=146})
Transform.SetScaleNonUniform(Tile2_wallNr35194ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr35194ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr35194ID)
Tile2_wallNr35194ID = nil

Tile2_wallNr36195ID = {}
Tile2_wallNr36195ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr36195ID.transformID, {x=372, y=38.3137, z=147})
Transform.SetScaleNonUniform(Tile2_wallNr36195ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr36195ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr36195ID)
Tile2_wallNr36195ID = nil

Tile2_wallNr37196ID = {}
Tile2_wallNr37196ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr37196ID.transformID, {x=380, y=37.1997, z=147})
Transform.SetScaleNonUniform(Tile2_wallNr37196ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr37196ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr37196ID)
Tile2_wallNr37196ID = nil

Tile2_wallNr38197ID = {}
Tile2_wallNr38197ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr38197ID.transformID, {x=132, y=33.8575, z=223.5})
Transform.SetScaleNonUniform(Tile2_wallNr38197ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr38197ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr38197ID)
Tile2_wallNr38197ID = nil

Tile2_wallNr39198ID = {}
Tile2_wallNr39198ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr39198ID.transformID, {x=138.5, y=35.5286, z=222})
Transform.SetScaleNonUniform(Tile2_wallNr39198ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr39198ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr39198ID)
Tile2_wallNr39198ID = nil

Tile2_wallNr40199ID = {}
Tile2_wallNr40199ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr40199ID.transformID, {x=143, y=35.1944, z=220.5})
Transform.SetScaleNonUniform(Tile2_wallNr40199ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr40199ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr40199ID)
Tile2_wallNr40199ID = nil

Tile2_wallNr41200ID = {}
Tile2_wallNr41200ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr41200ID.transformID, {x=146.5, y=35.1944, z=221.5})
Transform.SetScaleNonUniform(Tile2_wallNr41200ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr41200ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr41200ID)
Tile2_wallNr41200ID = nil

Tile2_wallNr42201ID = {}
Tile2_wallNr42201ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr42201ID.transformID, {x=148.5, y=36.0856, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr42201ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr42201ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr42201ID)
Tile2_wallNr42201ID = nil

Tile2_wallNr43202ID = {}
Tile2_wallNr43202ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr43202ID.transformID, {x=149.5, y=37.0883, z=236.5})
Transform.SetScaleNonUniform(Tile2_wallNr43202ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr43202ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr43202ID)
Tile2_wallNr43202ID = nil

Tile2_wallNr44203ID = {}
Tile2_wallNr44203ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr44203ID.transformID, {x=150, y=37.1997, z=241.5})
Transform.SetScaleNonUniform(Tile2_wallNr44203ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr44203ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr44203ID)
Tile2_wallNr44203ID = nil

Tile2_wallNr45204ID = {}
Tile2_wallNr45204ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr45204ID.transformID, {x=158.5, y=37.1997, z=246.5})
Transform.SetScaleNonUniform(Tile2_wallNr45204ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr45204ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr45204ID)
Tile2_wallNr45204ID = nil

Tile2_wallNr46205ID = {}
Tile2_wallNr46205ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr46205ID.transformID, {x=173, y=43.1041, z=251})
Transform.SetScaleNonUniform(Tile2_wallNr46205ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr46205ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr46205ID)
Tile2_wallNr46205ID = nil

Tile2_wallNr47206ID = {}
Tile2_wallNr47206ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr47206ID.transformID, {x=182.5, y=47.1147, z=250.5})
Transform.SetScaleNonUniform(Tile2_wallNr47206ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr47206ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr47206ID)
Tile2_wallNr47206ID = nil

Tile2_wallNr48207ID = {}
Tile2_wallNr48207ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr48207ID.transformID, {x=189, y=50.5682, z=246.5})
Transform.SetScaleNonUniform(Tile2_wallNr48207ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr48207ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr48207ID)
Tile2_wallNr48207ID = nil

Tile2_wallNr49208ID = {}
Tile2_wallNr49208ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr49208ID.transformID, {x=194.5, y=51.4594, z=244})
Transform.SetScaleNonUniform(Tile2_wallNr49208ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr49208ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr49208ID)
Tile2_wallNr49208ID = nil

Tile2_wallNr50209ID = {}
Tile2_wallNr50209ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr50209ID.transformID, {x=200.5, y=53.2419, z=244.5})
Transform.SetScaleNonUniform(Tile2_wallNr50209ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr50209ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr50209ID)
Tile2_wallNr50209ID = nil

Tile2_wallNr51210ID = {}
Tile2_wallNr51210ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr51210ID.transformID, {x=207, y=55.2472, z=245.5})
Transform.SetScaleNonUniform(Tile2_wallNr51210ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr51210ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr51210ID)
Tile2_wallNr51210ID = nil

Tile2_wallNr52211ID = {}
Tile2_wallNr52211ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr52211ID.transformID, {x=212.5, y=56.6954, z=247})
Transform.SetScaleNonUniform(Tile2_wallNr52211ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr52211ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr52211ID)
Tile2_wallNr52211ID = nil

Tile2_wallNr53212ID = {}
Tile2_wallNr53212ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr53212ID.transformID, {x=217.5, y=58.9235, z=249.5})
Transform.SetScaleNonUniform(Tile2_wallNr53212ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr53212ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr53212ID)
Tile2_wallNr53212ID = nil

Tile2_wallNr54213ID = {}
Tile2_wallNr54213ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr54213ID.transformID, {x=221.5, y=59.7034, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr54213ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr54213ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr54213ID)
Tile2_wallNr54213ID = nil

Tile2_wallNr55214ID = {}
Tile2_wallNr55214ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr55214ID.transformID, {x=227.5, y=60.2604, z=253.5})
Transform.SetScaleNonUniform(Tile2_wallNr55214ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr55214ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr55214ID)
Tile2_wallNr55214ID = nil

Tile2_wallNr56215ID = {}
Tile2_wallNr56215ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr56215ID.transformID, {x=236.5, y=60.149, z=252})
Transform.SetScaleNonUniform(Tile2_wallNr56215ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr56215ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr56215ID)
Tile2_wallNr56215ID = nil

Tile2_wallNr57216ID = {}
Tile2_wallNr57216ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr57216ID.transformID, {x=246.5, y=60.3718, z=250})
Transform.SetScaleNonUniform(Tile2_wallNr57216ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr57216ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr57216ID)
Tile2_wallNr57216ID = nil

Tile2_wallNr58217ID = {}
Tile2_wallNr58217ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr58217ID.transformID, {x=259.5, y=59.9262, z=249.5})
Transform.SetScaleNonUniform(Tile2_wallNr58217ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr58217ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr58217ID)
Tile2_wallNr58217ID = nil

Tile2_wallNr59218ID = {}
Tile2_wallNr59218ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr59218ID.transformID, {x=274, y=60.0376, z=251})
Transform.SetScaleNonUniform(Tile2_wallNr59218ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr59218ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr59218ID)
Tile2_wallNr59218ID = nil

Tile2_wallNr60219ID = {}
Tile2_wallNr60219ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr60219ID.transformID, {x=287.5, y=59.7034, z=252})
Transform.SetScaleNonUniform(Tile2_wallNr60219ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr60219ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr60219ID)
Tile2_wallNr60219ID = nil

Tile2_wallNr61220ID = {}
Tile2_wallNr61220ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr61220ID.transformID, {x=296, y=58.5893, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr61220ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr61220ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr61220ID)
Tile2_wallNr61220ID = nil

Tile2_wallNr62221ID = {}
Tile2_wallNr62221ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr62221ID.transformID, {x=299, y=55.1358, z=254})
Transform.SetScaleNonUniform(Tile2_wallNr62221ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr62221ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr62221ID)
Tile2_wallNr62221ID = nil

Tile2_wallNr63222ID = {}
Tile2_wallNr63222ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr63222ID.transformID, {x=307, y=55.2472, z=255})
Transform.SetScaleNonUniform(Tile2_wallNr63222ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr63222ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr63222ID)
Tile2_wallNr63222ID = nil

Tile2_wallNr64223ID = {}
Tile2_wallNr64223ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr64223ID.transformID, {x=314, y=51.2366, z=252.5})
Transform.SetScaleNonUniform(Tile2_wallNr64223ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr64223ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr64223ID)
Tile2_wallNr64223ID = nil

Tile2_wallNr65224ID = {}
Tile2_wallNr65224ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr65224ID.transformID, {x=313.5, y=50.5682, z=248})
Transform.SetScaleNonUniform(Tile2_wallNr65224ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr65224ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr65224ID)
Tile2_wallNr65224ID = nil

Tile2_wallNr87225ID = {}
Tile2_wallNr87225ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr87225ID.transformID, {x=234.5, y=57.1411, z=234.5})
Transform.SetScaleNonUniform(Tile2_wallNr87225ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr87225ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr87225ID)
Tile2_wallNr87225ID = nil

Tile2_wallNr88226ID = {}
Tile2_wallNr88226ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr88226ID.transformID, {x=241, y=57.8095, z=233.5})
Transform.SetScaleNonUniform(Tile2_wallNr88226ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr88226ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr88226ID)
Tile2_wallNr88226ID = nil

Tile2_wallNr89227ID = {}
Tile2_wallNr89227ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr89227ID.transformID, {x=247.5, y=57.5867, z=231.5})
Transform.SetScaleNonUniform(Tile2_wallNr89227ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr89227ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr89227ID)
Tile2_wallNr89227ID = nil

Tile2_wallNr90228ID = {}
Tile2_wallNr90228ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr90228ID.transformID, {x=259, y=57.8095, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr90228ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr90228ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr90228ID)
Tile2_wallNr90228ID = nil

Tile2_wallNr91229ID = {}
Tile2_wallNr91229ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr91229ID.transformID, {x=277, y=56.8068, z=233.5})
Transform.SetScaleNonUniform(Tile2_wallNr91229ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr91229ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr91229ID)
Tile2_wallNr91229ID = nil

Tile2_wallNr92230ID = {}
Tile2_wallNr92230ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr92230ID.transformID, {x=295, y=56.027, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr92230ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr92230ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr92230ID)
Tile2_wallNr92230ID = nil

Tile2_wallNr93231ID = {}
Tile2_wallNr93231ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr93231ID.transformID, {x=306, y=49.7884, z=231.5})
Transform.SetScaleNonUniform(Tile2_wallNr93231ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr93231ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr93231ID)
Tile2_wallNr93231ID = nil

Tile2_wallNr94232ID = {}
Tile2_wallNr94232ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr94232ID.transformID, {x=340.5, y=55.47, z=248.5})
Transform.SetScaleNonUniform(Tile2_wallNr94232ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr94232ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr94232ID)
Tile2_wallNr94232ID = nil

Tile2_wallNr95233ID = {}
Tile2_wallNr95233ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr95233ID.transformID, {x=346.5, y=55.47, z=250.5})
Transform.SetScaleNonUniform(Tile2_wallNr95233ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr95233ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr95233ID)
Tile2_wallNr95233ID = nil

Tile2_wallNr96234ID = {}
Tile2_wallNr96234ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr96234ID.transformID, {x=353, y=57.0297, z=240.5})
Transform.SetScaleNonUniform(Tile2_wallNr96234ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr96234ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr96234ID)
Tile2_wallNr96234ID = nil

Tile2_wallNr97235ID = {}
Tile2_wallNr97235ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr97235ID.transformID, {x=363, y=53.5761, z=226.5})
Transform.SetScaleNonUniform(Tile2_wallNr97235ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr97235ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr97235ID)
Tile2_wallNr97235ID = nil

Tile2_wallNr98236ID = {}
Tile2_wallNr98236ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr98236ID.transformID, {x=371, y=48.8971, z=211})
Transform.SetScaleNonUniform(Tile2_wallNr98236ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr98236ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr98236ID)
Tile2_wallNr98236ID = nil

Tile2_wallNr99237ID = {}
Tile2_wallNr99237ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr99237ID.transformID, {x=373.5, y=46.4462, z=189})
Transform.SetScaleNonUniform(Tile2_wallNr99237ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr99237ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr99237ID)
Tile2_wallNr99237ID = nil

Tile2_wallNr100238ID = {}
Tile2_wallNr100238ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr100238ID.transformID, {x=374, y=39.4277, z=170.5})
Transform.SetScaleNonUniform(Tile2_wallNr100238ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr100238ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr100238ID)
Tile2_wallNr100238ID = nil

Tile2_wallNr101239ID = {}
Tile2_wallNr101239ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr101239ID.transformID, {x=377.5, y=39.9848, z=162.5})
Transform.SetScaleNonUniform(Tile2_wallNr101239ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr101239ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr101239ID)
Tile2_wallNr101239ID = nil

Tile2_wallNr102240ID = {}
Tile2_wallNr102240ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr102240ID.transformID, {x=382, y=37.0883, z=157.5})
Transform.SetScaleNonUniform(Tile2_wallNr102240ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr102240ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr102240ID)
Tile2_wallNr102240ID = nil

Tile2_wallNr66241ID = {}
Tile2_wallNr66241ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr66241ID.transformID, {x=220.5, y=56.3612, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr66241ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr66241ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr66241ID)
Tile2_wallNr66241ID = nil

Tile2_wallNr67242ID = {}
Tile2_wallNr67242ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr67242ID.transformID, {x=212.5, y=51.5708, z=223.5})
Transform.SetScaleNonUniform(Tile2_wallNr67242ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr67242ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr67242ID)
Tile2_wallNr67242ID = nil

Tile2_wallNr68243ID = {}
Tile2_wallNr68243ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr68243ID.transformID, {x=205, y=50.6796, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr68243ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr68243ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr68243ID)
Tile2_wallNr68243ID = nil

Tile2_wallNr69244ID = {}
Tile2_wallNr69244ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr69244ID.transformID, {x=198.5, y=49.5656, z=227.5})
Transform.SetScaleNonUniform(Tile2_wallNr69244ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr69244ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr69244ID)
Tile2_wallNr69244ID = nil

Tile2_wallNr70245ID = {}
Tile2_wallNr70245ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr70245ID.transformID, {x=191.5, y=48.3401, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr70245ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr70245ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr70245ID)
Tile2_wallNr70245ID = nil

Tile2_wallNr71246ID = {}
Tile2_wallNr71246ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr71246ID.transformID, {x=183.5, y=46.8918, z=226})
Transform.SetScaleNonUniform(Tile2_wallNr71246ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr71246ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr71246ID)
Tile2_wallNr71246ID = nil

Tile2_wallNr72247ID = {}
Tile2_wallNr72247ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr72247ID.transformID, {x=178, y=42.7699, z=221.5})
Transform.SetScaleNonUniform(Tile2_wallNr72247ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr72247ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr72247ID)
Tile2_wallNr72247ID = nil

Tile2_wallNr73248ID = {}
Tile2_wallNr73248ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr73248ID.transformID, {x=176.5, y=41.9901, z=216.5})
Transform.SetScaleNonUniform(Tile2_wallNr73248ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr73248ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr73248ID)
Tile2_wallNr73248ID = nil

Tile2_wallNr74249ID = {}
Tile2_wallNr74249ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr74249ID.transformID, {x=177, y=41.433, z=212})
Transform.SetScaleNonUniform(Tile2_wallNr74249ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr74249ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr74249ID)
Tile2_wallNr74249ID = nil

Tile2_wallNr75250ID = {}
Tile2_wallNr75250ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr75250ID.transformID, {x=180.5, y=41.6558, z=208.5})
Transform.SetScaleNonUniform(Tile2_wallNr75250ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr75250ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr75250ID)
Tile2_wallNr75250ID = nil

Tile2_wallNr76251ID = {}
Tile2_wallNr76251ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr76251ID.transformID, {x=185.5, y=41.8786, z=206.5})
Transform.SetScaleNonUniform(Tile2_wallNr76251ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr76251ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr76251ID)
Tile2_wallNr76251ID = nil

Tile2_wallNr77252ID = {}
Tile2_wallNr77252ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr77252ID.transformID, {x=190.5, y=41.3216, z=205.5})
Transform.SetScaleNonUniform(Tile2_wallNr77252ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr77252ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr77252ID)
Tile2_wallNr77252ID = nil

Tile2_wallNr78253ID = {}
Tile2_wallNr78253ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr78253ID.transformID, {x=198, y=40.6532, z=203})
Transform.SetScaleNonUniform(Tile2_wallNr78253ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr78253ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr78253ID)
Tile2_wallNr78253ID = nil

Tile2_wallNr79254ID = {}
Tile2_wallNr79254ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr79254ID.transformID, {x=204.5, y=39.6506, z=198.5})
Transform.SetScaleNonUniform(Tile2_wallNr79254ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr79254ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr79254ID)
Tile2_wallNr79254ID = nil

Tile2_wallNr80255ID = {}
Tile2_wallNr80255ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr80255ID.transformID, {x=207.5, y=38.9821, z=191})
Transform.SetScaleNonUniform(Tile2_wallNr80255ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr80255ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr80255ID)
Tile2_wallNr80255ID = nil

Tile2_wallNr81256ID = {}
Tile2_wallNr81256ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr81256ID.transformID, {x=211, y=37.7567, z=184.5})
Transform.SetScaleNonUniform(Tile2_wallNr81256ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr81256ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr81256ID)
Tile2_wallNr81256ID = nil

Tile2_wallNr82257ID = {}
Tile2_wallNr82257ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr82257ID.transformID, {x=215, y=36.9769, z=181.5})
Transform.SetScaleNonUniform(Tile2_wallNr82257ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr82257ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr82257ID)
Tile2_wallNr82257ID = nil

Tile2_wallNr83258ID = {}
Tile2_wallNr83258ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr83258ID.transformID, {x=220.5, y=36.0856, z=175})
Transform.SetScaleNonUniform(Tile2_wallNr83258ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr83258ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr83258ID)
Tile2_wallNr83258ID = nil

Tile2_wallNr84259ID = {}
Tile2_wallNr84259ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr84259ID.transformID, {x=227.5, y=35.64, z=167.5})
Transform.SetScaleNonUniform(Tile2_wallNr84259ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr84259ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr84259ID)
Tile2_wallNr84259ID = nil

Tile2_wallNr85260ID = {}
Tile2_wallNr85260ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr85260ID.transformID, {x=237.5, y=35.64, z=159.5})
Transform.SetScaleNonUniform(Tile2_wallNr85260ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr85260ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr85260ID)
Tile2_wallNr85260ID = nil

Tile2_wallNr86261ID = {}
Tile2_wallNr86261ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr86261ID.transformID, {x=249.5, y=36.0856, z=148.5})
Transform.SetScaleNonUniform(Tile2_wallNr86261ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr86261ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr86261ID)
Tile2_wallNr86261ID = nil

Tile2_wallNr103262ID = {}
Tile2_wallNr103262ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr103262ID.transformID, {x=258, y=36.8654, z=140})
Transform.SetScaleNonUniform(Tile2_wallNr103262ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr103262ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr103262ID)
Tile2_wallNr103262ID = nil

Tile2_wallNr104263ID = {}
Tile2_wallNr104263ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr104263ID.transformID, {x=264, y=37.3111, z=134.5})
Transform.SetScaleNonUniform(Tile2_wallNr104263ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr104263ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr104263ID)
Tile2_wallNr104263ID = nil

Tile2_wallNr105264ID = {}
Tile2_wallNr105264ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr105264ID.transformID, {x=269, y=37.4225, z=131})
Transform.SetScaleNonUniform(Tile2_wallNr105264ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr105264ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr105264ID)
Tile2_wallNr105264ID = nil

Tile2_wallNr106265ID = {}
Tile2_wallNr106265ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr106265ID.transformID, {x=273.5, y=37.3111, z=129.5})
Transform.SetScaleNonUniform(Tile2_wallNr106265ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr106265ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr106265ID)
Tile2_wallNr106265ID = nil

Tile2_wallNr107266ID = {}
Tile2_wallNr107266ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr107266ID.transformID, {x=281.5, y=37.5339, z=128.5})
Transform.SetScaleNonUniform(Tile2_wallNr107266ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr107266ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr107266ID)
Tile2_wallNr107266ID = nil

Tile2_wallNr108267ID = {}
Tile2_wallNr108267ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr108267ID.transformID, {x=293, y=37.1997, z=129})
Transform.SetScaleNonUniform(Tile2_wallNr108267ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr108267ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr108267ID)
Tile2_wallNr108267ID = nil

Tile2_wallNr109268ID = {}
Tile2_wallNr109268ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr109268ID.transformID, {x=306, y=36.3084, z=132})
Transform.SetScaleNonUniform(Tile2_wallNr109268ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr109268ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr109268ID)
Tile2_wallNr109268ID = nil

Tile2_wallNr110269ID = {}
Tile2_wallNr110269ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr110269ID.transformID, {x=339, y=48.1173, z=215.5})
Transform.SetScaleNonUniform(Tile2_wallNr110269ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr110269ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr110269ID)
Tile2_wallNr110269ID = nil

Tile2_wallNr111270ID = {}
Tile2_wallNr111270ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr111270ID.transformID, {x=348, y=41.0988, z=203.5})
Transform.SetScaleNonUniform(Tile2_wallNr111270ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr111270ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr111270ID)
Tile2_wallNr111270ID = nil

Tile2_wallNr112271ID = {}
Tile2_wallNr112271ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr112271ID.transformID, {x=350, y=39.4277, z=194})
Transform.SetScaleNonUniform(Tile2_wallNr112271ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr112271ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr112271ID)
Tile2_wallNr112271ID = nil

Tile2_wallNr113272ID = {}
Tile2_wallNr113272ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr113272ID.transformID, {x=351.5, y=38.3137, z=183.5})
Transform.SetScaleNonUniform(Tile2_wallNr113272ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr113272ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr113272ID)
Tile2_wallNr113272ID = nil

Tile2_wallNr114273ID = {}
Tile2_wallNr114273ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr114273ID.transformID, {x=350, y=37.0883, z=173})
Transform.SetScaleNonUniform(Tile2_wallNr114273ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr114273ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr114273ID)
Tile2_wallNr114273ID = nil

Tile2_wallNr115274ID = {}
Tile2_wallNr115274ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr115274ID.transformID, {x=340.5, y=36.197, z=162})
Transform.SetScaleNonUniform(Tile2_wallNr115274ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr115274ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr115274ID)
Tile2_wallNr115274ID = nil

Tile2_wallNr116275ID = {}
Tile2_wallNr116275ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr116275ID.transformID, {x=330, y=35.64, z=149.5})
Transform.SetScaleNonUniform(Tile2_wallNr116275ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr116275ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr116275ID)
Tile2_wallNr116275ID = nil

Tile2_wallNr117276ID = {}
Tile2_wallNr117276ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr117276ID.transformID, {x=319.5, y=34.7488, z=138.5})
Transform.SetScaleNonUniform(Tile2_wallNr117276ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr117276ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr117276ID)
Tile2_wallNr117276ID = nil

Tile2_wallNr118277ID = {}
Tile2_wallNr118277ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr118277ID.transformID, {x=291.5, y=38.2023, z=98.5})
Transform.SetScaleNonUniform(Tile2_wallNr118277ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr118277ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr118277ID)
Tile2_wallNr118277ID = nil

Tile2_wallNr119278ID = {}
Tile2_wallNr119278ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr119278ID.transformID, {x=276.5, y=39.5392, z=80.5})
Transform.SetScaleNonUniform(Tile2_wallNr119278ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr119278ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr119278ID)
Tile2_wallNr119278ID = nil

Tile2_wallNr120279ID = {}
Tile2_wallNr120279ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr120279ID.transformID, {x=261.5, y=38.7593, z=65})
Transform.SetScaleNonUniform(Tile2_wallNr120279ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr120279ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr120279ID)
Tile2_wallNr120279ID = nil

Tile2_wallNr121280ID = {}
Tile2_wallNr121280ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr121280ID.transformID, {x=248, y=40.9874, z=57})
Transform.SetScaleNonUniform(Tile2_wallNr121280ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr121280ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr121280ID)
Tile2_wallNr121280ID = nil

Tile2_wallNr122281ID = {}
Tile2_wallNr122281ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr122281ID.transformID, {x=233.5, y=44.998, z=51.5})
Transform.SetScaleNonUniform(Tile2_wallNr122281ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr122281ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr122281ID)
Tile2_wallNr122281ID = nil

Tile2_wallNr123282ID = {}
Tile2_wallNr123282ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr123282ID.transformID, {x=221.5, y=48.4515, z=48.5})
Transform.SetScaleNonUniform(Tile2_wallNr123282ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr123282ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr123282ID)
Tile2_wallNr123282ID = nil

Tile2_wallNr124283ID = {}
Tile2_wallNr124283ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr124283ID.transformID, {x=213, y=50.4568, z=48.5})
Transform.SetScaleNonUniform(Tile2_wallNr124283ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr124283ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr124283ID)
Tile2_wallNr124283ID = nil

Tile2_wallNr125284ID = {}
Tile2_wallNr125284ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr125284ID.transformID, {x=204.5, y=52.2393, z=52})
Transform.SetScaleNonUniform(Tile2_wallNr125284ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr125284ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr125284ID)
Tile2_wallNr125284ID = nil

Tile2_wallNr126285ID = {}
Tile2_wallNr126285ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr126285ID.transformID, {x=197, y=53.6875, z=59.5})
Transform.SetScaleNonUniform(Tile2_wallNr126285ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr126285ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr126285ID)
Tile2_wallNr126285ID = nil

Tile2_wallNr127286ID = {}
Tile2_wallNr127286ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr127286ID.transformID, {x=193.5, y=54.5788, z=70.5})
Transform.SetScaleNonUniform(Tile2_wallNr127286ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr127286ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr127286ID)
Tile2_wallNr127286ID = nil

Tile2_wallNr128287ID = {}
Tile2_wallNr128287ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr128287ID.transformID, {x=194, y=55.5814, z=84})
Transform.SetScaleNonUniform(Tile2_wallNr128287ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr128287ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr128287ID)
Tile2_wallNr128287ID = nil

Tile2_wallNr129288ID = {}
Tile2_wallNr129288ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr129288ID.transformID, {x=197.5, y=56.584, z=98.5})
Transform.SetScaleNonUniform(Tile2_wallNr129288ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr129288ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr129288ID)
Tile2_wallNr129288ID = nil

Tile2_wallNr130289ID = {}
Tile2_wallNr130289ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr130289ID.transformID, {x=202.5, y=56.027, z=116.5})
Transform.SetScaleNonUniform(Tile2_wallNr130289ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr130289ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr130289ID)
Tile2_wallNr130289ID = nil

Tile2_wallNr131290ID = {}
Tile2_wallNr131290ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr131290ID.transformID, {x=205.5, y=55.1358, z=132.5})
Transform.SetScaleNonUniform(Tile2_wallNr131290ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr131290ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr131290ID)
Tile2_wallNr131290ID = nil

Tile2_wallNr132291ID = {}
Tile2_wallNr132291ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr132291ID.transformID, {x=206.5, y=55.47, z=143.5})
Transform.SetScaleNonUniform(Tile2_wallNr132291ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr132291ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr132291ID)
Tile2_wallNr132291ID = nil

Tile2_wallNr133292ID = {}
Tile2_wallNr133292ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr133292ID.transformID, {x=205, y=55.2472, z=154})
Transform.SetScaleNonUniform(Tile2_wallNr133292ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr133292ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr133292ID)
Tile2_wallNr133292ID = nil

Tile2_wallNr134293ID = {}
Tile2_wallNr134293ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr134293ID.transformID, {x=198.5, y=55.0244, z=163.5})
Transform.SetScaleNonUniform(Tile2_wallNr134293ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr134293ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr134293ID)
Tile2_wallNr134293ID = nil

Tile2_wallNr135294ID = {}
Tile2_wallNr135294ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr135294ID.transformID, {x=189.5, y=55.8042, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr135294ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr135294ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr135294ID)
Tile2_wallNr135294ID = nil

Tile2_wallNr136295ID = {}
Tile2_wallNr136295ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr136295ID.transformID, {x=180, y=56.027, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr136295ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr136295ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr136295ID)
Tile2_wallNr136295ID = nil

Tile2_wallNr137296ID = {}
Tile2_wallNr137296ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr137296ID.transformID, {x=170.5, y=55.5814, z=165.5})
Transform.SetScaleNonUniform(Tile2_wallNr137296ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr137296ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr137296ID)
Tile2_wallNr137296ID = nil

Tile2_wallNr138297ID = {}
Tile2_wallNr138297ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr138297ID.transformID, {x=160.5, y=54.1331, z=160.5})
Transform.SetScaleNonUniform(Tile2_wallNr138297ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr138297ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr138297ID)
Tile2_wallNr138297ID = nil

Tile2_wallNr139298ID = {}
Tile2_wallNr139298ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr139298ID.transformID, {x=153.5, y=50.5682, z=161.5})
Transform.SetScaleNonUniform(Tile2_wallNr139298ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr139298ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr139298ID)
Tile2_wallNr139298ID = nil

Tile2_wallNr140299ID = {}
Tile2_wallNr140299ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr140299ID.transformID, {x=155.5, y=48.8971, z=169})
Transform.SetScaleNonUniform(Tile2_wallNr140299ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr140299ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr140299ID)
Tile2_wallNr140299ID = nil

Tile2_wallNr141300ID = {}
Tile2_wallNr141300ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr141300ID.transformID, {x=161, y=48.4515, z=179})
Transform.SetScaleNonUniform(Tile2_wallNr141300ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr141300ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr141300ID)
Tile2_wallNr141300ID = nil

Tile2_wallNr142301ID = {}
Tile2_wallNr142301ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr142301ID.transformID, {x=163, y=43.6611, z=194.5})
Transform.SetScaleNonUniform(Tile2_wallNr142301ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr142301ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr142301ID)
Tile2_wallNr142301ID = nil

Tile2_wallNr143302ID = {}
Tile2_wallNr143302ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr143302ID.transformID, {x=170, y=40.319, z=200})
Transform.SetScaleNonUniform(Tile2_wallNr143302ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr143302ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr143302ID)
Tile2_wallNr143302ID = nil

Tile2_wallNr144303ID = {}
Tile2_wallNr144303ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr144303ID.transformID, {x=184, y=42.8813, z=193})
Transform.SetScaleNonUniform(Tile2_wallNr144303ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr144303ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr144303ID)
Tile2_wallNr144303ID = nil

Tile2_wallNr145304ID = {}
Tile2_wallNr145304ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr145304ID.transformID, {x=192.5, y=42.6585, z=185.5})
Transform.SetScaleNonUniform(Tile2_wallNr145304ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr145304ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr145304ID)
Tile2_wallNr145304ID = nil

Tile2_wallNr146305ID = {}
Tile2_wallNr146305ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr146305ID.transformID, {x=201, y=40.319, z=176.5})
Transform.SetScaleNonUniform(Tile2_wallNr146305ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr146305ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr146305ID)
Tile2_wallNr146305ID = nil

Tile2_wallNr147306ID = {}
Tile2_wallNr147306ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr147306ID.transformID, {x=213, y=39.3163, z=166.5})
Transform.SetScaleNonUniform(Tile2_wallNr147306ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr147306ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr147306ID)
Tile2_wallNr147306ID = nil

Tile2_wallNr148307ID = {}
Tile2_wallNr148307ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr148307ID.transformID, {x=219, y=36.4198, z=158})
Transform.SetScaleNonUniform(Tile2_wallNr148307ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr148307ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr148307ID)
Tile2_wallNr148307ID = nil

Tile2_wallNr149308ID = {}
Tile2_wallNr149308ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr149308ID.transformID, {x=222, y=36.5312, z=153.5})
Transform.SetScaleNonUniform(Tile2_wallNr149308ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr149308ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr149308ID)
Tile2_wallNr149308ID = nil

Tile2_wallNr150309ID = {}
Tile2_wallNr150309ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr150309ID.transformID, {x=228.5, y=36.6426, z=150.5})
Transform.SetScaleNonUniform(Tile2_wallNr150309ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr150309ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr150309ID)
Tile2_wallNr150309ID = nil

Tile2_wallNr151310ID = {}
Tile2_wallNr151310ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr151310ID.transformID, {x=236.5, y=36.5312, z=145})
Transform.SetScaleNonUniform(Tile2_wallNr151310ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr151310ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr151310ID)
Tile2_wallNr151310ID = nil

Tile2_wallNr152311ID = {}
Tile2_wallNr152311ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr152311ID.transformID, {x=240, y=36.754, z=139})
Transform.SetScaleNonUniform(Tile2_wallNr152311ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr152311ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr152311ID)
Tile2_wallNr152311ID = nil

Tile2_wallNr153312ID = {}
Tile2_wallNr153312ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr153312ID.transformID, {x=238, y=37.3111, z=135})
Transform.SetScaleNonUniform(Tile2_wallNr153312ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr153312ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr153312ID)
Tile2_wallNr153312ID = nil

Tile2_wallNr154313ID = {}
Tile2_wallNr154313ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr154313ID.transformID, {x=221, y=36.6426, z=148})
Transform.SetScaleNonUniform(Tile2_wallNr154313ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr154313ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr154313ID)
Tile2_wallNr154313ID = nil

Tile2_wallNr155314ID = {}
Tile2_wallNr155314ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr155314ID.transformID, {x=218.5, y=38.9821, z=136})
Transform.SetScaleNonUniform(Tile2_wallNr155314ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr155314ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr155314ID)
Tile2_wallNr155314ID = nil

Tile2_wallNr156315ID = {}
Tile2_wallNr156315ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr156315ID.transformID, {x=221.5, y=41.3216, z=126})
Transform.SetScaleNonUniform(Tile2_wallNr156315ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr156315ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr156315ID)
Tile2_wallNr156315ID = nil

Tile2_wallNr157316ID = {}
Tile2_wallNr157316ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr157316ID.transformID, {x=231, y=42.2129, z=122})
Transform.SetScaleNonUniform(Tile2_wallNr157316ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr157316ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr157316ID)
Tile2_wallNr157316ID = nil

Tile2_wallNr158317ID = {}
Tile2_wallNr158317ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr158317ID.transformID, {x=242, y=40.0962, z=124.5})
Transform.SetScaleNonUniform(Tile2_wallNr158317ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr158317ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr158317ID)
Tile2_wallNr158317ID = nil

Tile2_wallNr159318ID = {}
Tile2_wallNr159318ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr159318ID.transformID, {x=253, y=37.9795, z=123})
Transform.SetScaleNonUniform(Tile2_wallNr159318ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr159318ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr159318ID)
Tile2_wallNr159318ID = nil

Tile2_wallNr160319ID = {}
Tile2_wallNr160319ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr160319ID.transformID, {x=263.5, y=37.4225, z=113.5})
Transform.SetScaleNonUniform(Tile2_wallNr160319ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr160319ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr160319ID)
Tile2_wallNr160319ID = nil

Tile2_wallNr161320ID = {}
Tile2_wallNr161320ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr161320ID.transformID, {x=283.5, y=36.9769, z=107.5})
Transform.SetScaleNonUniform(Tile2_wallNr161320ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr161320ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr161320ID)
Tile2_wallNr161320ID = nil

Tile2_wallNr162321ID = {}
Tile2_wallNr162321ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr162321ID.transformID, {x=324.5, y=50.1226, z=244})
Transform.SetScaleNonUniform(Tile2_wallNr162321ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr162321ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr162321ID)
Tile2_wallNr162321ID = nil

Tile2_wallNr163322ID = {}
Tile2_wallNr163322ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr163322ID.transformID, {x=320.5, y=48.1173, z=228})
Transform.SetScaleNonUniform(Tile2_wallNr163322ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr163322ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr163322ID)
Tile2_wallNr163322ID = nil

Tile2_wallNr164323ID = {}
Tile2_wallNr164323ID.transformID = Transform.Bind()
Transform.SetPosition(Tile2_wallNr164323ID.transformID, {x=227.5, y=56.3612, z=232})
Transform.SetScaleNonUniform(Tile2_wallNr164323ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile2_wallNr164323ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile2_wallNr164323ID)
Tile2_wallNr164323ID = nil

PineTree_Collider389ID = {}
PineTree_Collider389ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider389ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(PineTree_Collider389ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(PineTree_Collider389ID.transformID, {x=0.0166519, y=-0.520999, z=0})
PineTree_Collider389ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider389ID.model, PineTree_Collider389ID.transformID)
table.insert(props,PineTree_Collider389ID)
PineTree_Collider389ID = nil

PineTree_Collider1390ID = {}
PineTree_Collider1390ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider1390ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(PineTree_Collider1390ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree_Collider1390ID.transformID, {x=0, y=0, z=0})
PineTree_Collider1390ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider1390ID.model, PineTree_Collider1390ID.transformID)
table.insert(props,PineTree_Collider1390ID)
PineTree_Collider1390ID = nil

PineTree_Collider2391ID = {}
PineTree_Collider2391ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_Collider2391ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(PineTree_Collider2391ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(PineTree_Collider2391ID.transformID, {x=0, y=0, z=0})
PineTree_Collider2391ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_Collider2391ID.model, PineTree_Collider2391ID.transformID)
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
table.insert(props,OakTree_Collider4402ID)
OakTree_Collider4402ID = nil

OakTree_Collider41403ID = {}
OakTree_Collider41403ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider41403ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(OakTree_Collider41403ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(OakTree_Collider41403ID.transformID, {x=0, y=0, z=0})
OakTree_Collider41403ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider41403ID.model, OakTree_Collider41403ID.transformID)
table.insert(props,OakTree_Collider41403ID)
OakTree_Collider41403ID = nil

OakTree_Collider42404ID = {}
OakTree_Collider42404ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider42404ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(OakTree_Collider42404ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(OakTree_Collider42404ID.transformID, {x=0, y=0, z=0})
OakTree_Collider42404ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider42404ID.model, OakTree_Collider42404ID.transformID)
table.insert(props,OakTree_Collider42404ID)
OakTree_Collider42404ID = nil

OakTree_Collider43405ID = {}
OakTree_Collider43405ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider43405ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(OakTree_Collider43405ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(OakTree_Collider43405ID.transformID, {x=0, y=0, z=0})
OakTree_Collider43405ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider43405ID.model, OakTree_Collider43405ID.transformID)
table.insert(props,OakTree_Collider43405ID)
OakTree_Collider43405ID = nil

OakTree_Collider44406ID = {}
OakTree_Collider44406ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider44406ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(OakTree_Collider44406ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(OakTree_Collider44406ID.transformID, {x=0, y=0, z=0})
OakTree_Collider44406ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider44406ID.model, OakTree_Collider44406ID.transformID)
table.insert(props,OakTree_Collider44406ID)
OakTree_Collider44406ID = nil

OakTree_Collider45407ID = {}
OakTree_Collider45407ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider45407ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(OakTree_Collider45407ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree_Collider45407ID.transformID, {x=0, y=0, z=0})
OakTree_Collider45407ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider45407ID.model, OakTree_Collider45407ID.transformID)
table.insert(props,OakTree_Collider45407ID)
OakTree_Collider45407ID = nil

OakTree_Collider46408ID = {}
OakTree_Collider46408ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree_Collider46408ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(OakTree_Collider46408ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(OakTree_Collider46408ID.transformID, {x=0, y=0, z=0})
OakTree_Collider46408ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree_Collider46408ID.model, OakTree_Collider46408ID.transformID)
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

Lake182ID = {}
Lake182ID.transformID = Transform.Bind()
Transform.SetPosition(Lake182ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Lake182ID.transformID, 1, 1, 1)
Transform.SetRotation(Lake182ID.transformID, {x=0, y=0, z=0})
Lake182ID.model = Assets.LoadModel('Models/lake.model')
Gear.AddStaticInstance(Lake182ID.model, Lake182ID.transformID)
table.insert(props,Lake182ID)
Lake182ID = nil

Bridge_tile2100ID = {}
Bridge_tile2100ID.transformID = Transform.Bind()
Transform.SetPosition(Bridge_tile2100ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Bridge_tile2100ID.transformID, 1, 1, 1)
Transform.SetRotation(Bridge_tile2100ID.transformID, {x=0, y=0, z=0})
Bridge_tile2100ID.model = Assets.LoadModel('Models/Bridge1.model')
Gear.AddStaticInstance(Bridge_tile2100ID.model, Bridge_tile2100ID.transformID)
table.insert(props,Bridge_tile2100ID)
Bridge_tile2100ID = nil

local New221247ID = CreateEnemy(ENEMY_MELEE, {x=189.875, y=54.5, z=62.3125})
New221247ID.moveSpeed = 9
New221247ID.health = 50
New221247ID.visionRange = 30

local New222248ID = CreateEnemy(ENEMY_MELEE, {x=188.125, y=54.0938, z=57.9688})
New222248ID.moveSpeed = 9
New222248ID.health = 50
New222248ID.visionRange = 30

local New223249ID = CreateEnemy(ENEMY_MELEE, {x=184.75, y=54.875, z=62.5625})
New223249ID.moveSpeed = 9
New223249ID.health = 50
New223249ID.visionRange = 30

local New224250ID = CreateEnemy(ENEMY_MELEE, {x=179.375, y=55.5938, z=70.625})
New224250ID.moveSpeed = 9
New224250ID.health = 50
New224250ID.visionRange = 30

local New225251ID = CreateEnemy(ENEMY_MELEE, {x=183.375, y=55.5313, z=73.875})
New225251ID.moveSpeed = 9
New225251ID.health = 50
New225251ID.visionRange = 30
--[[
local New226252ID = CreateEnemy(ENEMY_MELEE, {x=189.125, y=55.0625, z=67.75})
New226252ID.moveSpeed = 9
New226252ID.health = 50
New226252ID.visionRange = 30

local New227253ID = CreateEnemy(ENEMY_MELEE, {x=182.875, y=55.2813, z=67.875})
New227253ID.moveSpeed = 9
New227253ID.health = 50
New227253ID.visionRange = 30

local New228254ID = CreateEnemy(ENEMY_MELEE, {x=189.25, y=55.7188, z=81.9375})
New228254ID.moveSpeed = 9
New228254ID.health = 50
New228254ID.visionRange = 30

local New229255ID = CreateEnemy(ENEMY_MELEE, {x=184.25, y=55.8125, z=83.3125})
New229255ID.moveSpeed = 9
New229255ID.health = 50
New229255ID.visionRange = 30

local New2210256ID = CreateEnemy(ENEMY_MELEE, {x=176.75, y=56.0625, z=76.9375})
New2210256ID.moveSpeed = 9
New2210256ID.health = 50
New2210256ID.visionRange = 30

local New2211257ID = CreateEnemy(ENEMY_MELEE, {x=180.375, y=55.9063, z=79.4375})
New2211257ID.moveSpeed = 9
New2211257ID.health = 50
New2211257ID.visionRange = 30

local New2212258ID = CreateEnemy(ENEMY_MELEE, {x=193.5, y=55.4375, z=72.6875})
New2212258ID.moveSpeed = 9
New2212258ID.health = 50
New2212258ID.visionRange = 30

local New2213259ID = CreateEnemy(ENEMY_MELEE, {x=181.375, y=45.6563, z=231})
New2213259ID.moveSpeed = 9
New2213259ID.health = 50
New2213259ID.visionRange = 30

local New2214260ID = CreateEnemy(ENEMY_MELEE, {x=177.125, y=42.5, z=224.375})
New2214260ID.moveSpeed = 9
New2214260ID.health = 50
New2214260ID.visionRange = 30

local New2215261ID = CreateEnemy(ENEMY_MELEE, {x=175.75, y=43.875, z=233.625})
New2215261ID.moveSpeed = 9
New2215261ID.health = 50
New2215261ID.visionRange = 30

local New2216262ID = CreateEnemy(ENEMY_MELEE, {x=181.625, y=46.9063, z=236.25})
New2216262ID.moveSpeed = 9
New2216262ID.health = 50
New2216262ID.visionRange = 30

local New2217263ID = CreateEnemy(ENEMY_MELEE, {x=178.375, y=43.8125, z=228.625})
New2217263ID.moveSpeed = 9
New2217263ID.health = 50
New2217263ID.visionRange = 30

local New2218264ID = CreateEnemy(ENEMY_MELEE, {x=171, y=42.7188, z=238.75})
New2218264ID.moveSpeed = 9
New2218264ID.health = 50
New2218264ID.visionRange = 30

local New2219265ID = CreateEnemy(ENEMY_MELEE, {x=174.125, y=43.9063, z=238.375})
New2219265ID.moveSpeed = 9
New2219265ID.health = 50
New2219265ID.visionRange = 30

local New2220266ID = CreateEnemy(ENEMY_MELEE, {x=179.25, y=46.125, z=240.5})
New2220266ID.moveSpeed = 9
New2220266ID.health = 50
New2220266ID.visionRange = 30
--]]
local New2221267ID = CreateEnemy(ENEMY_MELEE, {x=169.5, y=41.3125, z=232})
New2221267ID.moveSpeed = 9
New2221267ID.health = 50
New2221267ID.visionRange = 30

local New2222268ID = CreateEnemy(ENEMY_MELEE, {x=164.25, y=39.0625, z=229.875})
New2222268ID.moveSpeed = 9
New2222268ID.health = 50
New2222268ID.visionRange = 30

local New2223269ID = CreateEnemy(ENEMY_MELEE, {x=165.875, y=41, z=237.25})
New2223269ID.moveSpeed = 9
New2223269ID.health = 50
New2223269ID.visionRange = 30

local New2224270ID = CreateEnemy(ENEMY_MELEE, {x=227.125, y=35.7813, z=155.625})
New2224270ID.moveSpeed = 9
New2224270ID.health = 50
New2224270ID.visionRange = 30

local New2225271ID = CreateEnemy(ENEMY_MELEE, {x=221.125, y=35.8125, z=161.625})
New2225271ID.moveSpeed = 9
New2225271ID.health = 50
New2225271ID.visionRange = 30
--[[
local New2226272ID = CreateEnemy(ENEMY_MELEE, {x=228, y=36.125, z=163.25})
New2226272ID.moveSpeed = 9
New2226272ID.health = 50
New2226272ID.visionRange = 30

local New2227273ID = CreateEnemy(ENEMY_MELEE, {x=231.375, y=35.7188, z=154.375})
New2227273ID.moveSpeed = 9
New2227273ID.health = 50
New2227273ID.visionRange = 30

local New2228274ID = CreateEnemy(ENEMY_MELEE, {x=238.125, y=35.5938, z=152.75})
New2228274ID.moveSpeed = 9
New2228274ID.health = 50
New2228274ID.visionRange = 30

local New2229275ID = CreateEnemy(ENEMY_MELEE, {x=242.875, y=35.875, z=150.875})
New2229275ID.moveSpeed = 9
New2229275ID.health = 50
New2229275ID.visionRange = 30

local New2230276ID = CreateEnemy(ENEMY_MELEE, {x=241.625, y=36.1875, z=144.5})
New2230276ID.moveSpeed = 9
New2230276ID.health = 50
New2230276ID.visionRange = 30

local New2231277ID = CreateEnemy(ENEMY_MELEE, {x=226, y=35.9688, z=166.25})
New2231277ID.moveSpeed = 9
New2231277ID.health = 50
New2231277ID.visionRange = 30

local New2232278ID = CreateEnemy(ENEMY_MELEE, {x=284.75, y=58.8438, z=244.25})
New2232278ID.moveSpeed = 9
New2232278ID.health = 50
New2232278ID.visionRange = 30

local New2233279ID = CreateEnemy(ENEMY_MELEE, {x=279.25, y=59.1563, z=245.625})
New2233279ID.moveSpeed = 9
New2233279ID.health = 50
New2233279ID.visionRange = 30

local New2234280ID = CreateEnemy(ENEMY_MELEE, {x=275, y=59.2188, z=241})
New2234280ID.moveSpeed = 9
New2234280ID.health = 50
New2234280ID.visionRange = 30

local New2235281ID = CreateEnemy(ENEMY_MELEE, {x=269.5, y=58.9063, z=245.375})
New2235281ID.moveSpeed = 9
New2235281ID.health = 50
New2235281ID.visionRange = 30

local New2236282ID = CreateEnemy(ENEMY_MELEE, {x=266.5, y=59.0313, z=239.625})
New2236282ID.moveSpeed = 9
New2236282ID.health = 50
New2236282ID.visionRange = 30

local New2237283ID = CreateEnemy(ENEMY_MELEE, {x=270.5, y=58.9688, z=239})
New2237283ID.moveSpeed = 9
New2237283ID.health = 50
New2237283ID.visionRange = 30

local New2238284ID = CreateEnemy(ENEMY_MELEE, {x=280.5, y=58.9688, z=240.625})
New2238284ID.moveSpeed = 9
New2238284ID.health = 50
New2238284ID.visionRange = 30

local New2239285ID = CreateEnemy(ENEMY_MELEE, {x=284, y=58.5938, z=238.75})
New2239285ID.moveSpeed = 9
New2239285ID.health = 50
New2239285ID.visionRange = 30

local New2240286ID = CreateEnemy(ENEMY_MELEE, {x=350, y=36.9375, z=151.5})
New2240286ID.moveSpeed = 9
New2240286ID.health = 50
New2240286ID.visionRange = 30
--]]
local New2241287ID = CreateEnemy(ENEMY_MELEE, {x=349.25, y=36.5313, z=158.625})
New2241287ID.moveSpeed = 9
New2241287ID.health = 50
New2241287ID.visionRange = 30

local New2242288ID = CreateEnemy(ENEMY_MELEE, {x=357.75, y=36.5, z=164.875})
New2242288ID.moveSpeed = 9
New2242288ID.health = 50
New2242288ID.visionRange = 30

local New2243289ID = CreateEnemy(ENEMY_MELEE, {x=361.25, y=36.1875, z=157.875})
New2243289ID.moveSpeed = 9
New2243289ID.health = 50
New2243289ID.visionRange = 30

local New2244290ID = CreateEnemy(ENEMY_MELEE, {x=364.25, y=36.25, z=150.625})
New2244290ID.moveSpeed = 9
New2244290ID.health = 50
New2244290ID.visionRange = 30

local New2245291ID = CreateEnemy(ENEMY_MELEE, {x=356.75, y=36.5625, z=153.75})
New2245291ID.moveSpeed = 9
New2245291ID.health = 50
New2245291ID.visionRange = 30
--[[
local New2246292ID = CreateEnemy(ENEMY_MELEE, {x=353.5, y=36.9063, z=151.75})
New2246292ID.moveSpeed = 9
New2246292ID.health = 50
New2246292ID.visionRange = 30

local New2247293ID = CreateEnemy(ENEMY_MELEE, {x=363.5, y=36.3125, z=165.625})
New2247293ID.moveSpeed = 9
New2247293ID.health = 50
New2247293ID.visionRange = 30

local New2248294ID = CreateEnemy(ENEMY_MELEE, {x=366, y=35.7813, z=159.75})
New2248294ID.moveSpeed = 9
New2248294ID.health = 50
New2248294ID.visionRange = 30

local New2249295ID = CreateEnemy(ENEMY_MELEE, {x=361, y=37.0625, z=172.5})
New2249295ID.moveSpeed = 9
New2249295ID.health = 50
New2249295ID.visionRange = 30

local New2250296ID = CreateEnemy(ENEMY_MELEE, {x=355, y=37.125, z=171.75})
New2250296ID.moveSpeed = 9
New2250296ID.health = 50
New2250296ID.visionRange = 30

local New2251297ID = CreateEnemy(ENEMY_MELEE, {x=357.25, y=36.5313, z=161.375})
New2251297ID.moveSpeed = 9
New2251297ID.health = 50
New2251297ID.visionRange = 30

local New2252298ID = CreateEnemy(ENEMY_MELEE, {x=347.5, y=36.8438, z=145.625})
New2252298ID.moveSpeed = 9
New2252298ID.health = 50
New2252298ID.visionRange = 30

local New2253299ID = CreateEnemy(ENEMY_MELEE, {x=346.75, y=36.4375, z=139.875})
New2253299ID.moveSpeed = 9
New2253299ID.health = 50
New2253299ID.visionRange = 30
--]]
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
table.insert(colliders,Tile3_wallNr324ID)
Tile3_wallNr324ID = nil

Tile3_wallNr1325ID = {}
Tile3_wallNr1325ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr1325ID.transformID, {x=398, y=36.3044, z=158})
Transform.SetScaleNonUniform(Tile3_wallNr1325ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr1325ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr1325ID)
Tile3_wallNr1325ID = nil

Tile3_wallNr2326ID = {}
Tile3_wallNr2326ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr2326ID.transformID, {x=404, y=36.146, z=160})
Transform.SetScaleNonUniform(Tile3_wallNr2326ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr2326ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr2326ID)
Tile3_wallNr2326ID = nil

Tile3_wallNr3327ID = {}
Tile3_wallNr3327ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr3327ID.transformID, {x=406, y=36.3044, z=162.5})
Transform.SetScaleNonUniform(Tile3_wallNr3327ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr3327ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr3327ID)
Tile3_wallNr3327ID = nil

Tile3_wallNr4328ID = {}
Tile3_wallNr4328ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr4328ID.transformID, {x=409, y=36.4629, z=168})
Transform.SetScaleNonUniform(Tile3_wallNr4328ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr4328ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr4328ID)
Tile3_wallNr4328ID = nil

Tile3_wallNr5329ID = {}
Tile3_wallNr5329ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr5329ID.transformID, {x=412.5, y=36.7798, z=176})
Transform.SetScaleNonUniform(Tile3_wallNr5329ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr5329ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr5329ID)
Tile3_wallNr5329ID = nil

Tile3_wallNr6330ID = {}
Tile3_wallNr6330ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr6330ID.transformID, {x=415.5, y=37.5722, z=185})
Transform.SetScaleNonUniform(Tile3_wallNr6330ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr6330ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr6330ID)
Tile3_wallNr6330ID = nil

Tile3_wallNr7331ID = {}
Tile3_wallNr7331ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr7331ID.transformID, {x=418, y=38.2061, z=195.5})
Transform.SetScaleNonUniform(Tile3_wallNr7331ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr7331ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr7331ID)
Tile3_wallNr7331ID = nil

Tile3_wallNr8332ID = {}
Tile3_wallNr8332ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr8332ID.transformID, {x=419.5, y=40.2662, z=208.5})
Transform.SetScaleNonUniform(Tile3_wallNr8332ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr8332ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr8332ID)
Tile3_wallNr8332ID = nil

Tile3_wallNr9333ID = {}
Tile3_wallNr9333ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr9333ID.transformID, {x=418.5, y=44.5448, z=223.5})
Transform.SetScaleNonUniform(Tile3_wallNr9333ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr9333ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr9333ID)
Tile3_wallNr9333ID = nil

Tile3_wallNr10334ID = {}
Tile3_wallNr10334ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr10334ID.transformID, {x=416, y=48.3481, z=235})
Transform.SetScaleNonUniform(Tile3_wallNr10334ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr10334ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr10334ID)
Tile3_wallNr10334ID = nil

Tile3_wallNr11335ID = {}
Tile3_wallNr11335ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr11335ID.transformID, {x=422, y=50.7251, z=242})
Transform.SetScaleNonUniform(Tile3_wallNr11335ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr11335ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr11335ID)
Tile3_wallNr11335ID = nil

Tile3_wallNr12336ID = {}
Tile3_wallNr12336ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr12336ID.transformID, {x=432.5, y=51.5175, z=250})
Transform.SetScaleNonUniform(Tile3_wallNr12336ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr12336ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr12336ID)
Tile3_wallNr12336ID = nil

Tile3_wallNr13337ID = {}
Tile3_wallNr13337ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr13337ID.transformID, {x=453.5, y=52.3098, z=255})
Transform.SetScaleNonUniform(Tile3_wallNr13337ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr13337ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr13337ID)
Tile3_wallNr13337ID = nil

Tile3_wallNr14338ID = {}
Tile3_wallNr14338ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr14338ID.transformID, {x=511.5, y=41.5339, z=241.5})
Transform.SetScaleNonUniform(Tile3_wallNr14338ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr14338ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr14338ID)
Tile3_wallNr14338ID = nil

Tile3_wallNr15339ID = {}
Tile3_wallNr15339ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr15339ID.transformID, {x=510, y=41.8508, z=221})
Transform.SetScaleNonUniform(Tile3_wallNr15339ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr15339ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr15339ID)
Tile3_wallNr15339ID = nil

Tile3_wallNr16340ID = {}
Tile3_wallNr16340ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr16340ID.transformID, {x=506.5, y=42.1678, z=206.5})
Transform.SetScaleNonUniform(Tile3_wallNr16340ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr16340ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr16340ID)
Tile3_wallNr16340ID = nil

Tile3_wallNr17341ID = {}
Tile3_wallNr17341ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr17341ID.transformID, {x=500.5, y=41.8508, z=190})
Transform.SetScaleNonUniform(Tile3_wallNr17341ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr17341ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr17341ID)
Tile3_wallNr17341ID = nil

Tile3_wallNr18342ID = {}
Tile3_wallNr18342ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr18342ID.transformID, {x=492, y=41.217, z=172})
Transform.SetScaleNonUniform(Tile3_wallNr18342ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr18342ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr18342ID)
Tile3_wallNr18342ID = nil

Tile3_wallNr19343ID = {}
Tile3_wallNr19343ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr19343ID.transformID, {x=481, y=39.7907, z=154.5})
Transform.SetScaleNonUniform(Tile3_wallNr19343ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr19343ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr19343ID)
Tile3_wallNr19343ID = nil

Tile3_wallNr20344ID = {}
Tile3_wallNr20344ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr20344ID.transformID, {x=463.5, y=38.2061, z=139.5})
Transform.SetScaleNonUniform(Tile3_wallNr20344ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr20344ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr20344ID)
Tile3_wallNr20344ID = nil

Tile3_wallNr21345ID = {}
Tile3_wallNr21345ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr21345ID.transformID, {x=443, y=36.7798, z=130.5})
Transform.SetScaleNonUniform(Tile3_wallNr21345ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr21345ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr21345ID)
Tile3_wallNr21345ID = nil

Tile3_wallNr22346ID = {}
Tile3_wallNr22346ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr22346ID.transformID, {x=428, y=35.829, z=131.5})
Transform.SetScaleNonUniform(Tile3_wallNr22346ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr22346ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr22346ID)
Tile3_wallNr22346ID = nil

Tile3_wallNr23347ID = {}
Tile3_wallNr23347ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr23347ID.transformID, {x=412.5, y=35.5121, z=139.5})
Transform.SetScaleNonUniform(Tile3_wallNr23347ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr23347ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr23347ID)
Tile3_wallNr23347ID = nil

Tile3_wallNr24348ID = {}
Tile3_wallNr24348ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr24348ID.transformID, {x=401.5, y=35.3536, z=144.5})
Transform.SetScaleNonUniform(Tile3_wallNr24348ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr24348ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr24348ID)
Tile3_wallNr24348ID = nil

Tile3_wallNr25349ID = {}
Tile3_wallNr25349ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr25349ID.transformID, {x=392, y=35.3536, z=145})
Transform.SetScaleNonUniform(Tile3_wallNr25349ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr25349ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile3_wallNr25349ID)
Tile3_wallNr25349ID = nil

Tile3_wallNr26350ID = {}
Tile3_wallNr26350ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr26350ID.transformID, {x=384, y=35.1951, z=146})
Transform.SetScaleNonUniform(Tile3_wallNr26350ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr26350ID.transformID, {x=0, y=0, z=0})
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
table.insert(colliders,Tile4_wallNr351ID)
Tile4_wallNr351ID = nil

Tile4_wallNr1352ID = {}
Tile4_wallNr1352ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr1352ID.transformID, {x=508, y=34.7835, z=352.5})
Transform.SetScaleNonUniform(Tile4_wallNr1352ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr1352ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr1352ID)
Tile4_wallNr1352ID = nil

Tile4_wallNr2353ID = {}
Tile4_wallNr2353ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr2353ID.transformID, {x=502.5, y=35.8052, z=364.5})
Transform.SetScaleNonUniform(Tile4_wallNr2353ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr2353ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr2353ID)
Tile4_wallNr2353ID = nil

Tile4_wallNr3354ID = {}
Tile4_wallNr3354ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr3354ID.transformID, {x=502.5, y=37.0541, z=372.5})
Transform.SetScaleNonUniform(Tile4_wallNr3354ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr3354ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr3354ID)
Tile4_wallNr3354ID = nil

Tile4_wallNr4355ID = {}
Tile4_wallNr4355ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr4355ID.transformID, {x=506, y=37.7352, z=379.5})
Transform.SetScaleNonUniform(Tile4_wallNr4355ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr4355ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr4355ID)
Tile4_wallNr4355ID = nil

Tile4_wallNr5356ID = {}
Tile4_wallNr5356ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr5356ID.transformID, {x=474, y=40.2329, z=303.5})
Transform.SetScaleNonUniform(Tile4_wallNr5356ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr5356ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr5356ID)
Tile4_wallNr5356ID = nil

Tile4_wallNr6357ID = {}
Tile4_wallNr6357ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr6357ID.transformID, {x=475.5, y=42.39, z=334})
Transform.SetScaleNonUniform(Tile4_wallNr6357ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr6357ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr6357ID)
Tile4_wallNr6357ID = nil

Tile4_wallNr7358ID = {}
Tile4_wallNr7358ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr7358ID.transformID, {x=475.5, y=43.9794, z=365.5})
Transform.SetScaleNonUniform(Tile4_wallNr7358ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr7358ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr7358ID)
Tile4_wallNr7358ID = nil

Tile4_wallNr8359ID = {}
Tile4_wallNr8359ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr8359ID.transformID, {x=467.5, y=40.2329, z=291.5})
Transform.SetScaleNonUniform(Tile4_wallNr8359ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr8359ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr8359ID)
Tile4_wallNr8359ID = nil

Tile4_wallNr9360ID = {}
Tile4_wallNr9360ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr9360ID.transformID, {x=466, y=50.5642, z=306})
Transform.SetScaleNonUniform(Tile4_wallNr9360ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr9360ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr9360ID)
Tile4_wallNr9360ID = nil

Tile4_wallNr10361ID = {}
Tile4_wallNr10361ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr10361ID.transformID, {x=468.5, y=51.2454, z=325.5})
Transform.SetScaleNonUniform(Tile4_wallNr10361ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr10361ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr10361ID)
Tile4_wallNr10361ID = nil

Tile4_wallNr11362ID = {}
Tile4_wallNr11362ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr11362ID.transformID, {x=469.5, y=54.5378, z=347.5})
Transform.SetScaleNonUniform(Tile4_wallNr11362ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr11362ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr11362ID)
Tile4_wallNr11362ID = nil

Tile4_wallNr12363ID = {}
Tile4_wallNr12363ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr12363ID.transformID, {x=470, y=56.3543, z=371.5})
Transform.SetScaleNonUniform(Tile4_wallNr12363ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr12363ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr12363ID)
Tile4_wallNr12363ID = nil

Tile4_wallNr13364ID = {}
Tile4_wallNr13364ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr13364ID.transformID, {x=453, y=40.9141, z=256})
Transform.SetScaleNonUniform(Tile4_wallNr13364ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr13364ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr13364ID)
Tile4_wallNr13364ID = nil

Tile4_wallNr14365ID = {}
Tile4_wallNr14365ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr14365ID.transformID, {x=435, y=52.8348, z=263})
Transform.SetScaleNonUniform(Tile4_wallNr14365ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr14365ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr14365ID)
Tile4_wallNr14365ID = nil

Tile4_wallNr15366ID = {}
Tile4_wallNr15366ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr15366ID.transformID, {x=436, y=53.9701, z=283.5})
Transform.SetScaleNonUniform(Tile4_wallNr15366ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr15366ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr15366ID)
Tile4_wallNr15366ID = nil

Tile4_wallNr16367ID = {}
Tile4_wallNr16367ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr16367ID.transformID, {x=439, y=55.7866, z=309.5})
Transform.SetScaleNonUniform(Tile4_wallNr16367ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr16367ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr16367ID)
Tile4_wallNr16367ID = nil

Tile4_wallNr17368ID = {}
Tile4_wallNr17368ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr17368ID.transformID, {x=442.5, y=56.1272, z=328.5})
Transform.SetScaleNonUniform(Tile4_wallNr17368ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr17368ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr17368ID)
Tile4_wallNr17368ID = nil

Tile4_wallNr18369ID = {}
Tile4_wallNr18369ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr18369ID.transformID, {x=447, y=57.2625, z=342.5})
Transform.SetScaleNonUniform(Tile4_wallNr18369ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr18369ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr18369ID)
Tile4_wallNr18369ID = nil

Tile4_wallNr19370ID = {}
Tile4_wallNr19370ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr19370ID.transformID, {x=450.5, y=60.2143, z=356.5})
Transform.SetScaleNonUniform(Tile4_wallNr19370ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr19370ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr19370ID)
Tile4_wallNr19370ID = nil

Tile4_wallNr20371ID = {}
Tile4_wallNr20371ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr20371ID.transformID, {x=452, y=61.1226, z=373})
Transform.SetScaleNonUniform(Tile4_wallNr20371ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr20371ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Tile4_wallNr20371ID)
Tile4_wallNr20371ID = nil

Tile4_wallNr21372ID = {}
Tile4_wallNr21372ID.transformID = Transform.Bind()
Transform.SetPosition(Tile4_wallNr21372ID.transformID, {x=473.5, y=58.852, z=383})
Transform.SetScaleNonUniform(Tile4_wallNr21372ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile4_wallNr21372ID.transformID, {x=0, y=0, z=0})
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
