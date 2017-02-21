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
Transform.SetPosition(TilePlaceholder2ID.transformID, {x=0, y=255, z=0})
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
Transform.SetPosition(Obb6ID.transformID, {x=39.0404, y=11, z=126.919})
Transform.SetScaleNonUniform(Obb6ID.transformID, 5, 5.5, 1.08661)
Transform.SetRotation(Obb6ID.transformID, {x=0, y=0, z=0})
Obb6ID.collider = OBBCollider.Create(Obb6ID.transformID)
Obb6ID.collider:SetOffset(0,0,0)
Obb6ID.collider:SetZAxis(0.0350067,0,0.999387)
Obb6ID.collider:SetHalfLengths(2.5,2.75,0.543304)
CollisionHandler.AddOBB(Obb6ID.collider, 3)
table.insert(colliders,Obb6ID)
Obb6ID = nil

Obb17ID = {}
Obb17ID.transformID = Transform.Bind()
Transform.SetPosition(Obb17ID.transformID, {x=44.9522, y=12, z=129.392})
Transform.SetScaleNonUniform(Obb17ID.transformID, 8.39434, 7, 0.871048)
Transform.SetRotation(Obb17ID.transformID, {x=0, y=0, z=0})
Obb17ID.collider = OBBCollider.Create(Obb17ID.transformID)
Obb17ID.collider:SetOffset(0,0,0)
Obb17ID.collider:SetZAxis(-0.583273,0,0.812276)
Obb17ID.collider:SetHalfLengths(4.19717,3.5,0.435524)
CollisionHandler.AddOBB(Obb17ID.collider, 3)
table.insert(colliders,Obb17ID)
Obb17ID = nil

Obb28ID = {}
Obb28ID.transformID = Transform.Bind()
Transform.SetPosition(Obb28ID.transformID, {x=51.9199, y=14, z=137.106})
Transform.SetScaleNonUniform(Obb28ID.transformID, 13, 11, 1)
Transform.SetRotation(Obb28ID.transformID, {x=0, y=0, z=0})
Obb28ID.collider = OBBCollider.Create(Obb28ID.transformID)
Obb28ID.collider:SetOffset(0,0,0)
Obb28ID.collider:SetZAxis(-0.823142,0,0.567836)
Obb28ID.collider:SetHalfLengths(6.5,5.5,0.5)
CollisionHandler.AddOBB(Obb28ID.collider, 3)
table.insert(colliders,Obb28ID)
Obb28ID = nil

Obb39ID = {}
Obb39ID.transformID = Transform.Bind()
Transform.SetPosition(Obb39ID.transformID, {x=55.7141, y=15, z=145.031})
Transform.SetScaleNonUniform(Obb39ID.transformID, 5.5, 12.5, 1)
Transform.SetRotation(Obb39ID.transformID, {x=0, y=0, z=0})
Obb39ID.collider = OBBCollider.Create(Obb39ID.transformID)
Obb39ID.collider:SetOffset(0,0,0)
Obb39ID.collider:SetZAxis(-0.996929,0,0.0783057)
Obb39ID.collider:SetHalfLengths(2.75,6.25,0.5)
CollisionHandler.AddOBB(Obb39ID.collider, 3)
table.insert(colliders,Obb39ID)
Obb39ID = nil

Obb410ID = {}
Obb410ID.transformID = Transform.Bind()
Transform.SetPosition(Obb410ID.transformID, {x=52.078, y=13, z=152.094})
Transform.SetScaleNonUniform(Obb410ID.transformID, 12, 9, 1)
Transform.SetRotation(Obb410ID.transformID, {x=0, y=0, z=0})
Obb410ID.collider = OBBCollider.Create(Obb410ID.transformID)
Obb410ID.collider:SetOffset(0,0,0)
Obb410ID.collider:SetZAxis(-0.732567,0,-0.680695)
Obb410ID.collider:SetHalfLengths(6,4.5,0.5)
CollisionHandler.AddOBB(Obb410ID.collider, 3)
table.insert(colliders,Obb410ID)
Obb410ID = nil

Obb511ID = {}
Obb511ID.transformID = Transform.Bind()
Transform.SetPosition(Obb511ID.transformID, {x=43.7358, y=13, z=156.709})
Transform.SetScaleNonUniform(Obb511ID.transformID, 9.5, 9, 1)
Transform.SetRotation(Obb511ID.transformID, {x=0, y=0, z=0})
Obb511ID.collider = OBBCollider.Create(Obb511ID.transformID)
Obb511ID.collider:SetOffset(0,0,0)
Obb511ID.collider:SetZAxis(-0.117519,0,-0.993071)
Obb511ID.collider:SetHalfLengths(4.75,4.5,0.5)
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
Transform.SetPosition(Obb614ID.transformID, {x=36.7883, y=9, z=158.058})
Transform.SetScaleNonUniform(Obb614ID.transformID, 10.3218, 5.5, 1.08522)
Transform.SetRotation(Obb614ID.transformID, {x=0, y=0, z=0})
Obb614ID.collider = OBBCollider.Create(Obb614ID.transformID)
Obb614ID.collider:SetOffset(0,0,0)
Obb614ID.collider:SetZAxis(-0.942602,0,0.33392)
Obb614ID.collider:SetHalfLengths(5.1609,2.75,0.54261)
CollisionHandler.AddOBB(Obb614ID.collider, 3)
table.insert(colliders,Obb614ID)
Obb614ID = nil

Obb715ID = {}
Obb715ID.transformID = Transform.Bind()
Transform.SetPosition(Obb715ID.transformID, {x=42.1897, y=10, z=164.405})
Transform.SetScaleNonUniform(Obb715ID.transformID, 8.69166, 6, 1)
Transform.SetRotation(Obb715ID.transformID, {x=0, y=0, z=0})
Obb715ID.collider = OBBCollider.Create(Obb715ID.transformID)
Obb715ID.collider:SetOffset(0,0,0)
Obb715ID.collider:SetZAxis(-0.406524,0,0.91364)
Obb715ID.collider:SetHalfLengths(4.34583,3,0.5)
CollisionHandler.AddOBB(Obb715ID.collider, 3)
table.insert(colliders,Obb715ID)
Obb715ID = nil

Obb816ID = {}
Obb816ID.transformID = Transform.Bind()
Transform.SetPosition(Obb816ID.transformID, {x=49.0721, y=10, z=165.871})
Transform.SetScaleNonUniform(Obb816ID.transformID, 6.5, 7, 1)
Transform.SetRotation(Obb816ID.transformID, {x=0, y=0, z=0})
Obb816ID.collider = OBBCollider.Create(Obb816ID.transformID)
Obb816ID.collider:SetOffset(0,0,0)
Obb816ID.collider:SetZAxis(0.0659963,0,0.99782)
Obb816ID.collider:SetHalfLengths(3.25,3.5,0.5)
CollisionHandler.AddOBB(Obb816ID.collider, 3)
table.insert(colliders,Obb816ID)
Obb816ID = nil

Obb917ID = {}
Obb917ID.transformID = Transform.Bind()
Transform.SetPosition(Obb917ID.transformID, {x=55.1278, y=11, z=169.08})
Transform.SetScaleNonUniform(Obb917ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb917ID.transformID, {x=0, y=0, z=0})
Obb917ID.collider = OBBCollider.Create(Obb917ID.transformID)
Obb917ID.collider:SetOffset(0,0,0)
Obb917ID.collider:SetZAxis(-0.672089,0,0.74047)
Obb917ID.collider:SetHalfLengths(5.25,4.75,0.5)
CollisionHandler.AddOBB(Obb917ID.collider, 3)
table.insert(colliders,Obb917ID)
Obb917ID = nil

Obb1018ID = {}
Obb1018ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1018ID.transformID, {x=57.658, y=12, z=175.255})
Transform.SetScaleNonUniform(Obb1018ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb1018ID.transformID, {x=0, y=0, z=0})
Obb1018ID.collider = OBBCollider.Create(Obb1018ID.transformID)
Obb1018ID.collider:SetOffset(0,0,0)
Obb1018ID.collider:SetZAxis(-0.997282,0,-0.073685)
Obb1018ID.collider:SetHalfLengths(5.25,4.75,0.5)
CollisionHandler.AddOBB(Obb1018ID.collider, 3)
table.insert(colliders,Obb1018ID)
Obb1018ID = nil

Obb1119ID = {}
Obb1119ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1119ID.transformID, {x=55.0522, y=12, z=182.172})
Transform.SetScaleNonUniform(Obb1119ID.transformID, 10, 9, 1)
Transform.SetRotation(Obb1119ID.transformID, {x=0, y=0, z=0})
Obb1119ID.collider = OBBCollider.Create(Obb1119ID.transformID)
Obb1119ID.collider:SetOffset(0,0,0)
Obb1119ID.collider:SetZAxis(-0.779628,0,-0.626243)
Obb1119ID.collider:SetHalfLengths(5,4.5,0.5)
CollisionHandler.AddOBB(Obb1119ID.collider, 3)
table.insert(colliders,Obb1119ID)
Obb1119ID = nil

Obb1220ID = {}
Obb1220ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1220ID.transformID, {x=47.8056, y=12, z=186.651})
Transform.SetScaleNonUniform(Obb1220ID.transformID, 13.5, 11.5, 1)
Transform.SetRotation(Obb1220ID.transformID, {x=0, y=0, z=0})
Obb1220ID.collider = OBBCollider.Create(Obb1220ID.transformID)
Obb1220ID.collider:SetOffset(0,0,0)
Obb1220ID.collider:SetZAxis(-0.227771,0,-0.973715)
Obb1220ID.collider:SetHalfLengths(6.75,5.75,0.5)
CollisionHandler.AddOBB(Obb1220ID.collider, 3)
table.insert(colliders,Obb1220ID)
Obb1220ID = nil

Obb1321ID = {}
Obb1321ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1321ID.transformID, {x=39.6651, y=13, z=185.369})
Transform.SetScaleNonUniform(Obb1321ID.transformID, 11, 13.5, 1)
Transform.SetRotation(Obb1321ID.transformID, {x=0, y=0, z=0})
Obb1321ID.collider = OBBCollider.Create(Obb1321ID.transformID)
Obb1321ID.collider:SetOffset(0,0,0)
Obb1321ID.collider:SetZAxis(0.622728,0,-0.782439)
Obb1321ID.collider:SetHalfLengths(5.5,6.75,0.5)
CollisionHandler.AddOBB(Obb1321ID.collider, 3)
table.insert(colliders,Obb1321ID)
Obb1321ID = nil

Obb1422ID = {}
Obb1422ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1422ID.transformID, {x=35.5826, y=13, z=179.492})
Transform.SetScaleNonUniform(Obb1422ID.transformID, 12.5, 12, 1)
Transform.SetRotation(Obb1422ID.transformID, {x=0, y=0, z=0})
Obb1422ID.collider = OBBCollider.Create(Obb1422ID.transformID)
Obb1422ID.collider:SetOffset(0,0,0)
Obb1422ID.collider:SetZAxis(0.971509,0,-0.237004)
Obb1422ID.collider:SetHalfLengths(6.25,6,0.5)
CollisionHandler.AddOBB(Obb1422ID.collider, 3)
table.insert(colliders,Obb1422ID)
Obb1422ID = nil

