levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
Heightmap1.asset:SetPosition({x=0, y=3, z=128})
Heightmap1.asset:SetHeightMultiplier(0.131373)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
Heightmap2.asset:SetPosition({x=128, y=30, z=0})
Heightmap2.asset:SetHeightMultiplier(0.117647)
Heightmap2.surrounding = { 1 }
heightmaps[2] = Heightmap2
Heightmap2 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = {}
colliders = {}
triggers = {}
TilePlaceholder2ID = {}
TilePlaceholder2ID.transformID = Transform.Bind()
Transform.SetPosition(TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(TilePlaceholder2ID.transformID, 1, 1, 1)
Transform.SetRotation(TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
TilePlaceholder2ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
Gear.AddStaticInstance(TilePlaceholder2ID.model, TilePlaceholder2ID.transformID)
table.insert(props,TilePlaceholder2ID)
TilePlaceholder2ID = nil

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

Obb6ID = {}
Obb6ID.transformID = Transform.Bind()
Transform.SetPosition(Obb6ID.transformID, {x=39.2188, y=11.0963, z=126.485})
Transform.SetScaleNonUniform(Obb6ID.transformID, 5.33843, 5.90499, 0.887863)
Transform.SetRotation(Obb6ID.transformID, {x=0, y=0, z=0})
Obb6ID.collider = OBBCollider.Create(Obb6ID.transformID)
Obb6ID.collider:SetOffset(0,0,0)
Obb6ID.collider:SetZAxis(0.0350067,0,0.999387)
Obb6ID.collider:SetHalfLengths(2.66922,2.9525,0.443932)
CollisionHandler.AddOBB(Obb6ID.collider, 3)
table.insert(colliders,Obb6ID)
Obb6ID = nil

Obb17ID = {}
Obb17ID.transformID = Transform.Bind()
Transform.SetPosition(Obb17ID.transformID, {x=44.7947, y=12.0151, z=129.069})
Transform.SetScaleNonUniform(Obb17ID.transformID, 8.30671, 7.20676, 0.65567)
Transform.SetRotation(Obb17ID.transformID, {x=0, y=-0.0131889, z=0})
Obb17ID.collider = OBBCollider.Create(Obb17ID.transformID)
Obb17ID.collider:SetOffset(0,0,0)
Obb17ID.collider:SetZAxis(-0.583273,0,0.812276)
Obb17ID.collider:SetHalfLengths(4.15336,3.60338,0.327835)
CollisionHandler.AddOBB(Obb17ID.collider, 3)
table.insert(colliders,Obb17ID)
Obb17ID = nil

Obb28ID = {}
Obb28ID.transformID = Transform.Bind()
Transform.SetPosition(Obb28ID.transformID, {x=52.2659, y=14.2357, z=137.028})
Transform.SetScaleNonUniform(Obb28ID.transformID, 13.4763, 11.3442, 1)
Transform.SetRotation(Obb28ID.transformID, {x=0, y=0, z=0})
Obb28ID.collider = OBBCollider.Create(Obb28ID.transformID)
Obb28ID.collider:SetOffset(0,0,0)
Obb28ID.collider:SetZAxis(-0.823142,0,0.567836)
Obb28ID.collider:SetHalfLengths(6.73815,5.67209,0.5)
CollisionHandler.AddOBB(Obb28ID.collider, 3)
table.insert(colliders,Obb28ID)
Obb28ID = nil

Obb39ID = {}
Obb39ID.transformID = Transform.Bind()
Transform.SetPosition(Obb39ID.transformID, {x=56.6113, y=15.1691, z=145.5})
Transform.SetScaleNonUniform(Obb39ID.transformID, 5.78123, 12.6913, 1.29184)
Transform.SetRotation(Obb39ID.transformID, {x=0, y=0, z=0})
Obb39ID.collider = OBBCollider.Create(Obb39ID.transformID)
Obb39ID.collider:SetOffset(0,0,0)
Obb39ID.collider:SetZAxis(-0.996929,0,0.0783057)
Obb39ID.collider:SetHalfLengths(2.89062,6.34563,0.64592)
CollisionHandler.AddOBB(Obb39ID.collider, 3)
table.insert(colliders,Obb39ID)
Obb39ID = nil

Obb410ID = {}
Obb410ID.transformID = Transform.Bind()
Transform.SetPosition(Obb410ID.transformID, {x=52.7757, y=13.3417, z=152.966})
Transform.SetScaleNonUniform(Obb410ID.transformID, 12.2092, 9.29743, 1)
Transform.SetRotation(Obb410ID.transformID, {x=0, y=0, z=0})
Obb410ID.collider = OBBCollider.Create(Obb410ID.transformID)
Obb410ID.collider:SetOffset(0,0,0)
Obb410ID.collider:SetZAxis(-0.732567,0,-0.680695)
Obb410ID.collider:SetHalfLengths(6.10459,4.64871,0.5)
CollisionHandler.AddOBB(Obb410ID.collider, 3)
table.insert(colliders,Obb410ID)
Obb410ID = nil

Obb511ID = {}
Obb511ID.transformID = Transform.Bind()
Transform.SetPosition(Obb511ID.transformID, {x=44.1356, y=13.6087, z=157.73})
Transform.SetScaleNonUniform(Obb511ID.transformID, 9.82996, 9.1749, 1)
Transform.SetRotation(Obb511ID.transformID, {x=0, y=0, z=0})
Obb511ID.collider = OBBCollider.Create(Obb511ID.transformID)
Obb511ID.collider:SetOffset(0,0,0)
Obb511ID.collider:SetZAxis(-0.117519,0,-0.993071)
Obb511ID.collider:SetHalfLengths(4.91498,4.58745,0.5)
CollisionHandler.AddOBB(Obb511ID.collider, 3)
table.insert(colliders,Obb511ID)
Obb511ID = nil

OakTree12ID = {}
OakTree12ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree12ID.transformID, {x=24.2969, y=7.51563, z=139.5})
Transform.SetScaleNonUniform(OakTree12ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree12ID.transformID, {x=0, y=0.131111, z=0})
OakTree12ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree12ID.model, OakTree12ID.transformID)
OakTree12ID.collider = OBBCollider.Create(OakTree12ID.transformID)
OakTree12ID.collider:SetOffset(0,7,0.5)
OakTree12ID.collider:SetZAxis(0.130736,0,0.991417)
OakTree12ID.collider:SetHalfLengths(1.7,7,1.7)
CollisionHandler.AddOBB(OakTree12ID.collider, 3)
table.insert(props,OakTree12ID)
OakTree12ID = nil

OakTree113ID = {}
OakTree113ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree113ID.transformID, {x=38.165, y=9.16406, z=155.143})
Transform.SetScaleNonUniform(OakTree113ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree113ID.transformID, {x=0, y=0.131111, z=0})
OakTree113ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree113ID.model, OakTree113ID.transformID)
OakTree113ID.collider = OBBCollider.Create(OakTree113ID.transformID)
OakTree113ID.collider:SetOffset(0,7,0.5)
OakTree113ID.collider:SetZAxis(0.130736,0,0.991417)
OakTree113ID.collider:SetHalfLengths(1.7,7,1.7)
CollisionHandler.AddOBB(OakTree113ID.collider, 3)
table.insert(props,OakTree113ID)
OakTree113ID = nil

Obb614ID = {}
Obb614ID.transformID = Transform.Bind()
Transform.SetPosition(Obb614ID.transformID, {x=37, y=9.5333, z=157.949})
Transform.SetScaleNonUniform(Obb614ID.transformID, 9.35705, 5.50959, 1)
Transform.SetRotation(Obb614ID.transformID, {x=0, y=0, z=0})
Obb614ID.collider = OBBCollider.Create(Obb614ID.transformID)
Obb614ID.collider:SetOffset(0,0,0)
Obb614ID.collider:SetZAxis(-0.942602,0,0.33392)
Obb614ID.collider:SetHalfLengths(4.67852,2.7548,0.5)
CollisionHandler.AddOBB(Obb614ID.collider, 3)
table.insert(colliders,Obb614ID)
Obb614ID = nil

Obb715ID = {}
Obb715ID.transformID = Transform.Bind()
Transform.SetPosition(Obb715ID.transformID, {x=42.2044, y=10.3271, z=163.596})
Transform.SetScaleNonUniform(Obb715ID.transformID, 8.15694, 6.00243, 1)
Transform.SetRotation(Obb715ID.transformID, {x=0, y=0, z=0})
Obb715ID.collider = OBBCollider.Create(Obb715ID.transformID)
Obb715ID.collider:SetOffset(0,0,0)
Obb715ID.collider:SetZAxis(-0.406524,0,0.91364)
Obb715ID.collider:SetHalfLengths(4.07847,3.00121,0.5)
CollisionHandler.AddOBB(Obb715ID.collider, 3)
table.insert(colliders,Obb715ID)
Obb715ID = nil

Obb816ID = {}
Obb816ID.transformID = Transform.Bind()
Transform.SetPosition(Obb816ID.transformID, {x=48.9783, y=10.9527, z=164.675})
Transform.SetScaleNonUniform(Obb816ID.transformID, 6.97815, 7.49178, 1)
Transform.SetRotation(Obb816ID.transformID, {x=0, y=0, z=0})
Obb816ID.collider = OBBCollider.Create(Obb816ID.transformID)
Obb816ID.collider:SetOffset(0,0,0)
Obb816ID.collider:SetZAxis(0.0659963,0,0.99782)
Obb816ID.collider:SetHalfLengths(3.48908,3.74589,0.5)
CollisionHandler.AddOBB(Obb816ID.collider, 3)
table.insert(colliders,Obb816ID)
Obb816ID = nil

