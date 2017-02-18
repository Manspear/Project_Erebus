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
props = {}
colliders = {}
triggers = {}
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

AutoGenParent475ID = {}
AutoGenParent475ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent475ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent475ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent475ID.transformID, {x=0, y=0, z=0})
AutoGenParent475ID.collider = AABBCollider.Create(AutoGenParent475ID.transformID)
AutoGenParent475ID.collider:SetOffset(0,0,0)
AutoGenParent475ID.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent475ID.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent475ID1 = {}
AutoGenParent475ID1.collider = AABBCollider.Create(-1)
AutoGenParent475ID1.collider:SetOffset(0,0,0)
AutoGenParent475ID1.collider:SetMinPos(1.74275,-3.32028,33.7004)
AutoGenParent475ID1.collider:SetMaxPos(276.131,62.9209,234.296)
AutoGenParent475ID.collider:AddChild(AutoGenParent475ID1.collider)
table.insert(colliders,AutoGenParent475ID1)
AutoGenParent475ID2 = {}
AutoGenParent475ID2.collider = AABBCollider.Create(-1)
AutoGenParent475ID2.collider:SetOffset(0,0,0)
AutoGenParent475ID2.collider:SetMinPos(3.70232,1.54031,127.732)
AutoGenParent475ID2.collider:SetMaxPos(56.2942,16.3583,163.037)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID2.collider)
table.insert(colliders,AutoGenParent475ID2)
AutoGenParent475ID3 = {}
AutoGenParent475ID3.collider = OBBCollider.Create(-1)
AutoGenParent475ID3.collider:SetOffset(6,6.83489,143)
AutoGenParent475ID3.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent475ID3.collider:SetHalfLengths(0.3,5.29458,4.47214)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID3.collider)
table.insert(colliders,AutoGenParent475ID3)
AutoGenParent475ID4 = {}
AutoGenParent475ID4.collider = OBBCollider.Create(-1)
AutoGenParent475ID4.collider:SetOffset(10.5,7.12947,140)
AutoGenParent475ID4.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent475ID4.collider:SetHalfLengths(0.3,5.14729,2.69258)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID4.collider)
table.insert(colliders,AutoGenParent475ID4)
AutoGenParent475ID5 = {}
AutoGenParent475ID5.collider = OBBCollider.Create(-1)
AutoGenParent475ID5.collider:SetOffset(17,6.98218,141)
AutoGenParent475ID5.collider:SetZAxis(1,0,0)
AutoGenParent475ID5.collider:SetHalfLengths(0.3,5,4)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID5.collider)
table.insert(colliders,AutoGenParent475ID5)
AutoGenParent475ID6 = {}
AutoGenParent475ID6.collider = OBBCollider.Create(-1)
AutoGenParent475ID6.collider:SetOffset(45,8.60238,129.5)
AutoGenParent475ID6.collider:SetZAxis(-0.894427,0,-0.447214)
AutoGenParent475ID6.collider:SetHalfLengths(0.3,5.29458,3.3541)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID6.collider)
table.insert(colliders,AutoGenParent475ID6)
AutoGenParent475ID7 = {}
AutoGenParent475ID7.collider = OBBCollider.Create(-1)
AutoGenParent475ID7.collider:SetOffset(51.5,8.60238,137)
AutoGenParent475ID7.collider:SetZAxis(0.503871,0,0.863779)
AutoGenParent475ID7.collider:SetHalfLengths(0.3,5.73645,6.94622)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID7.collider)
table.insert(colliders,AutoGenParent475ID7)
AutoGenParent475ID8 = {}
AutoGenParent475ID8.collider = OBBCollider.Create(-1)
AutoGenParent475ID8.collider:SetOffset(55.5,9.33883,145.5)
AutoGenParent475ID8.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent475ID8.collider:SetHalfLengths(0.3,5,2.54951)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID8.collider)
table.insert(colliders,AutoGenParent475ID8)
AutoGenParent475ID9 = {}
AutoGenParent475ID9.collider = OBBCollider.Create(-1)
AutoGenParent475ID9.collider:SetOffset(4.5,6.83489,147.5)
AutoGenParent475ID9.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID9.collider:SetHalfLengths(0.3,5.14729,0.707107)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID9.collider)
table.insert(colliders,AutoGenParent475ID9)
AutoGenParent475ID10 = {}
AutoGenParent475ID10.collider = OBBCollider.Create(-1)
AutoGenParent475ID10.collider:SetOffset(5,6.98218,151.5)
AutoGenParent475ID10.collider:SetZAxis(0,0,1)
AutoGenParent475ID10.collider:SetHalfLengths(0.3,5.44187,3.5)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID10.collider)
table.insert(colliders,AutoGenParent475ID10)
AutoGenParent475ID11 = {}
AutoGenParent475ID11.collider = OBBCollider.Create(-1)
AutoGenParent475ID11.collider:SetOffset(4.5,7.42405,159)
AutoGenParent475ID11.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent475ID11.collider:SetHalfLengths(0.3,5.88374,4.03113)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID11.collider)
table.insert(colliders,AutoGenParent475ID11)
AutoGenParent475ID12 = {}
AutoGenParent475ID12.collider = OBBCollider.Create(-1)
AutoGenParent475ID12.collider:SetOffset(24,10.8555,139)
AutoGenParent475ID12.collider:SetZAxis(0.367737,0,0.92993)
AutoGenParent475ID12.collider:SetHalfLengths(2.32777,5.5028,2.15084)
AutoGenParent475ID2.collider:AddChild(AutoGenParent475ID12.collider)
table.insert(colliders,AutoGenParent475ID12)
AutoGenParent475ID13 = {}
AutoGenParent475ID13.collider = AABBCollider.Create(-1)
AutoGenParent475ID13.collider:SetOffset(0,0,0)
AutoGenParent475ID13.collider:SetMinPos(1.74275,-3.32028,37.7542)
AutoGenParent475ID13.collider:SetMaxPos(199.172,62.9209,202.166)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID13.collider)
table.insert(colliders,AutoGenParent475ID13)
AutoGenParent475ID14 = {}
AutoGenParent475ID14.collider = OBBCollider.Create(-1)
AutoGenParent475ID14.collider:SetOffset(35.5,8.16051,198)
AutoGenParent475ID14.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID14.collider:SetHalfLengths(0.3,5.14729,3.3541)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID14.collider)
table.insert(colliders,AutoGenParent475ID14)
AutoGenParent475ID15 = {}
AutoGenParent475ID15.collider = OBBCollider.Create(-1)
AutoGenParent475ID15.collider:SetOffset(3.5,4.03637,196.5)
AutoGenParent475ID15.collider:SetZAxis(0.514496,0,0.857493)
AutoGenParent475ID15.collider:SetHalfLengths(0.3,5.58916,2.91548)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID15.collider)
table.insert(colliders,AutoGenParent475ID15)
AutoGenParent475ID16 = {}
AutoGenParent475ID16.collider = OBBCollider.Create(-1)
AutoGenParent475ID16.collider:SetOffset(6,3.44721,200.5)
AutoGenParent475ID16.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent475ID16.collider:SetHalfLengths(0.3,5,1.80278)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID16.collider)
table.insert(colliders,AutoGenParent475ID16)
AutoGenParent475ID17 = {}
AutoGenParent475ID17.collider = OBBCollider.Create(-1)
AutoGenParent475ID17.collider:SetOffset(24.5,3.15263,199.5)
AutoGenParent475ID17.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent475ID17.collider:SetHalfLengths(0.3,6.47291,2.91548)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID17.collider)
table.insert(colliders,AutoGenParent475ID17)
AutoGenParent475ID18 = {}
AutoGenParent475ID18.collider = OBBCollider.Create(-1)
AutoGenParent475ID18.collider:SetOffset(27,5.36198,196.5)
AutoGenParent475ID18.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent475ID18.collider:SetHalfLengths(0.3,7.35665,1.11803)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID18.collider)
table.insert(colliders,AutoGenParent475ID18)
AutoGenParent475ID19 = {}
AutoGenParent475ID19.collider = OBBCollider.Create(-1)
AutoGenParent475ID19.collider:SetOffset(29,7.71863,197)
AutoGenParent475ID19.collider:SetZAxis(1,0,0)
AutoGenParent475ID19.collider:SetHalfLengths(0.3,5.44187,1)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID19.collider)
table.insert(colliders,AutoGenParent475ID19)
AutoGenParent475ID20 = {}
AutoGenParent475ID20.collider = OBBCollider.Create(-1)
AutoGenParent475ID20.collider:SetOffset(176.5,56.584,78.5)
AutoGenParent475ID20.collider:SetZAxis(0.058722,0,-0.998274)
AutoGenParent475ID20.collider:SetHalfLengths(0.3,5.33421,8.51469)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID20.collider)
table.insert(colliders,AutoGenParent475ID20)
AutoGenParent475ID21 = {}
AutoGenParent475ID21.collider = OBBCollider.Create(-1)
AutoGenParent475ID21.collider:SetOffset(179,56.2498,63.5)
AutoGenParent475ID21.collider:SetZAxis(0.294086,0,-0.955779)
AutoGenParent475ID21.collider:SetHalfLengths(0.3,6.67107,6.80074)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID21.collider)
table.insert(colliders,AutoGenParent475ID21)
AutoGenParent475ID22 = {}
AutoGenParent475ID22.collider = OBBCollider.Create(-1)
AutoGenParent475ID22.collider:SetOffset(185,54.5788,51)
AutoGenParent475ID22.collider:SetZAxis(0.5547,0,-0.83205)
AutoGenParent475ID22.collider:SetHalfLengths(0.3,6.00264,7.2111)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID22.collider)
table.insert(colliders,AutoGenParent475ID22)
AutoGenParent475ID23 = {}
AutoGenParent475ID23.collider = OBBCollider.Create(-1)
AutoGenParent475ID23.collider:SetOffset(194,53.5761,41.5)
AutoGenParent475ID23.collider:SetZAxis(0.819232,0,-0.573462)
AutoGenParent475ID23.collider:SetHalfLengths(0.3,5.66843,6.10328)
AutoGenParent475ID13.collider:AddChild(AutoGenParent475ID23.collider)
table.insert(colliders,AutoGenParent475ID23)
AutoGenParent475ID24 = {}
AutoGenParent475ID24.collider = AABBCollider.Create(-1)
AutoGenParent475ID24.collider:SetOffset(0,0,0)
AutoGenParent475ID24.collider:SetMinPos(6.73167,-1.84737,54.8336)
AutoGenParent475ID24.collider:SetMaxPos(200.25,62.0297,211.174)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID24.collider)
table.insert(colliders,AutoGenParent475ID24)
AutoGenParent475ID25 = {}
AutoGenParent475ID25.collider = OBBCollider.Create(-1)
AutoGenParent475ID25.collider:SetOffset(37.5,8.16051,196.5)
AutoGenParent475ID25.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent475ID25.collider:SetHalfLengths(0.3,5.14729,1.58114)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID25.collider)
table.insert(colliders,AutoGenParent475ID25)
AutoGenParent475ID26 = {}
AutoGenParent475ID26.collider = OBBCollider.Create(-1)
AutoGenParent475ID26.collider:SetOffset(42.5,8.3078,200)
AutoGenParent475ID26.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent475ID26.collider:SetHalfLengths(0.3,6.32561,5.59017)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID26.collider)
table.insert(colliders,AutoGenParent475ID26)
AutoGenParent475ID27 = {}
AutoGenParent475ID27.collider = OBBCollider.Create(-1)
AutoGenParent475ID27.collider:SetOffset(50.5,9.63341,202.5)
AutoGenParent475ID27.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent475ID27.collider:SetHalfLengths(0.3,5.73645,4.30116)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID27.collider)
table.insert(colliders,AutoGenParent475ID27)
AutoGenParent475ID28 = {}
AutoGenParent475ID28.collider = OBBCollider.Create(-1)
AutoGenParent475ID28.collider:SetOffset(7.5,3.44721,203)
AutoGenParent475ID28.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID28.collider:SetHalfLengths(0.3,5.14729,1.11803)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID28.collider)
table.insert(colliders,AutoGenParent475ID28)
AutoGenParent475ID29 = {}
AutoGenParent475ID29.collider = OBBCollider.Create(-1)
AutoGenParent475ID29.collider:SetOffset(15,3.29992,202.5)
AutoGenParent475ID29.collider:SetZAxis(0.977802,0,-0.209529)
AutoGenParent475ID29.collider:SetHalfLengths(0.3,5.14729,7.15891)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID29.collider)
table.insert(colliders,AutoGenParent475ID29)
AutoGenParent475ID30 = {}
AutoGenParent475ID30.collider = OBBCollider.Create(-1)
AutoGenParent475ID30.collider:SetOffset(31.5,8.16051,200)
AutoGenParent475ID30.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID30.collider:SetHalfLengths(0.3,5.73645,3.3541)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID30.collider)
table.insert(colliders,AutoGenParent475ID30)
AutoGenParent475ID31 = {}
AutoGenParent475ID31.collider = OBBCollider.Create(-1)
AutoGenParent475ID31.collider:SetOffset(32.5,8.89696,203.5)
AutoGenParent475ID31.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent475ID31.collider:SetHalfLengths(0.3,5.44187,0.707107)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID31.collider)
table.insert(colliders,AutoGenParent475ID31)
AutoGenParent475ID32 = {}
AutoGenParent475ID32.collider = OBBCollider.Create(-1)
AutoGenParent475ID32.collider:SetOffset(34.5,8.45509,207.5)
AutoGenParent475ID32.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent475ID32.collider:SetHalfLengths(0.3,5.14729,4.30116)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID32.collider)
table.insert(colliders,AutoGenParent475ID32)
AutoGenParent475ID33 = {}
AutoGenParent475ID33.collider = OBBCollider.Create(-1)
AutoGenParent475ID33.collider:SetOffset(176.5,56.8068,92)
AutoGenParent475ID33.collider:SetZAxis(-0.0995037,0,-0.995037)
AutoGenParent475ID33.collider:SetHalfLengths(0.3,5.22281,5.02494)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID33.collider)
table.insert(colliders,AutoGenParent475ID33)
AutoGenParent475ID34 = {}
AutoGenParent475ID34.collider = OBBCollider.Create(-1)
AutoGenParent475ID34.collider:SetOffset(197,53.6875,59.5)
AutoGenParent475ID34.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent475ID34.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent475ID24.collider:AddChild(AutoGenParent475ID34.collider)
table.insert(colliders,AutoGenParent475ID34)
AutoGenParent475ID35 = {}
AutoGenParent475ID35.collider = AABBCollider.Create(-1)
AutoGenParent475ID35.collider:SetOffset(0,0,0)
AutoGenParent475ID35.collider:SetMinPos(52.82,4.33883,33.7395)
AutoGenParent475ID35.collider:SetMaxPos(209.166,61.8068,209.24)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID35.collider)
table.insert(colliders,AutoGenParent475ID35)
AutoGenParent475ID36 = {}
AutoGenParent475ID36.collider = OBBCollider.Create(-1)
AutoGenParent475ID36.collider:SetOffset(55,10.3699,207.5)
AutoGenParent475ID36.collider:SetZAxis(0.8,0,0.6)
AutoGenParent475ID36.collider:SetHalfLengths(0.3,6.03103,2.5)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID36.collider)
table.insert(colliders,AutoGenParent475ID36)
AutoGenParent475ID37 = {}
AutoGenParent475ID37.collider = OBBCollider.Create(-1)
AutoGenParent475ID37.collider:SetOffset(85.5,20.091,198)
AutoGenParent475ID37.collider:SetZAxis(0.759257,0,-0.650791)
AutoGenParent475ID37.collider:SetHalfLengths(0.3,8.0931,4.60977)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID37.collider)
table.insert(colliders,AutoGenParent475ID37)
AutoGenParent475ID38 = {}
AutoGenParent475ID38.collider = OBBCollider.Create(-1)
AutoGenParent475ID38.collider:SetOffset(95,23.1841,192.5)
AutoGenParent475ID38.collider:SetZAxis(0.923077,0,-0.384615)
AutoGenParent475ID38.collider:SetHalfLengths(0.3,8.82956,6.5)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID38.collider)
table.insert(colliders,AutoGenParent475ID38)
AutoGenParent475ID39 = {}
AutoGenParent475ID39.collider = OBBCollider.Create(-1)
AutoGenParent475ID39.collider:SetOffset(139,44.2181,162.5)
AutoGenParent475ID39.collider:SetZAxis(-0.178885,0,-0.98387)
AutoGenParent475ID39.collider:SetHalfLengths(0.3,9.56758,5.59017)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID39.collider)
table.insert(colliders,AutoGenParent475ID39)
AutoGenParent475ID40 = {}
AutoGenParent475ID40.collider = OBBCollider.Create(-1)
AutoGenParent475ID40.collider:SetOffset(139.5,48.7857,153)
AutoGenParent475ID40.collider:SetZAxis(0.351123,0,-0.936329)
AutoGenParent475ID40.collider:SetHalfLengths(0.3,6.44826,4.272)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID40.collider)
table.insert(colliders,AutoGenParent475ID40)
AutoGenParent475ID41 = {}
AutoGenParent475ID41.collider = OBBCollider.Create(-1)
AutoGenParent475ID41.collider:SetOffset(144.5,50.234,147.5)
AutoGenParent475ID41.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent475ID41.collider:SetHalfLengths(0.3,5.22281,3.80789)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID41.collider)
table.insert(colliders,AutoGenParent475ID41)
AutoGenParent475ID42 = {}
AutoGenParent475ID42.collider = OBBCollider.Create(-1)
AutoGenParent475ID42.collider:SetOffset(181.5,55.2472,112)
AutoGenParent475ID42.collider:SetZAxis(-0.287348,0,-0.957826)
AutoGenParent475ID42.collider:SetHalfLengths(0.3,6.55966,15.6605)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID42.collider)
table.insert(colliders,AutoGenParent475ID42)
AutoGenParent475ID43 = {}
AutoGenParent475ID43.collider = OBBCollider.Create(-1)
AutoGenParent475ID43.collider:SetOffset(202.5,52.9077,36)
AutoGenParent475ID43.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent475ID43.collider:SetHalfLengths(0.3,5.89124,4.03113)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID43.collider)
table.insert(colliders,AutoGenParent475ID43)
AutoGenParent475ID44 = {}
AutoGenParent475ID44.collider = OBBCollider.Create(-1)
AutoGenParent475ID44.collider:SetOffset(204.5,52.2393,52)
AutoGenParent475ID44.collider:SetZAxis(-0.83205,0,0.5547)
AutoGenParent475ID44.collider:SetHalfLengths(0.3,6.44826,5.40833)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID44.collider)
table.insert(colliders,AutoGenParent475ID44)
AutoGenParent475ID45 = {}
AutoGenParent475ID45.collider = OBBCollider.Create(-1)
AutoGenParent475ID45.collider:SetOffset(193.5,54.5788,70.5)
AutoGenParent475ID45.collider:SetZAxis(-0.0766965,0,0.997055)
AutoGenParent475ID45.collider:SetHalfLengths(0.3,6.00264,6.5192)
AutoGenParent475ID35.collider:AddChild(AutoGenParent475ID45.collider)
table.insert(colliders,AutoGenParent475ID45)
AutoGenParent475ID46 = {}
AutoGenParent475ID46.collider = AABBCollider.Create(-1)
AutoGenParent475ID46.collider:SetOffset(0,0,0)
AutoGenParent475ID46.collider:SetMinPos(36.8512,2.71863,33.7004)
AutoGenParent475ID46.collider:SetMaxPos(225.016,61.584,215.26)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID46.collider)
table.insert(colliders,AutoGenParent475ID46)
AutoGenParent475ID47 = {}
AutoGenParent475ID47.collider = OBBCollider.Create(-1)
AutoGenParent475ID47.collider:SetOffset(62,11.4009,208)
AutoGenParent475ID47.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent475ID47.collider:SetHalfLengths(0.3,8.68226,5.09902)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID47.collider)
table.insert(colliders,AutoGenParent475ID47)
AutoGenParent475ID48 = {}
AutoGenParent475ID48.collider = OBBCollider.Create(-1)
AutoGenParent475ID48.collider:SetOffset(71.5,15.0832,205.5)
AutoGenParent475ID48.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent475ID48.collider:SetHalfLengths(0.3,8.24039,4.74342)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID48.collider)
table.insert(colliders,AutoGenParent475ID48)
AutoGenParent475ID49 = {}
AutoGenParent475ID49.collider = OBBCollider.Create(-1)
AutoGenParent475ID49.collider:SetOffset(79,18.3236,202.5)
AutoGenParent475ID49.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent475ID49.collider:SetHalfLengths(0.3,6.76749,3.3541)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID49.collider)
table.insert(colliders,AutoGenParent475ID49)
AutoGenParent475ID50 = {}
AutoGenParent475ID50.collider = OBBCollider.Create(-1)
AutoGenParent475ID50.collider:SetOffset(105,27.0137,192.5)
AutoGenParent475ID50.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent475ID50.collider:SetHalfLengths(0.3,8.68227,4.71699)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID50.collider)
table.insert(colliders,AutoGenParent475ID50)
AutoGenParent475ID51 = {}
AutoGenParent475ID51.collider = OBBCollider.Create(-1)
AutoGenParent475ID51.collider:SetOffset(40.5,8.60238,213)
AutoGenParent475ID51.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent475ID51.collider:SetHalfLengths(0.3,5.73645,4.03113)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID51.collider)
table.insert(colliders,AutoGenParent475ID51)
AutoGenParent475ID52 = {}
AutoGenParent475ID52.collider = OBBCollider.Create(-1)
AutoGenParent475ID52.collider:SetOffset(152,50.4568,146.5)
AutoGenParent475ID52.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent475ID52.collider:SetHalfLengths(0.3,5.22281,4.03113)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID52.collider)
table.insert(colliders,AutoGenParent475ID52)
AutoGenParent475ID53 = {}
AutoGenParent475ID53.collider = OBBCollider.Create(-1)
AutoGenParent475ID53.collider:SetOffset(161.5,50.234,149)
AutoGenParent475ID53.collider:SetZAxis(0.939793,0,0.341743)
AutoGenParent475ID53.collider:SetHalfLengths(0.3,6.89388,5.85235)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID53.collider)
table.insert(colliders,AutoGenParent475ID53)
AutoGenParent475ID54 = {}
AutoGenParent475ID54.collider = OBBCollider.Create(-1)
AutoGenParent475ID54.collider:SetOffset(215.5,52.0165,34.5)
AutoGenParent475ID54.collider:SetZAxis(0.998618,0,0.0525588)
AutoGenParent475ID54.collider:SetHalfLengths(0.3,9.01056,9.51315)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID54.collider)
table.insert(colliders,AutoGenParent475ID54)
AutoGenParent475ID55 = {}
AutoGenParent475ID55.collider = OBBCollider.Create(-1)
AutoGenParent475ID55.collider:SetOffset(213,50.4568,48.5)
AutoGenParent475ID55.collider:SetZAxis(-0.992278,0,0.124035)
AutoGenParent475ID55.collider:SetHalfLengths(0.3,6.78247,4.03113)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID55.collider)
table.insert(colliders,AutoGenParent475ID55)
AutoGenParent475ID56 = {}
AutoGenParent475ID56.collider = OBBCollider.Create(-1)
AutoGenParent475ID56.collider:SetOffset(194,55.5814,84)
AutoGenParent475ID56.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent475ID56.collider:SetHalfLengths(0.3,6.00264,7.07107)
AutoGenParent475ID46.collider:AddChild(AutoGenParent475ID56.collider)
table.insert(colliders,AutoGenParent475ID56)
AutoGenParent475ID57 = {}
AutoGenParent475ID57.collider = AABBCollider.Create(-1)
AutoGenParent475ID57.collider:SetOffset(0,0,0)
AutoGenParent475ID57.collider:SetMinPos(43.9576,-1.70009,90.9051)
AutoGenParent475ID57.collider:SetMaxPos(200.285,62.1411,217.3)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID57.collider)
table.insert(colliders,AutoGenParent475ID57)
AutoGenParent475ID58 = {}
AutoGenParent475ID58.collider = OBBCollider.Create(-1)
AutoGenParent475ID58.collider:SetOffset(111,30.696,195.5)
AutoGenParent475ID58.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent475ID58.collider:SetHalfLengths(0.3,6.17832,2.06155)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID58.collider)
table.insert(colliders,AutoGenParent475ID58)
AutoGenParent475ID59 = {}
AutoGenParent475ID59.collider = OBBCollider.Create(-1)
AutoGenParent475ID59.collider:SetOffset(107,34.6728,203)
AutoGenParent475ID59.collider:SetZAxis(-0.780869,0,-0.624695)
AutoGenParent475ID59.collider:SetHalfLengths(0.3,11.0389,6.40312)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID59.collider)
table.insert(colliders,AutoGenParent475ID59)
AutoGenParent475ID60 = {}
AutoGenParent475ID60.collider = OBBCollider.Create(-1)
AutoGenParent475ID60.collider:SetOffset(101,28.6339,199)
AutoGenParent475ID60.collider:SetZAxis(-1,0,0)
AutoGenParent475ID60.collider:SetHalfLengths(0.3,6.32562,1)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID60.collider)
table.insert(colliders,AutoGenParent475ID60)
AutoGenParent475ID61 = {}
AutoGenParent475ID61.collider = OBBCollider.Create(-1)
AutoGenParent475ID61.collider:SetOffset(95,27.3083,202.5)
AutoGenParent475ID61.collider:SetZAxis(-0.819232,0,0.573462)
AutoGenParent475ID61.collider:SetHalfLengths(0.3,9.7133,6.10328)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID61.collider)
table.insert(colliders,AutoGenParent475ID61)
AutoGenParent475ID62 = {}
AutoGenParent475ID62.collider = OBBCollider.Create(-1)
AutoGenParent475ID62.collider:SetOffset(89,22.595,207.5)
AutoGenParent475ID62.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent475ID62.collider:SetHalfLengths(0.3,6.03103,1.80278)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID62.collider)
table.insert(colliders,AutoGenParent475ID62)
AutoGenParent475ID63 = {}
AutoGenParent475ID63.collider = OBBCollider.Create(-1)
AutoGenParent475ID63.collider:SetOffset(51,9.33883,216)
AutoGenParent475ID63.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent475ID63.collider:SetHalfLengths(0.3,5.58916,7.07107)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID63.collider)
table.insert(colliders,AutoGenParent475ID63)
AutoGenParent475ID64 = {}
AutoGenParent475ID64.collider = OBBCollider.Create(-1)
AutoGenParent475ID64.collider:SetOffset(63,8.74967,217)
AutoGenParent475ID64.collider:SetZAxis(1,0,0)
AutoGenParent475ID64.collider:SetHalfLengths(0.3,10.4498,5)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID64.collider)
table.insert(colliders,AutoGenParent475ID64)
AutoGenParent475ID65 = {}
AutoGenParent475ID65.collider = OBBCollider.Create(-1)
AutoGenParent475ID65.collider:SetOffset(141,40.5418,173)
AutoGenParent475ID65.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent475ID65.collider:SetHalfLengths(0.3,8.67635,5.09902)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID65.collider)
table.insert(colliders,AutoGenParent475ID65)
AutoGenParent475ID66 = {}
AutoGenParent475ID66.collider = OBBCollider.Create(-1)
AutoGenParent475ID66.collider:SetOffset(197.5,56.584,98.5)
AutoGenParent475ID66.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent475ID66.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID66.collider)
table.insert(colliders,AutoGenParent475ID66)
AutoGenParent475ID67 = {}
AutoGenParent475ID67.collider = OBBCollider.Create(-1)
AutoGenParent475ID67.collider:SetOffset(153.5,50.5682,161.5)
AutoGenParent475ID67.collider:SetZAxis(-0.393919,0,0.919145)
AutoGenParent475ID67.collider:SetHalfLengths(0.3,6.67107,3.80789)
AutoGenParent475ID57.collider:AddChild(AutoGenParent475ID67.collider)
table.insert(colliders,AutoGenParent475ID67)
AutoGenParent475ID68 = {}
AutoGenParent475ID68.collider = AABBCollider.Create(-1)
AutoGenParent475ID68.collider:SetOffset(0,0,0)
AutoGenParent475ID68.collider:SetMinPos(67.8529,7.72652,34.7033)
AutoGenParent475ID68.collider:SetMaxPos(245.044,62.6981,226.261)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID68.collider)
table.insert(colliders,AutoGenParent475ID68)
AutoGenParent475ID69 = {}
AutoGenParent475ID69.collider = OBBCollider.Create(-1)
AutoGenParent475ID69.collider:SetOffset(115.5,31.8743,198)
AutoGenParent475ID69.collider:SetZAxis(0.780869,0,0.624695)
AutoGenParent475ID69.collider:SetHalfLengths(0.3,7.79852,3.20156)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID69.collider)
table.insert(colliders,AutoGenParent475ID69)
AutoGenParent475ID70 = {}
AutoGenParent475ID70.collider = OBBCollider.Create(-1)
AutoGenParent475ID70.collider:SetOffset(90,21.5639,213.5)
AutoGenParent475ID70.collider:SetZAxis(0.406139,0,0.913812)
AutoGenParent475ID70.collider:SetHalfLengths(0.3,5.88374,4.92443)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID70.collider)
table.insert(colliders,AutoGenParent475ID70)
AutoGenParent475ID71 = {}
AutoGenParent475ID71.collider = OBBCollider.Create(-1)
AutoGenParent475ID71.collider:SetOffset(76,14.1994,221.5)
AutoGenParent475ID71.collider:SetZAxis(0.871576,0,0.490261)
AutoGenParent475ID71.collider:SetHalfLengths(0.3,6.4729,9.17878)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID71.collider)
table.insert(colliders,AutoGenParent475ID71)
AutoGenParent475ID72 = {}
AutoGenParent475ID72.collider = OBBCollider.Create(-1)
AutoGenParent475ID72.collider:SetOffset(143,38.8707,185)
AutoGenParent475ID72.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent475ID72.collider:SetHalfLengths(0.3,6.67107,7.07107)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID72.collider)
table.insert(colliders,AutoGenParent475ID72)
AutoGenParent475ID73 = {}
AutoGenParent475ID73.collider = OBBCollider.Create(-1)
AutoGenParent475ID73.collider:SetOffset(170,52.1279,152)
AutoGenParent475ID73.collider:SetZAxis(0.948683,0,0.316228)
AutoGenParent475ID73.collider:SetHalfLengths(0.3,5.66843,3.16228)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID73.collider)
table.insert(colliders,AutoGenParent475ID73)
AutoGenParent475ID74 = {}
AutoGenParent475ID74.collider = OBBCollider.Create(-1)
AutoGenParent475ID74.collider:SetOffset(186.5,55.3586,129)
AutoGenParent475ID74.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent475ID74.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID74.collider)
table.insert(colliders,AutoGenParent475ID74)
AutoGenParent475ID75 = {}
AutoGenParent475ID75.collider = OBBCollider.Create(-1)
AutoGenParent475ID75.collider:SetOffset(235,48.0059,36.5)
AutoGenParent475ID75.collider:SetZAxis(0.988936,0,0.14834)
AutoGenParent475ID75.collider:SetHalfLengths(0.3,7.78511,10.1119)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID75.collider)
table.insert(colliders,AutoGenParent475ID75)
AutoGenParent475ID76 = {}
AutoGenParent475ID76.collider = OBBCollider.Create(-1)
AutoGenParent475ID76.collider:SetOffset(221.5,48.4515,48.5)
AutoGenParent475ID76.collider:SetZAxis(-0.993884,0,-0.110432)
AutoGenParent475ID76.collider:SetHalfLengths(0.3,7.00528,4.52769)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID76.collider)
table.insert(colliders,AutoGenParent475ID76)
AutoGenParent475ID77 = {}
AutoGenParent475ID77.collider = OBBCollider.Create(-1)
AutoGenParent475ID77.collider:SetOffset(160.5,54.1331,160.5)
AutoGenParent475ID77.collider:SetZAxis(-0.910366,0,-0.413803)
AutoGenParent475ID77.collider:SetHalfLengths(0.3,8.56494,6.04152)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID77.collider)
table.insert(colliders,AutoGenParent475ID77)
AutoGenParent475ID78 = {}
AutoGenParent475ID78.collider = OBBCollider.Create(-1)
AutoGenParent475ID78.collider:SetOffset(155.5,48.8971,169)
AutoGenParent475ID78.collider:SetZAxis(0.658505,0,0.752577)
AutoGenParent475ID78.collider:SetHalfLengths(0.3,5.44561,5.31507)
AutoGenParent475ID68.collider:AddChild(AutoGenParent475ID78.collider)
table.insert(colliders,AutoGenParent475ID78)
AutoGenParent475ID79 = {}
AutoGenParent475ID79.collider = AABBCollider.Create(-1)
AutoGenParent475ID79.collider:SetOffset(0,0,0)
AutoGenParent475ID79.collider:SetMinPos(91.9272,13.029,48.7154)
AutoGenParent475ID79.collider:SetMaxPos(241.095,62.0297,221.291)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID79.collider)
table.insert(colliders,AutoGenParent475ID79)
AutoGenParent475ID80 = {}
AutoGenParent475ID80.collider = OBBCollider.Create(-1)
AutoGenParent475ID80.collider:SetOffset(121,34.6728,206)
AutoGenParent475ID80.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID80.collider:SetHalfLengths(0.3,6.76749,6.7082)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID80.collider)
table.insert(colliders,AutoGenParent475ID80)
AutoGenParent475ID81 = {}
AutoGenParent475ID81.collider = OBBCollider.Create(-1)
AutoGenParent475ID81.collider:SetOffset(98,22.4477,219.5)
AutoGenParent475ID81.collider:SetZAxis(0.970142,0,0.242536)
AutoGenParent475ID81.collider:SetHalfLengths(0.3,9.41872,6.18466)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID81.collider)
table.insert(colliders,AutoGenParent475ID81)
AutoGenParent475ID82 = {}
AutoGenParent475ID82.collider = OBBCollider.Create(-1)
AutoGenParent475ID82.collider:SetOffset(114,36.1457,210.5)
AutoGenParent475ID82.collider:SetZAxis(-0.496139,0,-0.868243)
AutoGenParent475ID82.collider:SetHalfLengths(0.3,6.4729,4.03113)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID82.collider)
table.insert(colliders,AutoGenParent475ID82)
AutoGenParent475ID83 = {}
AutoGenParent475ID83.collider = OBBCollider.Create(-1)
AutoGenParent475ID83.collider:SetOffset(176.5,52.7963,152.5)
AutoGenParent475ID83.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent475ID83.collider:SetHalfLengths(0.3,6.33685,3.53553)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID83.collider)
table.insert(colliders,AutoGenParent475ID83)
AutoGenParent475ID84 = {}
AutoGenParent475ID84.collider = OBBCollider.Create(-1)
AutoGenParent475ID84.collider:SetOffset(186,55.5814,143.5)
AutoGenParent475ID84.collider:SetZAxis(0.371391,0,-0.928477)
AutoGenParent475ID84.collider:SetHalfLengths(0.3,5.33421,2.69258)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID84.collider)
table.insert(colliders,AutoGenParent475ID84)
AutoGenParent475ID85 = {}
AutoGenParent475ID85.collider = OBBCollider.Create(-1)
AutoGenParent475ID85.collider:SetOffset(187.5,55.2472,138)
AutoGenParent475ID85.collider:SetZAxis(0.164399,0,-0.986394)
AutoGenParent475ID85.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID85.collider)
table.insert(colliders,AutoGenParent475ID85)
AutoGenParent475ID86 = {}
AutoGenParent475ID86.collider = OBBCollider.Create(-1)
AutoGenParent475ID86.collider:SetOffset(187.5,55.2472,133)
AutoGenParent475ID86.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent475ID86.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID86.collider)
table.insert(colliders,AutoGenParent475ID86)
AutoGenParent475ID87 = {}
AutoGenParent475ID87.collider = OBBCollider.Create(-1)
AutoGenParent475ID87.collider:SetOffset(233.5,44.998,51.5)
AutoGenParent475ID87.collider:SetZAxis(-0.948683,0,-0.316228)
AutoGenParent475ID87.collider:SetHalfLengths(0.3,8.45354,7.90569)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID87.collider)
table.insert(colliders,AutoGenParent475ID87)
AutoGenParent475ID88 = {}
AutoGenParent475ID88.collider = OBBCollider.Create(-1)
AutoGenParent475ID88.collider:SetOffset(202.5,56.027,116.5)
AutoGenParent475ID88.collider:SetZAxis(0.231621,0,0.972806)
AutoGenParent475ID88.collider:SetHalfLengths(0.3,5.89124,10.7935)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID88.collider)
table.insert(colliders,AutoGenParent475ID88)
AutoGenParent475ID89 = {}
AutoGenParent475ID89.collider = OBBCollider.Create(-1)
AutoGenParent475ID89.collider:SetOffset(170.5,55.5814,165.5)
AutoGenParent475ID89.collider:SetZAxis(-0.874157,0,-0.485643)
AutoGenParent475ID89.collider:SetHalfLengths(0.3,6.44826,5.14782)
AutoGenParent475ID79.collider:AddChild(AutoGenParent475ID89.collider)
table.insert(colliders,AutoGenParent475ID89)
AutoGenParent475ID90 = {}
AutoGenParent475ID90.collider = AABBCollider.Create(-1)
AutoGenParent475ID90.collider:SetOffset(0,0,0)
AutoGenParent475ID90.collider:SetMinPos(123.927,27.0216,37.73)
AutoGenParent475ID90.collider:SetMaxPos(276.131,61.4726,212.291)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID90.collider)
table.insert(colliders,AutoGenParent475ID90)
AutoGenParent475ID91 = {}
AutoGenParent475ID91.collider = OBBCollider.Create(-1)
AutoGenParent475ID91.collider:SetOffset(126,32.9053,211.5)
AutoGenParent475ID91.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent475ID91.collider:SetHalfLengths(0.3,5.88375,2.06155)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID91.collider)
table.insert(colliders,AutoGenParent475ID91)
AutoGenParent475ID92 = {}
AutoGenParent475ID92.collider = OBBCollider.Create(-1)
AutoGenParent475ID92.collider:SetOffset(260.5,45.2208,45.5)
AutoGenParent475ID92.collider:SetZAxis(0.900159,0,0.435561)
AutoGenParent475ID92.collider:SetHalfLengths(0.3,9.23337,17.2192)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID92.collider)
table.insert(colliders,AutoGenParent475ID92)
AutoGenParent475ID93 = {}
AutoGenParent475ID93.collider = OBBCollider.Create(-1)
AutoGenParent475ID93.collider:SetOffset(248,40.9874,57)
AutoGenParent475ID93.collider:SetZAxis(-0.919145,0,-0.393919)
AutoGenParent475ID93.collider:SetHalfLengths(0.3,9.01056,7.61577)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID93.collider)
table.insert(colliders,AutoGenParent475ID93)
AutoGenParent475ID94 = {}
AutoGenParent475ID94.collider = OBBCollider.Create(-1)
AutoGenParent475ID94.collider:SetOffset(205.5,55.1358,132.5)
AutoGenParent475ID94.collider:SetZAxis(0.0905358,0,0.995893)
AutoGenParent475ID94.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID94.collider)
table.insert(colliders,AutoGenParent475ID94)
AutoGenParent475ID95 = {}
AutoGenParent475ID95.collider = OBBCollider.Create(-1)
AutoGenParent475ID95.collider:SetOffset(206.5,55.47,143.5)
AutoGenParent475ID95.collider:SetZAxis(0.0905358,0,0.995893)
AutoGenParent475ID95.collider:SetHalfLengths(0.3,5.22281,5.52268)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID95.collider)
table.insert(colliders,AutoGenParent475ID95)
AutoGenParent475ID96 = {}
AutoGenParent475ID96.collider = OBBCollider.Create(-1)
AutoGenParent475ID96.collider:SetOffset(180,56.027,169)
AutoGenParent475ID96.collider:SetZAxis(-0.980581,0,-0.196116)
AutoGenParent475ID96.collider:SetHalfLengths(0.3,5.44562,5.09902)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID96.collider)
table.insert(colliders,AutoGenParent475ID96)
AutoGenParent475ID97 = {}
AutoGenParent475ID97.collider = OBBCollider.Create(-1)
AutoGenParent475ID97.collider:SetOffset(163,43.6611,194.5)
AutoGenParent475ID97.collider:SetZAxis(0,0,1)
AutoGenParent475ID97.collider:SetHalfLengths(0.3,8.34213,9.5)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID97.collider)
table.insert(colliders,AutoGenParent475ID97)
AutoGenParent475ID98 = {}
AutoGenParent475ID98.collider = OBBCollider.Create(-1)
AutoGenParent475ID98.collider:SetOffset(218.5,38.9821,136)
AutoGenParent475ID98.collider:SetZAxis(-0.209529,0,-0.977802)
AutoGenParent475ID98.collider:SetHalfLengths(0.3,7.33949,7.15891)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID98.collider)
table.insert(colliders,AutoGenParent475ID98)
AutoGenParent475ID99 = {}
AutoGenParent475ID99.collider = OBBCollider.Create(-1)
AutoGenParent475ID99.collider:SetOffset(221.5,41.3216,126)
AutoGenParent475ID99.collider:SetZAxis(0.83205,0,-0.5547)
AutoGenParent475ID99.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID99.collider)
table.insert(colliders,AutoGenParent475ID99)
AutoGenParent475ID100 = {}
AutoGenParent475ID100.collider = OBBCollider.Create(-1)
AutoGenParent475ID100.collider:SetOffset(165.372,45.0938,192.965)
AutoGenParent475ID100.collider:SetZAxis(0,0,1)
AutoGenParent475ID100.collider:SetHalfLengths(3.18928,5.74361,3.11039)
AutoGenParent475ID90.collider:AddChild(AutoGenParent475ID100.collider)
table.insert(colliders,AutoGenParent475ID100)
AutoGenParent475ID101 = {}
AutoGenParent475ID101.collider = AABBCollider.Create(-1)
AutoGenParent475ID101.collider:SetOffset(0,0,0)
AutoGenParent475ID101.collider:SetMinPos(118.951,23.6339,59.7622)
AutoGenParent475ID101.collider:SetMaxPos(268.183,49.998,234.296)
AutoGenParent475ID1.collider:AddChild(AutoGenParent475ID101.collider)
table.insert(colliders,AutoGenParent475ID101)
AutoGenParent475ID102 = {}
AutoGenParent475ID102.collider = OBBCollider.Create(-1)
AutoGenParent475ID102.collider:SetOffset(122,30.4014,233.5)
AutoGenParent475ID102.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent475ID102.collider:SetHalfLengths(0.3,6.76749,3.04138)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID102.collider)
table.insert(colliders,AutoGenParent475ID102)
AutoGenParent475ID103 = {}
AutoGenParent475ID103.collider = OBBCollider.Create(-1)
AutoGenParent475ID103.collider:SetOffset(138.5,35.5286,222)
AutoGenParent475ID103.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent475ID103.collider:SetHalfLengths(0.3,5.33422,2.69258)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID103.collider)
table.insert(colliders,AutoGenParent475ID103)
AutoGenParent475ID104 = {}
AutoGenParent475ID104.collider = OBBCollider.Create(-1)
AutoGenParent475ID104.collider:SetOffset(143,35.1944,220.5)
AutoGenParent475ID104.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent475ID104.collider:SetHalfLengths(0.3,5,2.06155)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID104.collider)
table.insert(colliders,AutoGenParent475ID104)
AutoGenParent475ID105 = {}
AutoGenParent475ID105.collider = OBBCollider.Create(-1)
AutoGenParent475ID105.collider:SetOffset(146.5,35.1944,221.5)
AutoGenParent475ID105.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID105.collider:SetHalfLengths(0.3,5.89124,2.12132)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID105.collider)
table.insert(colliders,AutoGenParent475ID105)
AutoGenParent475ID106 = {}
AutoGenParent475ID106.collider = OBBCollider.Create(-1)
AutoGenParent475ID106.collider:SetOffset(261.5,38.7593,65)
AutoGenParent475ID106.collider:SetZAxis(-0.792624,0,-0.609711)
AutoGenParent475ID106.collider:SetHalfLengths(0.3,7.22809,8.20061)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID106.collider)
table.insert(colliders,AutoGenParent475ID106)
AutoGenParent475ID107 = {}
AutoGenParent475ID107.collider = OBBCollider.Create(-1)
AutoGenParent475ID107.collider:SetOffset(184,42.8813,193)
AutoGenParent475ID107.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent475ID107.collider:SetHalfLengths(0.3,5.22281,7.61577)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID107.collider)
table.insert(colliders,AutoGenParent475ID107)
AutoGenParent475ID108 = {}
AutoGenParent475ID108.collider = OBBCollider.Create(-1)
AutoGenParent475ID108.collider:SetOffset(192.5,42.6585,185.5)
AutoGenParent475ID108.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent475ID108.collider:SetHalfLengths(0.3,7.33949,4.74342)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID108.collider)
table.insert(colliders,AutoGenParent475ID108)
AutoGenParent475ID109 = {}
AutoGenParent475ID109.collider = OBBCollider.Create(-1)
AutoGenParent475ID109.collider:SetOffset(201,40.319,176.5)
AutoGenParent475ID109.collider:SetZAxis(0.841179,0,-0.540758)
AutoGenParent475ID109.collider:SetHalfLengths(0.3,6.00264,8.32166)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID109.collider)
table.insert(colliders,AutoGenParent475ID109)
AutoGenParent475ID110 = {}
AutoGenParent475ID110.collider = OBBCollider.Create(-1)
AutoGenParent475ID110.collider:SetOffset(213,39.3163,166.5)
AutoGenParent475ID110.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent475ID110.collider:SetHalfLengths(0.3,7.89651,7.43303)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID110.collider)
table.insert(colliders,AutoGenParent475ID110)
AutoGenParent475ID111 = {}
AutoGenParent475ID111.collider = OBBCollider.Create(-1)
AutoGenParent475ID111.collider:SetOffset(221,36.6426,148)
AutoGenParent475ID111.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent475ID111.collider:SetHalfLengths(0.3,7.33949,5.09902)
AutoGenParent475ID101.collider:AddChild(AutoGenParent475ID111.collider)
table.insert(colliders,AutoGenParent475ID111)
AutoGenParent475ID112 = {}
AutoGenParent475ID112.collider = AABBCollider.Create(-1)
AutoGenParent475ID112.collider:SetOffset(0,0,0)
AutoGenParent475ID112.collider:SetMinPos(1.70104,-2.14196,52.7879)
AutoGenParent475ID112.collider:SetMaxPos(309.235,61.027,252.296)
AutoGenParent475ID.collider:AddChild(AutoGenParent475ID112.collider)
table.insert(colliders,AutoGenParent475ID112)
AutoGenParent475ID113 = {}
AutoGenParent475ID113.collider = AABBCollider.Create(-1)
AutoGenParent475ID113.collider:SetOffset(0,0,0)
AutoGenParent475ID113.collider:SetMinPos(3.76,0.803856,147.802)
AutoGenParent475ID113.collider:SetMaxPos(56.2258,18.8731,173.23)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID113.collider)
table.insert(colliders,AutoGenParent475ID113)
AutoGenParent475ID114 = {}
AutoGenParent475ID114.collider = OBBCollider.Create(-1)
AutoGenParent475ID114.collider:SetOffset(52.5,9.33883,152)
AutoGenParent475ID114.collider:SetZAxis(-0.658505,0,0.752577)
AutoGenParent475ID114.collider:SetHalfLengths(0.3,5.14729,5.31507)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID114.collider)
table.insert(colliders,AutoGenParent475ID114)
AutoGenParent475ID115 = {}
AutoGenParent475ID115.collider = OBBCollider.Create(-1)
AutoGenParent475ID115.collider:SetOffset(44,9.48612,157)
AutoGenParent475ID115.collider:SetZAxis(-0.980581,0,0.196116)
AutoGenParent475ID115.collider:SetHalfLengths(0.3,5.14729,5.09902)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID115.collider)
table.insert(colliders,AutoGenParent475ID115)
AutoGenParent475ID116 = {}
AutoGenParent475ID116.collider = OBBCollider.Create(-1)
AutoGenParent475ID116.collider:SetOffset(35,7.12947,155)
AutoGenParent475ID116.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent475ID116.collider:SetHalfLengths(0.3,5.14729,3.16228)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID116.collider)
table.insert(colliders,AutoGenParent475ID116)
AutoGenParent475ID117 = {}
AutoGenParent475ID117.collider = OBBCollider.Create(-1)
AutoGenParent475ID117.collider:SetOffset(37,7.27676,160)
AutoGenParent475ID117.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID117.collider:SetHalfLengths(0.3,5.29458,2.23607)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID117.collider)
table.insert(colliders,AutoGenParent475ID117)
AutoGenParent475ID118 = {}
AutoGenParent475ID118.collider = OBBCollider.Create(-1)
AutoGenParent475ID118.collider:SetOffset(39.5,6.98218,163)
AutoGenParent475ID118.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent475ID118.collider:SetHalfLengths(0.3,5.14729,1.80278)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID118.collider)
table.insert(colliders,AutoGenParent475ID118)
AutoGenParent475ID119 = {}
AutoGenParent475ID119.collider = OBBCollider.Create(-1)
AutoGenParent475ID119.collider:SetOffset(43.5,7.12947,165)
AutoGenParent475ID119.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent475ID119.collider:SetHalfLengths(0.3,5.44187,2.69258)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID119.collider)
table.insert(colliders,AutoGenParent475ID119)
AutoGenParent475ID120 = {}
AutoGenParent475ID120.collider = OBBCollider.Create(-1)
AutoGenParent475ID120.collider:SetOffset(29.5,6.54031,168)
AutoGenParent475ID120.collider:SetZAxis(-1,0,0)
AutoGenParent475ID120.collider:SetHalfLengths(0.3,5.44187,1.5)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID120.collider)
table.insert(colliders,AutoGenParent475ID120)
AutoGenParent475ID121 = {}
AutoGenParent475ID121.collider = OBBCollider.Create(-1)
AutoGenParent475ID121.collider:SetOffset(25,6.09844,170.5)
AutoGenParent475ID121.collider:SetZAxis(-0.768221,0,0.640184)
AutoGenParent475ID121.collider:SetHalfLengths(0.3,5.29458,3.90512)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID121.collider)
table.insert(colliders,AutoGenParent475ID121)
AutoGenParent475ID122 = {}
AutoGenParent475ID122.collider = OBBCollider.Create(-1)
AutoGenParent475ID122.collider:SetOffset(7,6.54031,167)
AutoGenParent475ID122.collider:SetZAxis(0.6,0,0.8)
AutoGenParent475ID122.collider:SetHalfLengths(0.3,5.29458,5)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID122.collider)
table.insert(colliders,AutoGenParent475ID122)
AutoGenParent475ID123 = {}
AutoGenParent475ID123.collider = OBBCollider.Create(-1)
AutoGenParent475ID123.collider:SetOffset(39.8641,12.8281,155.087)
AutoGenParent475ID123.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
AutoGenParent475ID123.collider:SetHalfLengths(2.11687,6.02749,2.51378)
AutoGenParent475ID113.collider:AddChild(AutoGenParent475ID123.collider)
table.insert(colliders,AutoGenParent475ID123)
AutoGenParent475ID124 = {}
AutoGenParent475ID124.collider = AABBCollider.Create(-1)
AutoGenParent475ID124.collider:SetOffset(0,0,0)
AutoGenParent475ID124.collider:SetMinPos(2.80476,0.361984,165.7)
AutoGenParent475ID124.collider:SetMaxPos(58.2683,14.4158,183.858)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID124.collider)
table.insert(colliders,AutoGenParent475ID124)
AutoGenParent475ID125 = {}
AutoGenParent475ID125.collider = OBBCollider.Create(-1)
AutoGenParent475ID125.collider:SetOffset(48.5,7.57134,166)
AutoGenParent475ID125.collider:SetZAxis(1,0,0)
AutoGenParent475ID125.collider:SetHalfLengths(0.3,5.44187,2.5)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID125.collider)
table.insert(colliders,AutoGenParent475ID125)
AutoGenParent475ID126 = {}
AutoGenParent475ID126.collider = OBBCollider.Create(-1)
AutoGenParent475ID126.collider:SetOffset(54,8.01322,168)
AutoGenParent475ID126.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent475ID126.collider:SetHalfLengths(0.3,5,3.60555)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID126.collider)
table.insert(colliders,AutoGenParent475ID126)
AutoGenParent475ID127 = {}
AutoGenParent475ID127.collider = OBBCollider.Create(-1)
AutoGenParent475ID127.collider:SetOffset(57.5,8.01322,171)
AutoGenParent475ID127.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID127.collider:SetHalfLengths(0.3,5,1.11803)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID127.collider)
table.insert(colliders,AutoGenParent475ID127)
AutoGenParent475ID128 = {}
AutoGenParent475ID128.collider = OBBCollider.Create(-1)
AutoGenParent475ID128.collider:SetOffset(35,7.12947,176.5)
AutoGenParent475ID128.collider:SetZAxis(-0.274721,0,-0.961524)
AutoGenParent475ID128.collider:SetHalfLengths(0.3,5.58916,3.64005)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID128.collider)
table.insert(colliders,AutoGenParent475ID128)
AutoGenParent475ID129 = {}
AutoGenParent475ID129.collider = OBBCollider.Create(-1)
AutoGenParent475ID129.collider:SetOffset(32.5,6.54031,170.5)
AutoGenParent475ID129.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent475ID129.collider:SetHalfLengths(0.3,5,2.91548)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID129.collider)
table.insert(colliders,AutoGenParent475ID129)
AutoGenParent475ID130 = {}
AutoGenParent475ID130.collider = OBBCollider.Create(-1)
AutoGenParent475ID130.collider:SetOffset(22,5.80386,174.5)
AutoGenParent475ID130.collider:SetZAxis(0,0,1)
AutoGenParent475ID130.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID130.collider)
table.insert(colliders,AutoGenParent475ID130)
AutoGenParent475ID131 = {}
AutoGenParent475ID131.collider = OBBCollider.Create(-1)
AutoGenParent475ID131.collider:SetOffset(23.5,5.80386,179.5)
AutoGenParent475ID131.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent475ID131.collider:SetHalfLengths(0.3,5.29458,3.80789)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID131.collider)
table.insert(colliders,AutoGenParent475ID131)
AutoGenParent475ID132 = {}
AutoGenParent475ID132.collider = OBBCollider.Create(-1)
AutoGenParent475ID132.collider:SetOffset(10,6.24573,173.5)
AutoGenParent475ID132.collider:SetZAxis(0,0,1)
AutoGenParent475ID132.collider:SetHalfLengths(0.3,5.58916,2.5)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID132.collider)
table.insert(colliders,AutoGenParent475ID132)
AutoGenParent475ID133 = {}
AutoGenParent475ID133.collider = OBBCollider.Create(-1)
AutoGenParent475ID133.collider:SetOffset(6.5,5.65657,179)
AutoGenParent475ID133.collider:SetZAxis(-0.759257,0,0.650791)
AutoGenParent475ID133.collider:SetHalfLengths(0.3,5.29458,4.60977)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID133.collider)
table.insert(colliders,AutoGenParent475ID133)
AutoGenParent475ID134 = {}
AutoGenParent475ID134.collider = OBBCollider.Create(-1)
AutoGenParent475ID134.collider:SetOffset(6.18867,8.53125,180.735)
AutoGenParent475ID134.collider:SetZAxis(-0.891114,0,-0.453779)
AutoGenParent475ID134.collider:SetHalfLengths(2.5078,5.88453,1.95815)
AutoGenParent475ID124.collider:AddChild(AutoGenParent475ID134.collider)
table.insert(colliders,AutoGenParent475ID134)
AutoGenParent475ID135 = {}
AutoGenParent475ID135.collider = AABBCollider.Create(-1)
AutoGenParent475ID135.collider:SetOffset(0,0,0)
AutoGenParent475ID135.collider:SetMinPos(1.70104,-2.14196,171.963)
AutoGenParent475ID135.collider:SetMaxPos(58.2977,21.9153,196.22)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID135.collider)
table.insert(colliders,AutoGenParent475ID135)
AutoGenParent475ID136 = {}
AutoGenParent475ID136.collider = OBBCollider.Create(-1)
AutoGenParent475ID136.collider:SetOffset(57.5,8.01322,176)
AutoGenParent475ID136.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent475ID136.collider:SetHalfLengths(0.3,5,4.03113)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID136.collider)
table.insert(colliders,AutoGenParent475ID136)
AutoGenParent475ID137 = {}
AutoGenParent475ID137.collider = OBBCollider.Create(-1)
AutoGenParent475ID137.collider:SetOffset(54.5,8.01322,183)
AutoGenParent475ID137.collider:SetZAxis(-0.640184,0,0.768221)
AutoGenParent475ID137.collider:SetHalfLengths(0.3,5,3.90512)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID137.collider)
table.insert(colliders,AutoGenParent475ID137)
AutoGenParent475ID138 = {}
AutoGenParent475ID138.collider = OBBCollider.Create(-1)
AutoGenParent475ID138.collider:SetOffset(49,8.01322,186.5)
AutoGenParent475ID138.collider:SetZAxis(-0.986394,0,0.164399)
AutoGenParent475ID138.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID138.collider)
table.insert(colliders,AutoGenParent475ID138)
AutoGenParent475ID139 = {}
AutoGenParent475ID139.collider = OBBCollider.Create(-1)
AutoGenParent475ID139.collider:SetOffset(44,8.01322,187)
AutoGenParent475ID139.collider:SetZAxis(-1,0,0)
AutoGenParent475ID139.collider:SetHalfLengths(0.3,5,2)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID139.collider)
table.insert(colliders,AutoGenParent475ID139)
AutoGenParent475ID140 = {}
AutoGenParent475ID140.collider = OBBCollider.Create(-1)
AutoGenParent475ID140.collider:SetOffset(40,8.01322,185.5)
AutoGenParent475ID140.collider:SetZAxis(-0.8,0,-0.6)
AutoGenParent475ID140.collider:SetHalfLengths(0.3,5.29458,2.5)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID140.collider)
table.insert(colliders,AutoGenParent475ID140)
AutoGenParent475ID141 = {}
AutoGenParent475ID141.collider = OBBCollider.Create(-1)
AutoGenParent475ID141.collider:SetOffset(37,7.71863,182)
AutoGenParent475ID141.collider:SetZAxis(-0.447214,0,-0.894427)
AutoGenParent475ID141.collider:SetHalfLengths(0.3,5.58916,2.23607)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID141.collider)
table.insert(colliders,AutoGenParent475ID141)
AutoGenParent475ID142 = {}
AutoGenParent475ID142.collider = OBBCollider.Create(-1)
AutoGenParent475ID142.collider:SetOffset(32,5.50927,189.5)
AutoGenParent475ID142.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent475ID142.collider:SetHalfLengths(0.3,7.65123,9.55249)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID142.collider)
table.insert(colliders,AutoGenParent475ID142)
AutoGenParent475ID143 = {}
AutoGenParent475ID143.collider = OBBCollider.Create(-1)
AutoGenParent475ID143.collider:SetOffset(2.5,5.36198,188)
AutoGenParent475ID143.collider:SetZAxis(-0.0830455,0,0.996546)
AutoGenParent475ID143.collider:SetHalfLengths(0.3,6.32562,6.0208)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID143.collider)
table.insert(colliders,AutoGenParent475ID143)
AutoGenParent475ID144 = {}
AutoGenParent475ID144.collider = OBBCollider.Create(-1)
AutoGenParent475ID144.collider:SetOffset(23,4.33095,190.5)
AutoGenParent475ID144.collider:SetZAxis(0.478852,0,0.877896)
AutoGenParent475ID144.collider:SetHalfLengths(0.3,6.03103,6.26498)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID144.collider)
table.insert(colliders,AutoGenParent475ID144)
AutoGenParent475ID145 = {}
AutoGenParent475ID145.collider = OBBCollider.Create(-1)
AutoGenParent475ID145.collider:SetOffset(37.7154,11.4688,182.582)
AutoGenParent475ID145.collider:SetZAxis(-0.988898,0,0.148599)
AutoGenParent475ID145.collider:SetHalfLengths(3.65554,10.4465,3.23962)
AutoGenParent475ID135.collider:AddChild(AutoGenParent475ID145.collider)
table.insert(colliders,AutoGenParent475ID145)
AutoGenParent475ID146 = {}
AutoGenParent475ID146.collider = AABBCollider.Create(-1)
AutoGenParent475ID146.collider:SetOffset(0,0,0)
AutoGenParent475ID146.collider:SetMinPos(83.8378,3.74966,145.905)
AutoGenParent475ID146.collider:SetMaxPos(185.285,60.5814,235.252)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID146.collider)
table.insert(colliders,AutoGenParent475ID146)
AutoGenParent475ID147 = {}
AutoGenParent475ID147.collider = OBBCollider.Create(-1)
AutoGenParent475ID147.collider:SetOffset(105.5,26.8664,222.5)
AutoGenParent475ID147.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID147.collider:SetHalfLengths(0.3,6.47291,2.12132)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID147.collider)
table.insert(colliders,AutoGenParent475ID147)
AutoGenParent475ID148 = {}
AutoGenParent475ID148.collider = OBBCollider.Create(-1)
AutoGenParent475ID148.collider:SetOffset(111.5,28.3393,222)
AutoGenParent475ID148.collider:SetZAxis(0.913812,0,-0.406139)
AutoGenParent475ID148.collider:SetHalfLengths(0.3,7.65123,4.92443)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID148.collider)
table.insert(colliders,AutoGenParent475ID148)
AutoGenParent475ID149 = {}
AutoGenParent475ID149.collider = OBBCollider.Create(-1)
AutoGenParent475ID149.collider:SetOffset(116,30.9905,217)
AutoGenParent475ID149.collider:SetZAxis(0,0,-1)
AutoGenParent475ID149.collider:SetHalfLengths(0.3,10.1552,3)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID149.collider)
table.insert(colliders,AutoGenParent475ID149)
AutoGenParent475ID150 = {}
AutoGenParent475ID150.collider = OBBCollider.Create(-1)
AutoGenParent475ID150.collider:SetOffset(91,15.6723,230.5)
AutoGenParent475ID150.collider:SetZAxis(0.841179,0,0.540758)
AutoGenParent475ID150.collider:SetHalfLengths(0.3,11.9227,8.32166)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID150.collider)
table.insert(colliders,AutoGenParent475ID150)
AutoGenParent475ID151 = {}
AutoGenParent475ID151.collider = OBBCollider.Create(-1)
AutoGenParent475ID151.collider:SetOffset(132.5,34.0803,208.5)
AutoGenParent475ID151.collider:SetZAxis(0.874157,0,-0.485643)
AutoGenParent475ID151.collider:SetHalfLengths(0.3,5.66843,5.14782)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID151.collider)
table.insert(colliders,AutoGenParent475ID151)
AutoGenParent475ID152 = {}
AutoGenParent475ID152.collider = OBBCollider.Create(-1)
AutoGenParent475ID152.collider:SetOffset(139.5,34.7488,202.5)
AutoGenParent475ID152.collider:SetZAxis(0.581238,0,-0.813733)
AutoGenParent475ID152.collider:SetHalfLengths(0.3,7.22809,4.30116)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID152.collider)
table.insert(colliders,AutoGenParent475ID152)
AutoGenParent475ID153 = {}
AutoGenParent475ID153.collider = OBBCollider.Create(-1)
AutoGenParent475ID153.collider:SetOffset(143,36.9769,195.5)
AutoGenParent475ID153.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent475ID153.collider:SetHalfLengths(0.3,6.89388,3.64005)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID153.collider)
table.insert(colliders,AutoGenParent475ID153)
AutoGenParent475ID154 = {}
AutoGenParent475ID154.collider = OBBCollider.Create(-1)
AutoGenParent475ID154.collider:SetOffset(182,54.1331,150.5)
AutoGenParent475ID154.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent475ID154.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID154.collider)
table.insert(colliders,AutoGenParent475ID154)
AutoGenParent475ID155 = {}
AutoGenParent475ID155.collider = OBBCollider.Create(-1)
AutoGenParent475ID155.collider:SetOffset(184.5,54.8016,147.5)
AutoGenParent475ID155.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent475ID155.collider:SetHalfLengths(0.3,5.77983,1.58114)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID155.collider)
table.insert(colliders,AutoGenParent475ID155)
AutoGenParent475ID156 = {}
AutoGenParent475ID156.collider = OBBCollider.Create(-1)
AutoGenParent475ID156.collider:SetOffset(161,48.4515,179)
AutoGenParent475ID156.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent475ID156.collider:SetHalfLengths(0.3,9.7904,6.32456)
AutoGenParent475ID146.collider:AddChild(AutoGenParent475ID156.collider)
table.insert(colliders,AutoGenParent475ID156)
AutoGenParent475ID157 = {}
AutoGenParent475ID157.collider = AABBCollider.Create(-1)
AutoGenParent475ID157.collider:SetOffset(0,0,0)
AutoGenParent475ID157.collider:SetMinPos(97.9544,11.7034,120.706)
AutoGenParent475ID157.collider:SetMaxPos(236.059,61.027,237.297)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID157.collider)
table.insert(colliders,AutoGenParent475ID157)
AutoGenParent475ID158 = {}
AutoGenParent475ID158.collider = OBBCollider.Create(-1)
AutoGenParent475ID158.collider:SetOffset(104.5,22.595,236)
AutoGenParent475ID158.collider:SetZAxis(0.988372,0,0.152057)
AutoGenParent475ID158.collider:SetHalfLengths(0.3,10.8916,6.57647)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID158.collider)
table.insert(colliders,AutoGenParent475ID158)
AutoGenParent475ID159 = {}
AutoGenParent475ID159.collider = OBBCollider.Create(-1)
AutoGenParent475ID159.collider:SetOffset(115,28.4866,235)
AutoGenParent475ID159.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent475ID159.collider:SetHalfLengths(0.3,6.91478,4.47214)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID159.collider)
table.insert(colliders,AutoGenParent475ID159)
AutoGenParent475ID160 = {}
AutoGenParent475ID160.collider = OBBCollider.Create(-1)
AutoGenParent475ID160.collider:SetOffset(125.5,32.1689,229)
AutoGenParent475ID160.collider:SetZAxis(0.0995037,0,-0.995037)
AutoGenParent475ID160.collider:SetHalfLengths(0.3,5.58916,5.02494)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID160.collider)
table.insert(colliders,AutoGenParent475ID160)
AutoGenParent475ID161 = {}
AutoGenParent475ID161.collider = OBBCollider.Create(-1)
AutoGenParent475ID161.collider:SetOffset(127,32.758,224)
AutoGenParent475ID161.collider:SetZAxis(1,0,0)
AutoGenParent475ID161.collider:SetHalfLengths(0.3,5.14729,1)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID161.collider)
table.insert(colliders,AutoGenParent475ID161)
AutoGenParent475ID162 = {}
AutoGenParent475ID162.collider = OBBCollider.Create(-1)
AutoGenParent475ID162.collider:SetOffset(132,33.8575,223.5)
AutoGenParent475ID162.collider:SetZAxis(0.992278,0,-0.124035)
AutoGenParent475ID162.collider:SetHalfLengths(0.3,6.67107,4.03113)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID162.collider)
table.insert(colliders,AutoGenParent475ID162)
AutoGenParent475ID163 = {}
AutoGenParent475ID163.collider = OBBCollider.Create(-1)
AutoGenParent475ID163.collider:SetOffset(205,55.2472,154)
AutoGenParent475ID163.collider:SetZAxis(-0.371391,0,0.928477)
AutoGenParent475ID163.collider:SetHalfLengths(0.3,5.22281,5.38516)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID163.collider)
table.insert(colliders,AutoGenParent475ID163)
AutoGenParent475ID164 = {}
AutoGenParent475ID164.collider = OBBCollider.Create(-1)
AutoGenParent475ID164.collider:SetOffset(198.5,55.0244,163.5)
AutoGenParent475ID164.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent475ID164.collider:SetHalfLengths(0.3,5.77983,6.36396)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID164.collider)
table.insert(colliders,AutoGenParent475ID164)
AutoGenParent475ID165 = {}
AutoGenParent475ID165.collider = OBBCollider.Create(-1)
AutoGenParent475ID165.collider:SetOffset(189.5,55.8042,169)
AutoGenParent475ID165.collider:SetZAxis(-0.976187,0,0.21693)
AutoGenParent475ID165.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID165.collider)
table.insert(colliders,AutoGenParent475ID165)
AutoGenParent475ID166 = {}
AutoGenParent475ID166.collider = OBBCollider.Create(-1)
AutoGenParent475ID166.collider:SetOffset(170,40.319,200)
AutoGenParent475ID166.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent475ID166.collider:SetHalfLengths(0.3,7.5623,8.06226)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID166.collider)
table.insert(colliders,AutoGenParent475ID166)
AutoGenParent475ID167 = {}
AutoGenParent475ID167.collider = OBBCollider.Create(-1)
AutoGenParent475ID167.collider:SetOffset(231,42.2129,122)
AutoGenParent475ID167.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent475ID167.collider:SetHalfLengths(0.3,7.11668,5.09902)
AutoGenParent475ID157.collider:AddChild(AutoGenParent475ID167.collider)
table.insert(colliders,AutoGenParent475ID167)
AutoGenParent475ID168 = {}
AutoGenParent475ID168.collider = AABBCollider.Create(-1)
AutoGenParent475ID168.collider:SetOffset(0,0,0)
AutoGenParent475ID168.collider:SetMinPos(147.701,30.083,120.741)
AutoGenParent475ID168.collider:SetMaxPos(248.151,51.2525,233.03)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID168.collider)
table.insert(colliders,AutoGenParent475ID168)
AutoGenParent475ID169 = {}
AutoGenParent475ID169.collider = OBBCollider.Create(-1)
AutoGenParent475ID169.collider:SetOffset(148.5,36.0856,228)
AutoGenParent475ID169.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent475ID169.collider:SetHalfLengths(0.3,6.00264,5.02494)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID169.collider)
table.insert(colliders,AutoGenParent475ID169)
AutoGenParent475ID170 = {}
AutoGenParent475ID170.collider = OBBCollider.Create(-1)
AutoGenParent475ID170.collider:SetOffset(180.5,41.6558,208.5)
AutoGenParent475ID170.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent475ID170.collider:SetHalfLengths(0.3,5.22281,2.91548)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID170.collider)
table.insert(colliders,AutoGenParent475ID170)
AutoGenParent475ID171 = {}
AutoGenParent475ID171.collider = OBBCollider.Create(-1)
AutoGenParent475ID171.collider:SetOffset(219,36.4198,158)
AutoGenParent475ID171.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent475ID171.collider:SetHalfLengths(0.3,5.1114,3.16228)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID171.collider)
table.insert(colliders,AutoGenParent475ID171)
AutoGenParent475ID172 = {}
AutoGenParent475ID172.collider = OBBCollider.Create(-1)
AutoGenParent475ID172.collider:SetOffset(222,36.5312,153.5)
AutoGenParent475ID172.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent475ID172.collider:SetHalfLengths(0.3,5.1114,2.5)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID172.collider)
table.insert(colliders,AutoGenParent475ID172)
AutoGenParent475ID173 = {}
AutoGenParent475ID173.collider = OBBCollider.Create(-1)
AutoGenParent475ID173.collider:SetOffset(228.5,36.6426,150.5)
AutoGenParent475ID173.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent475ID173.collider:SetHalfLengths(0.3,5.1114,4.74342)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID173.collider)
table.insert(colliders,AutoGenParent475ID173)
AutoGenParent475ID174 = {}
AutoGenParent475ID174.collider = OBBCollider.Create(-1)
AutoGenParent475ID174.collider:SetOffset(236.5,36.5312,145)
AutoGenParent475ID174.collider:SetZAxis(0.658505,0,-0.752577)
AutoGenParent475ID174.collider:SetHalfLengths(0.3,5.22281,5.31507)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID174.collider)
table.insert(colliders,AutoGenParent475ID174)
AutoGenParent475ID175 = {}
AutoGenParent475ID175.collider = OBBCollider.Create(-1)
AutoGenParent475ID175.collider:SetOffset(238,37.3111,135)
AutoGenParent475ID175.collider:SetZAxis(-0.707107,0,-0.707107)
AutoGenParent475ID175.collider:SetHalfLengths(0.3,6.00264,2.82843)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID175.collider)
table.insert(colliders,AutoGenParent475ID175)
AutoGenParent475ID176 = {}
AutoGenParent475ID176.collider = OBBCollider.Create(-1)
AutoGenParent475ID176.collider:SetOffset(242,40.0962,124.5)
AutoGenParent475ID176.collider:SetZAxis(0.863779,0,0.503871)
AutoGenParent475ID176.collider:SetHalfLengths(0.3,7.11668,6.94622)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID176.collider)
table.insert(colliders,AutoGenParent475ID176)
AutoGenParent475ID177 = {}
AutoGenParent475ID177.collider = OBBCollider.Create(-1)
AutoGenParent475ID177.collider:SetOffset(176.796,45.2188,214.625)
AutoGenParent475ID177.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
AutoGenParent475ID177.collider:SetHalfLengths(2.66392,5.98314,3.08762)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID177.collider)
table.insert(colliders,AutoGenParent475ID177)
AutoGenParent475ID178 = {}
AutoGenParent475ID178.collider = OBBCollider.Create(-1)
AutoGenParent475ID178.collider:SetOffset(235,42.375,133.125)
AutoGenParent475ID178.collider:SetZAxis(-0.485958,0,-0.873982)
AutoGenParent475ID178.collider:SetHalfLengths(1.82423,5.38972,2.04467)
AutoGenParent475ID168.collider:AddChild(AutoGenParent475ID178.collider)
table.insert(colliders,AutoGenParent475ID178)
AutoGenParent475ID179 = {}
AutoGenParent475ID179.collider = AABBCollider.Create(-1)
AutoGenParent475ID179.collider:SetOffset(0,0,0)
AutoGenParent475ID179.collider:SetMinPos(148.703,30.1944,69.8112)
AutoGenParent475ID179.collider:SetMaxPos(285.233,47.5471,240.042)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID179.collider)
table.insert(colliders,AutoGenParent475ID179)
AutoGenParent475ID180 = {}
AutoGenParent475ID180.collider = OBBCollider.Create(-1)
AutoGenParent475ID180.collider:SetOffset(149.5,37.0883,236.5)
AutoGenParent475ID180.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent475ID180.collider:SetHalfLengths(0.3,5.1114,3.53553)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID180.collider)
table.insert(colliders,AutoGenParent475ID180)
AutoGenParent475ID181 = {}
AutoGenParent475ID181.collider = OBBCollider.Create(-1)
AutoGenParent475ID181.collider:SetOffset(176.5,41.9901,216.5)
AutoGenParent475ID181.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent475ID181.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID181.collider)
table.insert(colliders,AutoGenParent475ID181)
AutoGenParent475ID182 = {}
AutoGenParent475ID182.collider = OBBCollider.Create(-1)
AutoGenParent475ID182.collider:SetOffset(177,41.433,212)
AutoGenParent475ID182.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent475ID182.collider:SetHalfLengths(0.3,5.22281,2.23607)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID182.collider)
table.insert(colliders,AutoGenParent475ID182)
AutoGenParent475ID183 = {}
AutoGenParent475ID183.collider = OBBCollider.Create(-1)
AutoGenParent475ID183.collider:SetOffset(185.5,41.8786,206.5)
AutoGenParent475ID183.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent475ID183.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID183.collider)
table.insert(colliders,AutoGenParent475ID183)
AutoGenParent475ID184 = {}
AutoGenParent475ID184.collider = OBBCollider.Create(-1)
AutoGenParent475ID184.collider:SetOffset(207.5,38.9821,191)
AutoGenParent475ID184.collider:SetZAxis(0.287348,0,-0.957826)
AutoGenParent475ID184.collider:SetHalfLengths(0.3,6.22545,5.22015)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID184.collider)
table.insert(colliders,AutoGenParent475ID184)
AutoGenParent475ID185 = {}
AutoGenParent475ID185.collider = OBBCollider.Create(-1)
AutoGenParent475ID185.collider:SetOffset(220.5,36.0856,175)
AutoGenParent475ID185.collider:SetZAxis(0.573462,0,-0.819232)
AutoGenParent475ID185.collider:SetHalfLengths(0.3,5.44562,6.10328)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID185.collider)
table.insert(colliders,AutoGenParent475ID185)
AutoGenParent475ID186 = {}
AutoGenParent475ID186.collider = OBBCollider.Create(-1)
AutoGenParent475ID186.collider:SetOffset(237.5,35.64,159.5)
AutoGenParent475ID186.collider:SetZAxis(0.763386,0,-0.645942)
AutoGenParent475ID186.collider:SetHalfLengths(0.3,5.44562,8.51469)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID186.collider)
table.insert(colliders,AutoGenParent475ID186)
AutoGenParent475ID187 = {}
AutoGenParent475ID187.collider = OBBCollider.Create(-1)
AutoGenParent475ID187.collider:SetOffset(276.5,39.5392,80.5)
AutoGenParent475ID187.collider:SetZAxis(-0.629198,0,-0.777245)
AutoGenParent475ID187.collider:SetHalfLengths(0.3,5.77983,13.5093)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID187.collider)
table.insert(colliders,AutoGenParent475ID187)
AutoGenParent475ID188 = {}
AutoGenParent475ID188.collider = OBBCollider.Create(-1)
AutoGenParent475ID188.collider:SetOffset(240,36.754,139)
AutoGenParent475ID188.collider:SetZAxis(0,0,-1)
AutoGenParent475ID188.collider:SetHalfLengths(0.3,5.55702,2)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID188.collider)
table.insert(colliders,AutoGenParent475ID188)
AutoGenParent475ID189 = {}
AutoGenParent475ID189.collider = OBBCollider.Create(-1)
AutoGenParent475ID189.collider:SetOffset(253,37.9795,123)
AutoGenParent475ID189.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent475ID189.collider:SetHalfLengths(0.3,5.55702,7.07107)
AutoGenParent475ID179.collider:AddChild(AutoGenParent475ID189.collider)
table.insert(colliders,AutoGenParent475ID189)
AutoGenParent475ID190 = {}
AutoGenParent475ID190.collider = AABBCollider.Create(-1)
AutoGenParent475ID190.collider:SetOffset(0,0,0)
AutoGenParent475ID190.collider:SetMinPos(176.721,30.3058,52.7879)
AutoGenParent475ID190.collider:SetMaxPos(290.212,48.5497,224.111)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID190.collider)
table.insert(colliders,AutoGenParent475ID190)
AutoGenParent475ID191 = {}
AutoGenParent475ID191.collider = OBBCollider.Create(-1)
AutoGenParent475ID191.collider:SetOffset(283,40.9874,60)
AutoGenParent475ID191.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID191.collider:SetHalfLengths(0.3,5.33421,9.8995)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID191.collider)
table.insert(colliders,AutoGenParent475ID191)
AutoGenParent475ID192 = {}
AutoGenParent475ID192.collider = OBBCollider.Create(-1)
AutoGenParent475ID192.collider:SetOffset(178,42.7699,221.5)
AutoGenParent475ID192.collider:SetZAxis(-0.371391,0,-0.928477)
AutoGenParent475ID192.collider:SetHalfLengths(0.3,5.77983,2.69258)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID192.collider)
table.insert(colliders,AutoGenParent475ID192)
AutoGenParent475ID193 = {}
AutoGenParent475ID193.collider = OBBCollider.Create(-1)
AutoGenParent475ID193.collider:SetOffset(190.5,41.3216,205.5)
AutoGenParent475ID193.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent475ID193.collider:SetHalfLengths(0.3,5.66843,2.54951)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID193.collider)
table.insert(colliders,AutoGenParent475ID193)
AutoGenParent475ID194 = {}
AutoGenParent475ID194.collider = OBBCollider.Create(-1)
AutoGenParent475ID194.collider:SetOffset(198,40.6532,203)
AutoGenParent475ID194.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent475ID194.collider:SetHalfLengths(0.3,6.00264,5.38516)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID194.collider)
table.insert(colliders,AutoGenParent475ID194)
AutoGenParent475ID195 = {}
AutoGenParent475ID195.collider = OBBCollider.Create(-1)
AutoGenParent475ID195.collider:SetOffset(204.5,39.6506,198.5)
AutoGenParent475ID195.collider:SetZAxis(0.514496,0,-0.857493)
AutoGenParent475ID195.collider:SetHalfLengths(0.3,5.66843,2.91548)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID195.collider)
table.insert(colliders,AutoGenParent475ID195)
AutoGenParent475ID196 = {}
AutoGenParent475ID196.collider = OBBCollider.Create(-1)
AutoGenParent475ID196.collider:SetOffset(211,37.7567,184.5)
AutoGenParent475ID196.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent475ID196.collider:SetHalfLengths(0.3,5.77983,2.5)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID196.collider)
table.insert(colliders,AutoGenParent475ID196)
AutoGenParent475ID197 = {}
AutoGenParent475ID197.collider = OBBCollider.Create(-1)
AutoGenParent475ID197.collider:SetOffset(215,36.9769,181.5)
AutoGenParent475ID197.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent475ID197.collider:SetHalfLengths(0.3,5.89124,2.5)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID197.collider)
table.insert(colliders,AutoGenParent475ID197)
AutoGenParent475ID198 = {}
AutoGenParent475ID198.collider = OBBCollider.Create(-1)
AutoGenParent475ID198.collider:SetOffset(227.5,35.64,167.5)
AutoGenParent475ID198.collider:SetZAxis(0.813733,0,-0.581238)
AutoGenParent475ID198.collider:SetHalfLengths(0.3,5,4.30116)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID198.collider)
table.insert(colliders,AutoGenParent475ID198)
AutoGenParent475ID199 = {}
AutoGenParent475ID199.collider = OBBCollider.Create(-1)
AutoGenParent475ID199.collider:SetOffset(249.5,36.0856,148.5)
AutoGenParent475ID199.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent475ID199.collider:SetHalfLengths(0.3,5.77983,7.77817)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID199.collider)
table.insert(colliders,AutoGenParent475ID199)
AutoGenParent475ID200 = {}
AutoGenParent475ID200.collider = OBBCollider.Create(-1)
AutoGenParent475ID200.collider:SetOffset(263.5,37.4225,113.5)
AutoGenParent475ID200.collider:SetZAxis(0.773957,0,-0.633238)
AutoGenParent475ID200.collider:SetHalfLengths(0.3,5.44562,7.10634)
AutoGenParent475ID190.collider:AddChild(AutoGenParent475ID200.collider)
table.insert(colliders,AutoGenParent475ID200)
AutoGenParent475ID201 = {}
AutoGenParent475ID201.collider = AABBCollider.Create(-1)
AutoGenParent475ID201.collider:SetOffset(0,0,0)
AutoGenParent475ID201.collider:SetMinPos(149.7,26.2952,66.8138)
AutoGenParent475ID201.collider:SetMaxPos(309.235,56.0138,250.277)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID201.collider)
table.insert(colliders,AutoGenParent475ID201)
AutoGenParent475ID202 = {}
AutoGenParent475ID202.collider = OBBCollider.Create(-1)
AutoGenParent475ID202.collider:SetOffset(299.5,41.3216,79)
AutoGenParent475ID202.collider:SetZAxis(0.620703,0,0.784046)
AutoGenParent475ID202.collider:SetHalfLengths(0.3,6.33685,15.3052)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID202.collider)
table.insert(colliders,AutoGenParent475ID202)
AutoGenParent475ID203 = {}
AutoGenParent475ID203.collider = OBBCollider.Create(-1)
AutoGenParent475ID203.collider:SetOffset(150,37.1997,241.5)
AutoGenParent475ID203.collider:SetZAxis(0,0,1)
AutoGenParent475ID203.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID203.collider)
table.insert(colliders,AutoGenParent475ID203)
AutoGenParent475ID204 = {}
AutoGenParent475ID204.collider = OBBCollider.Create(-1)
AutoGenParent475ID204.collider:SetOffset(158.5,37.1997,246.5)
AutoGenParent475ID204.collider:SetZAxis(0.924678,0,0.38075)
AutoGenParent475ID204.collider:SetHalfLengths(0.3,10.9044,9.19239)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID204.collider)
table.insert(colliders,AutoGenParent475ID204)
AutoGenParent475ID205 = {}
AutoGenParent475ID205.collider = OBBCollider.Create(-1)
AutoGenParent475ID205.collider:SetOffset(191.5,48.3401,228)
AutoGenParent475ID205.collider:SetZAxis(-1,0,0)
AutoGenParent475ID205.collider:SetHalfLengths(0.3,6.44826,3.5)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID205.collider)
table.insert(colliders,AutoGenParent475ID205)
AutoGenParent475ID206 = {}
AutoGenParent475ID206.collider = OBBCollider.Create(-1)
AutoGenParent475ID206.collider:SetOffset(183.5,46.8918,226)
AutoGenParent475ID206.collider:SetZAxis(-0.913812,0,-0.406139)
AutoGenParent475ID206.collider:SetHalfLengths(0.3,9.12197,4.92443)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID206.collider)
table.insert(colliders,AutoGenParent475ID206)
AutoGenParent475ID207 = {}
AutoGenParent475ID207.collider = OBBCollider.Create(-1)
AutoGenParent475ID207.collider:SetOffset(258,36.8654,140)
AutoGenParent475ID207.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent475ID207.collider:SetHalfLengths(0.3,5.44562,4.24264)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID207.collider)
table.insert(colliders,AutoGenParent475ID207)
AutoGenParent475ID208 = {}
AutoGenParent475ID208.collider = OBBCollider.Create(-1)
AutoGenParent475ID208.collider:SetOffset(264,37.3111,134.5)
AutoGenParent475ID208.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent475ID208.collider:SetHalfLengths(0.3,5.1114,3.90512)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID208.collider)
table.insert(colliders,AutoGenParent475ID208)
AutoGenParent475ID209 = {}
AutoGenParent475ID209.collider = OBBCollider.Create(-1)
AutoGenParent475ID209.collider:SetOffset(269,37.4225,131)
AutoGenParent475ID209.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent475ID209.collider:SetHalfLengths(0.3,5.1114,2.23607)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID209.collider)
table.insert(colliders,AutoGenParent475ID209)
AutoGenParent475ID210 = {}
AutoGenParent475ID210.collider = OBBCollider.Create(-1)
AutoGenParent475ID210.collider:SetOffset(291.5,38.2023,98.5)
AutoGenParent475ID210.collider:SetZAxis(-0.654931,0,-0.755689)
AutoGenParent475ID210.collider:SetHalfLengths(0.3,6.33685,9.92472)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID210.collider)
table.insert(colliders,AutoGenParent475ID210)
AutoGenParent475ID211 = {}
AutoGenParent475ID211.collider = OBBCollider.Create(-1)
AutoGenParent475ID211.collider:SetOffset(283.5,36.9769,107.5)
AutoGenParent475ID211.collider:SetZAxis(0.994692,0,-0.102899)
AutoGenParent475ID211.collider:SetHalfLengths(0.3,6.22545,14.5774)
AutoGenParent475ID201.collider:AddChild(AutoGenParent475ID211.collider)
table.insert(colliders,AutoGenParent475ID211)
AutoGenParent475ID212 = {}
AutoGenParent475ID212.collider = AABBCollider.Create(-1)
AutoGenParent475ID212.collider:SetOffset(0,0,0)
AutoGenParent475ID212.collider:SetMinPos(166.951,32.0883,127.701)
AutoGenParent475ID212.collider:SetMaxPos(287.027,58.2419,252.296)
AutoGenParent475ID112.collider:AddChild(AutoGenParent475ID212.collider)
table.insert(colliders,AutoGenParent475ID212)
AutoGenParent475ID213 = {}
AutoGenParent475ID213.collider = OBBCollider.Create(-1)
AutoGenParent475ID213.collider:SetOffset(173,43.1041,251)
AutoGenParent475ID213.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent475ID213.collider:SetHalfLengths(0.3,9.01056,6.08276)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID213.collider)
table.insert(colliders,AutoGenParent475ID213)
AutoGenParent475ID214 = {}
AutoGenParent475ID214.collider = OBBCollider.Create(-1)
AutoGenParent475ID214.collider:SetOffset(182.5,47.1147,250.5)
AutoGenParent475ID214.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent475ID214.collider:SetHalfLengths(0.3,8.45354,3.80789)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID214.collider)
table.insert(colliders,AutoGenParent475ID214)
AutoGenParent475ID215 = {}
AutoGenParent475ID215.collider = OBBCollider.Create(-1)
AutoGenParent475ID215.collider:SetOffset(189,50.5682,246.5)
AutoGenParent475ID215.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent475ID215.collider:SetHalfLengths(0.3,5.89124,3.90512)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID215.collider)
table.insert(colliders,AutoGenParent475ID215)
AutoGenParent475ID216 = {}
AutoGenParent475ID216.collider = OBBCollider.Create(-1)
AutoGenParent475ID216.collider:SetOffset(194.5,51.4594,244)
AutoGenParent475ID216.collider:SetZAxis(1,0,0)
AutoGenParent475ID216.collider:SetHalfLengths(0.3,6.78247,2.5)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID216.collider)
table.insert(colliders,AutoGenParent475ID216)
AutoGenParent475ID217 = {}
AutoGenParent475ID217.collider = OBBCollider.Create(-1)
AutoGenParent475ID217.collider:SetOffset(212.5,51.5708,223.5)
AutoGenParent475ID217.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent475ID217.collider:SetHalfLengths(0.3,5.89124,4.74342)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID217.collider)
table.insert(colliders,AutoGenParent475ID217)
AutoGenParent475ID218 = {}
AutoGenParent475ID218.collider = OBBCollider.Create(-1)
AutoGenParent475ID218.collider:SetOffset(205,50.6796,226)
AutoGenParent475ID218.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent475ID218.collider:SetHalfLengths(0.3,6.11405,3.16228)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID218.collider)
table.insert(colliders,AutoGenParent475ID218)
AutoGenParent475ID219 = {}
AutoGenParent475ID219.collider = OBBCollider.Create(-1)
AutoGenParent475ID219.collider:SetOffset(198.5,49.5656,227.5)
AutoGenParent475ID219.collider:SetZAxis(-0.98995,0,0.141421)
AutoGenParent475ID219.collider:SetHalfLengths(0.3,6.22544,3.53553)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID219.collider)
table.insert(colliders,AutoGenParent475ID219)
AutoGenParent475ID220 = {}
AutoGenParent475ID220.collider = OBBCollider.Create(-1)
AutoGenParent475ID220.collider:SetOffset(273.5,37.3111,129.5)
AutoGenParent475ID220.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent475ID220.collider:SetHalfLengths(0.3,5.22281,2.54951)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID220.collider)
table.insert(colliders,AutoGenParent475ID220)
AutoGenParent475ID221 = {}
AutoGenParent475ID221.collider = OBBCollider.Create(-1)
AutoGenParent475ID221.collider:SetOffset(281.5,37.5339,128.5)
AutoGenParent475ID221.collider:SetZAxis(0.995893,0,-0.0905358)
AutoGenParent475ID221.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID221.collider)
table.insert(colliders,AutoGenParent475ID221)
AutoGenParent475ID222 = {}
AutoGenParent475ID222.collider = OBBCollider.Create(-1)
AutoGenParent475ID222.collider:SetOffset(184.371,51.8438,244.736)
AutoGenParent475ID222.collider:SetZAxis(0,0,1)
AutoGenParent475ID222.collider:SetHalfLengths(2.5,4,2.5)
AutoGenParent475ID212.collider:AddChild(AutoGenParent475ID222.collider)
table.insert(colliders,AutoGenParent475ID222)
AutoGenParent475ID223 = {}
AutoGenParent475ID223.collider = AABBCollider.Create(-1)
AutoGenParent475ID223.collider:SetOffset(0,0,0)
AutoGenParent475ID223.collider:SetMinPos(196.958,23.9934,90.7879)
AutoGenParent475ID223.collider:SetMaxPos(512.3,68.8781,363.023)
AutoGenParent475ID.collider:AddChild(AutoGenParent475ID223.collider)
table.insert(colliders,AutoGenParent475ID223)
AutoGenParent475ID224 = {}
AutoGenParent475ID224.collider = AABBCollider.Create(-1)
AutoGenParent475ID224.collider:SetOffset(0,0,0)
AutoGenParent475ID224.collider:SetMinPos(196.958,30.3058,90.7879)
AutoGenParent475ID224.collider:SetMaxPos(322.234,66.1516,251.257)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID224.collider)
table.insert(colliders,AutoGenParent475ID224)
AutoGenParent475ID225 = {}
AutoGenParent475ID225.collider = OBBCollider.Create(-1)
AutoGenParent475ID225.collider:SetOffset(312,42.6585,94)
AutoGenParent475ID225.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID225.collider:SetHalfLengths(0.3,6.33685,4.24264)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID225.collider)
table.insert(colliders,AutoGenParent475ID225)
AutoGenParent475ID226 = {}
AutoGenParent475ID226.collider = OBBCollider.Create(-1)
AutoGenParent475ID226.collider:SetOffset(318,42.1015,102)
AutoGenParent475ID226.collider:SetZAxis(0.624695,0,0.780869)
AutoGenParent475ID226.collider:SetHalfLengths(0.3,9.67899,6.40312)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID226.collider)
table.insert(colliders,AutoGenParent475ID226)
AutoGenParent475ID227 = {}
AutoGenParent475ID227.collider = OBBCollider.Create(-1)
AutoGenParent475ID227.collider:SetOffset(200.5,53.2419,244.5)
AutoGenParent475ID227.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent475ID227.collider:SetHalfLengths(0.3,7.00528,3.53553)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID227.collider)
table.insert(colliders,AutoGenParent475ID227)
AutoGenParent475ID228 = {}
AutoGenParent475ID228.collider = OBBCollider.Create(-1)
AutoGenParent475ID228.collider:SetOffset(207,55.2472,245.5)
AutoGenParent475ID228.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent475ID228.collider:SetHalfLengths(0.3,6.44826,3.04138)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID228.collider)
table.insert(colliders,AutoGenParent475ID228)
AutoGenParent475ID229 = {}
AutoGenParent475ID229.collider = OBBCollider.Create(-1)
AutoGenParent475ID229.collider:SetOffset(212.5,56.6954,247)
AutoGenParent475ID229.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent475ID229.collider:SetHalfLengths(0.3,7.22809,2.69258)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID229.collider)
table.insert(colliders,AutoGenParent475ID229)
AutoGenParent475ID230 = {}
AutoGenParent475ID230.collider = OBBCollider.Create(-1)
AutoGenParent475ID230.collider:SetOffset(217.5,58.9235,249.5)
AutoGenParent475ID230.collider:SetZAxis(0.857493,0,0.514496)
AutoGenParent475ID230.collider:SetHalfLengths(0.3,5.77983,2.91548)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID230.collider)
table.insert(colliders,AutoGenParent475ID230)
AutoGenParent475ID231 = {}
AutoGenParent475ID231.collider = OBBCollider.Create(-1)
AutoGenParent475ID231.collider:SetOffset(220.5,56.3612,226)
AutoGenParent475ID231.collider:SetZAxis(-0.658505,0,-0.752577)
AutoGenParent475ID231.collider:SetHalfLengths(0.3,9.79039,5.31507)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID231.collider)
table.insert(colliders,AutoGenParent475ID231)
AutoGenParent475ID232 = {}
AutoGenParent475ID232.collider = OBBCollider.Create(-1)
AutoGenParent475ID232.collider:SetOffset(293,37.1997,129)
AutoGenParent475ID232.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent475ID232.collider:SetHalfLengths(0.3,5.89124,6.08276)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID232.collider)
table.insert(colliders,AutoGenParent475ID232)
AutoGenParent475ID233 = {}
AutoGenParent475ID233.collider = OBBCollider.Create(-1)
AutoGenParent475ID233.collider:SetOffset(306,36.3084,132)
AutoGenParent475ID233.collider:SetZAxis(0.961524,0,0.274721)
AutoGenParent475ID233.collider:SetHalfLengths(0.3,6.00264,7.28011)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID233.collider)
table.insert(colliders,AutoGenParent475ID233)
AutoGenParent475ID234 = {}
AutoGenParent475ID234.collider = OBBCollider.Create(-1)
AutoGenParent475ID234.collider:SetOffset(227.5,56.3612,232)
AutoGenParent475ID234.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent475ID234.collider:SetHalfLengths(0.3,5.77983,4.03113)
AutoGenParent475ID224.collider:AddChild(AutoGenParent475ID234.collider)
table.insert(colliders,AutoGenParent475ID234)
AutoGenParent475ID235 = {}
AutoGenParent475ID235.collider = AABBCollider.Create(-1)
AutoGenParent475ID235.collider:SetOffset(0,0,0)
AutoGenParent475ID235.collider:SetMinPos(219.788,29.1917,106.78)
AutoGenParent475ID235.collider:SetMaxPos(336.204,65.3718,254.298)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID235.collider)
table.insert(colliders,AutoGenParent475ID235)
AutoGenParent475ID236 = {}
AutoGenParent475ID236.collider = OBBCollider.Create(-1)
AutoGenParent475ID236.collider:SetOffset(329,37.4225,113.5)
AutoGenParent475ID236.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent475ID236.collider:SetHalfLengths(0.3,5.33421,9.55249)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID236.collider)
table.insert(colliders,AutoGenParent475ID236)
AutoGenParent475ID237 = {}
AutoGenParent475ID237.collider = OBBCollider.Create(-1)
AutoGenParent475ID237.collider:SetOffset(221.5,59.7034,252.5)
AutoGenParent475ID237.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID237.collider:SetHalfLengths(0.3,5.55702,2.12132)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID237.collider)
table.insert(colliders,AutoGenParent475ID237)
AutoGenParent475ID238 = {}
AutoGenParent475ID238.collider = OBBCollider.Create(-1)
AutoGenParent475ID238.collider:SetOffset(227.5,60.2604,253.5)
AutoGenParent475ID238.collider:SetZAxis(0.993884,0,-0.110432)
AutoGenParent475ID238.collider:SetHalfLengths(0.3,5.1114,4.52769)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID238.collider)
table.insert(colliders,AutoGenParent475ID238)
AutoGenParent475ID239 = {}
AutoGenParent475ID239.collider = OBBCollider.Create(-1)
AutoGenParent475ID239.collider:SetOffset(236.5,60.149,252)
AutoGenParent475ID239.collider:SetZAxis(0.976187,0,-0.21693)
AutoGenParent475ID239.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID239.collider)
table.insert(colliders,AutoGenParent475ID239)
AutoGenParent475ID240 = {}
AutoGenParent475ID240.collider = OBBCollider.Create(-1)
AutoGenParent475ID240.collider:SetOffset(234.5,57.1411,234.5)
AutoGenParent475ID240.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent475ID240.collider:SetHalfLengths(0.3,5.66843,3.53553)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID240.collider)
table.insert(colliders,AutoGenParent475ID240)
AutoGenParent475ID241 = {}
AutoGenParent475ID241.collider = OBBCollider.Create(-1)
AutoGenParent475ID241.collider:SetOffset(241,57.8095,233.5)
AutoGenParent475ID241.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent475ID241.collider:SetHalfLengths(0.3,5.22281,3.3541)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID241.collider)
table.insert(colliders,AutoGenParent475ID241)
AutoGenParent475ID242 = {}
AutoGenParent475ID242.collider = OBBCollider.Create(-1)
AutoGenParent475ID242.collider:SetOffset(247.5,57.5867,231.5)
AutoGenParent475ID242.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent475ID242.collider:SetHalfLengths(0.3,5.22281,3.53553)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID242.collider)
table.insert(colliders,AutoGenParent475ID242)
AutoGenParent475ID243 = {}
AutoGenParent475ID243.collider = OBBCollider.Create(-1)
AutoGenParent475ID243.collider:SetOffset(259,57.8095,232)
AutoGenParent475ID243.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent475ID243.collider:SetHalfLengths(0.3,6.00264,8.06226)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID243.collider)
table.insert(colliders,AutoGenParent475ID243)
AutoGenParent475ID244 = {}
AutoGenParent475ID244.collider = OBBCollider.Create(-1)
AutoGenParent475ID244.collider:SetOffset(319.5,34.7488,138.5)
AutoGenParent475ID244.collider:SetZAxis(-0.822192,0,-0.56921)
AutoGenParent475ID244.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID244.collider)
table.insert(colliders,AutoGenParent475ID244)
AutoGenParent475ID245 = {}
AutoGenParent475ID245.collider = OBBCollider.Create(-1)
AutoGenParent475ID245.collider:SetOffset(328.75,41.0313,113.313)
AutoGenParent475ID245.collider:SetZAxis(0,0,1)
AutoGenParent475ID245.collider:SetHalfLengths(1.91668,5.26999,2.05246)
AutoGenParent475ID235.collider:AddChild(AutoGenParent475ID245.collider)
table.insert(colliders,AutoGenParent475ID245)
AutoGenParent475ID246 = {}
AutoGenParent475ID246.collider = AABBCollider.Create(-1)
AutoGenParent475ID246.collider:SetOffset(0,0,0)
AutoGenParent475ID246.collider:SetMinPos(240.946,29.7488,119.828)
AutoGenParent475ID246.collider:SetMaxPos(358.159,67.2657,252.297)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID246.collider)
table.insert(colliders,AutoGenParent475ID246)
AutoGenParent475ID247 = {}
AutoGenParent475ID247.collider = OBBCollider.Create(-1)
AutoGenParent475ID247.collider:SetOffset(343,37.0883,130)
AutoGenParent475ID247.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent475ID247.collider:SetHalfLengths(0.3,6.78247,12.2066)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID247.collider)
table.insert(colliders,AutoGenParent475ID247)
AutoGenParent475ID248 = {}
AutoGenParent475ID248.collider = OBBCollider.Create(-1)
AutoGenParent475ID248.collider:SetOffset(354,38.8707,142.5)
AutoGenParent475ID248.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent475ID248.collider:SetHalfLengths(0.3,5.22281,4.71699)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID248.collider)
table.insert(colliders,AutoGenParent475ID248)
AutoGenParent475ID249 = {}
AutoGenParent475ID249.collider = OBBCollider.Create(-1)
AutoGenParent475ID249.collider:SetOffset(246.5,60.3718,250)
AutoGenParent475ID249.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent475ID249.collider:SetHalfLengths(0.3,5.44562,5.59017)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID249.collider)
table.insert(colliders,AutoGenParent475ID249)
AutoGenParent475ID250 = {}
AutoGenParent475ID250.collider = OBBCollider.Create(-1)
AutoGenParent475ID250.collider:SetOffset(259.5,59.9262,249.5)
AutoGenParent475ID250.collider:SetZAxis(0.997785,0,0.066519)
AutoGenParent475ID250.collider:SetHalfLengths(0.3,5.1114,7.51665)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID250.collider)
table.insert(colliders,AutoGenParent475ID250)
AutoGenParent475ID251 = {}
AutoGenParent475ID251.collider = OBBCollider.Create(-1)
AutoGenParent475ID251.collider:SetOffset(274,60.0376,251)
AutoGenParent475ID251.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent475ID251.collider:SetHalfLengths(0.3,5.33421,7.07107)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID251.collider)
table.insert(colliders,AutoGenParent475ID251)
AutoGenParent475ID252 = {}
AutoGenParent475ID252.collider = OBBCollider.Create(-1)
AutoGenParent475ID252.collider:SetOffset(277,56.8068,233.5)
AutoGenParent475ID252.collider:SetZAxis(0.998752,0,0.0499376)
AutoGenParent475ID252.collider:SetHalfLengths(0.3,5.77983,10.0125)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID252.collider)
table.insert(colliders,AutoGenParent475ID252)
AutoGenParent475ID253 = {}
AutoGenParent475ID253.collider = OBBCollider.Create(-1)
AutoGenParent475ID253.collider:SetOffset(295,56.027,232)
AutoGenParent475ID253.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent475ID253.collider:SetHalfLengths(0.3,11.2386,8.24621)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID253.collider)
table.insert(colliders,AutoGenParent475ID253)
AutoGenParent475ID254 = {}
AutoGenParent475ID254.collider = OBBCollider.Create(-1)
AutoGenParent475ID254.collider:SetOffset(340.5,36.197,162)
AutoGenParent475ID254.collider:SetZAxis(-0.734803,0,-0.67828)
AutoGenParent475ID254.collider:SetHalfLengths(0.3,5.55702,8.8459)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID254.collider)
table.insert(colliders,AutoGenParent475ID254)
AutoGenParent475ID255 = {}
AutoGenParent475ID255.collider = OBBCollider.Create(-1)
AutoGenParent475ID255.collider:SetOffset(330,35.64,149.5)
AutoGenParent475ID255.collider:SetZAxis(-0.524097,0,-0.851658)
AutoGenParent475ID255.collider:SetHalfLengths(0.3,5.89124,7.63217)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID255.collider)
table.insert(colliders,AutoGenParent475ID255)
AutoGenParent475ID256 = {}
AutoGenParent475ID256.collider = OBBCollider.Create(-1)
AutoGenParent475ID256.collider:SetOffset(339.5,40.3125,156.5)
AutoGenParent475ID256.collider:SetZAxis(0,0,1)
AutoGenParent475ID256.collider:SetHalfLengths(2.03198,5.81552,1.96803)
AutoGenParent475ID246.collider:AddChild(AutoGenParent475ID256.collider)
table.insert(colliders,AutoGenParent475ID256)
AutoGenParent475ID257 = {}
AutoGenParent475ID257.collider = AABBCollider.Create(-1)
AutoGenParent475ID257.collider:SetOffset(0,0,0)
AutoGenParent475ID257.collider:SetMinPos(281,31.197,144.706)
AutoGenParent475ID257.collider:SetMaxPos(368.059,67.0429,255.3)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID257.collider)
table.insert(colliders,AutoGenParent475ID257)
AutoGenParent475ID258 = {}
AutoGenParent475ID258.collider = OBBCollider.Create(-1)
AutoGenParent475ID258.collider:SetOffset(363,38.6479,146)
AutoGenParent475ID258.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent475ID258.collider:SetHalfLengths(0.3,5.33421,5.09902)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID258.collider)
table.insert(colliders,AutoGenParent475ID258)
AutoGenParent475ID259 = {}
AutoGenParent475ID259.collider = OBBCollider.Create(-1)
AutoGenParent475ID259.collider:SetOffset(287.5,59.7034,252)
AutoGenParent475ID259.collider:SetZAxis(1,0,0)
AutoGenParent475ID259.collider:SetHalfLengths(0.3,6.11405,6.5)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID259.collider)
table.insert(colliders,AutoGenParent475ID259)
AutoGenParent475ID260 = {}
AutoGenParent475ID260.collider = OBBCollider.Create(-1)
AutoGenParent475ID260.collider:SetOffset(296,58.5893,252.5)
AutoGenParent475ID260.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent475ID260.collider:SetHalfLengths(0.3,8.45354,2.06155)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID260.collider)
table.insert(colliders,AutoGenParent475ID260)
AutoGenParent475ID261 = {}
AutoGenParent475ID261.collider = OBBCollider.Create(-1)
AutoGenParent475ID261.collider:SetOffset(299,55.1358,254)
AutoGenParent475ID261.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID261.collider:SetHalfLengths(0.3,5.1114,1.41421)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID261.collider)
table.insert(colliders,AutoGenParent475ID261)
AutoGenParent475ID262 = {}
AutoGenParent475ID262.collider = OBBCollider.Create(-1)
AutoGenParent475ID262.collider:SetOffset(307,55.2472,255)
AutoGenParent475ID262.collider:SetZAxis(1,0,0)
AutoGenParent475ID262.collider:SetHalfLengths(0.3,9.01056,7)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID262.collider)
table.insert(colliders,AutoGenParent475ID262)
AutoGenParent475ID263 = {}
AutoGenParent475ID263.collider = OBBCollider.Create(-1)
AutoGenParent475ID263.collider:SetOffset(306,49.7884,231.5)
AutoGenParent475ID263.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent475ID263.collider:SetHalfLengths(0.3,6.11404,3.3541)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID263.collider)
table.insert(colliders,AutoGenParent475ID263)
AutoGenParent475ID264 = {}
AutoGenParent475ID264.collider = OBBCollider.Create(-1)
AutoGenParent475ID264.collider:SetOffset(339,48.1173,215.5)
AutoGenParent475ID264.collider:SetZAxis(0.682318,0,-0.731055)
AutoGenParent475ID264.collider:SetHalfLengths(0.3,12.0185,10.2591)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID264.collider)
table.insert(colliders,AutoGenParent475ID264)
AutoGenParent475ID265 = {}
AutoGenParent475ID265.collider = OBBCollider.Create(-1)
AutoGenParent475ID265.collider:SetOffset(351.5,38.3137,183.5)
AutoGenParent475ID265.collider:SetZAxis(0.263117,0,-0.964764)
AutoGenParent475ID265.collider:SetHalfLengths(0.3,6.22545,5.70088)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID265.collider)
table.insert(colliders,AutoGenParent475ID265)
AutoGenParent475ID266 = {}
AutoGenParent475ID266.collider = OBBCollider.Create(-1)
AutoGenParent475ID266.collider:SetOffset(350,37.0883,173)
AutoGenParent475ID266.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent475ID266.collider:SetHalfLengths(0.3,5.89124,5.83095)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID266.collider)
table.insert(colliders,AutoGenParent475ID266)
AutoGenParent475ID267 = {}
AutoGenParent475ID267.collider = OBBCollider.Create(-1)
AutoGenParent475ID267.collider:SetOffset(320.5,48.1173,228)
AutoGenParent475ID267.collider:SetZAxis(-0.91707,0,0.398726)
AutoGenParent475ID267.collider:SetHalfLengths(0.3,5.55703,12.5399)
AutoGenParent475ID257.collider:AddChild(AutoGenParent475ID267.collider)
table.insert(colliders,AutoGenParent475ID267)
AutoGenParent475ID268 = {}
AutoGenParent475ID268.collider = AABBCollider.Create(-1)
AutoGenParent475ID268.collider:SetOffset(0,0,0)
AutoGenParent475ID268.collider:SetMinPos(312.709,30.1951,145)
AutoGenParent475ID268.collider:SetMaxPos(384.3,56.9051,255)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID268.collider)
table.insert(colliders,AutoGenParent475ID268)
AutoGenParent475ID269 = {}
AutoGenParent475ID269.collider = OBBCollider.Create(-1)
AutoGenParent475ID269.collider:SetOffset(372,38.3137,147)
AutoGenParent475ID269.collider:SetZAxis(1,0,0)
AutoGenParent475ID269.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID269.collider)
table.insert(colliders,AutoGenParent475ID269)
AutoGenParent475ID270 = {}
AutoGenParent475ID270.collider = OBBCollider.Create(-1)
AutoGenParent475ID270.collider:SetOffset(380,37.1997,147)
AutoGenParent475ID270.collider:SetZAxis(1,0,0)
AutoGenParent475ID270.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID270.collider)
table.insert(colliders,AutoGenParent475ID270)
AutoGenParent475ID271 = {}
AutoGenParent475ID271.collider = OBBCollider.Create(-1)
AutoGenParent475ID271.collider:SetOffset(314,51.2366,252.5)
AutoGenParent475ID271.collider:SetZAxis(0,0,-1)
AutoGenParent475ID271.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID271.collider)
table.insert(colliders,AutoGenParent475ID271)
AutoGenParent475ID272 = {}
AutoGenParent475ID272.collider = OBBCollider.Create(-1)
AutoGenParent475ID272.collider:SetOffset(313.5,50.5682,248)
AutoGenParent475ID272.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent475ID272.collider:SetHalfLengths(0.3,5.44562,2.06155)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID272.collider)
table.insert(colliders,AutoGenParent475ID272)
AutoGenParent475ID273 = {}
AutoGenParent475ID273.collider = OBBCollider.Create(-1)
AutoGenParent475ID273.collider:SetOffset(374,39.4277,170.5)
AutoGenParent475ID273.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent475ID273.collider:SetHalfLengths(0.3,5.55702,3.64005)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID273.collider)
table.insert(colliders,AutoGenParent475ID273)
AutoGenParent475ID274 = {}
AutoGenParent475ID274.collider = OBBCollider.Create(-1)
AutoGenParent475ID274.collider:SetOffset(377.5,39.9848,162.5)
AutoGenParent475ID274.collider:SetZAxis(0.485643,0,-0.874157)
AutoGenParent475ID274.collider:SetHalfLengths(0.3,7.89651,5.14782)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID274.collider)
table.insert(colliders,AutoGenParent475ID274)
AutoGenParent475ID275 = {}
AutoGenParent475ID275.collider = OBBCollider.Create(-1)
AutoGenParent475ID275.collider:SetOffset(348,41.0988,203.5)
AutoGenParent475ID275.collider:SetZAxis(0.406139,0,-0.913812)
AutoGenParent475ID275.collider:SetHalfLengths(0.3,6.67107,4.92443)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID275.collider)
table.insert(colliders,AutoGenParent475ID275)
AutoGenParent475ID276 = {}
AutoGenParent475ID276.collider = OBBCollider.Create(-1)
AutoGenParent475ID276.collider:SetOffset(350,39.4277,194)
AutoGenParent475ID276.collider:SetZAxis(0,0,-1)
AutoGenParent475ID276.collider:SetHalfLengths(0.3,6.11404,5)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID276.collider)
table.insert(colliders,AutoGenParent475ID276)
AutoGenParent475ID277 = {}
AutoGenParent475ID277.collider = OBBCollider.Create(-1)
AutoGenParent475ID277.collider:SetOffset(324.5,50.1226,244)
AutoGenParent475ID277.collider:SetZAxis(0.985212,0,-0.171341)
AutoGenParent475ID277.collider:SetHalfLengths(0.3,6.22545,11.6726)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID277.collider)
table.insert(colliders,AutoGenParent475ID277)
AutoGenParent475ID278 = {}
AutoGenParent475ID278.collider = OBBCollider.Create(-1)
AutoGenParent475ID278.collider:SetOffset(384,35.1951,146)
AutoGenParent475ID278.collider:SetZAxis(0,0,1)
AutoGenParent475ID278.collider:SetHalfLengths(0.3,5,1)
AutoGenParent475ID268.collider:AddChild(AutoGenParent475ID278.collider)
table.insert(colliders,AutoGenParent475ID278)
AutoGenParent475ID279 = {}
AutoGenParent475ID279.collider = AABBCollider.Create(-1)
AutoGenParent475ID279.collider:SetOffset(0,0,0)
AutoGenParent475ID279.collider:SetMinPos(335.753,30.1951,144.7)
AutoGenParent475ID279.collider:SetMaxPos(400,65.4832,255.171)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID279.collider)
table.insert(colliders,AutoGenParent475ID279)
AutoGenParent475ID280 = {}
AutoGenParent475ID280.collider = OBBCollider.Create(-1)
AutoGenParent475ID280.collider:SetOffset(340.5,55.47,248.5)
AutoGenParent475ID280.collider:SetZAxis(-0.56921,0,-0.822192)
AutoGenParent475ID280.collider:SetHalfLengths(0.3,9.12196,7.90569)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID280.collider)
table.insert(colliders,AutoGenParent475ID280)
AutoGenParent475ID281 = {}
AutoGenParent475ID281.collider = OBBCollider.Create(-1)
AutoGenParent475ID281.collider:SetOffset(353,57.0297,240.5)
AutoGenParent475ID281.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent475ID281.collider:SetHalfLengths(0.3,8.45354,7.43303)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID281.collider)
table.insert(colliders,AutoGenParent475ID281)
AutoGenParent475ID282 = {}
AutoGenParent475ID282.collider = OBBCollider.Create(-1)
AutoGenParent475ID282.collider:SetOffset(363,53.5761,226.5)
AutoGenParent475ID282.collider:SetZAxis(0.50702,0,-0.861934)
AutoGenParent475ID282.collider:SetHalfLengths(0.3,9.67899,9.86154)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID282.collider)
table.insert(colliders,AutoGenParent475ID282)
AutoGenParent475ID283 = {}
AutoGenParent475ID283.collider = OBBCollider.Create(-1)
AutoGenParent475ID283.collider:SetOffset(371,48.8971,211)
AutoGenParent475ID283.collider:SetZAxis(0.393919,0,-0.919145)
AutoGenParent475ID283.collider:SetHalfLengths(0.3,7.4509,7.61577)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID283.collider)
table.insert(colliders,AutoGenParent475ID283)
AutoGenParent475ID284 = {}
AutoGenParent475ID284.collider = OBBCollider.Create(-1)
AutoGenParent475ID284.collider:SetOffset(373.5,46.4462,189)
AutoGenParent475ID284.collider:SetZAxis(-0.0333148,0,-0.999445)
AutoGenParent475ID284.collider:SetHalfLengths(0.3,12.0185,15.0083)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID284.collider)
table.insert(colliders,AutoGenParent475ID284)
AutoGenParent475ID285 = {}
AutoGenParent475ID285.collider = OBBCollider.Create(-1)
AutoGenParent475ID285.collider:SetOffset(382,37.0883,157.5)
AutoGenParent475ID285.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent475ID285.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID285.collider)
table.insert(colliders,AutoGenParent475ID285)
AutoGenParent475ID286 = {}
AutoGenParent475ID286.collider = OBBCollider.Create(-1)
AutoGenParent475ID286.collider:SetOffset(388.5,36.4629,157)
AutoGenParent475ID286.collider:SetZAxis(1,0,0)
AutoGenParent475ID286.collider:SetHalfLengths(0.3,5.15847,4.5)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID286.collider)
table.insert(colliders,AutoGenParent475ID286)
AutoGenParent475ID287 = {}
AutoGenParent475ID287.collider = OBBCollider.Create(-1)
AutoGenParent475ID287.collider:SetOffset(392,35.3536,145)
AutoGenParent475ID287.collider:SetZAxis(-1,0,0)
AutoGenParent475ID287.collider:SetHalfLengths(0.3,5.15847,8)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID287.collider)
table.insert(colliders,AutoGenParent475ID287)
AutoGenParent475ID288 = {}
AutoGenParent475ID288.collider = OBBCollider.Create(-1)
AutoGenParent475ID288.collider:SetOffset(370.079,42.4331,185.415)
AutoGenParent475ID288.collider:SetZAxis(0,0,1)
AutoGenParent475ID288.collider:SetHalfLengths(1.88068,4.83337,1.99714)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID288.collider)
table.insert(colliders,AutoGenParent475ID288)
AutoGenParent475ID289 = {}
AutoGenParent475ID289.collider = OBBCollider.Create(-1)
AutoGenParent475ID289.collider:SetOffset(354.858,50.9688,226.742)
AutoGenParent475ID289.collider:SetZAxis(0,0,1)
AutoGenParent475ID289.collider:SetHalfLengths(1.75,4,1.75)
AutoGenParent475ID279.collider:AddChild(AutoGenParent475ID289.collider)
table.insert(colliders,AutoGenParent475ID289)
AutoGenParent475ID290 = {}
AutoGenParent475ID290.collider = AABBCollider.Create(-1)
AutoGenParent475ID290.collider:SetOffset(0,0,0)
AutoGenParent475ID290.collider:SetMinPos(344.715,30.3536,127.741)
AutoGenParent475ID290.collider:SetMaxPos(434.151,62.0297,255.095)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID290.collider)
table.insert(colliders,AutoGenParent475ID290)
AutoGenParent475ID291 = {}
AutoGenParent475ID291.collider = OBBCollider.Create(-1)
AutoGenParent475ID291.collider:SetOffset(346.5,55.47,250.5)
AutoGenParent475ID291.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent475ID291.collider:SetHalfLengths(0.3,6.55966,4.74342)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID291.collider)
table.insert(colliders,AutoGenParent475ID291)
AutoGenParent475ID292 = {}
AutoGenParent475ID292.collider = OBBCollider.Create(-1)
AutoGenParent475ID292.collider:SetOffset(398,36.3044,158)
AutoGenParent475ID292.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent475ID292.collider:SetHalfLengths(0.3,5.15847,5.09902)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID292.collider)
table.insert(colliders,AutoGenParent475ID292)
AutoGenParent475ID293 = {}
AutoGenParent475ID293.collider = OBBCollider.Create(-1)
AutoGenParent475ID293.collider:SetOffset(404,36.146,160)
AutoGenParent475ID293.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent475ID293.collider:SetHalfLengths(0.3,5.15847,1.41421)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID293.collider)
table.insert(colliders,AutoGenParent475ID293)
AutoGenParent475ID294 = {}
AutoGenParent475ID294.collider = OBBCollider.Create(-1)
AutoGenParent475ID294.collider:SetOffset(406,36.3044,162.5)
AutoGenParent475ID294.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent475ID294.collider:SetHalfLengths(0.3,5.15847,1.80278)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID294.collider)
table.insert(colliders,AutoGenParent475ID294)
AutoGenParent475ID295 = {}
AutoGenParent475ID295.collider = OBBCollider.Create(-1)
AutoGenParent475ID295.collider:SetOffset(409,36.4629,168)
AutoGenParent475ID295.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent475ID295.collider:SetHalfLengths(0.3,5.31694,4.47214)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID295.collider)
table.insert(colliders,AutoGenParent475ID295)
AutoGenParent475ID296 = {}
AutoGenParent475ID296.collider = OBBCollider.Create(-1)
AutoGenParent475ID296.collider:SetOffset(428,35.829,131.5)
AutoGenParent475ID296.collider:SetZAxis(-0.863779,0,0.503871)
AutoGenParent475ID296.collider:SetHalfLengths(0.3,5.31694,6.94622)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID296.collider)
table.insert(colliders,AutoGenParent475ID296)
AutoGenParent475ID297 = {}
AutoGenParent475ID297.collider = OBBCollider.Create(-1)
AutoGenParent475ID297.collider:SetOffset(412.5,35.5121,139.5)
AutoGenParent475ID297.collider:SetZAxis(-0.903738,0,0.428086)
AutoGenParent475ID297.collider:SetHalfLengths(0.3,5.15847,10.5119)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID297.collider)
table.insert(colliders,AutoGenParent475ID297)
AutoGenParent475ID298 = {}
AutoGenParent475ID298.collider = OBBCollider.Create(-1)
AutoGenParent475ID298.collider:SetOffset(401.5,35.3536,144.5)
AutoGenParent475ID298.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent475ID298.collider:SetHalfLengths(0.3,5,1.58114)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID298.collider)
table.insert(colliders,AutoGenParent475ID298)
AutoGenParent475ID299 = {}
AutoGenParent475ID299.collider = OBBCollider.Create(-1)
AutoGenParent475ID299.collider:SetOffset(365.671,47.676,214.229)
AutoGenParent475ID299.collider:SetZAxis(0,0,1)
AutoGenParent475ID299.collider:SetHalfLengths(1.85948,4.92038,1.9785)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID299.collider)
table.insert(colliders,AutoGenParent475ID299)
AutoGenParent475ID300 = {}
AutoGenParent475ID300.collider = OBBCollider.Create(-1)
AutoGenParent475ID300.collider:SetOffset(347.526,56,240.375)
AutoGenParent475ID300.collider:SetZAxis(0,0,1)
AutoGenParent475ID300.collider:SetHalfLengths(2.14269,5.42911,1.96576)
AutoGenParent475ID290.collider:AddChild(AutoGenParent475ID300.collider)
table.insert(colliders,AutoGenParent475ID300)
AutoGenParent475ID301 = {}
AutoGenParent475ID301.collider = AABBCollider.Create(-1)
AutoGenParent475ID301.collider:SetOffset(0,0,0)
AutoGenParent475ID301.collider:SetMinPos(410.719,30.829,127.711)
AutoGenParent475ID301.collider:SetMaxPos(475.148,57.3098,255.172)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID301.collider)
table.insert(colliders,AutoGenParent475ID301)
AutoGenParent475ID302 = {}
AutoGenParent475ID302.collider = OBBCollider.Create(-1)
AutoGenParent475ID302.collider:SetOffset(412.5,36.7798,176)
AutoGenParent475ID302.collider:SetZAxis(0.351123,0,0.936329)
AutoGenParent475ID302.collider:SetHalfLengths(0.3,5.79235,4.272)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID302.collider)
table.insert(colliders,AutoGenParent475ID302)
AutoGenParent475ID303 = {}
AutoGenParent475ID303.collider = OBBCollider.Create(-1)
AutoGenParent475ID303.collider:SetOffset(415.5,37.5722,185)
AutoGenParent475ID303.collider:SetZAxis(0.287348,0,0.957826)
AutoGenParent475ID303.collider:SetHalfLengths(0.3,5.63388,5.22015)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID303.collider)
table.insert(colliders,AutoGenParent475ID303)
AutoGenParent475ID304 = {}
AutoGenParent475ID304.collider = OBBCollider.Create(-1)
AutoGenParent475ID304.collider:SetOffset(418,38.2061,195.5)
AutoGenParent475ID304.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent475ID304.collider:SetHalfLengths(0.3,7.0601,5.59017)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID304.collider)
table.insert(colliders,AutoGenParent475ID304)
AutoGenParent475ID305 = {}
AutoGenParent475ID305.collider = OBBCollider.Create(-1)
AutoGenParent475ID305.collider:SetOffset(419.5,40.2662,208.5)
AutoGenParent475ID305.collider:SetZAxis(0.066519,0,0.997785)
AutoGenParent475ID305.collider:SetHalfLengths(0.3,9.27867,7.51665)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID305.collider)
table.insert(colliders,AutoGenParent475ID305)
AutoGenParent475ID306 = {}
AutoGenParent475ID306.collider = OBBCollider.Create(-1)
AutoGenParent475ID306.collider:SetOffset(418.5,44.5448,223.5)
AutoGenParent475ID306.collider:SetZAxis(-0.196116,0,0.980581)
AutoGenParent475ID306.collider:SetHalfLengths(0.3,8.80326,7.64853)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID306.collider)
table.insert(colliders,AutoGenParent475ID306)
AutoGenParent475ID307 = {}
AutoGenParent475ID307.collider = OBBCollider.Create(-1)
AutoGenParent475ID307.collider:SetOffset(416,48.3481,235)
AutoGenParent475ID307.collider:SetZAxis(-0.242536,0,0.970143)
AutoGenParent475ID307.collider:SetHalfLengths(0.3,7.37704,4.12311)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID307.collider)
table.insert(colliders,AutoGenParent475ID307)
AutoGenParent475ID308 = {}
AutoGenParent475ID308.collider = OBBCollider.Create(-1)
AutoGenParent475ID308.collider:SetOffset(422,50.7251,242)
AutoGenParent475ID308.collider:SetZAxis(0.919145,0,0.393919)
AutoGenParent475ID308.collider:SetHalfLengths(0.3,5.79234,7.61577)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID308.collider)
table.insert(colliders,AutoGenParent475ID308)
AutoGenParent475ID309 = {}
AutoGenParent475ID309.collider = OBBCollider.Create(-1)
AutoGenParent475ID309.collider:SetOffset(432.5,51.5175,250)
AutoGenParent475ID309.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent475ID309.collider:SetHalfLengths(0.3,5.79235,6.10328)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID309.collider)
table.insert(colliders,AutoGenParent475ID309)
AutoGenParent475ID310 = {}
AutoGenParent475ID310.collider = OBBCollider.Create(-1)
AutoGenParent475ID310.collider:SetOffset(463.5,38.2061,139.5)
AutoGenParent475ID310.collider:SetZAxis(-0.870563,0,-0.492057)
AutoGenParent475ID310.collider:SetHalfLengths(0.3,6.42622,13.2098)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID310.collider)
table.insert(colliders,AutoGenParent475ID310)
AutoGenParent475ID311 = {}
AutoGenParent475ID311.collider = OBBCollider.Create(-1)
AutoGenParent475ID311.collider:SetOffset(443,36.7798,130.5)
AutoGenParent475ID311.collider:SetZAxis(-0.963518,0,-0.267644)
AutoGenParent475ID311.collider:SetHalfLengths(0.3,5.95082,9.34077)
AutoGenParent475ID301.collider:AddChild(AutoGenParent475ID311.collider)
table.insert(colliders,AutoGenParent475ID311)
AutoGenParent475ID312 = {}
AutoGenParent475ID312.collider = AABBCollider.Create(-1)
AutoGenParent475ID312.collider:SetOffset(0,0,0)
AutoGenParent475ID312.collider:SetMinPos(434.7,23.9934,145.827)
AutoGenParent475ID312.collider:SetMaxPos(509.285,68.8781,322.047)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID312.collider)
table.insert(colliders,AutoGenParent475ID312)
AutoGenParent475ID313 = {}
AutoGenParent475ID313.collider = OBBCollider.Create(-1)
AutoGenParent475ID313.collider:SetOffset(453.5,52.3098,255)
AutoGenParent475ID313.collider:SetZAxis(1,0,0)
AutoGenParent475ID313.collider:SetHalfLengths(0.3,16.5682,17.5)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID313.collider)
table.insert(colliders,AutoGenParent475ID313)
AutoGenParent475ID314 = {}
AutoGenParent475ID314.collider = OBBCollider.Create(-1)
AutoGenParent475ID314.collider:SetOffset(506.5,42.1678,206.5)
AutoGenParent475ID314.collider:SetZAxis(-0.316228,0,-0.948683)
AutoGenParent475ID314.collider:SetHalfLengths(0.3,5.31694,7.90569)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID314.collider)
table.insert(colliders,AutoGenParent475ID314)
AutoGenParent475ID315 = {}
AutoGenParent475ID315.collider = OBBCollider.Create(-1)
AutoGenParent475ID315.collider:SetOffset(500.5,41.8508,190)
AutoGenParent475ID315.collider:SetZAxis(-0.362446,0,-0.932005)
AutoGenParent475ID315.collider:SetHalfLengths(0.3,5.63388,9.6566)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID315.collider)
table.insert(colliders,AutoGenParent475ID315)
AutoGenParent475ID316 = {}
AutoGenParent475ID316.collider = OBBCollider.Create(-1)
AutoGenParent475ID316.collider:SetOffset(492,41.217,172)
AutoGenParent475ID316.collider:SetZAxis(-0.485643,0,-0.874157)
AutoGenParent475ID316.collider:SetHalfLengths(0.3,6.42622,10.2956)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID316.collider)
table.insert(colliders,AutoGenParent475ID316)
AutoGenParent475ID317 = {}
AutoGenParent475ID317.collider = OBBCollider.Create(-1)
AutoGenParent475ID317.collider:SetOffset(481,39.7907,154.5)
AutoGenParent475ID317.collider:SetZAxis(-0.576683,0,-0.816968)
AutoGenParent475ID317.collider:SetHalfLengths(0.3,6.58469,10.4043)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID317.collider)
table.insert(colliders,AutoGenParent475ID317)
AutoGenParent475ID318 = {}
AutoGenParent475ID318.collider = OBBCollider.Create(-1)
AutoGenParent475ID318.collider:SetOffset(467.5,40.2329,291.5)
AutoGenParent475ID318.collider:SetZAxis(-0.613941,0,0.789352)
AutoGenParent475ID318.collider:SetHalfLengths(0.3,15.3313,5.70088)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID318.collider)
table.insert(colliders,AutoGenParent475ID318)
AutoGenParent475ID319 = {}
AutoGenParent475ID319.collider = OBBCollider.Create(-1)
AutoGenParent475ID319.collider:SetOffset(453,40.9141,256)
AutoGenParent475ID319.collider:SetZAxis(-1,0,0)
AutoGenParent475ID319.collider:SetHalfLengths(0.3,16.9207,18)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID319.collider)
table.insert(colliders,AutoGenParent475ID319)
AutoGenParent475ID320 = {}
AutoGenParent475ID320.collider = OBBCollider.Create(-1)
AutoGenParent475ID320.collider:SetOffset(435,52.8348,263)
AutoGenParent475ID320.collider:SetZAxis(0,0,1)
AutoGenParent475ID320.collider:SetHalfLengths(0.3,6.1353,7)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID320.collider)
table.insert(colliders,AutoGenParent475ID320)
AutoGenParent475ID321 = {}
AutoGenParent475ID321.collider = OBBCollider.Create(-1)
AutoGenParent475ID321.collider:SetOffset(436,53.9701,283.5)
AutoGenParent475ID321.collider:SetZAxis(0.0738717,0,0.997268)
AutoGenParent475ID321.collider:SetHalfLengths(0.3,6.81649,13.537)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID321.collider)
table.insert(colliders,AutoGenParent475ID321)
AutoGenParent475ID322 = {}
AutoGenParent475ID322.collider = OBBCollider.Create(-1)
AutoGenParent475ID322.collider:SetOffset(439,55.7866,309.5)
AutoGenParent475ID322.collider:SetZAxis(0.157991,0,0.987441)
AutoGenParent475ID322.collider:SetHalfLengths(0.3,5.3406,12.659)
AutoGenParent475ID312.collider:AddChild(AutoGenParent475ID322.collider)
table.insert(colliders,AutoGenParent475ID322)
AutoGenParent475ID323 = {}
AutoGenParent475ID323.collider = AABBCollider.Create(-1)
AutoGenParent475ID323.collider:SetOffset(0,0,0)
AutoGenParent475ID323.collider:SetMinPos(440.708,29.7835,213.958)
AutoGenParent475ID323.collider:SetMaxPos(512.3,66.1226,363.023)
AutoGenParent475ID223.collider:AddChild(AutoGenParent475ID323.collider)
table.insert(colliders,AutoGenParent475ID323)
AutoGenParent475ID324 = {}
AutoGenParent475ID324.collider = OBBCollider.Create(-1)
AutoGenParent475ID324.collider:SetOffset(511.5,41.5339,241.5)
AutoGenParent475ID324.collider:SetZAxis(-0.0370117,0,-0.999315)
AutoGenParent475ID324.collider:SetHalfLengths(0.3,5.31694,13.5093)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID324.collider)
table.insert(colliders,AutoGenParent475ID324)
AutoGenParent475ID325 = {}
AutoGenParent475ID325.collider = OBBCollider.Create(-1)
AutoGenParent475ID325.collider:SetOffset(510,41.8508,221)
AutoGenParent475ID325.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent475ID325.collider:SetHalfLengths(0.3,5.31694,7.07107)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID325.collider)
table.insert(colliders,AutoGenParent475ID325)
AutoGenParent475ID326 = {}
AutoGenParent475ID326.collider = OBBCollider.Create(-1)
AutoGenParent475ID326.collider:SetOffset(512,41.5953,300.5)
AutoGenParent475ID326.collider:SetZAxis(0,0,1)
AutoGenParent475ID326.collider:SetHalfLengths(0.3,11.8118,44.5)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID326.collider)
table.insert(colliders,AutoGenParent475ID326)
AutoGenParent475ID327 = {}
AutoGenParent475ID327.collider = OBBCollider.Create(-1)
AutoGenParent475ID327.collider:SetOffset(474,40.2329,303.5)
AutoGenParent475ID327.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent475ID327.collider:SetHalfLengths(0.3,7.15708,16.7705)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID327.collider)
table.insert(colliders,AutoGenParent475ID327)
AutoGenParent475ID328 = {}
AutoGenParent475ID328.collider = OBBCollider.Create(-1)
AutoGenParent475ID328.collider:SetOffset(475.5,42.39,334)
AutoGenParent475ID328.collider:SetZAxis(-0.106533,0,0.994309)
AutoGenParent475ID328.collider:SetHalfLengths(0.3,6.58943,14.0801)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID328.collider)
table.insert(colliders,AutoGenParent475ID328)
AutoGenParent475ID329 = {}
AutoGenParent475ID329.collider = OBBCollider.Create(-1)
AutoGenParent475ID329.collider:SetOffset(466,50.5642,306)
AutoGenParent475ID329.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent475ID329.collider:SetHalfLengths(0.3,5.68119,10.198)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID329.collider)
table.insert(colliders,AutoGenParent475ID329)
AutoGenParent475ID330 = {}
AutoGenParent475ID330.collider = OBBCollider.Create(-1)
AutoGenParent475ID330.collider:SetOffset(468.5,51.2454,325.5)
AutoGenParent475ID330.collider:SetZAxis(0.0525588,0,0.998618)
AutoGenParent475ID330.collider:SetHalfLengths(0.3,8.29239,9.51315)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID330.collider)
table.insert(colliders,AutoGenParent475ID330)
AutoGenParent475ID331 = {}
AutoGenParent475ID331.collider = OBBCollider.Create(-1)
AutoGenParent475ID331.collider:SetOffset(442.5,56.1272,328.5)
AutoGenParent475ID331.collider:SetZAxis(0.22486,0,0.974391)
AutoGenParent475ID331.collider:SetHalfLengths(0.3,6.13531,6.67083)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID331.collider)
table.insert(colliders,AutoGenParent475ID331)
AutoGenParent475ID332 = {}
AutoGenParent475ID332.collider = OBBCollider.Create(-1)
AutoGenParent475ID332.collider:SetOffset(447,57.2625,342.5)
AutoGenParent475ID332.collider:SetZAxis(0.371391,0,0.928477)
AutoGenParent475ID332.collider:SetHalfLengths(0.3,7.95179,8.07775)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID332.collider)
table.insert(colliders,AutoGenParent475ID332)
AutoGenParent475ID333 = {}
AutoGenParent475ID333.collider = OBBCollider.Create(-1)
AutoGenParent475ID333.collider:SetOffset(450.5,60.2143,356.5)
AutoGenParent475ID333.collider:SetZAxis(0.0766965,0,0.997055)
AutoGenParent475ID333.collider:SetHalfLengths(0.3,5.90825,6.5192)
AutoGenParent475ID323.collider:AddChild(AutoGenParent475ID333.collider)
table.insert(colliders,AutoGenParent475ID333)
AutoGenParent475ID334 = {}
AutoGenParent475ID334.collider = AABBCollider.Create(-1)
AutoGenParent475ID334.collider:SetOffset(0,0,0)
AutoGenParent475ID334.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent475ID334.collider:SetMaxPos(512.265,78.3839,383.3)
AutoGenParent475ID.collider:AddChild(AutoGenParent475ID334.collider)
table.insert(colliders,AutoGenParent475ID334)
AutoGenParent475ID335 = {}
AutoGenParent475ID335.collider = AABBCollider.Create(-1)
AutoGenParent475ID335.collider:SetOffset(0,0,0)
AutoGenParent475ID335.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent475ID335.collider:SetMaxPos(512.265,78.3839,383.3)
AutoGenParent475ID334.collider:AddChild(AutoGenParent475ID335.collider)
table.insert(colliders,AutoGenParent475ID335)
AutoGenParent475ID336 = {}
AutoGenParent475ID336.collider = OBBCollider.Create(-1)
AutoGenParent475ID336.collider:SetOffset(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent475ID336.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent475ID336.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID336.collider)
table.insert(colliders,AutoGenParent475ID336)
AutoGenParent475ID337 = {}
AutoGenParent475ID337.collider = OBBCollider.Create(-1)
AutoGenParent475ID337.collider:SetOffset(508,34.7835,352.5)
AutoGenParent475ID337.collider:SetZAxis(-0.470588,0,0.882353)
AutoGenParent475ID337.collider:SetHalfLengths(0.3,6.02178,8.5)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID337.collider)
table.insert(colliders,AutoGenParent475ID337)
AutoGenParent475ID338 = {}
AutoGenParent475ID338.collider = OBBCollider.Create(-1)
AutoGenParent475ID338.collider:SetOffset(502.5,35.8052,364.5)
AutoGenParent475ID338.collider:SetZAxis(-0.316228,0,0.948683)
AutoGenParent475ID338.collider:SetHalfLengths(0.3,6.24884,4.74342)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID338.collider)
table.insert(colliders,AutoGenParent475ID338)
AutoGenParent475ID339 = {}
AutoGenParent475ID339.collider = OBBCollider.Create(-1)
AutoGenParent475ID339.collider:SetOffset(502.5,37.0541,372.5)
AutoGenParent475ID339.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent475ID339.collider:SetHalfLengths(0.3,5.68118,3.80789)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID339.collider)
table.insert(colliders,AutoGenParent475ID339)
AutoGenParent475ID340 = {}
AutoGenParent475ID340.collider = OBBCollider.Create(-1)
AutoGenParent475ID340.collider:SetOffset(506,37.7352,379.5)
AutoGenParent475ID340.collider:SetZAxis(0.496139,0,0.868243)
AutoGenParent475ID340.collider:SetHalfLengths(0.3,5.90825,4.03113)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID340.collider)
table.insert(colliders,AutoGenParent475ID340)
AutoGenParent475ID341 = {}
AutoGenParent475ID341.collider = OBBCollider.Create(-1)
AutoGenParent475ID341.collider:SetOffset(475.5,43.9794,365.5)
AutoGenParent475ID341.collider:SetZAxis(0.0854011,0,0.996347)
AutoGenParent475ID341.collider:SetHalfLengths(0.3,5.34059,17.5642)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID341.collider)
table.insert(colliders,AutoGenParent475ID341)
AutoGenParent475ID342 = {}
AutoGenParent475ID342.collider = OBBCollider.Create(-1)
AutoGenParent475ID342.collider:SetOffset(469.5,54.5378,347.5)
AutoGenParent475ID342.collider:SetZAxis(0.039968,0,0.999201)
AutoGenParent475ID342.collider:SetHalfLengths(0.3,6.81649,12.51)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID342.collider)
table.insert(colliders,AutoGenParent475ID342)
AutoGenParent475ID343 = {}
AutoGenParent475ID343.collider = OBBCollider.Create(-1)
AutoGenParent475ID343.collider:SetOffset(470,56.3543,371.5)
AutoGenParent475ID343.collider:SetZAxis(0,0,1)
AutoGenParent475ID343.collider:SetHalfLengths(0.3,7.49767,11.5)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID343.collider)
table.insert(colliders,AutoGenParent475ID343)
AutoGenParent475ID344 = {}
AutoGenParent475ID344.collider = OBBCollider.Create(-1)
AutoGenParent475ID344.collider:SetOffset(452,61.1226,373)
AutoGenParent475ID344.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent475ID344.collider:SetHalfLengths(0.3,7.38414,10.0499)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID344.collider)
table.insert(colliders,AutoGenParent475ID344)
AutoGenParent475ID345 = {}
AutoGenParent475ID345.collider = OBBCollider.Create(-1)
AutoGenParent475ID345.collider:SetOffset(473.5,58.852,383)
AutoGenParent475ID345.collider:SetZAxis(1,0,0)
AutoGenParent475ID345.collider:SetHalfLengths(0.3,19.5319,3.5)
AutoGenParent475ID335.collider:AddChild(AutoGenParent475ID345.collider)
table.insert(colliders,AutoGenParent475ID345)
CollisionHandler.AddAABB(AutoGenParent475ID.collider, 3)
AutoGenParent475ID1 = nil
AutoGenParent475ID2 = nil
AutoGenParent475ID3 = nil
AutoGenParent475ID4 = nil
AutoGenParent475ID5 = nil
AutoGenParent475ID6 = nil
AutoGenParent475ID7 = nil
AutoGenParent475ID8 = nil
AutoGenParent475ID9 = nil
AutoGenParent475ID10 = nil
AutoGenParent475ID11 = nil
AutoGenParent475ID12 = nil
AutoGenParent475ID13 = nil
AutoGenParent475ID14 = nil
AutoGenParent475ID15 = nil
AutoGenParent475ID16 = nil
AutoGenParent475ID17 = nil
AutoGenParent475ID18 = nil
AutoGenParent475ID19 = nil
AutoGenParent475ID20 = nil
AutoGenParent475ID21 = nil
AutoGenParent475ID22 = nil
AutoGenParent475ID23 = nil
AutoGenParent475ID24 = nil
AutoGenParent475ID25 = nil
AutoGenParent475ID26 = nil
AutoGenParent475ID27 = nil
AutoGenParent475ID28 = nil
AutoGenParent475ID29 = nil
AutoGenParent475ID30 = nil
AutoGenParent475ID31 = nil
AutoGenParent475ID32 = nil
AutoGenParent475ID33 = nil
AutoGenParent475ID34 = nil
AutoGenParent475ID35 = nil
AutoGenParent475ID36 = nil
AutoGenParent475ID37 = nil
AutoGenParent475ID38 = nil
AutoGenParent475ID39 = nil
AutoGenParent475ID40 = nil
AutoGenParent475ID41 = nil
AutoGenParent475ID42 = nil
AutoGenParent475ID43 = nil
AutoGenParent475ID44 = nil
AutoGenParent475ID45 = nil
AutoGenParent475ID46 = nil
AutoGenParent475ID47 = nil
AutoGenParent475ID48 = nil
AutoGenParent475ID49 = nil
AutoGenParent475ID50 = nil
AutoGenParent475ID51 = nil
AutoGenParent475ID52 = nil
AutoGenParent475ID53 = nil
AutoGenParent475ID54 = nil
AutoGenParent475ID55 = nil
AutoGenParent475ID56 = nil
AutoGenParent475ID57 = nil
AutoGenParent475ID58 = nil
AutoGenParent475ID59 = nil
AutoGenParent475ID60 = nil
AutoGenParent475ID61 = nil
AutoGenParent475ID62 = nil
AutoGenParent475ID63 = nil
AutoGenParent475ID64 = nil
AutoGenParent475ID65 = nil
AutoGenParent475ID66 = nil
AutoGenParent475ID67 = nil
AutoGenParent475ID68 = nil
AutoGenParent475ID69 = nil
AutoGenParent475ID70 = nil
AutoGenParent475ID71 = nil
AutoGenParent475ID72 = nil
AutoGenParent475ID73 = nil
AutoGenParent475ID74 = nil
AutoGenParent475ID75 = nil
AutoGenParent475ID76 = nil
AutoGenParent475ID77 = nil
AutoGenParent475ID78 = nil
AutoGenParent475ID79 = nil
AutoGenParent475ID80 = nil
AutoGenParent475ID81 = nil
AutoGenParent475ID82 = nil
AutoGenParent475ID83 = nil
AutoGenParent475ID84 = nil
AutoGenParent475ID85 = nil
AutoGenParent475ID86 = nil
AutoGenParent475ID87 = nil
AutoGenParent475ID88 = nil
AutoGenParent475ID89 = nil
AutoGenParent475ID90 = nil
AutoGenParent475ID91 = nil
AutoGenParent475ID92 = nil
AutoGenParent475ID93 = nil
AutoGenParent475ID94 = nil
AutoGenParent475ID95 = nil
AutoGenParent475ID96 = nil
AutoGenParent475ID97 = nil
AutoGenParent475ID98 = nil
AutoGenParent475ID99 = nil
AutoGenParent475ID100 = nil
AutoGenParent475ID101 = nil
AutoGenParent475ID102 = nil
AutoGenParent475ID103 = nil
AutoGenParent475ID104 = nil
AutoGenParent475ID105 = nil
AutoGenParent475ID106 = nil
AutoGenParent475ID107 = nil
AutoGenParent475ID108 = nil
AutoGenParent475ID109 = nil
AutoGenParent475ID110 = nil
AutoGenParent475ID111 = nil
AutoGenParent475ID112 = nil
AutoGenParent475ID113 = nil
AutoGenParent475ID114 = nil
AutoGenParent475ID115 = nil
AutoGenParent475ID116 = nil
AutoGenParent475ID117 = nil
AutoGenParent475ID118 = nil
AutoGenParent475ID119 = nil
AutoGenParent475ID120 = nil
AutoGenParent475ID121 = nil
AutoGenParent475ID122 = nil
AutoGenParent475ID123 = nil
AutoGenParent475ID124 = nil
AutoGenParent475ID125 = nil
AutoGenParent475ID126 = nil
AutoGenParent475ID127 = nil
AutoGenParent475ID128 = nil
AutoGenParent475ID129 = nil
AutoGenParent475ID130 = nil
AutoGenParent475ID131 = nil
AutoGenParent475ID132 = nil
AutoGenParent475ID133 = nil
AutoGenParent475ID134 = nil
AutoGenParent475ID135 = nil
AutoGenParent475ID136 = nil
AutoGenParent475ID137 = nil
AutoGenParent475ID138 = nil
AutoGenParent475ID139 = nil
AutoGenParent475ID140 = nil
AutoGenParent475ID141 = nil
AutoGenParent475ID142 = nil
AutoGenParent475ID143 = nil
AutoGenParent475ID144 = nil
AutoGenParent475ID145 = nil
AutoGenParent475ID146 = nil
AutoGenParent475ID147 = nil
AutoGenParent475ID148 = nil
AutoGenParent475ID149 = nil
AutoGenParent475ID150 = nil
AutoGenParent475ID151 = nil
AutoGenParent475ID152 = nil
AutoGenParent475ID153 = nil
AutoGenParent475ID154 = nil
AutoGenParent475ID155 = nil
AutoGenParent475ID156 = nil
AutoGenParent475ID157 = nil
AutoGenParent475ID158 = nil
AutoGenParent475ID159 = nil
AutoGenParent475ID160 = nil
AutoGenParent475ID161 = nil
AutoGenParent475ID162 = nil
AutoGenParent475ID163 = nil
AutoGenParent475ID164 = nil
AutoGenParent475ID165 = nil
AutoGenParent475ID166 = nil
AutoGenParent475ID167 = nil
AutoGenParent475ID168 = nil
AutoGenParent475ID169 = nil
AutoGenParent475ID170 = nil
AutoGenParent475ID171 = nil
AutoGenParent475ID172 = nil
AutoGenParent475ID173 = nil
AutoGenParent475ID174 = nil
AutoGenParent475ID175 = nil
AutoGenParent475ID176 = nil
AutoGenParent475ID177 = nil
AutoGenParent475ID178 = nil
AutoGenParent475ID179 = nil
AutoGenParent475ID180 = nil
AutoGenParent475ID181 = nil
AutoGenParent475ID182 = nil
AutoGenParent475ID183 = nil
AutoGenParent475ID184 = nil
AutoGenParent475ID185 = nil
AutoGenParent475ID186 = nil
AutoGenParent475ID187 = nil
AutoGenParent475ID188 = nil
AutoGenParent475ID189 = nil
AutoGenParent475ID190 = nil
AutoGenParent475ID191 = nil
AutoGenParent475ID192 = nil
AutoGenParent475ID193 = nil
AutoGenParent475ID194 = nil
AutoGenParent475ID195 = nil
AutoGenParent475ID196 = nil
AutoGenParent475ID197 = nil
AutoGenParent475ID198 = nil
AutoGenParent475ID199 = nil
AutoGenParent475ID200 = nil
AutoGenParent475ID201 = nil
AutoGenParent475ID202 = nil
AutoGenParent475ID203 = nil
AutoGenParent475ID204 = nil
AutoGenParent475ID205 = nil
AutoGenParent475ID206 = nil
AutoGenParent475ID207 = nil
AutoGenParent475ID208 = nil
AutoGenParent475ID209 = nil
AutoGenParent475ID210 = nil
AutoGenParent475ID211 = nil
AutoGenParent475ID212 = nil
AutoGenParent475ID213 = nil
AutoGenParent475ID214 = nil
AutoGenParent475ID215 = nil
AutoGenParent475ID216 = nil
AutoGenParent475ID217 = nil
AutoGenParent475ID218 = nil
AutoGenParent475ID219 = nil
AutoGenParent475ID220 = nil
AutoGenParent475ID221 = nil
AutoGenParent475ID222 = nil
AutoGenParent475ID223 = nil
AutoGenParent475ID224 = nil
AutoGenParent475ID225 = nil
AutoGenParent475ID226 = nil
AutoGenParent475ID227 = nil
AutoGenParent475ID228 = nil
AutoGenParent475ID229 = nil
AutoGenParent475ID230 = nil
AutoGenParent475ID231 = nil
AutoGenParent475ID232 = nil
AutoGenParent475ID233 = nil
AutoGenParent475ID234 = nil
AutoGenParent475ID235 = nil
AutoGenParent475ID236 = nil
AutoGenParent475ID237 = nil
AutoGenParent475ID238 = nil
AutoGenParent475ID239 = nil
AutoGenParent475ID240 = nil
AutoGenParent475ID241 = nil
AutoGenParent475ID242 = nil
AutoGenParent475ID243 = nil
AutoGenParent475ID244 = nil
AutoGenParent475ID245 = nil
AutoGenParent475ID246 = nil
AutoGenParent475ID247 = nil
AutoGenParent475ID248 = nil
AutoGenParent475ID249 = nil
AutoGenParent475ID250 = nil
AutoGenParent475ID251 = nil
AutoGenParent475ID252 = nil
AutoGenParent475ID253 = nil
AutoGenParent475ID254 = nil
AutoGenParent475ID255 = nil
AutoGenParent475ID256 = nil
AutoGenParent475ID257 = nil
AutoGenParent475ID258 = nil
AutoGenParent475ID259 = nil
AutoGenParent475ID260 = nil
AutoGenParent475ID261 = nil
AutoGenParent475ID262 = nil
AutoGenParent475ID263 = nil
AutoGenParent475ID264 = nil
AutoGenParent475ID265 = nil
AutoGenParent475ID266 = nil
AutoGenParent475ID267 = nil
AutoGenParent475ID268 = nil
AutoGenParent475ID269 = nil
AutoGenParent475ID270 = nil
AutoGenParent475ID271 = nil
AutoGenParent475ID272 = nil
AutoGenParent475ID273 = nil
AutoGenParent475ID274 = nil
AutoGenParent475ID275 = nil
AutoGenParent475ID276 = nil
AutoGenParent475ID277 = nil
AutoGenParent475ID278 = nil
AutoGenParent475ID279 = nil
AutoGenParent475ID280 = nil
AutoGenParent475ID281 = nil
AutoGenParent475ID282 = nil
AutoGenParent475ID283 = nil
AutoGenParent475ID284 = nil
AutoGenParent475ID285 = nil
AutoGenParent475ID286 = nil
AutoGenParent475ID287 = nil
AutoGenParent475ID288 = nil
AutoGenParent475ID289 = nil
AutoGenParent475ID290 = nil
AutoGenParent475ID291 = nil
AutoGenParent475ID292 = nil
AutoGenParent475ID293 = nil
AutoGenParent475ID294 = nil
AutoGenParent475ID295 = nil
AutoGenParent475ID296 = nil
AutoGenParent475ID297 = nil
AutoGenParent475ID298 = nil
AutoGenParent475ID299 = nil
AutoGenParent475ID300 = nil
AutoGenParent475ID301 = nil
AutoGenParent475ID302 = nil
AutoGenParent475ID303 = nil
AutoGenParent475ID304 = nil
AutoGenParent475ID305 = nil
AutoGenParent475ID306 = nil
AutoGenParent475ID307 = nil
AutoGenParent475ID308 = nil
AutoGenParent475ID309 = nil
AutoGenParent475ID310 = nil
AutoGenParent475ID311 = nil
AutoGenParent475ID312 = nil
AutoGenParent475ID313 = nil
AutoGenParent475ID314 = nil
AutoGenParent475ID315 = nil
AutoGenParent475ID316 = nil
AutoGenParent475ID317 = nil
AutoGenParent475ID318 = nil
AutoGenParent475ID319 = nil
AutoGenParent475ID320 = nil
AutoGenParent475ID321 = nil
AutoGenParent475ID322 = nil
AutoGenParent475ID323 = nil
AutoGenParent475ID324 = nil
AutoGenParent475ID325 = nil
AutoGenParent475ID326 = nil
AutoGenParent475ID327 = nil
AutoGenParent475ID328 = nil
AutoGenParent475ID329 = nil
AutoGenParent475ID330 = nil
AutoGenParent475ID331 = nil
AutoGenParent475ID332 = nil
AutoGenParent475ID333 = nil
AutoGenParent475ID334 = nil
AutoGenParent475ID335 = nil
AutoGenParent475ID336 = nil
AutoGenParent475ID337 = nil
AutoGenParent475ID338 = nil
AutoGenParent475ID339 = nil
AutoGenParent475ID340 = nil
AutoGenParent475ID341 = nil
AutoGenParent475ID342 = nil
AutoGenParent475ID343 = nil
AutoGenParent475ID344 = nil
AutoGenParent475ID345 = nil
table.insert(colliders,AutoGenParent475ID)
AutoGenParent475ID = nil

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
props = {}
colliders = {}
triggers = {}
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
Transform.SetScaleNonUniform(PineTree_NoCollider14396ID.transformID, 1.21896, 1.6208, 1.11479)
Transform.SetRotation(PineTree_NoCollider14396ID.transformID, {x=0, y=2.98311, z=0})
PineTree_NoCollider14396ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider14396ID.model, PineTree_NoCollider14396ID.transformID)
table.insert(props,PineTree_NoCollider14396ID)
PineTree_NoCollider14396ID = nil