Obb1723ID = {}
Obb1723ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1723ID.transformID, {x=26.6681, y=8, z=169.626})
Transform.SetScaleNonUniform(Obb1723ID.transformID, 4.5, 6, 1)
Transform.SetRotation(Obb1723ID.transformID, {x=0, y=0, z=0})
Obb1723ID.collider = OBBCollider.Create(Obb1723ID.transformID)
Obb1723ID.collider:SetOffset(0,0,0)
Obb1723ID.collider:SetZAxis(-0.595609,0,-0.803275)
Obb1723ID.collider:SetHalfLengths(2.25,3,0.5)
CollisionHandler.AddOBB(Obb1723ID.collider, 3)
table.insert(colliders,Obb1723ID)
Obb1723ID = nil

Obb2024ID = {}
Obb2024ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2024ID.transformID, {x=22.3577, y=8, z=175.096})
Transform.SetScaleNonUniform(Obb2024ID.transformID, 4, 9, 1)
Transform.SetRotation(Obb2024ID.transformID, {x=0, y=0, z=0})
Obb2024ID.collider = OBBCollider.Create(Obb2024ID.transformID)
Obb2024ID.collider:SetOffset(0,0,0)
Obb2024ID.collider:SetZAxis(-0.997205,0,0.0747166)
Obb2024ID.collider:SetHalfLengths(2,4.5,0.5)
CollisionHandler.AddOBB(Obb2024ID.collider, 3)
table.insert(colliders,Obb2024ID)
Obb2024ID = nil

Obb2125ID = {}
Obb2125ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2125ID.transformID, {x=23.4884, y=8, z=178.927})
Transform.SetScaleNonUniform(Obb2125ID.transformID, 4.5111, 9, 1.13998)
Transform.SetRotation(Obb2125ID.transformID, {x=0, y=0, z=0})
Obb2125ID.collider = OBBCollider.Create(Obb2125ID.transformID)
Obb2125ID.collider:SetOffset(0,0,0)
Obb2125ID.collider:SetZAxis(-0.905241,0,0.424899)
Obb2125ID.collider:SetHalfLengths(2.25555,4.5,0.569992)
CollisionHandler.AddOBB(Obb2125ID.collider, 3)
table.insert(colliders,Obb2125ID)
Obb2125ID = nil

Obb2226ID = {}
Obb2226ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2226ID.transformID, {x=28.5969, y=8, z=185.441})
Transform.SetScaleNonUniform(Obb2226ID.transformID, 12.5, 11.5, 1)
Transform.SetRotation(Obb2226ID.transformID, {x=0, y=0, z=0})
Obb2226ID.collider = OBBCollider.Create(Obb2226ID.transformID)
Obb2226ID.collider:SetOffset(0,0,0)
Obb2226ID.collider:SetZAxis(-0.729108,0,0.684399)
Obb2226ID.collider:SetHalfLengths(6.25,5.75,0.5)
CollisionHandler.AddOBB(Obb2226ID.collider, 3)
table.insert(colliders,Obb2226ID)
Obb2226ID = nil

Obb2327ID = {}
Obb2327ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2327ID.transformID, {x=34.4504, y=9, z=191.759})
Transform.SetScaleNonUniform(Obb2327ID.transformID, 5.22974, 11.5, 0.968994)
Transform.SetRotation(Obb2327ID.transformID, {x=0, y=0, z=0})
Obb2327ID.collider = OBBCollider.Create(Obb2327ID.transformID)
Obb2327ID.collider:SetOffset(0,0,0)
Obb2327ID.collider:SetZAxis(-0.765715,0,0.643181)
Obb2327ID.collider:SetHalfLengths(2.61487,5.75,0.484497)
CollisionHandler.AddOBB(Obb2327ID.collider, 3)
table.insert(colliders,Obb2327ID)
Obb2327ID = nil

Obb1628ID = {}
Obb1628ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1628ID.transformID, {x=29.6417, y=8, z=168.466})
Transform.SetScaleNonUniform(Obb1628ID.transformID, 2.8098, 10, 1)
Transform.SetRotation(Obb1628ID.transformID, {x=0, y=0, z=0})
Obb1628ID.collider = OBBCollider.Create(Obb1628ID.transformID)
Obb1628ID.collider:SetOffset(0,0,0)
Obb1628ID.collider:SetZAxis(-0.0377485,0,-0.999287)
Obb1628ID.collider:SetHalfLengths(1.4049,5,0.5)
CollisionHandler.AddOBB(Obb1628ID.collider, 3)
table.insert(colliders,Obb1628ID)
Obb1628ID = nil

Obb2429ID = {}
Obb2429ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2429ID.transformID, {x=20.0467, y=10, z=140.246})
Transform.SetScaleNonUniform(Obb2429ID.transformID, 7.14175, 6.5, 1)
Transform.SetRotation(Obb2429ID.transformID, {x=0, y=0, z=0})
Obb2429ID.collider = OBBCollider.Create(Obb2429ID.transformID)
Obb2429ID.collider:SetOffset(0,0,0)
Obb2429ID.collider:SetZAxis(0.350855,0,0.93643)
Obb2429ID.collider:SetHalfLengths(3.57088,3.25,0.5)
CollisionHandler.AddOBB(Obb2429ID.collider, 3)
table.insert(colliders,Obb2429ID)
Obb2429ID = nil

Obb2530ID = {}
Obb2530ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2530ID.transformID, {x=14.8325, y=11, z=141.399})
Transform.SetScaleNonUniform(Obb2530ID.transformID, 4, 10, 1)
Transform.SetRotation(Obb2530ID.transformID, {x=0, y=0, z=0})
Obb2530ID.collider = OBBCollider.Create(Obb2530ID.transformID)
Obb2530ID.collider:SetOffset(0,0,0)
Obb2530ID.collider:SetZAxis(-7.5809e-06,0,1)
Obb2530ID.collider:SetHalfLengths(2,5,0.5)
CollisionHandler.AddOBB(Obb2530ID.collider, 3)
table.insert(colliders,Obb2530ID)
Obb2530ID = nil

Obb2631ID = {}
Obb2631ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2631ID.transformID, {x=11.2464, y=10, z=140.542})
Transform.SetScaleNonUniform(Obb2631ID.transformID, 4, 8, 1)
Transform.SetRotation(Obb2631ID.transformID, {x=0, y=0, z=0})
Obb2631ID.collider = OBBCollider.Create(Obb2631ID.transformID)
Obb2631ID.collider:SetOffset(0,0,0)
Obb2631ID.collider:SetZAxis(-0.482651,0,0.875813)
Obb2631ID.collider:SetHalfLengths(2,4,0.5)
CollisionHandler.AddOBB(Obb2631ID.collider, 3)
table.insert(colliders,Obb2631ID)
Obb2631ID = nil

Obb2732ID = {}
Obb2732ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2732ID.transformID, {x=7.59128, y=8, z=138.891})
Transform.SetScaleNonUniform(Obb2732ID.transformID, 4.5, 7.5, 1)
Transform.SetRotation(Obb2732ID.transformID, {x=0, y=0, z=0})
Obb2732ID.collider = OBBCollider.Create(Obb2732ID.transformID)
Obb2732ID.collider:SetOffset(0,0,0)
Obb2732ID.collider:SetZAxis(-0.329544,0,0.94414)
Obb2732ID.collider:SetHalfLengths(2.25,3.75,0.5)
CollisionHandler.AddOBB(Obb2732ID.collider, 3)
table.insert(colliders,Obb2732ID)
Obb2732ID = nil

Obb2833ID = {}
Obb2833ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2833ID.transformID, {x=6.45969, y=7, z=200.601})
Transform.SetScaleNonUniform(Obb2833ID.transformID, 6.5, 9, 1)
Transform.SetRotation(Obb2833ID.transformID, {x=0, y=0, z=0})
Obb2833ID.collider = OBBCollider.Create(Obb2833ID.transformID)
Obb2833ID.collider:SetOffset(0,0,0)
Obb2833ID.collider:SetZAxis(0.63835,0,-0.769746)
Obb2833ID.collider:SetHalfLengths(3.25,4.5,0.5)
CollisionHandler.AddOBB(Obb2833ID.collider, 3)
table.insert(colliders,Obb2833ID)
Obb2833ID = nil

Obb2934ID = {}
Obb2934ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2934ID.transformID, {x=4.30202, y=6, z=197.811})
Transform.SetScaleNonUniform(Obb2934ID.transformID, 8.5, 11, 1)
Transform.SetRotation(Obb2934ID.transformID, {x=0, y=0, z=0})
Obb2934ID.collider = OBBCollider.Create(Obb2934ID.transformID)
Obb2934ID.collider:SetOffset(0,0,0)
Obb2934ID.collider:SetZAxis(0.900335,0,-0.435197)
Obb2934ID.collider:SetHalfLengths(4.25,5.5,0.5)
CollisionHandler.AddOBB(Obb2934ID.collider, 3)
table.insert(colliders,Obb2934ID)
Obb2934ID = nil

Obb3035ID = {}
Obb3035ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3035ID.transformID, {x=2.80227, y=6, z=191.704})
Transform.SetScaleNonUniform(Obb3035ID.transformID, 9.5, 12, 1)
Transform.SetRotation(Obb3035ID.transformID, {x=0, y=0, z=0})
Obb3035ID.collider = OBBCollider.Create(Obb3035ID.transformID)
Obb3035ID.collider:SetOffset(0,0,0)
Obb3035ID.collider:SetZAxis(0.995846,0,-0.0910506)
Obb3035ID.collider:SetHalfLengths(4.75,6,0.5)
CollisionHandler.AddOBB(Obb3035ID.collider, 3)
table.insert(colliders,Obb3035ID)
Obb3035ID = nil

Obb3136ID = {}
Obb3136ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3136ID.transformID, {x=2.65523, y=7, z=183.261})
Transform.SetScaleNonUniform(Obb3136ID.transformID, 12.5, 10, 1)
Transform.SetRotation(Obb3136ID.transformID, {x=0, y=0, z=0})
Obb3136ID.collider = OBBCollider.Create(Obb3136ID.transformID)
Obb3136ID.collider:SetOffset(0,0,0)
Obb3136ID.collider:SetZAxis(0.999723,0,0.0235538)
Obb3136ID.collider:SetHalfLengths(6.25,5,0.5)
CollisionHandler.AddOBB(Obb3136ID.collider, 3)
table.insert(colliders,Obb3136ID)
Obb3136ID = nil

Obb3237ID = {}
Obb3237ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3237ID.transformID, {x=5.44154, y=7, z=178.748})
Transform.SetScaleNonUniform(Obb3237ID.transformID, 10, 12.5, 1)
Transform.SetRotation(Obb3237ID.transformID, {x=0, y=0, z=0})
Obb3237ID.collider = OBBCollider.Create(Obb3237ID.transformID)
Obb3237ID.collider:SetOffset(0,0,0)
Obb3237ID.collider:SetZAxis(0.617509,0,0.786564)
Obb3237ID.collider:SetHalfLengths(5,6.25,0.5)
CollisionHandler.AddOBB(Obb3237ID.collider, 3)
table.insert(colliders,Obb3237ID)
Obb3237ID = nil

Obb3338ID = {}
Obb3338ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3338ID.transformID, {x=9.41838, y=10, z=174.488})
Transform.SetScaleNonUniform(Obb3338ID.transformID, 2.5, 9, 1)
Transform.SetRotation(Obb3338ID.transformID, {x=0, y=0, z=0})
Obb3338ID.collider = OBBCollider.Create(Obb3338ID.transformID)
Obb3338ID.collider:SetOffset(0,0,0)
Obb3338ID.collider:SetZAxis(0.897614,0,0.440783)
Obb3338ID.collider:SetHalfLengths(1.25,4.5,0.5)
CollisionHandler.AddOBB(Obb3338ID.collider, 3)
table.insert(colliders,Obb3338ID)
Obb3338ID = nil