Obb917ID = {}
Obb917ID.transformID = Transform.Bind()
Transform.SetPosition(Obb917ID.transformID, {x=55.3556, y=11.1204, z=168.448})
Transform.SetScaleNonUniform(Obb917ID.transformID, 10.8495, 9.54112, 1)
Transform.SetRotation(Obb917ID.transformID, {x=0, y=0, z=0})
Obb917ID.collider = OBBCollider.Create(Obb917ID.transformID)
Obb917ID.collider:SetOffset(0,0,0)
Obb917ID.collider:SetZAxis(-0.672089,0,0.74047)
Obb917ID.collider:SetHalfLengths(5.42477,4.77056,0.5)
CollisionHandler.AddOBB(Obb917ID.collider, 3)
table.insert(colliders,Obb917ID)
Obb917ID = nil

Obb1018ID = {}
Obb1018ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1018ID.transformID, {x=58.6678, y=12.1175, z=174.958})
Transform.SetScaleNonUniform(Obb1018ID.transformID, 10.9676, 9.64082, 1)
Transform.SetRotation(Obb1018ID.transformID, {x=0, y=0, z=0})
Obb1018ID.collider = OBBCollider.Create(Obb1018ID.transformID)
Obb1018ID.collider:SetOffset(0,0,0)
Obb1018ID.collider:SetZAxis(-0.997282,0,-0.073685)
Obb1018ID.collider:SetHalfLengths(5.48378,4.82041,0.5)
CollisionHandler.AddOBB(Obb1018ID.collider, 3)
table.insert(colliders,Obb1018ID)
Obb1018ID = nil

Obb1119ID = {}
Obb1119ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1119ID.transformID, {x=55.9463, y=12.6501, z=182.812})
Transform.SetScaleNonUniform(Obb1119ID.transformID, 10.1088, 9.38199, 1)
Transform.SetRotation(Obb1119ID.transformID, {x=0, y=0, z=0})
Obb1119ID.collider = OBBCollider.Create(Obb1119ID.transformID)
Obb1119ID.collider:SetOffset(0,0,0)
Obb1119ID.collider:SetZAxis(-0.779628,0,-0.626243)
Obb1119ID.collider:SetHalfLengths(5.0544,4.691,0.5)
CollisionHandler.AddOBB(Obb1119ID.collider, 3)
table.insert(colliders,Obb1119ID)
Obb1119ID = nil

Obb1220ID = {}
Obb1220ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1220ID.transformID, {x=48.6808, y=12.5014, z=187.183})
Transform.SetScaleNonUniform(Obb1220ID.transformID, 13.7087, 11.7246, 1)
Transform.SetRotation(Obb1220ID.transformID, {x=0, y=0, z=0})
Obb1220ID.collider = OBBCollider.Create(Obb1220ID.transformID)
Obb1220ID.collider:SetOffset(0,0,0)
Obb1220ID.collider:SetZAxis(-0.227771,0,-0.973715)
Obb1220ID.collider:SetHalfLengths(6.85436,5.86228,0.5)
CollisionHandler.AddOBB(Obb1220ID.collider, 3)
table.insert(colliders,Obb1220ID)
Obb1220ID = nil

Obb1321ID = {}
Obb1321ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1321ID.transformID, {x=38.1514, y=13.6557, z=185.956})
Transform.SetScaleNonUniform(Obb1321ID.transformID, 11.3925, 13.5993, 1)
Transform.SetRotation(Obb1321ID.transformID, {x=0, y=0, z=0})
Obb1321ID.collider = OBBCollider.Create(Obb1321ID.transformID)
Obb1321ID.collider:SetOffset(0,0,0)
Obb1321ID.collider:SetZAxis(0.622728,0,-0.782439)
Obb1321ID.collider:SetHalfLengths(5.69627,6.79964,0.5)
CollisionHandler.AddOBB(Obb1321ID.collider, 3)
table.insert(colliders,Obb1321ID)
Obb1321ID = nil

Obb1422ID = {}
Obb1422ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1422ID.transformID, {x=34.5771, y=13.8542, z=180.313})
Transform.SetScaleNonUniform(Obb1422ID.transformID, 12.9332, 12.3953, 1)
Transform.SetRotation(Obb1422ID.transformID, {x=0, y=0, z=0})
Obb1422ID.collider = OBBCollider.Create(Obb1422ID.transformID)
Obb1422ID.collider:SetOffset(0,0,0)
Obb1422ID.collider:SetZAxis(0.971509,0,-0.237004)
Obb1422ID.collider:SetHalfLengths(6.46658,6.19767,0.5)
CollisionHandler.AddOBB(Obb1422ID.collider, 3)
table.insert(colliders,Obb1422ID)
Obb1422ID = nil

Obb1523ID = {}
Obb1523ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1523ID.transformID, {x=31.8688, y=14.2511, z=173.021})
Transform.SetScaleNonUniform(Obb1523ID.transformID, 8.30632, 13.757, 1)
Transform.SetRotation(Obb1523ID.transformID, {x=0, y=0, z=0})
Obb1523ID.collider = OBBCollider.Create(Obb1523ID.transformID)
Obb1523ID.collider:SetOffset(0,0,0)
Obb1523ID.collider:SetZAxis(0.919696,0,-0.392632)
Obb1523ID.collider:SetHalfLengths(4.15316,6.87849,0.5)
CollisionHandler.AddOBB(Obb1523ID.collider, 3)
table.insert(colliders,Obb1523ID)
Obb1523ID = nil

Obb1724ID = {}
Obb1724ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1724ID.transformID, {x=27.1257, y=8.69628, z=170.818})
Transform.SetScaleNonUniform(Obb1724ID.transformID, 4.71224, 6.04265, 1)
Transform.SetRotation(Obb1724ID.transformID, {x=0, y=0, z=0})
Obb1724ID.collider = OBBCollider.Create(Obb1724ID.transformID)
Obb1724ID.collider:SetOffset(0,0,0)
Obb1724ID.collider:SetZAxis(-0.595609,0,-0.803275)
Obb1724ID.collider:SetHalfLengths(2.35612,3.02133,0.5)
CollisionHandler.AddOBB(Obb1724ID.collider, 3)
table.insert(colliders,Obb1724ID)
Obb1724ID = nil

Obb1825ID = {}
Obb1825ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1825ID.transformID, {x=24.5398, y=8.39063, z=172.849})
Transform.SetScaleNonUniform(Obb1825ID.transformID, 2.51462, 7.81261, 1)
Transform.SetRotation(Obb1825ID.transformID, {x=0, y=0, z=0})
Obb1825ID.collider = OBBCollider.Create(Obb1825ID.transformID)
Obb1825ID.collider:SetOffset(0,0,0)
Obb1825ID.collider:SetZAxis(-0.467568,0,-0.883957)
Obb1825ID.collider:SetHalfLengths(1.25731,3.9063,0.5)
CollisionHandler.AddOBB(Obb1825ID.collider, 3)
table.insert(colliders,Obb1825ID)
Obb1825ID = nil

Obb1926ID = {}
Obb1926ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1926ID.transformID, {x=23.0938, y=8.5625, z=173.17})
Transform.SetScaleNonUniform(Obb1926ID.transformID, 1, 7.31101, 1)
Transform.SetRotation(Obb1926ID.transformID, {x=0, y=0, z=0})
Obb1926ID.collider = OBBCollider.Create(Obb1926ID.transformID)
Obb1926ID.collider:SetOffset(0,0,0)
Obb1926ID.collider:SetZAxis(-0.850097,0,-0.526626)
Obb1926ID.collider:SetHalfLengths(0.5,3.6555,0.5)
CollisionHandler.AddOBB(Obb1926ID.collider, 3)
table.insert(colliders,Obb1926ID)
Obb1926ID = nil

Obb2027ID = {}
Obb2027ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2027ID.transformID, {x=23.149, y=8.23438, z=175.228})
Transform.SetScaleNonUniform(Obb2027ID.transformID, 4.04565, 9.08401, 1)
Transform.SetRotation(Obb2027ID.transformID, {x=0, y=0, z=0})
Obb2027ID.collider = OBBCollider.Create(Obb2027ID.transformID)
Obb2027ID.collider:SetOffset(0,0,0)
Obb2027ID.collider:SetZAxis(-0.997205,0,0.0747166)
Obb2027ID.collider:SetHalfLengths(2.02282,4.54201,0.5)
CollisionHandler.AddOBB(Obb2027ID.collider, 3)
table.insert(colliders,Obb2027ID)
Obb2027ID = nil

Obb2128ID = {}
Obb2128ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2128ID.transformID, {x=24.4609, y=8.22656, z=179.033})
Transform.SetScaleNonUniform(Obb2128ID.transformID, 4.8056, 9.35686, 1)
Transform.SetRotation(Obb2128ID.transformID, {x=0, y=0, z=0})
Obb2128ID.collider = OBBCollider.Create(Obb2128ID.transformID)
Obb2128ID.collider:SetOffset(0,0,0)
Obb2128ID.collider:SetZAxis(-0.905241,0,0.424899)
Obb2128ID.collider:SetHalfLengths(2.4028,4.67843,0.5)
CollisionHandler.AddOBB(Obb2128ID.collider, 3)
table.insert(colliders,Obb2128ID)
Obb2128ID = nil

Obb2229ID = {}
Obb2229ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2229ID.transformID, {x=29.7923, y=8.63281, z=186.254})
Transform.SetScaleNonUniform(Obb2229ID.transformID, 12.9065, 11.8147, 1)
Transform.SetRotation(Obb2229ID.transformID, {x=0, y=0, z=0})
Obb2229ID.collider = OBBCollider.Create(Obb2229ID.transformID)
Obb2229ID.collider:SetOffset(0,0,0)
Obb2229ID.collider:SetZAxis(-0.729108,0,0.684399)
Obb2229ID.collider:SetHalfLengths(6.45325,5.90734,0.5)
CollisionHandler.AddOBB(Obb2229ID.collider, 3)
table.insert(colliders,Obb2229ID)
Obb2229ID = nil