PineTree_NoCollider15397ID = {}
PineTree_NoCollider15397ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider15397ID.transformID, {x=179.337, y=54.8438, z=183.251})
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
Transform.SetPosition(PineTree_NoCollider17399ID.transformID, {x=160.275, y=52.25, z=165.948})
Transform.SetScaleNonUniform(PineTree_NoCollider17399ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(PineTree_NoCollider17399ID.transformID, {x=0, y=-2.76387, z=0})
PineTree_NoCollider17399ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider17399ID.model, PineTree_NoCollider17399ID.transformID)
table.insert(props,PineTree_NoCollider17399ID)
PineTree_NoCollider17399ID = nil

PineTree_NoCollider18400ID = {}
PineTree_NoCollider18400ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider18400ID.transformID, {x=162.244, y=48.5313, z=173.72})
Transform.SetScaleNonUniform(PineTree_NoCollider18400ID.transformID, 1.22432, 1.54544, 1.38167)
Transform.SetRotation(PineTree_NoCollider18400ID.transformID, {x=0.0163132, y=1.82048, z=0.0226151})
PineTree_NoCollider18400ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider18400ID.model, PineTree_NoCollider18400ID.transformID)
table.insert(props,PineTree_NoCollider18400ID)
PineTree_NoCollider18400ID = nil

PineTree_NoCollider19401ID = {}
PineTree_NoCollider19401ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree_NoCollider19401ID.transformID, {x=206.009, y=55.0625, z=165.773})
Transform.SetScaleNonUniform(PineTree_NoCollider19401ID.transformID, 1.72057, 1.53506, 1.27762)
Transform.SetRotation(PineTree_NoCollider19401ID.transformID, {x=0, y=-2.19759, z=0})
PineTree_NoCollider19401ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree_NoCollider19401ID.model, PineTree_NoCollider19401ID.transformID)
table.insert(props,PineTree_NoCollider19401ID)
PineTree_NoCollider19401ID = nil

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
props = {}
colliders = {}
triggers = {}
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
props = {}
colliders = {}
triggers = {}
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
props = {}
colliders = {}
triggers = {}
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
props = {}
colliders = {}
triggers = {}
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
props = {}
colliders = {}
triggers = {}
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
props = {}
colliders = {}
triggers = {}
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