Obb3439ID = {}
Obb3439ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3439ID.transformID, {x=9.58863, y=9, z=172.07})
Transform.SetScaleNonUniform(Obb3439ID.transformID, 3, 7.5, 1)
Transform.SetRotation(Obb3439ID.transformID, {x=0, y=0, z=0})
Obb3439ID.collider = OBBCollider.Create(Obb3439ID.transformID)
Obb3439ID.collider:SetOffset(0,0,0)
Obb3439ID.collider:SetZAxis(0.973328,0,-0.22942)
Obb3439ID.collider:SetHalfLengths(1.5,3.75,0.5)
CollisionHandler.AddOBB(Obb3439ID.collider, 3)
table.insert(colliders,Obb3439ID)
Obb3439ID = nil

Obb3540ID = {}
Obb3540ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3540ID.transformID, {x=7.46277, y=9, z=168.952})
Transform.SetScaleNonUniform(Obb3540ID.transformID, 5.5, 10, 1)
Transform.SetRotation(Obb3540ID.transformID, {x=0, y=0, z=0})
Obb3540ID.collider = OBBCollider.Create(Obb3540ID.transformID)
Obb3540ID.collider:SetOffset(0,0,0)
Obb3540ID.collider:SetZAxis(0.697603,0,-0.716485)
Obb3540ID.collider:SetHalfLengths(2.75,5,0.5)
CollisionHandler.AddOBB(Obb3540ID.collider, 3)
table.insert(colliders,Obb3540ID)
Obb3540ID = nil

Obb3641ID = {}
Obb3641ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3641ID.transformID, {x=3.96612, y=10, z=163.15})
Transform.SetScaleNonUniform(Obb3641ID.transformID, 8, 9.5, 1)
Transform.SetRotation(Obb3641ID.transformID, {x=0, y=0, z=0})
Obb3641ID.collider = OBBCollider.Create(Obb3641ID.transformID)
Obb3641ID.collider:SetOffset(0,0,0)
Obb3641ID.collider:SetZAxis(0.93109,0,-0.364789)
Obb3641ID.collider:SetHalfLengths(4,4.75,0.5)
CollisionHandler.AddOBB(Obb3641ID.collider, 3)
table.insert(colliders,Obb3641ID)
Obb3641ID = nil

Obb3742ID = {}
Obb3742ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3742ID.transformID, {x=3.57684, y=10, z=155.965})
Transform.SetScaleNonUniform(Obb3742ID.transformID, 14, 9.5, 1)
Transform.SetRotation(Obb3742ID.transformID, {x=0, y=0, z=0})
Obb3742ID.collider = OBBCollider.Create(Obb3742ID.transformID)
Obb3742ID.collider:SetOffset(0,0,0)
Obb3742ID.collider:SetZAxis(0.97915,0,0.20314)
Obb3742ID.collider:SetHalfLengths(7,4.75,0.5)
CollisionHandler.AddOBB(Obb3742ID.collider, 3)
table.insert(colliders,Obb3742ID)
Obb3742ID = nil

Obb3943ID = {}
Obb3943ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3943ID.transformID, {x=49.4084, y=12, z=201.832})
Transform.SetScaleNonUniform(Obb3943ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb3943ID.transformID, {x=0, y=0, z=0})
Obb3943ID.collider = OBBCollider.Create(Obb3943ID.transformID)
Obb3943ID.collider:SetOffset(0,0,0)
Obb3943ID.collider:SetZAxis(-0.753698,0,0.657221)
Obb3943ID.collider:SetHalfLengths(5.25,4.75,0.5)
CollisionHandler.AddOBB(Obb3943ID.collider, 3)
table.insert(colliders,Obb3943ID)
Obb3943ID = nil

Obb4044ID = {}
Obb4044ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4044ID.transformID, {x=54.7569, y=13, z=206.949})
Transform.SetScaleNonUniform(Obb4044ID.transformID, 5, 13, 1)
Transform.SetRotation(Obb4044ID.transformID, {x=0, y=0, z=0})
Obb4044ID.collider = OBBCollider.Create(Obb4044ID.transformID)
Obb4044ID.collider:SetOffset(0,0,0)
Obb4044ID.collider:SetZAxis(-0.529293,0,0.848439)
Obb4044ID.collider:SetHalfLengths(2.5,6.5,0.5)
CollisionHandler.AddOBB(Obb4044ID.collider, 3)
table.insert(colliders,Obb4044ID)
Obb4044ID = nil

Obb4145ID = {}
Obb4145ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4145ID.transformID, {x=61.1504, y=16, z=208.037})
Transform.SetScaleNonUniform(Obb4145ID.transformID, 9, 18.5, 1)
Transform.SetRotation(Obb4145ID.transformID, {x=0, y=0, z=0})
Obb4145ID.collider = OBBCollider.Create(Obb4145ID.transformID)
Obb4145ID.collider:SetOffset(0,0,0)
Obb4145ID.collider:SetZAxis(0.0403177,0,0.999187)
Obb4145ID.collider:SetHalfLengths(4.5,9.25,0.5)
CollisionHandler.AddOBB(Obb4145ID.collider, 3)
table.insert(colliders,Obb4145ID)
Obb4145ID = nil

Obb4246ID = {}
Obb4246ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4246ID.transformID, {x=72.5637, y=20, z=204.506})
Transform.SetScaleNonUniform(Obb4246ID.transformID, 16, 24.5, 1)
Transform.SetRotation(Obb4246ID.transformID, {x=0, y=0, z=0})
Obb4246ID.collider = OBBCollider.Create(Obb4246ID.transformID)
Obb4246ID.collider:SetOffset(0,0,0)
Obb4246ID.collider:SetZAxis(0.424874,0,0.905252)
Obb4246ID.collider:SetHalfLengths(8,12.25,0.5)
CollisionHandler.AddOBB(Obb4246ID.collider, 3)
table.insert(colliders,Obb4246ID)
Obb4246ID = nil

Obb4347ID = {}
Obb4347ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4347ID.transformID, {x=84.2015, y=26.8573, z=198.428})
Transform.SetScaleNonUniform(Obb4347ID.transformID, 11, 14, 1)
Transform.SetRotation(Obb4347ID.transformID, {x=0, y=0, z=0})
Obb4347ID.collider = OBBCollider.Create(Obb4347ID.transformID)
Obb4347ID.collider:SetOffset(0,0,0)
Obb4347ID.collider:SetZAxis(0.623735,0,0.781636)
Obb4347ID.collider:SetHalfLengths(5.5,7,0.5)
CollisionHandler.AddOBB(Obb4347ID.collider, 3)
table.insert(colliders,Obb4347ID)
Obb4347ID = nil

New48ID = {}
New48ID.transformID = Transform.Bind()
Transform.SetPosition(New48ID.transformID, {x=118.254, y=53.1783, z=226.98})
Transform.SetScaleNonUniform(New48ID.transformID, 1, 1, 1)
Transform.SetRotation(New48ID.transformID, {x=0, y=0, z=0})
Light.addLight(118.254, 53.1783, 226.98, 0.870588, 0.627451, 0, 100,2)
table.insert(props,New48ID)
New48ID = nil

Obb4449ID = {}
Obb4449ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4449ID.transformID, {x=94.7039, y=28, z=192.132})
Transform.SetScaleNonUniform(Obb4449ID.transformID, 15, 14.5, 1)
Transform.SetRotation(Obb4449ID.transformID, {x=0, y=0, z=0})
Obb4449ID.collider = OBBCollider.Create(Obb4449ID.transformID)
Obb4449ID.collider:SetOffset(0,0,0)
Obb4449ID.collider:SetZAxis(0.474159,0,0.880439)
Obb4449ID.collider:SetHalfLengths(7.5,7.25,0.5)
CollisionHandler.AddOBB(Obb4449ID.collider, 3)
table.insert(colliders,Obb4449ID)
Obb4449ID = nil

m151ID = {}
m151ID.transformID = Transform.Bind()
Transform.SetPosition(m151ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m151ID.transformID, 1, 1, 1)
Transform.SetRotation(m151ID.transformID, {x=0, y=0, z=0})
m151ID.model = Assets.LoadModel('Models/tile1_m1.model')
Gear.AddStaticInstance(m151ID.model, m151ID.transformID)
table.insert(props,m151ID)
m151ID = nil

m252ID = {}
m252ID.transformID = Transform.Bind()
Transform.SetPosition(m252ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m252ID.transformID, 1, 1, 1)
Transform.SetRotation(m252ID.transformID, {x=0, y=0, z=0})
m252ID.model = Assets.LoadModel('Models/tile1_m2.model')
Gear.AddStaticInstance(m252ID.model, m252ID.transformID)
table.insert(props,m252ID)
m252ID = nil

m353ID = {}
m353ID.transformID = Transform.Bind()
Transform.SetPosition(m353ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m353ID.transformID, 1, 1, 1)
Transform.SetRotation(m353ID.transformID, {x=0, y=0, z=0})
m353ID.model = Assets.LoadModel('Models/tile1_m3.model')
Gear.AddStaticInstance(m353ID.model, m353ID.transformID)
table.insert(props,m353ID)
m353ID = nil

m454ID = {}
m454ID.transformID = Transform.Bind()
Transform.SetPosition(m454ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m454ID.transformID, 1, 1, 1)
Transform.SetRotation(m454ID.transformID, {x=0, y=0, z=0})
m454ID.model = Assets.LoadModel('Models/tile1_m4.model')
Gear.AddStaticInstance(m454ID.model, m454ID.transformID)
table.insert(props,m454ID)
m454ID = nil

m555ID = {}
m555ID.transformID = Transform.Bind()
Transform.SetPosition(m555ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m555ID.transformID, 1, 1, 1)
Transform.SetRotation(m555ID.transformID, {x=0, y=0, z=0})
m555ID.model = Assets.LoadModel('Models/tile1_m5.model')
Gear.AddStaticInstance(m555ID.model, m555ID.transformID)
table.insert(props,m555ID)
m555ID = nil

m656ID = {}
m656ID.transformID = Transform.Bind()
Transform.SetPosition(m656ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m656ID.transformID, 1, 1, 1)
Transform.SetRotation(m656ID.transformID, {x=0, y=0, z=0})
m656ID.model = Assets.LoadModel('Models/tile1_m6.model')
Gear.AddStaticInstance(m656ID.model, m656ID.transformID)
table.insert(props,m656ID)
m656ID = nil

m757ID = {}
m757ID.transformID = Transform.Bind()
Transform.SetPosition(m757ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m757ID.transformID, 1, 1, 1)
Transform.SetRotation(m757ID.transformID, {x=0, y=0, z=0})
m757ID.model = Assets.LoadModel('Models/tile1_m7.model')
Gear.AddStaticInstance(m757ID.model, m757ID.transformID)
table.insert(props,m757ID)
m757ID = nil

m858ID = {}
m858ID.transformID = Transform.Bind()
Transform.SetPosition(m858ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m858ID.transformID, 1, 1, 1)
Transform.SetRotation(m858ID.transformID, {x=0, y=0, z=0})
m858ID.model = Assets.LoadModel('Models/tile1_m8.model')
Gear.AddStaticInstance(m858ID.model, m858ID.transformID)
table.insert(props,m858ID)
m858ID = nil