Obb2330ID = {}
Obb2330ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2330ID.transformID, {x=35.0836, y=9.70313, z=192.442})
Transform.SetScaleNonUniform(Obb2330ID.transformID, 7.62255, 11.5604, 1)
Transform.SetRotation(Obb2330ID.transformID, {x=0, y=0, z=0})
Obb2330ID.collider = OBBCollider.Create(Obb2330ID.transformID)
Obb2330ID.collider:SetOffset(0,0,0)
Obb2330ID.collider:SetZAxis(-0.765715,0,0.643181)
Obb2330ID.collider:SetHalfLengths(3.81128,5.78018,0.5)
CollisionHandler.AddOBB(Obb2330ID.collider, 3)
table.insert(colliders,Obb2330ID)
Obb2330ID = nil

Obb1631ID = {}
Obb1631ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1631ID.transformID, {x=30.0386, y=8.42188, z=169.58})
Transform.SetScaleNonUniform(Obb1631ID.transformID, 2.82024, 10.0437, 1)
Transform.SetRotation(Obb1631ID.transformID, {x=0, y=0, z=0})
Obb1631ID.collider = OBBCollider.Create(Obb1631ID.transformID)
Obb1631ID.collider:SetOffset(0,0,0)
Obb1631ID.collider:SetZAxis(-0.0377485,0,-0.999287)
Obb1631ID.collider:SetHalfLengths(1.41012,5.02185,0.5)
CollisionHandler.AddOBB(Obb1631ID.collider, 3)
table.insert(colliders,Obb1631ID)
Obb1631ID = nil

Obb2432ID = {}
Obb2432ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2432ID.transformID, {x=19.4379, y=10.0219, z=140.008})
Transform.SetScaleNonUniform(Obb2432ID.transformID, 2.79296, 6.58353, 1)
Transform.SetRotation(Obb2432ID.transformID, {x=0, y=0, z=0})
Obb2432ID.collider = OBBCollider.Create(Obb2432ID.transformID)
Obb2432ID.collider:SetOffset(0,0,0)
Obb2432ID.collider:SetZAxis(0.350855,0,0.93643)
Obb2432ID.collider:SetHalfLengths(1.39648,3.29177,0.5)
CollisionHandler.AddOBB(Obb2432ID.collider, 3)
table.insert(colliders,Obb2432ID)
Obb2432ID = nil

Obb2533ID = {}
Obb2533ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2533ID.transformID, {x=16.0687, y=11.3801, z=140.449})
Transform.SetScaleNonUniform(Obb2533ID.transformID, 4.16547, 10.2432, 1)
Transform.SetRotation(Obb2533ID.transformID, {x=0, y=0, z=0})
Obb2533ID.collider = OBBCollider.Create(Obb2533ID.transformID)
Obb2533ID.collider:SetOffset(0,0,0)
Obb2533ID.collider:SetZAxis(-7.5809e-06,0,1)
Obb2533ID.collider:SetHalfLengths(2.08273,5.1216,0.5)
CollisionHandler.AddOBB(Obb2533ID.collider, 3)
table.insert(colliders,Obb2533ID)
Obb2533ID = nil

Obb2634ID = {}
Obb2634ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2634ID.transformID, {x=12.2076, y=10.8924, z=139.388})
Transform.SetScaleNonUniform(Obb2634ID.transformID, 4.45512, 8.39056, 1)
Transform.SetRotation(Obb2634ID.transformID, {x=0, y=0, z=0})
Obb2634ID.collider = OBBCollider.Create(Obb2634ID.transformID)
Obb2634ID.collider:SetOffset(0,0,0)
Obb2634ID.collider:SetZAxis(-0.482651,0,0.875813)
Obb2634ID.collider:SetHalfLengths(2.22756,4.19528,0.5)
CollisionHandler.AddOBB(Obb2634ID.collider, 3)
table.insert(colliders,Obb2634ID)
Obb2634ID = nil

Obb2735ID = {}
Obb2735ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2735ID.transformID, {x=8.25699, y=8.23438, z=137.828})
Transform.SetScaleNonUniform(Obb2735ID.transformID, 4.87982, 7.74944, 1)
Transform.SetRotation(Obb2735ID.transformID, {x=0, y=0, z=0})
Obb2735ID.collider = OBBCollider.Create(Obb2735ID.transformID)
Obb2735ID.collider:SetOffset(0,0,0)
Obb2735ID.collider:SetZAxis(-0.329544,0,0.94414)
Obb2735ID.collider:SetHalfLengths(2.43991,3.87472,0.5)
CollisionHandler.AddOBB(Obb2735ID.collider, 3)
table.insert(colliders,Obb2735ID)
Obb2735ID = nil

Obb2836ID = {}
Obb2836ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2836ID.transformID, {x=6.72897, y=7.3125, z=201.981})
Transform.SetScaleNonUniform(Obb2836ID.transformID, 6.71884, 9.48064, 1)
Transform.SetRotation(Obb2836ID.transformID, {x=0, y=0, z=0})
Obb2836ID.collider = OBBCollider.Create(Obb2836ID.transformID)
Obb2836ID.collider:SetOffset(0,0,0)
Obb2836ID.collider:SetZAxis(0.63835,0,-0.769746)
Obb2836ID.collider:SetHalfLengths(3.35942,4.74032,0.5)
CollisionHandler.AddOBB(Obb2836ID.collider, 3)
table.insert(colliders,Obb2836ID)
Obb2836ID = nil

Obb2937ID = {}
Obb2937ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2937ID.transformID, {x=4.04011, y=6.95703, z=198.606})
Transform.SetScaleNonUniform(Obb2937ID.transformID, 8.54796, 11.2199, 1)
Transform.SetRotation(Obb2937ID.transformID, {x=0, y=0, z=0})
Obb2937ID.collider = OBBCollider.Create(Obb2937ID.transformID)
Obb2937ID.collider:SetOffset(0,0,0)
Obb2937ID.collider:SetZAxis(0.900335,0,-0.435197)
Obb2937ID.collider:SetHalfLengths(4.27398,5.60994,0.5)
CollisionHandler.AddOBB(Obb2937ID.collider, 3)
table.insert(colliders,Obb2937ID)
Obb2937ID = nil

Obb3038ID = {}
Obb3038ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3038ID.transformID, {x=2.68078, y=6.19531, z=192.408})
Transform.SetScaleNonUniform(Obb3038ID.transformID, 9.7465, 12.2743, 1)
Transform.SetRotation(Obb3038ID.transformID, {x=0, y=0, z=0})
Obb3038ID.collider = OBBCollider.Create(Obb3038ID.transformID)
Obb3038ID.collider:SetOffset(0,0,0)
Obb3038ID.collider:SetZAxis(0.995846,0,-0.0910506)
Obb3038ID.collider:SetHalfLengths(4.87325,6.13714,0.5)
CollisionHandler.AddOBB(Obb3038ID.collider, 3)
table.insert(colliders,Obb3038ID)
Obb3038ID = nil

Obb3139ID = {}
Obb3139ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3139ID.transformID, {x=2.28102, y=7.92188, z=184.934})
Transform.SetScaleNonUniform(Obb3139ID.transformID, 12.6674, 10.0445, 1)
Transform.SetRotation(Obb3139ID.transformID, {x=0, y=0, z=0})
Obb3139ID.collider = OBBCollider.Create(Obb3139ID.transformID)
Obb3139ID.collider:SetOffset(0,0,0)
Obb3139ID.collider:SetZAxis(0.999723,0,0.0235538)
Obb3139ID.collider:SetHalfLengths(6.33369,5.02226,0.5)
CollisionHandler.AddOBB(Obb3139ID.collider, 3)
table.insert(colliders,Obb3139ID)
Obb3139ID = nil

Obb3240ID = {}
Obb3240ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3240ID.transformID, {x=5.47227, y=7.92188, z=178.467})
Transform.SetScaleNonUniform(Obb3240ID.transformID, 10.0506, 12.8097, 1)
Transform.SetRotation(Obb3240ID.transformID, {x=0, y=0, z=0})
Obb3240ID.collider = OBBCollider.Create(Obb3240ID.transformID)
Obb3240ID.collider:SetOffset(0,0,0)
Obb3240ID.collider:SetZAxis(0.617509,0,0.786564)
Obb3240ID.collider:SetHalfLengths(5.02528,6.40485,0.5)
CollisionHandler.AddOBB(Obb3240ID.collider, 3)
table.insert(colliders,Obb3240ID)
Obb3240ID = nil

Obb3341ID = {}
Obb3341ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3341ID.transformID, {x=9.24, y=10.1094, z=174.564})
Transform.SetScaleNonUniform(Obb3341ID.transformID, 2.71867, 9.28327, 1)
Transform.SetRotation(Obb3341ID.transformID, {x=0, y=0, z=0})
Obb3341ID.collider = OBBCollider.Create(Obb3341ID.transformID)
Obb3341ID.collider:SetOffset(0,0,0)
Obb3341ID.collider:SetZAxis(0.897614,0,0.440783)
Obb3341ID.collider:SetHalfLengths(1.35934,4.64164,0.5)
CollisionHandler.AddOBB(Obb3341ID.collider, 3)
table.insert(colliders,Obb3341ID)
Obb3341ID = nil

Obb3442ID = {}
Obb3442ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3442ID.transformID, {x=9.42851, y=9.32813, z=172.01})
Transform.SetScaleNonUniform(Obb3442ID.transformID, 3.43608, 7.86563, 1)
Transform.SetRotation(Obb3442ID.transformID, {x=0, y=0, z=0})
Obb3442ID.collider = OBBCollider.Create(Obb3442ID.transformID)
Obb3442ID.collider:SetOffset(0,0,0)
Obb3442ID.collider:SetZAxis(0.973328,0,-0.22942)
Obb3442ID.collider:SetHalfLengths(1.71804,3.93282,0.5)
CollisionHandler.AddOBB(Obb3442ID.collider, 3)
table.insert(colliders,Obb3442ID)
Obb3442ID = nil