s159ID = {}
s159ID.transformID = Transform.Bind()
Transform.SetPosition(s159ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s159ID.transformID, 1, 1, 1)
Transform.SetRotation(s159ID.transformID, {x=0, y=0, z=0})
s159ID.model = Assets.LoadModel('Models/tile1_s1.model')
Gear.AddStaticInstance(s159ID.model, s159ID.transformID)
table.insert(props,s159ID)
s159ID = nil

s260ID = {}
s260ID.transformID = Transform.Bind()
Transform.SetPosition(s260ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s260ID.transformID, 1, 1, 1)
Transform.SetRotation(s260ID.transformID, {x=0, y=0, z=0})
s260ID.model = Assets.LoadModel('Models/tile1_s2.model')
Gear.AddStaticInstance(s260ID.model, s260ID.transformID)
table.insert(props,s260ID)
s260ID = nil

s361ID = {}
s361ID.transformID = Transform.Bind()
Transform.SetPosition(s361ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s361ID.transformID, 1, 1, 1)
Transform.SetRotation(s361ID.transformID, {x=0, y=0, z=0})
s361ID.model = Assets.LoadModel('Models/tile1_s3.model')
Gear.AddStaticInstance(s361ID.model, s361ID.transformID)
table.insert(props,s361ID)
s361ID = nil

s462ID = {}
s462ID.transformID = Transform.Bind()
Transform.SetPosition(s462ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s462ID.transformID, 1, 1, 1)
Transform.SetRotation(s462ID.transformID, {x=0, y=0, z=0})
s462ID.model = Assets.LoadModel('Models/tile1_s4.model')
Gear.AddStaticInstance(s462ID.model, s462ID.transformID)
table.insert(props,s462ID)
s462ID = nil

s563ID = {}
s563ID.transformID = Transform.Bind()
Transform.SetPosition(s563ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s563ID.transformID, 1, 1, 1)
Transform.SetRotation(s563ID.transformID, {x=0, y=0, z=0})
s563ID.model = Assets.LoadModel('Models/tile1_s5.model')
Gear.AddStaticInstance(s563ID.model, s563ID.transformID)
table.insert(props,s563ID)
s563ID = nil

s664ID = {}
s664ID.transformID = Transform.Bind()
Transform.SetPosition(s664ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s664ID.transformID, 1, 1, 1)
Transform.SetRotation(s664ID.transformID, {x=0, y=0, z=0})
s664ID.model = Assets.LoadModel('Models/tile1_s6.model')
Gear.AddStaticInstance(s664ID.model, s664ID.transformID)
table.insert(props,s664ID)
s664ID = nil

s765ID = {}
s765ID.transformID = Transform.Bind()
Transform.SetPosition(s765ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s765ID.transformID, 1, 1, 1)
Transform.SetRotation(s765ID.transformID, {x=0, y=0, z=0})
s765ID.model = Assets.LoadModel('Models/tile1_s7.model')
Gear.AddStaticInstance(s765ID.model, s765ID.transformID)
table.insert(props,s765ID)
s765ID = nil

ObbRot80ID = {}
ObbRot80ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot80ID.transformID, {x=4.63655, y=11, z=148.253})
Transform.SetScaleNonUniform(ObbRot80ID.transformID, 1, 8, 5.17633)
Transform.SetRotation(ObbRot80ID.transformID, {x=0, y=0.278736, z=0})
ObbRot80ID.collider = OBBCollider.Create(ObbRot80ID.transformID)
ObbRot80ID.collider:SetOffset(0,0,0)
ObbRot80ID.collider:SetZAxis(0.275141,0,0.961404)
ObbRot80ID.collider:SetHalfLengths(0.5,4,2.58817)
CollisionHandler.AddOBB(ObbRot80ID.collider, 3)
table.insert(props,ObbRot80ID)
ObbRot80ID = nil

ObbRot282ID = {}
ObbRot282ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot282ID.transformID, {x=126.338, y=33.4473, z=228.83})
Transform.SetScaleNonUniform(ObbRot282ID.transformID, 1, 8.14921, 8.69229)
Transform.SetRotation(ObbRot282ID.transformID, {x=0, y=-0.042339, z=0})
ObbRot282ID.collider = OBBCollider.Create(ObbRot282ID.transformID)
ObbRot282ID.collider:SetOffset(0,0,0)
ObbRot282ID.collider:SetZAxis(-0.0423263,0,0.999104)
ObbRot282ID.collider:SetHalfLengths(0.5,4.07461,4.34615)
CollisionHandler.AddOBB(ObbRot282ID.collider, 3)
table.insert(props,ObbRot282ID)
ObbRot282ID = nil

ObbRot383ID = {}
ObbRot383ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot383ID.transformID, {x=133.49, y=36.6591, z=224.246})
Transform.SetScaleNonUniform(ObbRot383ID.transformID, 15.3474, 11.4235, 1)
Transform.SetRotation(ObbRot383ID.transformID, {x=0, y=0.0933742, z=0})
ObbRot383ID.collider = OBBCollider.Create(ObbRot383ID.transformID)
ObbRot383ID.collider:SetOffset(0,0,0)
ObbRot383ID.collider:SetZAxis(0.0932386,0,0.995644)
ObbRot383ID.collider:SetHalfLengths(7.67372,5.71174,0.5)
CollisionHandler.AddOBB(ObbRot383ID.collider, 3)
table.insert(props,ObbRot383ID)
ObbRot383ID = nil

ObbRot484ID = {}
ObbRot484ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot484ID.transformID, {x=137.673, y=36.5255, z=222.988})
Transform.SetScaleNonUniform(ObbRot484ID.transformID, 14.6798, 11.1924, 1)
Transform.SetRotation(ObbRot484ID.transformID, {x=0, y=0.354433, z=0})
ObbRot484ID.collider = OBBCollider.Create(ObbRot484ID.transformID)
ObbRot484ID.collider:SetOffset(0,0,0)
ObbRot484ID.collider:SetZAxis(0.347059,0,0.937843)
ObbRot484ID.collider:SetHalfLengths(7.33991,5.5962,0.5)
CollisionHandler.AddOBB(ObbRot484ID.collider, 3)
table.insert(props,ObbRot484ID)
ObbRot484ID = nil

Obb38100ID = {}
Obb38100ID.transformID = Transform.Bind()
Transform.SetPosition(Obb38100ID.transformID, {x=-1.07374e+08, y=-1.07374e+08, z=-1.07374e+08})
Transform.SetScaleNonUniform(Obb38100ID.transformID, 1, 1, 1)
Transform.SetRotation(Obb38100ID.transformID, {x=0, y=0, z=0})
Obb38100ID.collider = OBBCollider.Create(Obb38100ID.transformID)
Obb38100ID.collider:SetOffset(0,0,0)
Obb38100ID.collider:SetZAxis(-0.582718,0,0.812674)
Obb38100ID.collider:SetHalfLengths(0.5,0.5,0.5)
CollisionHandler.AddOBB(Obb38100ID.collider, 3)
table.insert(colliders,Obb38100ID)
Obb38100ID = nil

Obb46101ID = {}
Obb46101ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46101ID.transformID, {x=27.0532, y=10.4212, z=133.303})
Transform.SetScaleNonUniform(Obb46101ID.transformID, 1.27297, 5.5868, 13.9593)
Transform.SetRotation(Obb46101ID.transformID, {x=0, y=0, z=0})
Obb46101ID.collider = OBBCollider.Create(Obb46101ID.transformID)
Obb46101ID.collider:SetOffset(0,0,0)
Obb46101ID.collider:SetZAxis(-0.582718,0,0.812674)
Obb46101ID.collider:SetHalfLengths(0.636485,2.7934,6.97963)
CollisionHandler.AddOBB(Obb46101ID.collider, 3)
table.insert(colliders,Obb46101ID)
Obb46101ID = nil

Obb461102ID = {}
Obb461102ID.transformID = Transform.Bind()
Transform.SetPosition(Obb461102ID.transformID, {x=33.2583, y=10.5917, z=127.573})
Transform.SetScaleNonUniform(Obb461102ID.transformID, 6.95827, 5.75073, 1)
Transform.SetRotation(Obb461102ID.transformID, {x=0, y=0, z=0})
Obb461102ID.collider = OBBCollider.Create(Obb461102ID.transformID)
Obb461102ID.collider:SetOffset(0,0,0)
Obb461102ID.collider:SetZAxis(0.165133,0,0.986271)
Obb461102ID.collider:SetHalfLengths(3.47914,2.87537,0.5)
CollisionHandler.AddOBB(Obb461102ID.collider, 3)
table.insert(colliders,Obb461102ID)
Obb461102ID = nil

Obb462103ID = {}
Obb462103ID.transformID = Transform.Bind()
Transform.SetPosition(Obb462103ID.transformID, {x=4.88027, y=9.57633, z=141.999})
Transform.SetScaleNonUniform(Obb462103ID.transformID, 1, 6.03523, 11.042)
Transform.SetRotation(Obb462103ID.transformID, {x=0, y=0, z=0})
Obb462103ID.collider = OBBCollider.Create(Obb462103ID.transformID)
Obb462103ID.collider:SetOffset(0,0,0)
Obb462103ID.collider:SetZAxis(0.226461,0,-0.97402)
Obb462103ID.collider:SetHalfLengths(0.5,3.01761,5.52102)
CollisionHandler.AddOBB(Obb462103ID.collider, 3)
table.insert(colliders,Obb462103ID)
Obb462103ID = nil

Obb463104ID = {}
Obb463104ID.transformID = Transform.Bind()
Transform.SetPosition(Obb463104ID.transformID, {x=32.5441, y=8.30676, z=171.11})
Transform.SetScaleNonUniform(Obb463104ID.transformID, 6.74602, 7.71894, 0.80043)
Transform.SetRotation(Obb463104ID.transformID, {x=0, y=0, z=0})
Obb463104ID.collider = OBBCollider.Create(Obb463104ID.transformID)
Obb463104ID.collider:SetOffset(0,0,0)
Obb463104ID.collider:SetZAxis(0.853695,0,-0.520774)
Obb463104ID.collider:SetHalfLengths(3.37301,3.85947,0.400215)
CollisionHandler.AddOBB(Obb463104ID.collider, 3)
table.insert(colliders,Obb463104ID)
Obb463104ID = nil

Obb464105ID = {}
Obb464105ID.transformID = Transform.Bind()
Transform.SetPosition(Obb464105ID.transformID, {x=23.756, y=7.84791, z=172.315})
Transform.SetScaleNonUniform(Obb464105ID.transformID, 4.31209, 6.35992, 1.41016)
Transform.SetRotation(Obb464105ID.transformID, {x=0, y=0, z=0})
Obb464105ID.collider = OBBCollider.Create(Obb464105ID.transformID)
Obb464105ID.collider:SetOffset(0,0,0)
Obb464105ID.collider:SetZAxis(-0.656941,0,-0.753942)
Obb464105ID.collider:SetHalfLengths(2.15604,3.17996,0.705078)
CollisionHandler.AddOBB(Obb464105ID.collider, 3)
table.insert(colliders,Obb464105ID)
Obb464105ID = nil

Obb465106ID = {}
Obb465106ID.transformID = Transform.Bind()
Transform.SetPosition(Obb465106ID.transformID, {x=90.287, y=24.9402, z=213.474})
Transform.SetScaleNonUniform(Obb465106ID.transformID, 9.93155, 7.44146, 1.21475)
Transform.SetRotation(Obb465106ID.transformID, {x=0, y=0, z=0})
Obb465106ID.collider = OBBCollider.Create(Obb465106ID.transformID)
Obb465106ID.collider:SetOffset(0,0,0)
Obb465106ID.collider:SetZAxis(-0.908103,0,0.418747)
Obb465106ID.collider:SetHalfLengths(4.96577,3.72073,0.607376)
CollisionHandler.AddOBB(Obb465106ID.collider, 3)
table.insert(colliders,Obb465106ID)
Obb465106ID = nil

Obb466107ID = {}
Obb466107ID.transformID = Transform.Bind()
Transform.SetPosition(Obb466107ID.transformID, {x=100.212, y=28.1139, z=220.179})
Transform.SetScaleNonUniform(Obb466107ID.transformID, 17.0373, 10.9946, 1)
Transform.SetRotation(Obb466107ID.transformID, {x=0, y=0, z=0})
Obb466107ID.collider = OBBCollider.Create(Obb466107ID.transformID)
Obb466107ID.collider:SetOffset(0,0,0)
Obb466107ID.collider:SetZAxis(-0.313659,0,0.949536)
Obb466107ID.collider:SetHalfLengths(8.51867,5.49728,0.5)
CollisionHandler.AddOBB(Obb466107ID.collider, 3)
table.insert(colliders,Obb466107ID)
Obb466107ID = nil

Obb467108ID = {}
Obb467108ID.transformID = Transform.Bind()
Transform.SetPosition(Obb467108ID.transformID, {x=110.86, y=31.5587, z=222.132})
Transform.SetScaleNonUniform(Obb467108ID.transformID, 6.99899, 8.05659, 1)
Transform.SetRotation(Obb467108ID.transformID, {x=0, y=0, z=0})
Obb467108ID.collider = OBBCollider.Create(Obb467108ID.transformID)
Obb467108ID.collider:SetOffset(0,0,0)
Obb467108ID.collider:SetZAxis(0.363101,0,0.93175)
Obb467108ID.collider:SetHalfLengths(3.49949,4.02829,0.5)
CollisionHandler.AddOBB(Obb467108ID.collider, 3)
table.insert(colliders,Obb467108ID)
Obb467108ID = nil

Obb468109ID = {}
Obb468109ID.transformID = Transform.Bind()
Transform.SetPosition(Obb468109ID.transformID, {x=114.768, y=36.7858, z=217.938})
Transform.SetScaleNonUniform(Obb468109ID.transformID, 6.71252, 12.7726, 1)
Transform.SetRotation(Obb468109ID.transformID, {x=0, y=0, z=0})
Obb468109ID.collider = OBBCollider.Create(Obb468109ID.transformID)
Obb468109ID.collider:SetOffset(0,0,0)
Obb468109ID.collider:SetZAxis(0.919051,0,0.394139)
Obb468109ID.collider:SetHalfLengths(3.35626,6.38632,0.5)
CollisionHandler.AddOBB(Obb468109ID.collider, 3)
table.insert(colliders,Obb468109ID)
Obb468109ID = nil

Obb469110ID = {}
Obb469110ID.transformID = Transform.Bind()
Transform.SetPosition(Obb469110ID.transformID, {x=113.785, y=38.8959, z=210.773})
Transform.SetScaleNonUniform(Obb469110ID.transformID, 9.87627, 10.5123, 1)
Transform.SetRotation(Obb469110ID.transformID, {x=0, y=0, z=0})
Obb469110ID.collider = OBBCollider.Create(Obb469110ID.transformID)
Obb469110ID.collider:SetOffset(0,0,0)
Obb469110ID.collider:SetZAxis(0.909768,0,-0.415118)
Obb469110ID.collider:SetHalfLengths(4.93813,5.25616,0.5)
CollisionHandler.AddOBB(Obb469110ID.collider, 3)
table.insert(colliders,Obb469110ID)
Obb469110ID = nil

ObbRot21111ID = {}
ObbRot21111ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot21111ID.transformID, {x=106.309, y=32.7244, z=203.047})
Transform.SetScaleNonUniform(ObbRot21111ID.transformID, 1, 11.8559, 14.346)
Transform.SetRotation(ObbRot21111ID.transformID, {x=0, y=0.922624, z=0})
ObbRot21111ID.collider = OBBCollider.Create(ObbRot21111ID.transformID)
ObbRot21111ID.collider:SetOffset(0,0,0)
ObbRot21111ID.collider:SetZAxis(0.797189,0,0.60373)
ObbRot21111ID.collider:SetHalfLengths(0.5,5.92793,7.17301)
CollisionHandler.AddOBB(ObbRot21111ID.collider, 3)
table.insert(props,ObbRot21111ID)
ObbRot21111ID = nil

ObbRot22112ID = {}
ObbRot22112ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot22112ID.transformID, {x=97.0691, y=30.794, z=200.862})
Transform.SetScaleNonUniform(ObbRot22112ID.transformID, 1.18787, 14.0917, 9.15988)
Transform.SetRotation(ObbRot22112ID.transformID, {x=0, y=-1.10728, z=0})
ObbRot22112ID.collider = OBBCollider.Create(ObbRot22112ID.transformID)
ObbRot22112ID.collider:SetOffset(0,0,0)
ObbRot22112ID.collider:SetZAxis(-0.894485,0,0.447098)
ObbRot22112ID.collider:SetHalfLengths(0.593933,7.04586,4.57994)
CollisionHandler.AddOBB(ObbRot22112ID.collider, 3)
table.insert(props,ObbRot22112ID)
ObbRot22112ID = nil

Obb4610113ID = {}
Obb4610113ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4610113ID.transformID, {x=90.5686, y=26.7281, z=205.889})
Transform.SetScaleNonUniform(Obb4610113ID.transformID, 1, 12.2942, 8.5386)
Transform.SetRotation(Obb4610113ID.transformID, {x=0, y=0, z=0})
Obb4610113ID.collider = OBBCollider.Create(Obb4610113ID.transformID)
Obb4610113ID.collider:SetOffset(0,0,0)
Obb4610113ID.collider:SetZAxis(-0.582718,0,0.812674)
Obb4610113ID.collider:SetHalfLengths(0.5,6.14712,4.2693)
CollisionHandler.AddOBB(Obb4610113ID.collider, 3)
table.insert(colliders,Obb4610113ID)
Obb4610113ID = nil

ObbRot23114ID = {}
ObbRot23114ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot23114ID.transformID, {x=24.1105, y=7.51023, z=191.988})
Transform.SetScaleNonUniform(ObbRot23114ID.transformID, 1, 9.67671, 16.8171)
Transform.SetRotation(ObbRot23114ID.transformID, {x=0, y=0.568292, z=0})
ObbRot23114ID.collider = OBBCollider.Create(ObbRot23114ID.transformID)
ObbRot23114ID.collider:SetOffset(0,0,0)
ObbRot23114ID.collider:SetZAxis(0.538193,0,0.842822)
ObbRot23114ID.collider:SetHalfLengths(0.5,4.83835,8.40855)
CollisionHandler.AddOBB(ObbRot23114ID.collider, 3)
table.insert(props,ObbRot23114ID)
ObbRot23114ID = nil

ObbRot24115ID = {}
ObbRot24115ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot24115ID.transformID, {x=32.6054, y=9.09375, z=205.458})
Transform.SetScaleNonUniform(ObbRot24115ID.transformID, 1, 8, 8.13965)
Transform.SetRotation(ObbRot24115ID.transformID, {x=0, y=0.512233, z=0})
ObbRot24115ID.collider = OBBCollider.Create(ObbRot24115ID.transformID)
ObbRot24115ID.collider:SetOffset(0,0,0)
ObbRot24115ID.collider:SetZAxis(0.490125,0,0.871652)
ObbRot24115ID.collider:SetHalfLengths(0.5,4,4.06982)
CollisionHandler.AddOBB(ObbRot24115ID.collider, 3)
table.insert(props,ObbRot24115ID)
ObbRot24115ID = nil

ObbRot25116ID = {}
ObbRot25116ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot25116ID.transformID, {x=43.4584, y=10.573, z=212.737})
Transform.SetScaleNonUniform(ObbRot25116ID.transformID, 1, 9.48976, 19.1709)
Transform.SetRotation(ObbRot25116ID.transformID, {x=0, y=1.17312, z=0})
ObbRot25116ID.collider = OBBCollider.Create(ObbRot25116ID.transformID)
ObbRot25116ID.collider:SetOffset(0,0,0)
ObbRot25116ID.collider:SetZAxis(0.921964,0,0.387277)
ObbRot25116ID.collider:SetHalfLengths(0.5,4.74488,9.58544)
CollisionHandler.AddOBB(ObbRot25116ID.collider, 3)
table.insert(props,ObbRot25116ID)
ObbRot25116ID = nil

ObbRot26117ID = {}
ObbRot26117ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot26117ID.transformID, {x=60.2626, y=12.9969, z=216.789})
Transform.SetScaleNonUniform(ObbRot26117ID.transformID, 1.34885, 11.3449, 15.8494)
Transform.SetRotation(ObbRot26117ID.transformID, {x=0, y=-1.58265, z=0})
ObbRot26117ID.collider = OBBCollider.Create(ObbRot26117ID.transformID)
ObbRot26117ID.collider:SetOffset(0,0,0)
ObbRot26117ID.collider:SetZAxis(-0.99993,0,-0.0118487)
ObbRot26117ID.collider:SetHalfLengths(0.674427,5.67245,7.92471)
CollisionHandler.AddOBB(ObbRot26117ID.collider, 3)
table.insert(props,ObbRot26117ID)
ObbRot26117ID = nil

ObbRot27118ID = {}
ObbRot27118ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot27118ID.transformID, {x=83.6042, y=25.556, z=224.591})
Transform.SetScaleNonUniform(ObbRot27118ID.transformID, 1, 29.2246, 35.6535)
Transform.SetRotation(ObbRot27118ID.transformID, {x=-0.0113167, y=1.11617, z=0.0421356})
ObbRot27118ID.collider = OBBCollider.Create(ObbRot27118ID.transformID)
ObbRot27118ID.collider:SetOffset(0,0,0)
ObbRot27118ID.collider:SetZAxis(0.897094,0.0491485,0.439098)
ObbRot27118ID.collider:SetHalfLengths(0.5,14.6123,17.8267)
CollisionHandler.AddOBB(ObbRot27118ID.collider, 3)
table.insert(props,ObbRot27118ID)
ObbRot27118ID = nil

ObbRot28119ID = {}
ObbRot28119ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot28119ID.transformID, {x=112.962, y=31.1871, z=232.315})
Transform.SetScaleNonUniform(ObbRot28119ID.transformID, 1, 22.7609, 28.455)
Transform.SetRotation(ObbRot28119ID.transformID, {x=0, y=-1.56484, z=0})
ObbRot28119ID.collider = OBBCollider.Create(ObbRot28119ID.transformID)
ObbRot28119ID.collider:SetOffset(0,0,0)
ObbRot28119ID.collider:SetZAxis(-0.999982,0,0.00595741)
ObbRot28119ID.collider:SetHalfLengths(0.5,11.3804,14.2275)
CollisionHandler.AddOBB(ObbRot28119ID.collider, 3)
table.insert(props,ObbRot28119ID)
ObbRot28119ID = nil

ObbRot29120ID = {}
ObbRot29120ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot29120ID.transformID, {x=17.5275, y=6.24736, z=200.669})
Transform.SetScaleNonUniform(ObbRot29120ID.transformID, 1, 12.4009, 21.0568)
Transform.SetRotation(ObbRot29120ID.transformID, {x=0, y=1.81414, z=0})
ObbRot29120ID.collider = OBBCollider.Create(ObbRot29120ID.transformID)
ObbRot29120ID.collider:SetOffset(0,0,0)
ObbRot29120ID.collider:SetZAxis(0.970537,0,-0.240954)
ObbRot29120ID.collider:SetHalfLengths(0.5,6.20047,10.5284)
CollisionHandler.AddOBB(ObbRot29120ID.collider, 3)
table.insert(props,ObbRot29120ID)
ObbRot29120ID = nil