Obb3543ID = {}
Obb3543ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3543ID.transformID, {x=7.08944, y=9.48503, z=168.491})
Transform.SetScaleNonUniform(Obb3543ID.transformID, 5.87615, 10.0751, 1)
Transform.SetRotation(Obb3543ID.transformID, {x=0, y=0, z=0})
Obb3543ID.collider = OBBCollider.Create(Obb3543ID.transformID)
Obb3543ID.collider:SetOffset(0,0,0)
Obb3543ID.collider:SetZAxis(0.697603,0,-0.716485)
Obb3543ID.collider:SetHalfLengths(2.93807,5.03755,0.5)
CollisionHandler.AddOBB(Obb3543ID.collider, 3)
table.insert(colliders,Obb3543ID)
Obb3543ID = nil

Obb3644ID = {}
Obb3644ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3644ID.transformID, {x=3.87115, y=10.0938, z=163.595})
Transform.SetScaleNonUniform(Obb3644ID.transformID, 8.09491, 9.50447, 1)
Transform.SetRotation(Obb3644ID.transformID, {x=0, y=0, z=0})
Obb3644ID.collider = OBBCollider.Create(Obb3644ID.transformID)
Obb3644ID.collider:SetOffset(0,0,0)
Obb3644ID.collider:SetZAxis(0.93109,0,-0.364789)
Obb3644ID.collider:SetHalfLengths(4.04745,4.75224,0.5)
CollisionHandler.AddOBB(Obb3644ID.collider, 3)
table.insert(colliders,Obb3644ID)
Obb3644ID = nil

Obb3745ID = {}
Obb3745ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3745ID.transformID, {x=3.67947, y=10.7049, z=156.855})
Transform.SetScaleNonUniform(Obb3745ID.transformID, 14.4018, 9.88275, 1)
Transform.SetRotation(Obb3745ID.transformID, {x=0, y=0, z=0})
Obb3745ID.collider = OBBCollider.Create(Obb3745ID.transformID)
Obb3745ID.collider:SetOffset(0,0,0)
Obb3745ID.collider:SetZAxis(0.97915,0,0.20314)
Obb3745ID.collider:SetHalfLengths(7.20088,4.94138,0.5)
CollisionHandler.AddOBB(Obb3745ID.collider, 3)
table.insert(colliders,Obb3745ID)
Obb3745ID = nil

Obb3946ID = {}
Obb3946ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3946ID.transformID, {x=50.8298, y=12.4453, z=201.871})
Transform.SetScaleNonUniform(Obb3946ID.transformID, 10.6439, 9.92635, 1)
Transform.SetRotation(Obb3946ID.transformID, {x=0, y=0, z=0})
Obb3946ID.collider = OBBCollider.Create(Obb3946ID.transformID)
Obb3946ID.collider:SetOffset(0,0,0)
Obb3946ID.collider:SetZAxis(-0.753698,0,0.657221)
Obb3946ID.collider:SetHalfLengths(5.32195,4.96317,0.5)
CollisionHandler.AddOBB(Obb3946ID.collider, 3)
table.insert(colliders,Obb3946ID)
Obb3946ID = nil

Obb4047ID = {}
Obb4047ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4047ID.transformID, {x=56.1607, y=13.0547, z=206.779})
Transform.SetScaleNonUniform(Obb4047ID.transformID, 5.42791, 13.4841, 1)
Transform.SetRotation(Obb4047ID.transformID, {x=0, y=0, z=0})
Obb4047ID.collider = OBBCollider.Create(Obb4047ID.transformID)
Obb4047ID.collider:SetOffset(0,0,0)
Obb4047ID.collider:SetZAxis(-0.529293,0,0.848439)
Obb4047ID.collider:SetHalfLengths(2.71396,6.74204,0.5)
CollisionHandler.AddOBB(Obb4047ID.collider, 3)
table.insert(colliders,Obb4047ID)
Obb4047ID = nil

Obb4148ID = {}
Obb4148ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4148ID.transformID, {x=62.7419, y=16.6875, z=207.51})
Transform.SetScaleNonUniform(Obb4148ID.transformID, 9.20728, 18.7853, 1)
Transform.SetRotation(Obb4148ID.transformID, {x=0, y=0, z=0})
Obb4148ID.collider = OBBCollider.Create(Obb4148ID.transformID)
Obb4148ID.collider:SetOffset(0,0,0)
Obb4148ID.collider:SetZAxis(0.0403177,0,0.999187)
Obb4148ID.collider:SetHalfLengths(4.60364,9.39264,0.5)
CollisionHandler.AddOBB(Obb4148ID.collider, 3)
table.insert(colliders,Obb4148ID)
Obb4148ID = nil

Obb4249ID = {}
Obb4249ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4249ID.transformID, {x=72.6857, y=20.5074, z=203.934})
Transform.SetScaleNonUniform(Obb4249ID.transformID, 16.0584, 24.6348, 1)
Transform.SetRotation(Obb4249ID.transformID, {x=0, y=0, z=0})
Obb4249ID.collider = OBBCollider.Create(Obb4249ID.transformID)
Obb4249ID.collider:SetOffset(0,0,0)
Obb4249ID.collider:SetZAxis(0.424874,0,0.905252)
Obb4249ID.collider:SetHalfLengths(8.0292,12.3174,0.5)
CollisionHandler.AddOBB(Obb4249ID.collider, 3)
table.insert(colliders,Obb4249ID)
Obb4249ID = nil

Obb4350ID = {}
Obb4350ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4350ID.transformID, {x=83.1706, y=28.2956, z=197.481})
Transform.SetScaleNonUniform(Obb4350ID.transformID, 11.3618, 14.2447, 1)
Transform.SetRotation(Obb4350ID.transformID, {x=0, y=0, z=0})
Obb4350ID.collider = OBBCollider.Create(Obb4350ID.transformID)
Obb4350ID.collider:SetOffset(0,0,0)
Obb4350ID.collider:SetZAxis(0.623735,0,0.781636)
Obb4350ID.collider:SetHalfLengths(5.68089,7.12234,0.5)
CollisionHandler.AddOBB(Obb4350ID.collider, 3)
table.insert(colliders,Obb4350ID)
Obb4350ID = nil

New51ID = {}
New51ID.transformID = Transform.Bind()
Transform.SetPosition(New51ID.transformID, {x=118.254, y=53.1783, z=226.98})
Transform.SetScaleNonUniform(New51ID.transformID, 1, 1, 1)
Transform.SetRotation(New51ID.transformID, {x=0, y=0, z=0})
Light.addLight(118.254, 53.1783, 226.98, 0.870588, 0.627451, 0, 100,2)
table.insert(props,New51ID)
New51ID = nil

Obb4452ID = {}
Obb4452ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4452ID.transformID, {x=93.234, y=28.9104, z=190.853})
Transform.SetScaleNonUniform(Obb4452ID.transformID, 15.3271, 14.8288, 1)
Transform.SetRotation(Obb4452ID.transformID, {x=0, y=0, z=0})
Obb4452ID.collider = OBBCollider.Create(Obb4452ID.transformID)
Obb4452ID.collider:SetOffset(0,0,0)
Obb4452ID.collider:SetZAxis(0.474159,0,0.880439)
Obb4452ID.collider:SetHalfLengths(7.66356,7.41439,0.5)
CollisionHandler.AddOBB(Obb4452ID.collider, 3)
table.insert(colliders,Obb4452ID)
Obb4452ID = nil

Obb4553ID = {}
Obb4553ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4553ID.transformID, {x=108.464, y=40.3219, z=192.853})
Transform.SetScaleNonUniform(Obb4553ID.transformID, 28.5746, 34.3001, 1)
Transform.SetRotation(Obb4553ID.transformID, {x=0, y=0, z=0})
Obb4553ID.collider = OBBCollider.Create(Obb4553ID.transformID)
Obb4553ID.collider:SetOffset(0,0,0)
Obb4553ID.collider:SetZAxis(-0.345483,0,0.938425)
Obb4553ID.collider:SetHalfLengths(14.2873,17.1501,0.5)
CollisionHandler.AddOBB(Obb4553ID.collider, 3)
table.insert(colliders,Obb4553ID)
Obb4553ID = nil

Obb4754ID = {}
Obb4754ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4754ID.transformID, {x=105.844, y=32.7476, z=202.393})
Transform.SetScaleNonUniform(Obb4754ID.transformID, 13.5523, 19.4883, 1)
Transform.SetRotation(Obb4754ID.transformID, {x=0, y=0, z=0})
Obb4754ID.collider = OBBCollider.Create(Obb4754ID.transformID)
Obb4754ID.collider:SetOffset(0,0,0)
Obb4754ID.collider:SetZAxis(0.541425,0,-0.840749)
Obb4754ID.collider:SetHalfLengths(6.77617,9.74417,0.5)
CollisionHandler.AddOBB(Obb4754ID.collider, 3)
table.insert(colliders,Obb4754ID)
Obb4754ID = nil

Obb4955ID = {}
Obb4955ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4955ID.transformID, {x=89.6993, y=29.3027, z=211.726})
Transform.SetScaleNonUniform(Obb4955ID.transformID, 8.35995, 23.2883, 1)
Transform.SetRotation(Obb4955ID.transformID, {x=0, y=0, z=0})
Obb4955ID.collider = OBBCollider.Create(Obb4955ID.transformID)
Obb4955ID.collider:SetOffset(0,0,0)
Obb4955ID.collider:SetZAxis(-0.908177,0,0.418586)
Obb4955ID.collider:SetHalfLengths(4.17998,11.6442,0.5)
CollisionHandler.AddOBB(Obb4955ID.collider, 3)
table.insert(colliders,Obb4955ID)
Obb4955ID = nil