OakTree2121ID = {}
OakTree2121ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree2121ID.transformID, {x=38.2345, y=7.625, z=182.426})
Transform.SetScaleNonUniform(OakTree2121ID.transformID, 1, 1.28247, 1)
Transform.SetRotation(OakTree2121ID.transformID, {x=0, y=1.53295, z=0})
OakTree2121ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree2121ID.model, OakTree2121ID.transformID)
table.insert(props,OakTree2121ID)
OakTree2121ID = nil

OakTree3122ID = {}
OakTree3122ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree3122ID.transformID, {x=5.85726, y=4.08203, z=182.811})
Transform.SetScaleNonUniform(OakTree3122ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree3122ID.transformID, {x=0, y=0.0549624, z=0})
OakTree3122ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree3122ID.model, OakTree3122ID.transformID)
table.insert(props,OakTree3122ID)
OakTree3122ID = nil

OakTree4123ID = {}
OakTree4123ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree4123ID.transformID, {x=14.3672, y=3.31691, z=237.75})
Transform.SetScaleNonUniform(OakTree4123ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree4123ID.transformID, {x=0, y=-2.41298, z=0})
OakTree4123ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree4123ID.model, OakTree4123ID.transformID)
table.insert(props,OakTree4123ID)
OakTree4123ID = nil

OakTree5124ID = {}
OakTree5124ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree5124ID.transformID, {x=77.25, y=-0.0905709, z=262.5})
Transform.SetScaleNonUniform(OakTree5124ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree5124ID.transformID, {x=0, y=-3.40315, z=0})
OakTree5124ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree5124ID.model, OakTree5124ID.transformID)
table.insert(props,OakTree5124ID)
OakTree5124ID = nil

OakTree6125ID = {}
OakTree6125ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree6125ID.transformID, {x=68.6875, y=-4.23212, z=315.25})
Transform.SetScaleNonUniform(OakTree6125ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree6125ID.transformID, {x=0, y=-4.4111, z=0})
OakTree6125ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree6125ID.model, OakTree6125ID.transformID)
table.insert(props,OakTree6125ID)
OakTree6125ID = nil

OakTree7126ID = {}
OakTree7126ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree7126ID.transformID, {x=113.375, y=28.1496, z=240.5})
Transform.SetScaleNonUniform(OakTree7126ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree7126ID.transformID, {x=0, y=0.131111, z=0})
OakTree7126ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree7126ID.model, OakTree7126ID.transformID)
table.insert(props,OakTree7126ID)
OakTree7126ID = nil

OakTree8127ID = {}
OakTree8127ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree8127ID.transformID, {x=167.375, y=33.9164, z=262.75})
Transform.SetScaleNonUniform(OakTree8127ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree8127ID.transformID, {x=0, y=0.131111, z=0})
OakTree8127ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree8127ID.model, OakTree8127ID.transformID)
table.insert(props,OakTree8127ID)
OakTree8127ID = nil

OakTree9128ID = {}
OakTree9128ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree9128ID.transformID, {x=171, y=27.9898, z=315})
Transform.SetScaleNonUniform(OakTree9128ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree9128ID.transformID, {x=0, y=0.131111, z=0})
OakTree9128ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree9128ID.model, OakTree9128ID.transformID)
table.insert(props,OakTree9128ID)
OakTree9128ID = nil

PineTree1129ID = {}
PineTree1129ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree1129ID.transformID, {x=124.375, y=29.1802, z=260.75})
Transform.SetScaleNonUniform(PineTree1129ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree1129ID.transformID, {x=0, y=0, z=0})
PineTree1129ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree1129ID.model, PineTree1129ID.transformID)
PineTree1129ID.collider = OBBCollider.Create(PineTree1129ID.transformID)
PineTree1129ID.collider:SetOffset(0,3.7,0)
PineTree1129ID.collider:SetZAxis(0,0,1)
PineTree1129ID.collider:SetHalfLengths(2.8,3.7,2.8)
CollisionHandler.AddOBB(PineTree1129ID.collider, 3)
table.insert(props,PineTree1129ID)
PineTree1129ID = nil

PineTree11130ID = {}
PineTree11130ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree11130ID.transformID, {x=105.75, y=23.2717, z=262.75})
Transform.SetScaleNonUniform(PineTree11130ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree11130ID.transformID, {x=0, y=0, z=0})
PineTree11130ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree11130ID.model, PineTree11130ID.transformID)
PineTree11130ID.collider = OBBCollider.Create(PineTree11130ID.transformID)
PineTree11130ID.collider:SetOffset(0,3.7,0)
PineTree11130ID.collider:SetZAxis(0,0,1)
PineTree11130ID.collider:SetHalfLengths(2.8,3.7,2.8)
CollisionHandler.AddOBB(PineTree11130ID.collider, 3)
table.insert(props,PineTree11130ID)
PineTree11130ID = nil

PineTree2131ID = {}
PineTree2131ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree2131ID.transformID, {x=74.1133, y=15.4383, z=219.791})
Transform.SetScaleNonUniform(PineTree2131ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree2131ID.transformID, {x=0.20851, y=0, z=0.297569})
PineTree2131ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree2131ID.model, PineTree2131ID.transformID)
PineTree2131ID.collider = OBBCollider.Create(PineTree2131ID.transformID)
PineTree2131ID.collider:SetOffset(0,5.5,0)
PineTree2131ID.collider:SetZAxis(0.0606925,-0.197905,0.97834)
PineTree2131ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree2131ID.collider, 3)
table.insert(props,PineTree2131ID)
PineTree2131ID = nil

PineTree21132ID = {}
PineTree21132ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree21132ID.transformID, {x=66.6875, y=-2.70712, z=237.75})
Transform.SetScaleNonUniform(PineTree21132ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree21132ID.transformID, {x=0, y=3.31824, z=0})
PineTree21132ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree21132ID.model, PineTree21132ID.transformID)
PineTree21132ID.collider = OBBCollider.Create(PineTree21132ID.transformID)
PineTree21132ID.collider:SetOffset(0,5.5,0)
PineTree21132ID.collider:SetZAxis(-0.175729,0,-0.984439)
PineTree21132ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree21132ID.collider, 3)
table.insert(props,PineTree21132ID)
PineTree21132ID = nil

PineTree22133ID = {}
PineTree22133ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree22133ID.transformID, {x=198.875, y=31.2639, z=310.25})
Transform.SetScaleNonUniform(PineTree22133ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree22133ID.transformID, {x=0, y=0, z=0})
PineTree22133ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree22133ID.model, PineTree22133ID.transformID)
PineTree22133ID.collider = OBBCollider.Create(PineTree22133ID.transformID)
PineTree22133ID.collider:SetOffset(0,5.5,0)
PineTree22133ID.collider:SetZAxis(0,0,1)
PineTree22133ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree22133ID.collider, 3)
table.insert(props,PineTree22133ID)
PineTree22133ID = nil

PineTree23134ID = {}
PineTree23134ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree23134ID.transformID, {x=193.75, y=68.5784, z=258.25})
Transform.SetScaleNonUniform(PineTree23134ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree23134ID.transformID, {x=0, y=0, z=0})
PineTree23134ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree23134ID.model, PineTree23134ID.transformID)
PineTree23134ID.collider = OBBCollider.Create(PineTree23134ID.transformID)
PineTree23134ID.collider:SetOffset(0,5.5,0)
PineTree23134ID.collider:SetZAxis(0,0,1)
PineTree23134ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree23134ID.collider, 3)
table.insert(props,PineTree23134ID)
PineTree23134ID = nil

PineTree24135ID = {}
PineTree24135ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree24135ID.transformID, {x=152.125, y=36.3657, z=239.5})
Transform.SetScaleNonUniform(PineTree24135ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree24135ID.transformID, {x=0, y=0, z=0})
PineTree24135ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree24135ID.model, PineTree24135ID.transformID)
PineTree24135ID.collider = OBBCollider.Create(PineTree24135ID.transformID)
PineTree24135ID.collider:SetOffset(0,5.5,0)
PineTree24135ID.collider:SetZAxis(0,0,1)
PineTree24135ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree24135ID.collider, 3)
table.insert(props,PineTree24135ID)
PineTree24135ID = nil

PineTree25136ID = {}
PineTree25136ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree25136ID.transformID, {x=182.75, y=58.6135, z=254.816})
Transform.SetScaleNonUniform(PineTree25136ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree25136ID.transformID, {x=0, y=0, z=0})
PineTree25136ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree25136ID.model, PineTree25136ID.transformID)
PineTree25136ID.collider = OBBCollider.Create(PineTree25136ID.transformID)
PineTree25136ID.collider:SetOffset(0,5.5,0)
PineTree25136ID.collider:SetZAxis(0,0,1)
PineTree25136ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree25136ID.collider, 3)
table.insert(props,PineTree25136ID)
PineTree25136ID = nil

PineTree26137ID = {}
PineTree26137ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree26137ID.transformID, {x=96.8125, y=21.2002, z=238.125})
Transform.SetScaleNonUniform(PineTree26137ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree26137ID.transformID, {x=0, y=0, z=0})
PineTree26137ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree26137ID.model, PineTree26137ID.transformID)
PineTree26137ID.collider = OBBCollider.Create(PineTree26137ID.transformID)
PineTree26137ID.collider:SetOffset(0,5.5,0)
PineTree26137ID.collider:SetZAxis(0,0,1)
PineTree26137ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree26137ID.collider, 3)
table.insert(props,PineTree26137ID)
PineTree26137ID = nil

PineTree27138ID = {}
PineTree27138ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree27138ID.transformID, {x=-7.45313, y=2.45274, z=223.25})
Transform.SetScaleNonUniform(PineTree27138ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree27138ID.transformID, {x=0, y=-2.21471, z=0})
PineTree27138ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree27138ID.model, PineTree27138ID.transformID)
PineTree27138ID.collider = OBBCollider.Create(PineTree27138ID.transformID)
PineTree27138ID.collider:SetOffset(0,5.5,0)
PineTree27138ID.collider:SetZAxis(-0.799752,0,-0.60033)
PineTree27138ID.collider:SetHalfLengths(2,5,2)
CollisionHandler.AddOBB(PineTree27138ID.collider, 3)
table.insert(props,PineTree27138ID)
PineTree27138ID = nil

Bridge139ID = {}
Bridge139ID.transformID = Transform.Bind()
Transform.SetPosition(Bridge139ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Bridge139ID.transformID, 1, 1, 1)
Transform.SetRotation(Bridge139ID.transformID, {x=0, y=0, z=0})
Bridge139ID.model = Assets.LoadModel('Models/bridge.model')
Gear.AddStaticInstance(Bridge139ID.model, Bridge139ID.transformID)
table.insert(props,Bridge139ID)
Bridge139ID = nil