Obb5056ID = {}
Obb5056ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5056ID.transformID, {x=92.625, y=24.875, z=216.75})
Transform.SetScaleNonUniform(Obb5056ID.transformID, 4.84111, 11.6196, 1)
Transform.SetRotation(Obb5056ID.transformID, {x=0, y=0, z=0})
Obb5056ID.collider = OBBCollider.Create(Obb5056ID.transformID)
Obb5056ID.collider:SetOffset(0,0,0)
Obb5056ID.collider:SetZAxis(-0.825738,0,0.564054)
Obb5056ID.collider:SetHalfLengths(2.42056,5.80978,0.5)
CollisionHandler.AddOBB(Obb5056ID.collider, 3)
table.insert(colliders,Obb5056ID)
Obb5056ID = nil

Obb5157ID = {}
Obb5157ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5157ID.transformID, {x=98.5347, y=39, z=219.379})
Transform.SetScaleNonUniform(Obb5157ID.transformID, 9.8435, 33.9701, 1)
Transform.SetRotation(Obb5157ID.transformID, {x=0, y=0, z=0})
Obb5157ID.collider = OBBCollider.Create(Obb5157ID.transformID)
Obb5157ID.collider:SetOffset(0,0,0)
Obb5157ID.collider:SetZAxis(-0.177843,0,0.984059)
Obb5157ID.collider:SetHalfLengths(4.92175,16.985,0.5)
CollisionHandler.AddOBB(Obb5157ID.collider, 3)
table.insert(colliders,Obb5157ID)
Obb5157ID = nil

Obb5258ID = {}
Obb5258ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5258ID.transformID, {x=105.5, y=31.6984, z=221.867})
Transform.SetScaleNonUniform(Obb5258ID.transformID, 5.8515, 12.7259, 1)
Transform.SetRotation(Obb5258ID.transformID, {x=0, y=0, z=0})
Obb5258ID.collider = OBBCollider.Create(Obb5258ID.transformID)
Obb5258ID.collider:SetOffset(0,0,0)
Obb5258ID.collider:SetZAxis(-0.650917,0,0.759149)
Obb5258ID.collider:SetHalfLengths(2.92575,6.36294,0.5)
CollisionHandler.AddOBB(Obb5258ID.collider, 3)
table.insert(colliders,Obb5258ID)
Obb5258ID = nil

Obb5359ID = {}
Obb5359ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5359ID.transformID, {x=110.313, y=32.5313, z=221.625})
Transform.SetScaleNonUniform(Obb5359ID.transformID, 7.43607, 11.626, 1)
Transform.SetRotation(Obb5359ID.transformID, {x=0, y=0, z=0})
Obb5359ID.collider = OBBCollider.Create(Obb5359ID.transformID)
Obb5359ID.collider:SetOffset(0,0,0)
Obb5359ID.collider:SetZAxis(0.448727,0,0.893669)
Obb5359ID.collider:SetHalfLengths(3.71803,5.81299,0.5)
CollisionHandler.AddOBB(Obb5359ID.collider, 3)
table.insert(colliders,Obb5359ID)
Obb5359ID = nil

Obb5460ID = {}
Obb5460ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5460ID.transformID, {x=114.005, y=32.9375, z=217.166})
Transform.SetScaleNonUniform(Obb5460ID.transformID, 6.09159, 14.7933, 1)
Transform.SetRotation(Obb5460ID.transformID, {x=0, y=0, z=0})
Obb5460ID.collider = OBBCollider.Create(Obb5460ID.transformID)
Obb5460ID.collider:SetOffset(0,0,0)
Obb5460ID.collider:SetZAxis(0.951034,0,0.309086)
Obb5460ID.collider:SetHalfLengths(3.0458,7.39666,0.5)
CollisionHandler.AddOBB(Obb5460ID.collider, 3)
table.insert(colliders,Obb5460ID)
Obb5460ID = nil

Obb5561ID = {}
Obb5561ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5561ID.transformID, {x=112.846, y=36.7188, z=210.205})
Transform.SetScaleNonUniform(Obb5561ID.transformID, 9.30988, 8.53436, 1)
Transform.SetRotation(Obb5561ID.transformID, {x=0, y=0, z=0})
Obb5561ID.collider = OBBCollider.Create(Obb5561ID.transformID)
Obb5561ID.collider:SetOffset(0,0,0)
Obb5561ID.collider:SetZAxis(-0.94411,0,0.329631)
Obb5561ID.collider:SetHalfLengths(4.65494,4.26718,0.5)
CollisionHandler.AddOBB(Obb5561ID.collider, 3)
table.insert(colliders,Obb5561ID)
Obb5561ID = nil

Obb4862ID = {}
Obb4862ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4862ID.transformID, {x=96.1735, y=33.4375, z=201.026})
Transform.SetScaleNonUniform(Obb4862ID.transformID, 10.0435, 18.0165, 1)
Transform.SetRotation(Obb4862ID.transformID, {x=0, y=0, z=0})
Obb4862ID.collider = OBBCollider.Create(Obb4862ID.transformID)
Obb4862ID.collider:SetOffset(0,0,0)
Obb4862ID.collider:SetZAxis(-0.461222,0,-0.887285)
Obb4862ID.collider:SetHalfLengths(5.02173,9.00826,0.5)
CollisionHandler.AddOBB(Obb4862ID.collider, 3)
table.insert(colliders,Obb4862ID)
Obb4862ID = nil

Obb5663ID = {}
Obb5663ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5663ID.transformID, {x=90.5204, y=26.4627, z=206.347})
Transform.SetScaleNonUniform(Obb5663ID.transformID, 7.26399, 16.0026, 1)
Transform.SetRotation(Obb5663ID.transformID, {x=0, y=0.419141, z=0})
Obb5663ID.collider = OBBCollider.Create(Obb5663ID.transformID)
Obb5663ID.collider:SetOffset(0,0,0)
Obb5663ID.collider:SetZAxis(-0.900232,0,-0.435411)
Obb5663ID.collider:SetHalfLengths(3.632,8.00131,0.5)
CollisionHandler.AddOBB(Obb5663ID.collider, 3)
table.insert(colliders,Obb5663ID)
Obb5663ID = nil

m164ID = {}
m164ID.transformID = Transform.Bind()
Transform.SetPosition(m164ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m164ID.transformID, 1, 1, 1)
Transform.SetRotation(m164ID.transformID, {x=0, y=0, z=0})
m164ID.model = Assets.LoadModel('Models/tile1_m1.model')
Gear.AddStaticInstance(m164ID.model, m164ID.transformID)
table.insert(props,m164ID)
m164ID = nil

m265ID = {}
m265ID.transformID = Transform.Bind()
Transform.SetPosition(m265ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m265ID.transformID, 1, 1, 1)
Transform.SetRotation(m265ID.transformID, {x=0, y=0, z=0})
m265ID.model = Assets.LoadModel('Models/tile1_m2.model')
Gear.AddStaticInstance(m265ID.model, m265ID.transformID)
table.insert(props,m265ID)
m265ID = nil

m366ID = {}
m366ID.transformID = Transform.Bind()
Transform.SetPosition(m366ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m366ID.transformID, 1, 1, 1)
Transform.SetRotation(m366ID.transformID, {x=0, y=0, z=0})
m366ID.model = Assets.LoadModel('Models/tile1_m3.model')
Gear.AddStaticInstance(m366ID.model, m366ID.transformID)
table.insert(props,m366ID)
m366ID = nil

m467ID = {}
m467ID.transformID = Transform.Bind()
Transform.SetPosition(m467ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m467ID.transformID, 1, 1, 1)
Transform.SetRotation(m467ID.transformID, {x=0, y=0, z=0})
m467ID.model = Assets.LoadModel('Models/tile1_m4.model')
Gear.AddStaticInstance(m467ID.model, m467ID.transformID)
table.insert(props,m467ID)
m467ID = nil

m568ID = {}
m568ID.transformID = Transform.Bind()
Transform.SetPosition(m568ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m568ID.transformID, 1, 1, 1)
Transform.SetRotation(m568ID.transformID, {x=0, y=0, z=0})
m568ID.model = Assets.LoadModel('Models/tile1_m5.model')
Gear.AddStaticInstance(m568ID.model, m568ID.transformID)
table.insert(props,m568ID)
m568ID = nil

m669ID = {}
m669ID.transformID = Transform.Bind()
Transform.SetPosition(m669ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m669ID.transformID, 1, 1, 1)
Transform.SetRotation(m669ID.transformID, {x=0, y=0, z=0})
m669ID.model = Assets.LoadModel('Models/tile1_m6.model')
Gear.AddStaticInstance(m669ID.model, m669ID.transformID)
table.insert(props,m669ID)
m669ID = nil

m770ID = {}
m770ID.transformID = Transform.Bind()
Transform.SetPosition(m770ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m770ID.transformID, 1, 1, 1)
Transform.SetRotation(m770ID.transformID, {x=0, y=0, z=0})
m770ID.model = Assets.LoadModel('Models/tile1_m7.model')
Gear.AddStaticInstance(m770ID.model, m770ID.transformID)
table.insert(props,m770ID)
m770ID = nil

m871ID = {}
m871ID.transformID = Transform.Bind()
Transform.SetPosition(m871ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m871ID.transformID, 1, 1, 1)
Transform.SetRotation(m871ID.transformID, {x=0, y=0, z=0})
m871ID.model = Assets.LoadModel('Models/tile1_m8.model')
Gear.AddStaticInstance(m871ID.model, m871ID.transformID)
table.insert(props,m871ID)
m871ID = nil

s172ID = {}
s172ID.transformID = Transform.Bind()
Transform.SetPosition(s172ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s172ID.transformID, 1, 1, 1)
Transform.SetRotation(s172ID.transformID, {x=0, y=0, z=0})
s172ID.model = Assets.LoadModel('Models/tile1_s1.model')
Gear.AddStaticInstance(s172ID.model, s172ID.transformID)
table.insert(props,s172ID)
s172ID = nil

s273ID = {}
s273ID.transformID = Transform.Bind()
Transform.SetPosition(s273ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s273ID.transformID, 1, 1, 1)
Transform.SetRotation(s273ID.transformID, {x=0, y=0, z=0})
s273ID.model = Assets.LoadModel('Models/tile1_s2.model')
Gear.AddStaticInstance(s273ID.model, s273ID.transformID)
table.insert(props,s273ID)
s273ID = nil

s374ID = {}
s374ID.transformID = Transform.Bind()
Transform.SetPosition(s374ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s374ID.transformID, 1, 1, 1)
Transform.SetRotation(s374ID.transformID, {x=0, y=0, z=0})
s374ID.model = Assets.LoadModel('Models/tile1_s3.model')
Gear.AddStaticInstance(s374ID.model, s374ID.transformID)
table.insert(props,s374ID)
s374ID = nil

s475ID = {}
s475ID.transformID = Transform.Bind()
Transform.SetPosition(s475ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s475ID.transformID, 1, 1, 1)
Transform.SetRotation(s475ID.transformID, {x=0, y=0, z=0})
s475ID.model = Assets.LoadModel('Models/tile1_s4.model')
Gear.AddStaticInstance(s475ID.model, s475ID.transformID)
table.insert(props,s475ID)
s475ID = nil

s576ID = {}
s576ID.transformID = Transform.Bind()
Transform.SetPosition(s576ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s576ID.transformID, 1, 1, 1)
Transform.SetRotation(s576ID.transformID, {x=0, y=0, z=0})
s576ID.model = Assets.LoadModel('Models/tile1_s5.model')
Gear.AddStaticInstance(s576ID.model, s576ID.transformID)
table.insert(props,s576ID)
s576ID = nil

s677ID = {}
s677ID.transformID = Transform.Bind()
Transform.SetPosition(s677ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s677ID.transformID, 1, 1, 1)
Transform.SetRotation(s677ID.transformID, {x=0, y=0, z=0})
s677ID.model = Assets.LoadModel('Models/tile1_s6.model')
Gear.AddStaticInstance(s677ID.model, s677ID.transformID)
table.insert(props,s677ID)
s677ID = nil

s778ID = {}
s778ID.transformID = Transform.Bind()
Transform.SetPosition(s778ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s778ID.transformID, 1, 1, 1)
Transform.SetRotation(s778ID.transformID, {x=0, y=0, z=0})
s778ID.model = Assets.LoadModel('Models/tile1_s7.model')
Gear.AddStaticInstance(s778ID.model, s778ID.transformID)
table.insert(props,s778ID)
s778ID = nil

ObbRot93ID = {}
ObbRot93ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot93ID.transformID, {x=4.82549, y=11, z=148.913})
Transform.SetScaleNonUniform(ObbRot93ID.transformID, 1, 8, 2.5)
Transform.SetRotation(ObbRot93ID.transformID, {x=0, y=0.278736, z=0})
ObbRot93ID.collider = OBBCollider.Create(ObbRot93ID.transformID)
ObbRot93ID.collider:SetOffset(0,0,0)
ObbRot93ID.collider:SetZAxis(0.275141,0,0.961404)
ObbRot93ID.collider:SetHalfLengths(0.5,4,1.25)
CollisionHandler.AddOBB(ObbRot93ID.collider, 3)
table.insert(props,ObbRot93ID)
ObbRot93ID = nil

ObbRot194ID = {}
ObbRot194ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot194ID.transformID, {x=117.911, y=37.1709, z=200.394})
Transform.SetScaleNonUniform(ObbRot194ID.transformID, 1, 18.7241, 21.8081)
Transform.SetRotation(ObbRot194ID.transformID, {x=0, y=0.41909, z=0})
ObbRot194ID.collider = OBBCollider.Create(ObbRot194ID.transformID)
ObbRot194ID.collider:SetOffset(0,0,0)
ObbRot194ID.collider:SetZAxis(0.406929,0,0.91346)
ObbRot194ID.collider:SetHalfLengths(0.5,9.36204,10.9041)
CollisionHandler.AddOBB(ObbRot194ID.collider, 3)
table.insert(props,ObbRot194ID)
ObbRot194ID = nil

WoodenFence95ID = {}
WoodenFence95ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence95ID.transformID, {x=23.6625, y=5.29802, z=199.326})
Transform.SetScaleNonUniform(WoodenFence95ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence95ID.transformID, {x=0.194112, y=-1.19496, z=0})
WoodenFence95ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence95ID.model, WoodenFence95ID.transformID)
WoodenFence95ID.collider = OBBCollider.Create(WoodenFence95ID.transformID)
WoodenFence95ID.collider:SetOffset(0,0,0)
WoodenFence95ID.collider:SetZAxis(-0.91273,-0.192895,0.36016)
WoodenFence95ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence95ID.collider, 3)
table.insert(props,WoodenFence95ID)
WoodenFence95ID = nil

WoodenFence196ID = {}
WoodenFence196ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence196ID.transformID, {x=18.6692, y=4.79427, z=200.977})
Transform.SetScaleNonUniform(WoodenFence196ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence196ID.transformID, {x=0, y=-1.34457, z=0})
WoodenFence196ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence196ID.model, WoodenFence196ID.transformID)
WoodenFence196ID.collider = OBBCollider.Create(WoodenFence196ID.transformID)
WoodenFence196ID.collider:SetOffset(0,0,0)
WoodenFence196ID.collider:SetZAxis(-0.974519,0,0.224304)
WoodenFence196ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence196ID.collider, 3)
table.insert(props,WoodenFence196ID)
WoodenFence196ID = nil

WoodenFence297ID = {}
WoodenFence297ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence297ID.transformID, {x=13.6393, y=4.83612, z=201.995})
Transform.SetScaleNonUniform(WoodenFence297ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence297ID.transformID, {x=0, y=-1.40734, z=0})
WoodenFence297ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence297ID.model, WoodenFence297ID.transformID)
WoodenFence297ID.collider = OBBCollider.Create(WoodenFence297ID.transformID)
WoodenFence297ID.collider:SetOffset(0,0,0)
WoodenFence297ID.collider:SetZAxis(-0.986671,0,0.162729)
WoodenFence297ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence297ID.collider, 3)
table.insert(props,WoodenFence297ID)
WoodenFence297ID = nil

WoodenFence398ID = {}
WoodenFence398ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence398ID.transformID, {x=8.49151, y=4.72769, z=202.459})
Transform.SetScaleNonUniform(WoodenFence398ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence398ID.transformID, {x=0, y=-1.5708, z=0})
WoodenFence398ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence398ID.model, WoodenFence398ID.transformID)
WoodenFence398ID.collider = OBBCollider.Create(WoodenFence398ID.transformID)
WoodenFence398ID.collider:SetOffset(0,0,0)
WoodenFence398ID.collider:SetZAxis(-1,0,-4.37114e-08)
WoodenFence398ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence398ID.collider, 3)
table.insert(props,WoodenFence398ID)
WoodenFence398ID = nil

WoodenFence499ID = {}
WoodenFence499ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence499ID.transformID, {x=22.4976, y=6.8489, z=188.567})
Transform.SetScaleNonUniform(WoodenFence499ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence499ID.transformID, {x=-0.253038, y=0.532786, z=0})
WoodenFence499ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence499ID.model, WoodenFence499ID.transformID)
WoodenFence499ID.collider = OBBCollider.Create(WoodenFence499ID.transformID)
WoodenFence499ID.collider:SetOffset(0,0,0)
WoodenFence499ID.collider:SetZAxis(0.49176,0.250347,0.833965)
WoodenFence499ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence499ID.collider, 3)
table.insert(props,WoodenFence499ID)
WoodenFence499ID = nil

WoodenFence5100ID = {}
WoodenFence5100ID.transformID = Transform.Bind()
Transform.SetPosition(WoodenFence5100ID.transformID, {x=25.357, y=8.17453, z=192.902})
Transform.SetScaleNonUniform(WoodenFence5100ID.transformID, 1, 1, 1)
Transform.SetRotation(WoodenFence5100ID.transformID, {x=-0.322921, y=0.655048, z=0})
WoodenFence5100ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
Gear.AddStaticInstance(WoodenFence5100ID.model, WoodenFence5100ID.transformID)
WoodenFence5100ID.collider = OBBCollider.Create(WoodenFence5100ID.transformID)
WoodenFence5100ID.collider:SetOffset(0,0,0)
WoodenFence5100ID.collider:SetZAxis(0.57771,0.317338,0.75203)
WoodenFence5100ID.collider:SetHalfLengths(0.5,1,3)
CollisionHandler.AddOBB(WoodenFence5100ID.collider, 3)
table.insert(props,WoodenFence5100ID)
WoodenFence5100ID = nil

ObbRot2101ID = {}
ObbRot2101ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot2101ID.transformID, {x=126.338, y=35.1852, z=228.83})
Transform.SetScaleNonUniform(ObbRot2101ID.transformID, 1, 4.67355, 8.69229)
Transform.SetRotation(ObbRot2101ID.transformID, {x=0, y=-0.042339, z=0})
ObbRot2101ID.collider = OBBCollider.Create(ObbRot2101ID.transformID)
ObbRot2101ID.collider:SetOffset(0,0,0)
ObbRot2101ID.collider:SetZAxis(-0.0423263,0,0.999104)
ObbRot2101ID.collider:SetHalfLengths(0.5,2.33678,4.34615)
CollisionHandler.AddOBB(ObbRot2101ID.collider, 3)
table.insert(props,ObbRot2101ID)
ObbRot2101ID = nil

ObbRot3102ID = {}
ObbRot3102ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot3102ID.transformID, {x=133.49, y=37.6444, z=224.246})
Transform.SetScaleNonUniform(ObbRot3102ID.transformID, 15.3474, 9.45279, 1)
Transform.SetRotation(ObbRot3102ID.transformID, {x=0, y=0.0933742, z=0})
ObbRot3102ID.collider = OBBCollider.Create(ObbRot3102ID.transformID)
ObbRot3102ID.collider:SetOffset(0,0,0)
ObbRot3102ID.collider:SetZAxis(0.0932386,0,0.995644)
ObbRot3102ID.collider:SetHalfLengths(7.67372,4.7264,0.5)
CollisionHandler.AddOBB(ObbRot3102ID.collider, 3)
table.insert(props,ObbRot3102ID)
ObbRot3102ID = nil