Obb46101140ID = {}
Obb46101140ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46101140ID.transformID, {x=28.5373, y=9.88143, z=197.783})
Transform.SetScaleNonUniform(Obb46101140ID.transformID, 4.46827, 8.05776, 0.709167)
Transform.SetRotation(Obb46101140ID.transformID, {x=0, y=0, z=0})
Obb46101140ID.collider = OBBCollider.Create(Obb46101140ID.transformID)
Obb46101140ID.collider:SetOffset(0,0,0)
Obb46101140ID.collider:SetZAxis(0.364207,0,0.931318)
Obb46101140ID.collider:SetHalfLengths(2.23414,4.02888,0.354584)
CollisionHandler.AddOBB(Obb46101140ID.collider, 3)
table.insert(colliders,Obb46101140ID)
Obb46101140ID = nil

Obb46102141ID = {}
Obb46102141ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46102141ID.transformID, {x=35.5543, y=10.7953, z=194.367})
Transform.SetScaleNonUniform(Obb46102141ID.transformID, 2.89206, 7.78691, 1)
Transform.SetRotation(Obb46102141ID.transformID, {x=0, y=0, z=0})
Obb46102141ID.collider = OBBCollider.Create(Obb46102141ID.transformID)
Obb46102141ID.collider:SetOffset(0,0,0)
Obb46102141ID.collider:SetZAxis(-0.707107,0,-0.707107)
Obb46102141ID.collider:SetHalfLengths(1.44603,3.89346,0.5)
CollisionHandler.AddOBB(Obb46102141ID.collider, 3)
table.insert(colliders,Obb46102141ID)
Obb46102141ID = nil

ObbRot7142ID = {}
ObbRot7142ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot7142ID.transformID, {x=43.1355, y=11.2446, z=199.977})
Transform.SetScaleNonUniform(ObbRot7142ID.transformID, 1, 11.958, 12.5991)
Transform.SetRotation(ObbRot7142ID.transformID, {x=0, y=89.7662, z=0})
ObbRot7142ID.collider = OBBCollider.Create(ObbRot7142ID.transformID)
ObbRot7142ID.collider:SetOffset(0,0,0)
ObbRot7142ID.collider:SetZAxis(0.973475,0,-0.228792)
ObbRot7142ID.collider:SetHalfLengths(0.5,5.97899,6.29956)
CollisionHandler.AddOBB(ObbRot7142ID.collider, 3)
table.insert(props,ObbRot7142ID)
ObbRot7142ID = nil

ObbRot30143ID = {}
ObbRot30143ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot30143ID.transformID, {x=31.1048, y=8.78906, z=200.213})
Transform.SetScaleNonUniform(ObbRot30143ID.transformID, 1.65999, 8, 7.45378)
Transform.SetRotation(ObbRot30143ID.transformID, {x=0, y=0.410471, z=0})
ObbRot30143ID.collider = OBBCollider.Create(ObbRot30143ID.transformID)
ObbRot30143ID.collider:SetOffset(0,0,0)
ObbRot30143ID.collider:SetZAxis(0.399041,0,0.916933)
ObbRot30143ID.collider:SetHalfLengths(0.829996,4,3.72689)
CollisionHandler.AddOBB(ObbRot30143ID.collider, 3)
table.insert(props,ObbRot30143ID)
ObbRot30143ID = nil

ObbRot31144ID = {}
ObbRot31144ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot31144ID.transformID, {x=36.1122, y=8.98438, z=198.162})
Transform.SetScaleNonUniform(ObbRot31144ID.transformID, 1, 8, 7.31935)
Transform.SetRotation(ObbRot31144ID.transformID, {x=0, y=0.380392, z=0})
ObbRot31144ID.collider = OBBCollider.Create(ObbRot31144ID.transformID)
ObbRot31144ID.collider:SetOffset(0,0,0)
ObbRot31144ID.collider:SetZAxis(0.371285,0,0.928519)
ObbRot31144ID.collider:SetHalfLengths(0.5,4,3.65968)
CollisionHandler.AddOBB(ObbRot31144ID.collider, 3)
table.insert(props,ObbRot31144ID)
ObbRot31144ID = nil

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

Obb4550ID = {}
Obb4550ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4550ID.transformID, {x=108, y=40, z=192})
Transform.SetScaleNonUniform(Obb4550ID.transformID, 28.5, 34, 1)
Transform.SetRotation(Obb4550ID.transformID, {x=0, y=0, z=0})
Obb4550ID.collider = OBBCollider.Create(Obb4550ID.transformID)
Obb4550ID.collider:SetOffset(0,0,0)
Obb4550ID.collider:SetZAxis(-0.345483,0,0.938425)
Obb4550ID.collider:SetHalfLengths(14.25,17,0.5)
CollisionHandler.AddOBB(Obb4550ID.collider, 3)
table.insert(colliders,Obb4550ID)
Obb4550ID = nil

t2s166ID = {}
t2s166ID.transformID = Transform.Bind()
Transform.SetPosition(t2s166ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s166ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s166ID.transformID, {x=0, y=0, z=0})
t2s166ID.model = Assets.LoadModel('Models/tile2_s1.model')
Gear.AddStaticInstance(t2s166ID.model, t2s166ID.transformID)
table.insert(props,t2s166ID)
t2s166ID = nil

t2s267ID = {}
t2s267ID.transformID = Transform.Bind()
Transform.SetPosition(t2s267ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s267ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s267ID.transformID, {x=0, y=0, z=0})
t2s267ID.model = Assets.LoadModel('Models/tile2_s2.model')
Gear.AddStaticInstance(t2s267ID.model, t2s267ID.transformID)
table.insert(props,t2s267ID)
t2s267ID = nil

t2s368ID = {}
t2s368ID.transformID = Transform.Bind()
Transform.SetPosition(t2s368ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s368ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s368ID.transformID, {x=0, y=0, z=0})
t2s368ID.model = Assets.LoadModel('Models/tile2_s3.model')
Gear.AddStaticInstance(t2s368ID.model, t2s368ID.transformID)
table.insert(props,t2s368ID)
t2s368ID = nil

t2s469ID = {}
t2s469ID.transformID = Transform.Bind()
Transform.SetPosition(t2s469ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s469ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s469ID.transformID, {x=0, y=0, z=0})
t2s469ID.model = Assets.LoadModel('Models/tile2_s4.model')
Gear.AddStaticInstance(t2s469ID.model, t2s469ID.transformID)
table.insert(props,t2s469ID)
t2s469ID = nil

t2s570ID = {}
t2s570ID.transformID = Transform.Bind()
Transform.SetPosition(t2s570ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s570ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s570ID.transformID, {x=0, y=0, z=0})
t2s570ID.model = Assets.LoadModel('Models/tile2_s5.model')
Gear.AddStaticInstance(t2s570ID.model, t2s570ID.transformID)
table.insert(props,t2s570ID)
t2s570ID = nil

t2s671ID = {}
t2s671ID.transformID = Transform.Bind()
Transform.SetPosition(t2s671ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s671ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s671ID.transformID, {x=0, y=0, z=0})
t2s671ID.model = Assets.LoadModel('Models/tile2_s6.model')
Gear.AddStaticInstance(t2s671ID.model, t2s671ID.transformID)
table.insert(props,t2s671ID)
t2s671ID = nil

t2s772ID = {}
t2s772ID.transformID = Transform.Bind()
Transform.SetPosition(t2s772ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s772ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s772ID.transformID, {x=0, y=0, z=0})
t2s772ID.model = Assets.LoadModel('Models/tile2_s7.model')
Gear.AddStaticInstance(t2s772ID.model, t2s772ID.transformID)
table.insert(props,t2s772ID)
t2s772ID = nil

t2s873ID = {}
t2s873ID.transformID = Transform.Bind()
Transform.SetPosition(t2s873ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s873ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s873ID.transformID, {x=0, y=0, z=0})
t2s873ID.model = Assets.LoadModel('Models/tile2_s8.model')
Gear.AddStaticInstance(t2s873ID.model, t2s873ID.transformID)
table.insert(props,t2s873ID)
t2s873ID = nil

t2s974ID = {}
t2s974ID.transformID = Transform.Bind()
Transform.SetPosition(t2s974ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s974ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s974ID.transformID, {x=0, y=0, z=0})
t2s974ID.model = Assets.LoadModel('Models/tile2_s9.model')
Gear.AddStaticInstance(t2s974ID.model, t2s974ID.transformID)
table.insert(props,t2s974ID)
t2s974ID = nil

t2s1075ID = {}
t2s1075ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1075ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1075ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1075ID.transformID, {x=0, y=0, z=0})
t2s1075ID.model = Assets.LoadModel('Models/tile2_s10.model')
Gear.AddStaticInstance(t2s1075ID.model, t2s1075ID.transformID)
table.insert(props,t2s1075ID)
t2s1075ID = nil

t2s11a76ID = {}
t2s11a76ID.transformID = Transform.Bind()
Transform.SetPosition(t2s11a76ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s11a76ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s11a76ID.transformID, {x=0, y=0, z=0})
t2s11a76ID.model = Assets.LoadModel('Models/tile2_s11a.model')
Gear.AddStaticInstance(t2s11a76ID.model, t2s11a76ID.transformID)
table.insert(props,t2s11a76ID)
t2s11a76ID = nil

t2s1277ID = {}
t2s1277ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1277ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1277ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1277ID.transformID, {x=0, y=0, z=0})
t2s1277ID.model = Assets.LoadModel('Models/tile2_s12.model')
Gear.AddStaticInstance(t2s1277ID.model, t2s1277ID.transformID)
table.insert(props,t2s1277ID)
t2s1277ID = nil

t2s1378ID = {}
t2s1378ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1378ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1378ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1378ID.transformID, {x=0, y=0, z=0})
t2s1378ID.model = Assets.LoadModel('Models/tile2_s13.model')
Gear.AddStaticInstance(t2s1378ID.model, t2s1378ID.transformID)
table.insert(props,t2s1378ID)
t2s1378ID = nil

t2s1479ID = {}
t2s1479ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1479ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1479ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1479ID.transformID, {x=0, y=0, z=0})
t2s1479ID.model = Assets.LoadModel('Models/tile2_s14.model')
Gear.AddStaticInstance(t2s1479ID.model, t2s1479ID.transformID)
table.insert(props,t2s1479ID)
t2s1479ID = nil

ObbRot181ID = {}
ObbRot181ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot181ID.transformID, {x=117.911, y=37.1709, z=200.394})
Transform.SetScaleNonUniform(ObbRot181ID.transformID, 1, 18.7241, 21.8081)
Transform.SetRotation(ObbRot181ID.transformID, {x=0, y=0.41909, z=0})
ObbRot181ID.collider = OBBCollider.Create(ObbRot181ID.transformID)
ObbRot181ID.collider:SetOffset(0,0,0)
ObbRot181ID.collider:SetZAxis(0.406929,0,0.91346)
ObbRot181ID.collider:SetHalfLengths(0.5,9.36204,10.9041)
CollisionHandler.AddOBB(ObbRot181ID.collider, 3)
table.insert(props,ObbRot181ID)
ObbRot181ID = nil

ObbRot585ID = {}
ObbRot585ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot585ID.transformID, {x=125.175, y=37.5857, z=210.972})
Transform.SetScaleNonUniform(ObbRot585ID.transformID, 4.74132, 9.7832, 1)
Transform.SetRotation(ObbRot585ID.transformID, {x=0, y=0.0683151, z=0})
ObbRot585ID.collider = OBBCollider.Create(ObbRot585ID.transformID)
ObbRot585ID.collider:SetOffset(0,0,0)
ObbRot585ID.collider:SetZAxis(0.068262,0,0.997667)
ObbRot585ID.collider:SetHalfLengths(2.37066,4.8916,0.5)
CollisionHandler.AddOBB(ObbRot585ID.collider, 3)
table.insert(props,ObbRot585ID)
ObbRot585ID = nil

ObbRot686ID = {}
ObbRot686ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot686ID.transformID, {x=133.336, y=37.8301, z=207.834})
Transform.SetScaleNonUniform(ObbRot686ID.transformID, 12.9362, 9.7849, 1)
Transform.SetRotation(ObbRot686ID.transformID, {x=0, y=0.512187, z=0})
ObbRot686ID.collider = OBBCollider.Create(ObbRot686ID.transformID)
ObbRot686ID.collider:SetOffset(0,0,0)
ObbRot686ID.collider:SetZAxis(0.490085,0,0.871675)
ObbRot686ID.collider:SetHalfLengths(6.46809,4.89245,0.5)
CollisionHandler.AddOBB(ObbRot686ID.collider, 3)
table.insert(props,ObbRot686ID)
ObbRot686ID = nil

ObbRot887ID = {}
ObbRot887ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot887ID.transformID, {x=141.038, y=56.1095, z=172.394})
Transform.SetScaleNonUniform(ObbRot887ID.transformID, 1, 42.6949, 37.3548)
Transform.SetRotation(ObbRot887ID.transformID, {x=0, y=0.203048, z=0})
ObbRot887ID.collider = OBBCollider.Create(ObbRot887ID.transformID)
ObbRot887ID.collider:SetOffset(0,0,0)
ObbRot887ID.collider:SetZAxis(0.201656,0,0.979456)
ObbRot887ID.collider:SetHalfLengths(0.5,21.3475,18.6774)
CollisionHandler.AddOBB(ObbRot887ID.collider, 3)
table.insert(props,ObbRot887ID)
ObbRot887ID = nil

ObbRot988ID = {}
ObbRot988ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot988ID.transformID, {x=141.56, y=64.4772, z=147.26})
Transform.SetScaleNonUniform(ObbRot988ID.transformID, 1, 27.7567, 16.8946)
Transform.SetRotation(ObbRot988ID.transformID, {x=0, y=-0.577785, z=0})
ObbRot988ID.collider = OBBCollider.Create(ObbRot988ID.transformID)
ObbRot988ID.collider:SetOffset(0,0,0)
ObbRot988ID.collider:SetZAxis(-0.54617,0,0.837674)
ObbRot988ID.collider:SetHalfLengths(0.5,13.8783,8.4473)
CollisionHandler.AddOBB(ObbRot988ID.collider, 3)
table.insert(props,ObbRot988ID)
ObbRot988ID = nil

ObbRot1089ID = {}
ObbRot1089ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1089ID.transformID, {x=154.796, y=64.2819, z=144.174})
Transform.SetScaleNonUniform(ObbRot1089ID.transformID, 26.2452, 28.0413, 1)
Transform.SetRotation(ObbRot1089ID.transformID, {x=0, y=-0.407469, z=0})
ObbRot1089ID.collider = OBBCollider.Create(ObbRot1089ID.transformID)
ObbRot1089ID.collider:SetOffset(0,0,0)
ObbRot1089ID.collider:SetZAxis(-0.396287,0,0.918127)
ObbRot1089ID.collider:SetHalfLengths(13.1226,14.0206,0.5)
CollisionHandler.AddOBB(ObbRot1089ID.collider, 3)
table.insert(props,ObbRot1089ID)
ObbRot1089ID = nil

ObbRot1392ID = {}
ObbRot1392ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1392ID.transformID, {x=184.806, y=61.5997, z=136.889})
Transform.SetScaleNonUniform(ObbRot1392ID.transformID, 1, 11.3389, 11.6923)
Transform.SetRotation(ObbRot1392ID.transformID, {x=0, y=0, z=0})
ObbRot1392ID.collider = OBBCollider.Create(ObbRot1392ID.transformID)
ObbRot1392ID.collider:SetOffset(0,0,0)
ObbRot1392ID.collider:SetZAxis(0,0,1)
ObbRot1392ID.collider:SetHalfLengths(0.5,5.66944,5.84614)
CollisionHandler.AddOBB(ObbRot1392ID.collider, 3)
table.insert(props,ObbRot1392ID)
ObbRot1392ID = nil

ObbRot1493ID = {}
ObbRot1493ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1493ID.transformID, {x=180.698, y=62, z=118.111})
Transform.SetScaleNonUniform(ObbRot1493ID.transformID, 1, 16.5, 26.7768)
Transform.SetRotation(ObbRot1493ID.transformID, {x=0, y=0.303284, z=0})
ObbRot1493ID.collider = OBBCollider.Create(ObbRot1493ID.transformID)
ObbRot1493ID.collider:SetOffset(0,0,0)
ObbRot1493ID.collider:SetZAxis(0.298656,0,0.954361)
ObbRot1493ID.collider:SetHalfLengths(0.5,8.25,13.3884)
CollisionHandler.AddOBB(ObbRot1493ID.collider, 3)
table.insert(props,ObbRot1493ID)
ObbRot1493ID = nil

ObbRot1594ID = {}
ObbRot1594ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1594ID.transformID, {x=176.601, y=62.5968, z=82.604})
Transform.SetScaleNonUniform(ObbRot1594ID.transformID, 1, 10.8651, 45.5511)
Transform.SetRotation(ObbRot1594ID.transformID, {x=0, y=0, z=0})
ObbRot1594ID.collider = OBBCollider.Create(ObbRot1594ID.transformID)
ObbRot1594ID.collider:SetOffset(0,0,0)
ObbRot1594ID.collider:SetZAxis(0,0,1)
ObbRot1594ID.collider:SetHalfLengths(0.5,5.43255,22.7755)
CollisionHandler.AddOBB(ObbRot1594ID.collider, 3)
table.insert(props,ObbRot1594ID)
ObbRot1594ID = nil

ObbRot1796ID = {}
ObbRot1796ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1796ID.transformID, {x=194.369, y=58.0954, z=39.8305})
Transform.SetScaleNonUniform(ObbRot1796ID.transformID, 1, 25.802, 54.4443)
Transform.SetRotation(ObbRot1796ID.transformID, {x=0, y=-0.734825, z=0})
ObbRot1796ID.collider = OBBCollider.Create(ObbRot1796ID.transformID)
ObbRot1796ID.collider:SetOffset(0,0,0)
ObbRot1796ID.collider:SetZAxis(-0.670457,0,0.741948)
ObbRot1796ID.collider:SetHalfLengths(0.5,12.901,27.2222)
CollisionHandler.AddOBB(ObbRot1796ID.collider, 3)
table.insert(props,ObbRot1796ID)
ObbRot1796ID = nil

ObbRot1897ID = {}
ObbRot1897ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1897ID.transformID, {x=213.89, y=58.4684, z=31.2186})
Transform.SetScaleNonUniform(ObbRot1897ID.transformID, 1, 36.2154, 43.7488)
Transform.SetRotation(ObbRot1897ID.transformID, {x=0, y=1.64975, z=0})
ObbRot1897ID.collider = OBBCollider.Create(ObbRot1897ID.transformID)
ObbRot1897ID.collider:SetOffset(0,0,0)
ObbRot1897ID.collider:SetZAxis(0.996885,0,-0.0788692)
ObbRot1897ID.collider:SetHalfLengths(0.5,18.1077,21.8744)
CollisionHandler.AddOBB(ObbRot1897ID.collider, 3)
table.insert(props,ObbRot1897ID)
ObbRot1897ID = nil

ObbRot1998ID = {}
ObbRot1998ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1998ID.transformID, {x=260.112, y=52.6605, z=48.757})
Transform.SetScaleNonUniform(ObbRot1998ID.transformID, 89.1631, 34.5789, 1)
Transform.SetRotation(ObbRot1998ID.transformID, {x=0, y=-0.442913, z=0})
ObbRot1998ID.collider = OBBCollider.Create(ObbRot1998ID.transformID)
ObbRot1998ID.collider:SetOffset(0,0,0)
ObbRot1998ID.collider:SetZAxis(-0.428573,0,0.903507)
ObbRot1998ID.collider:SetHalfLengths(44.5816,17.2895,0.5)
CollisionHandler.AddOBB(ObbRot1998ID.collider, 3)
table.insert(props,ObbRot1998ID)
ObbRot1998ID = nil

ObbRot2099ID = {}
ObbRot2099ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot2099ID.transformID, {x=307.673, y=49.0794, z=88.9136})
Transform.SetScaleNonUniform(ObbRot2099ID.transformID, 98.2798, 49.5385, 1)
Transform.SetRotation(ObbRot2099ID.transformID, {x=0, y=-0.833437, z=0})
ObbRot2099ID.collider = OBBCollider.Create(ObbRot2099ID.transformID)
ObbRot2099ID.collider:SetOffset(0,0,0)
ObbRot2099ID.collider:SetZAxis(-0.740246,0,0.672336)
ObbRot2099ID.collider:SetHalfLengths(49.1399,24.7693,0.5)
CollisionHandler.AddOBB(ObbRot2099ID.collider, 3)
table.insert(props,ObbRot2099ID)
ObbRot2099ID = nil

ObbRot71145ID = {}
ObbRot71145ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot71145ID.transformID, {x=141.993, y=43.2297, z=198.398})
Transform.SetScaleNonUniform(ObbRot71145ID.transformID, 1, 23.8371, 16.8954)
Transform.SetRotation(ObbRot71145ID.transformID, {x=-0.000514221, y=-0.34506, z=-0.000190735})
ObbRot71145ID.collider = OBBCollider.Create(ObbRot71145ID.transformID)
ObbRot71145ID.collider:SetOffset(0,0,0)
ObbRot71145ID.collider:SetZAxis(-0.338253,0.000578738,0.941055)
ObbRot71145ID.collider:SetHalfLengths(0.5,11.9185,8.44772)
CollisionHandler.AddOBB(ObbRot71145ID.collider, 3)
table.insert(props,ObbRot71145ID)
ObbRot71145ID = nil

ObbRot72146ID = {}
ObbRot72146ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot72146ID.transformID, {x=173.363, y=56.2095, z=150.617})
Transform.SetScaleNonUniform(ObbRot72146ID.transformID, 13.7354, 10.0299, 1)
Transform.SetRotation(ObbRot72146ID.transformID, {x=0, y=-0.129341, z=0})
ObbRot72146ID.collider = OBBCollider.Create(ObbRot72146ID.transformID)
ObbRot72146ID.collider:SetOffset(0,0,0)
ObbRot72146ID.collider:SetZAxis(-0.12898,0,0.991647)
ObbRot72146ID.collider:SetHalfLengths(6.86769,5.01493,0.5)
CollisionHandler.AddOBB(ObbRot72146ID.collider, 3)
table.insert(props,ObbRot72146ID)
ObbRot72146ID = nil

ObbRot73147ID = {}
ObbRot73147ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot73147ID.transformID, {x=182.341, y=57.5539, z=147.351})
Transform.SetScaleNonUniform(ObbRot73147ID.transformID, 10.8017, 1, 1)
Transform.SetRotation(ObbRot73147ID.transformID, {x=-0.0065155, y=1.05261, z=-0.0682205})
ObbRot73147ID.collider = OBBCollider.Create(ObbRot73147ID.transformID)
ObbRot73147ID.collider:SetOffset(0,0,0)
ObbRot73147ID.collider:SetZAxis(0.867123,-0.0527169,0.495297)
ObbRot73147ID.collider:SetHalfLengths(5.40083,0.5,0.5)
CollisionHandler.AddOBB(ObbRot73147ID.collider, 3)
table.insert(props,ObbRot73147ID)
ObbRot73147ID = nil

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