ObbRot4103ID = {}
ObbRot4103ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot4103ID.transformID, {x=137.673, y=36.5255, z=222.988})
Transform.SetScaleNonUniform(ObbRot4103ID.transformID, 14.6798, 11.1924, 1)
Transform.SetRotation(ObbRot4103ID.transformID, {x=0, y=0.354433, z=0})
ObbRot4103ID.collider = OBBCollider.Create(ObbRot4103ID.transformID)
ObbRot4103ID.collider:SetOffset(0,0,0)
ObbRot4103ID.collider:SetZAxis(0.347059,0,0.937843)
ObbRot4103ID.collider:SetHalfLengths(7.33991,5.5962,0.5)
CollisionHandler.AddOBB(ObbRot4103ID.collider, 3)
table.insert(props,ObbRot4103ID)
ObbRot4103ID = nil

ObbRot5105ID = {}
ObbRot5105ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot5105ID.transformID, {x=125.175, y=37.5857, z=210.972})
Transform.SetScaleNonUniform(ObbRot5105ID.transformID, 4.74132, 9.7832, 1)
Transform.SetRotation(ObbRot5105ID.transformID, {x=0, y=0.0683151, z=0})
ObbRot5105ID.collider = OBBCollider.Create(ObbRot5105ID.transformID)
ObbRot5105ID.collider:SetOffset(0,0,0)
ObbRot5105ID.collider:SetZAxis(0.068262,0,0.997667)
ObbRot5105ID.collider:SetHalfLengths(2.37066,4.8916,0.5)
CollisionHandler.AddOBB(ObbRot5105ID.collider, 3)
table.insert(props,ObbRot5105ID)
ObbRot5105ID = nil

ObbRot6106ID = {}
ObbRot6106ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot6106ID.transformID, {x=132.94, y=37.8301, z=207.689})
Transform.SetScaleNonUniform(ObbRot6106ID.transformID, 12.9362, 9.7849, 1)
Transform.SetRotation(ObbRot6106ID.transformID, {x=0, y=0.512187, z=0})
ObbRot6106ID.collider = OBBCollider.Create(ObbRot6106ID.transformID)
ObbRot6106ID.collider:SetOffset(0,0,0)
ObbRot6106ID.collider:SetZAxis(0.490085,0,0.871675)
ObbRot6106ID.collider:SetHalfLengths(6.46809,4.89245,0.5)
CollisionHandler.AddOBB(ObbRot6106ID.collider, 3)
table.insert(props,ObbRot6106ID)
ObbRot6106ID = nil

ObbRot7107ID = {}
ObbRot7107ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot7107ID.transformID, {x=140.443, y=45.9668, z=197.476})
Transform.SetScaleNonUniform(ObbRot7107ID.transformID, 1, 26.2783, 15.2413)
Transform.SetRotation(ObbRot7107ID.transformID, {x=0, y=-0.279596, z=0})
ObbRot7107ID.collider = OBBCollider.Create(ObbRot7107ID.transformID)
ObbRot7107ID.collider:SetOffset(0,0,0)
ObbRot7107ID.collider:SetZAxis(-0.275967,0,0.961167)
ObbRot7107ID.collider:SetHalfLengths(0.5,13.1391,7.62065)
CollisionHandler.AddOBB(ObbRot7107ID.collider, 3)
table.insert(props,ObbRot7107ID)
ObbRot7107ID = nil

ObbRot8108ID = {}
ObbRot8108ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot8108ID.transformID, {x=139.021, y=56.1095, z=172.064})
Transform.SetScaleNonUniform(ObbRot8108ID.transformID, 1, 42.6949, 37.3548)
Transform.SetRotation(ObbRot8108ID.transformID, {x=0, y=0.203048, z=0})
ObbRot8108ID.collider = OBBCollider.Create(ObbRot8108ID.transformID)
ObbRot8108ID.collider:SetOffset(0,0,0)
ObbRot8108ID.collider:SetZAxis(0.201656,0,0.979456)
ObbRot8108ID.collider:SetHalfLengths(0.5,21.3475,18.6774)
CollisionHandler.AddOBB(ObbRot8108ID.collider, 3)
table.insert(props,ObbRot8108ID)
ObbRot8108ID = nil

ObbRot9109ID = {}
ObbRot9109ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot9109ID.transformID, {x=140.102, y=64.4772, z=146.357})
Transform.SetScaleNonUniform(ObbRot9109ID.transformID, 1, 27.7567, 16.8946)
Transform.SetRotation(ObbRot9109ID.transformID, {x=0, y=-0.577785, z=0})
ObbRot9109ID.collider = OBBCollider.Create(ObbRot9109ID.transformID)
ObbRot9109ID.collider:SetOffset(0,0,0)
ObbRot9109ID.collider:SetZAxis(-0.54617,0,0.837674)
ObbRot9109ID.collider:SetHalfLengths(0.5,13.8783,8.4473)
CollisionHandler.AddOBB(ObbRot9109ID.collider, 3)
table.insert(props,ObbRot9109ID)
ObbRot9109ID = nil

ObbRot10110ID = {}
ObbRot10110ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot10110ID.transformID, {x=154.796, y=64.2819, z=144.174})
Transform.SetScaleNonUniform(ObbRot10110ID.transformID, 26.2452, 28.0413, 1)
Transform.SetRotation(ObbRot10110ID.transformID, {x=0, y=-0.407469, z=0})
ObbRot10110ID.collider = OBBCollider.Create(ObbRot10110ID.transformID)
ObbRot10110ID.collider:SetOffset(0,0,0)
ObbRot10110ID.collider:SetZAxis(-0.396287,0,0.918127)
ObbRot10110ID.collider:SetHalfLengths(13.1226,14.0206,0.5)
CollisionHandler.AddOBB(ObbRot10110ID.collider, 3)
table.insert(props,ObbRot10110ID)
ObbRot10110ID = nil

ObbRot11111ID = {}
ObbRot11111ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot11111ID.transformID, {x=174.699, y=63.1007, z=147.499})
Transform.SetScaleNonUniform(ObbRot11111ID.transformID, 16.8432, 18.7972, 1)
Transform.SetRotation(ObbRot11111ID.transformID, {x=0, y=0.226072, z=0})
ObbRot11111ID.collider = OBBCollider.Create(ObbRot11111ID.transformID)
ObbRot11111ID.collider:SetOffset(0,0,0)
ObbRot11111ID.collider:SetZAxis(0.224152,0,0.974554)
ObbRot11111ID.collider:SetHalfLengths(8.42159,9.3986,0.5)
CollisionHandler.AddOBB(ObbRot11111ID.collider, 3)
table.insert(props,ObbRot11111ID)
ObbRot11111ID = nil

ObbRot12112ID = {}
ObbRot12112ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot12112ID.transformID, {x=183.059, y=61.3434, z=144.178})
Transform.SetScaleNonUniform(ObbRot12112ID.transformID, 1, 10.8462, 3.79822)
Transform.SetRotation(ObbRot12112ID.transformID, {x=0, y=-0.290891, z=0})
ObbRot12112ID.collider = OBBCollider.Create(ObbRot12112ID.transformID)
ObbRot12112ID.collider:SetOffset(0,0,0)
ObbRot12112ID.collider:SetZAxis(-0.286806,0,0.957989)
ObbRot12112ID.collider:SetHalfLengths(0.5,5.42308,1.89911)
CollisionHandler.AddOBB(ObbRot12112ID.collider, 3)
table.insert(props,ObbRot12112ID)
ObbRot12112ID = nil

ObbRot13113ID = {}
ObbRot13113ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot13113ID.transformID, {x=183.541, y=61.5997, z=136.594})
Transform.SetScaleNonUniform(ObbRot13113ID.transformID, 1, 11.3389, 11.6923)
Transform.SetRotation(ObbRot13113ID.transformID, {x=0, y=0, z=0})
ObbRot13113ID.collider = OBBCollider.Create(ObbRot13113ID.transformID)
ObbRot13113ID.collider:SetOffset(0,0,0)
ObbRot13113ID.collider:SetZAxis(0,0,1)
ObbRot13113ID.collider:SetHalfLengths(0.5,5.66944,5.84614)
CollisionHandler.AddOBB(ObbRot13113ID.collider, 3)
table.insert(props,ObbRot13113ID)
ObbRot13113ID = nil

ObbRot14114ID = {}
ObbRot14114ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot14114ID.transformID, {x=179.48, y=62, z=118.104})
Transform.SetScaleNonUniform(ObbRot14114ID.transformID, 1, 16.5, 26.7768)
Transform.SetRotation(ObbRot14114ID.transformID, {x=0, y=0.303284, z=0})
ObbRot14114ID.collider = OBBCollider.Create(ObbRot14114ID.transformID)
ObbRot14114ID.collider:SetOffset(0,0,0)
ObbRot14114ID.collider:SetZAxis(0.298656,0,0.954361)
ObbRot14114ID.collider:SetHalfLengths(0.5,8.25,13.3884)
CollisionHandler.AddOBB(ObbRot14114ID.collider, 3)
table.insert(props,ObbRot14114ID)
ObbRot14114ID = nil

ObbRot15115ID = {}
ObbRot15115ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot15115ID.transformID, {x=175.432, y=62.5968, z=82.2888})
Transform.SetScaleNonUniform(ObbRot15115ID.transformID, 1, 10.8651, 45.5511)
Transform.SetRotation(ObbRot15115ID.transformID, {x=0, y=0, z=0})
ObbRot15115ID.collider = OBBCollider.Create(ObbRot15115ID.transformID)
ObbRot15115ID.collider:SetOffset(0,0,0)
ObbRot15115ID.collider:SetZAxis(0,0,1)
ObbRot15115ID.collider:SetHalfLengths(0.5,5.43255,22.7755)
CollisionHandler.AddOBB(ObbRot15115ID.collider, 3)
table.insert(props,ObbRot15115ID)
ObbRot15115ID = nil

ObbRot16116ID = {}
ObbRot16116ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot16116ID.transformID, {x=180.362, y=62.4402, z=51.1485})
Transform.SetScaleNonUniform(ObbRot16116ID.transformID, 1, 14.648, 26.148)
Transform.SetRotation(ObbRot16116ID.transformID, {x=0, y=-0.459319, z=0})
ObbRot16116ID.collider = OBBCollider.Create(ObbRot16116ID.transformID)
ObbRot16116ID.collider:SetOffset(0,0,0)
ObbRot16116ID.collider:SetZAxis(-0.443338,0,0.896355)
ObbRot16116ID.collider:SetHalfLengths(0.5,7.32399,13.074)
CollisionHandler.AddOBB(ObbRot16116ID.collider, 3)
table.insert(props,ObbRot16116ID)
ObbRot16116ID = nil

ObbRot17117ID = {}
ObbRot17117ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot17117ID.transformID, {x=195.773, y=58.0954, z=34.3394})
Transform.SetScaleNonUniform(ObbRot17117ID.transformID, 1, 25.802, 54.4443)
Transform.SetRotation(ObbRot17117ID.transformID, {x=0, y=-0.734825, z=0})
ObbRot17117ID.collider = OBBCollider.Create(ObbRot17117ID.transformID)
ObbRot17117ID.collider:SetOffset(0,0,0)
ObbRot17117ID.collider:SetZAxis(-0.670457,0,0.741948)
ObbRot17117ID.collider:SetHalfLengths(0.5,12.901,27.2222)
CollisionHandler.AddOBB(ObbRot17117ID.collider, 3)
table.insert(props,ObbRot17117ID)
ObbRot17117ID = nil

ObbRot18118ID = {}
ObbRot18118ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot18118ID.transformID, {x=213.366, y=58.4684, z=28.9742})
Transform.SetScaleNonUniform(ObbRot18118ID.transformID, 1, 36.2154, 43.7488)
Transform.SetRotation(ObbRot18118ID.transformID, {x=0, y=1.64975, z=0})
ObbRot18118ID.collider = OBBCollider.Create(ObbRot18118ID.transformID)
ObbRot18118ID.collider:SetOffset(0,0,0)
ObbRot18118ID.collider:SetZAxis(0.996885,0,-0.0788692)
ObbRot18118ID.collider:SetHalfLengths(0.5,18.1077,21.8744)
CollisionHandler.AddOBB(ObbRot18118ID.collider, 3)
table.insert(props,ObbRot18118ID)
ObbRot18118ID = nil

ObbRot19119ID = {}
ObbRot19119ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot19119ID.transformID, {x=262.054, y=52.6605, z=45.269})
Transform.SetScaleNonUniform(ObbRot19119ID.transformID, 89.1631, 34.5789, 1)
Transform.SetRotation(ObbRot19119ID.transformID, {x=0, y=-0.442913, z=0})
ObbRot19119ID.collider = OBBCollider.Create(ObbRot19119ID.transformID)
ObbRot19119ID.collider:SetOffset(0,0,0)
ObbRot19119ID.collider:SetZAxis(-0.428573,0,0.903507)
ObbRot19119ID.collider:SetHalfLengths(44.5816,17.2895,0.5)
CollisionHandler.AddOBB(ObbRot19119ID.collider, 3)
table.insert(props,ObbRot19119ID)
ObbRot19119ID = nil

ObbRot20120ID = {}
ObbRot20120ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot20120ID.transformID, {x=312.879, y=51.9274, z=89.4882})
Transform.SetScaleNonUniform(ObbRot20120ID.transformID, 113.924, 33.1014, 1)
Transform.SetRotation(ObbRot20120ID.transformID, {x=0, y=-0.833437, z=0})
ObbRot20120ID.collider = OBBCollider.Create(ObbRot20120ID.transformID)
ObbRot20120ID.collider:SetOffset(0,0,0)
ObbRot20120ID.collider:SetZAxis(-0.740246,0,0.672336)
ObbRot20120ID.collider:SetHalfLengths(56.9618,16.5507,0.5)
CollisionHandler.AddOBB(ObbRot20120ID.collider, 3)
table.insert(props,ObbRot20120ID)
ObbRot20120ID = nil

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

t2s179ID = {}
t2s179ID.transformID = Transform.Bind()
Transform.SetPosition(t2s179ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s179ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s179ID.transformID, {x=0, y=0, z=0})
t2s179ID.model = Assets.LoadModel('Models/tile2_s1.model')
Gear.AddStaticInstance(t2s179ID.model, t2s179ID.transformID)
table.insert(props,t2s179ID)
t2s179ID = nil

t2s280ID = {}
t2s280ID.transformID = Transform.Bind()
Transform.SetPosition(t2s280ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s280ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s280ID.transformID, {x=0, y=0, z=0})
t2s280ID.model = Assets.LoadModel('Models/tile2_s2.model')
Gear.AddStaticInstance(t2s280ID.model, t2s280ID.transformID)
table.insert(props,t2s280ID)
t2s280ID = nil

t2s381ID = {}
t2s381ID.transformID = Transform.Bind()
Transform.SetPosition(t2s381ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s381ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s381ID.transformID, {x=0, y=0, z=0})
t2s381ID.model = Assets.LoadModel('Models/tile2_s3.model')
Gear.AddStaticInstance(t2s381ID.model, t2s381ID.transformID)
table.insert(props,t2s381ID)
t2s381ID = nil

t2s482ID = {}
t2s482ID.transformID = Transform.Bind()
Transform.SetPosition(t2s482ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s482ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s482ID.transformID, {x=0, y=0, z=0})
t2s482ID.model = Assets.LoadModel('Models/tile2_s4.model')
Gear.AddStaticInstance(t2s482ID.model, t2s482ID.transformID)
table.insert(props,t2s482ID)
t2s482ID = nil

t2s583ID = {}
t2s583ID.transformID = Transform.Bind()
Transform.SetPosition(t2s583ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s583ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s583ID.transformID, {x=0, y=0, z=0})
t2s583ID.model = Assets.LoadModel('Models/tile2_s5.model')
Gear.AddStaticInstance(t2s583ID.model, t2s583ID.transformID)
table.insert(props,t2s583ID)
t2s583ID = nil

t2s684ID = {}
t2s684ID.transformID = Transform.Bind()
Transform.SetPosition(t2s684ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s684ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s684ID.transformID, {x=0, y=0, z=0})
t2s684ID.model = Assets.LoadModel('Models/tile2_s6.model')
Gear.AddStaticInstance(t2s684ID.model, t2s684ID.transformID)
table.insert(props,t2s684ID)
t2s684ID = nil

t2s785ID = {}
t2s785ID.transformID = Transform.Bind()
Transform.SetPosition(t2s785ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s785ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s785ID.transformID, {x=0, y=0, z=0})
t2s785ID.model = Assets.LoadModel('Models/tile2_s7.model')
Gear.AddStaticInstance(t2s785ID.model, t2s785ID.transformID)
table.insert(props,t2s785ID)
t2s785ID = nil

t2s886ID = {}
t2s886ID.transformID = Transform.Bind()
Transform.SetPosition(t2s886ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s886ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s886ID.transformID, {x=0, y=0, z=0})
t2s886ID.model = Assets.LoadModel('Models/tile2_s8.model')
Gear.AddStaticInstance(t2s886ID.model, t2s886ID.transformID)
table.insert(props,t2s886ID)
t2s886ID = nil

t2s987ID = {}
t2s987ID.transformID = Transform.Bind()
Transform.SetPosition(t2s987ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s987ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s987ID.transformID, {x=0, y=0, z=0})
t2s987ID.model = Assets.LoadModel('Models/tile2_s9.model')
Gear.AddStaticInstance(t2s987ID.model, t2s987ID.transformID)
table.insert(props,t2s987ID)
t2s987ID = nil

t2s1088ID = {}
t2s1088ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1088ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1088ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1088ID.transformID, {x=0, y=0, z=0})
t2s1088ID.model = Assets.LoadModel('Models/tile2_s10.model')
Gear.AddStaticInstance(t2s1088ID.model, t2s1088ID.transformID)
table.insert(props,t2s1088ID)
t2s1088ID = nil

t2s11a89ID = {}
t2s11a89ID.transformID = Transform.Bind()
Transform.SetPosition(t2s11a89ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s11a89ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s11a89ID.transformID, {x=0, y=0, z=0})
t2s11a89ID.model = Assets.LoadModel('Models/tile2_s11a.model')
Gear.AddStaticInstance(t2s11a89ID.model, t2s11a89ID.transformID)
table.insert(props,t2s11a89ID)
t2s11a89ID = nil

t2s1290ID = {}
t2s1290ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1290ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1290ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1290ID.transformID, {x=0, y=0, z=0})
t2s1290ID.model = Assets.LoadModel('Models/tile2_s12.model')
Gear.AddStaticInstance(t2s1290ID.model, t2s1290ID.transformID)
table.insert(props,t2s1290ID)
t2s1290ID = nil

t2s1391ID = {}
t2s1391ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1391ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1391ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1391ID.transformID, {x=0, y=0, z=0})
t2s1391ID.model = Assets.LoadModel('Models/tile2_s13.model')
Gear.AddStaticInstance(t2s1391ID.model, t2s1391ID.transformID)
table.insert(props,t2s1391ID)
t2s1391ID = nil

t2s1492ID = {}
t2s1492ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1492ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1492ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1492ID.transformID, {x=0, y=0, z=0})
t2s1492ID.model = Assets.LoadModel('Models/tile2_s14.model')
Gear.AddStaticInstance(t2s1492ID.model, t2s1492ID.transformID)
table.insert(props,t2s1492ID)
t2s1492ID = nil

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
AI.AddHeightMap(heightmaps[i].asset,i)
end
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)
