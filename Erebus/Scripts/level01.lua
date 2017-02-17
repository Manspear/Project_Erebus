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
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap3.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap3.asset:SetHeightMultiplier(0.158469)
Heightmap3.surrounding = {  }
heightmaps[3] = Heightmap3
Heightmap3 = nil
Heightmap4 = {}
Heightmap4.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap4.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap4.asset:SetHeightMultiplier(0.128707)
Heightmap4.surrounding = {  }
heightmaps[4] = Heightmap4
Heightmap4 = nil
Heightmap5 = {}
Heightmap5.asset = Assets.LoadHeightmap("Textures/tile5_height.png")
Heightmap5.asset:SetPosition({x=384, y=38.5561, z=384})
Heightmap5.asset:SetHeightMultiplier(0.260571)
Heightmap5.surrounding = {  }
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=85.0848, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0852758)
Heightmap6.surrounding = {  }
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.2563, z=512})
Heightmap7.asset:SetHeightMultiplier(0.241725)
Heightmap7.surrounding = {  }
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165535)
Heightmap8.surrounding = {  }
heightmaps[8] = Heightmap8
Heightmap8 = nil

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
Transform.SetPosition(Obb6ID.transformID, {x=39.0404, y=11, z=126.919})
Transform.SetScaleNonUniform(Obb6ID.transformID, 5, 5.5, 1.08661)
Transform.SetRotation(Obb6ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb6ID)
Obb6ID = nil

Obb17ID = {}
Obb17ID.transformID = Transform.Bind()
Transform.SetPosition(Obb17ID.transformID, {x=44.9522, y=12, z=129.392})
Transform.SetScaleNonUniform(Obb17ID.transformID, 8.39434, 7, 0.871048)
Transform.SetRotation(Obb17ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb17ID)
Obb17ID = nil

Obb28ID = {}
Obb28ID.transformID = Transform.Bind()
Transform.SetPosition(Obb28ID.transformID, {x=51.9199, y=14, z=137.106})
Transform.SetScaleNonUniform(Obb28ID.transformID, 13, 11, 1)
Transform.SetRotation(Obb28ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb28ID)
Obb28ID = nil

Obb39ID = {}
Obb39ID.transformID = Transform.Bind()
Transform.SetPosition(Obb39ID.transformID, {x=55.7141, y=15, z=145.031})
Transform.SetScaleNonUniform(Obb39ID.transformID, 5.5, 12.5, 1)
Transform.SetRotation(Obb39ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb39ID)
Obb39ID = nil

Obb410ID = {}
Obb410ID.transformID = Transform.Bind()
Transform.SetPosition(Obb410ID.transformID, {x=52.078, y=13, z=152.094})
Transform.SetScaleNonUniform(Obb410ID.transformID, 12, 9, 1)
Transform.SetRotation(Obb410ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb410ID)
Obb410ID = nil

Obb511ID = {}
Obb511ID.transformID = Transform.Bind()
Transform.SetPosition(Obb511ID.transformID, {x=43.7358, y=13, z=156.709})
Transform.SetScaleNonUniform(Obb511ID.transformID, 9.5, 9, 1)
Transform.SetRotation(Obb511ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb511ID)
Obb511ID = nil

OakTree12ID = {}
OakTree12ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree12ID.transformID, {x=24.2969, y=7.51563, z=139.5})
Transform.SetScaleNonUniform(OakTree12ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree12ID.transformID, {x=0, y=0.131111, z=0})
OakTree12ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree12ID.model, OakTree12ID.transformID)
table.insert(props,OakTree12ID)
OakTree12ID = nil

OakTree113ID = {}
OakTree113ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree113ID.transformID, {x=38.165, y=9.16406, z=155.143})
Transform.SetScaleNonUniform(OakTree113ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree113ID.transformID, {x=0, y=0.131111, z=0})
OakTree113ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree113ID.model, OakTree113ID.transformID)
table.insert(props,OakTree113ID)
OakTree113ID = nil

Obb614ID = {}
Obb614ID.transformID = Transform.Bind()
Transform.SetPosition(Obb614ID.transformID, {x=36.7883, y=9, z=158.058})
Transform.SetScaleNonUniform(Obb614ID.transformID, 10.3218, 5.5, 1.08522)
Transform.SetRotation(Obb614ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb614ID)
Obb614ID = nil

Obb715ID = {}
Obb715ID.transformID = Transform.Bind()
Transform.SetPosition(Obb715ID.transformID, {x=42.1897, y=10, z=164.405})
Transform.SetScaleNonUniform(Obb715ID.transformID, 8.69166, 6, 1)
Transform.SetRotation(Obb715ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb715ID)
Obb715ID = nil

Obb816ID = {}
Obb816ID.transformID = Transform.Bind()
Transform.SetPosition(Obb816ID.transformID, {x=49.0721, y=10, z=165.871})
Transform.SetScaleNonUniform(Obb816ID.transformID, 6.5, 7, 1)
Transform.SetRotation(Obb816ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb816ID)
Obb816ID = nil

Obb917ID = {}
Obb917ID.transformID = Transform.Bind()
Transform.SetPosition(Obb917ID.transformID, {x=55.1278, y=11, z=169.08})
Transform.SetScaleNonUniform(Obb917ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb917ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb917ID)
Obb917ID = nil

Obb1018ID = {}
Obb1018ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1018ID.transformID, {x=57.658, y=12, z=175.255})
Transform.SetScaleNonUniform(Obb1018ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb1018ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1018ID)
Obb1018ID = nil

Obb1119ID = {}
Obb1119ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1119ID.transformID, {x=55.0522, y=12, z=182.172})
Transform.SetScaleNonUniform(Obb1119ID.transformID, 10, 9, 1)
Transform.SetRotation(Obb1119ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1119ID)
Obb1119ID = nil

Obb1220ID = {}
Obb1220ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1220ID.transformID, {x=47.8056, y=12, z=186.651})
Transform.SetScaleNonUniform(Obb1220ID.transformID, 13.5, 11.5, 1)
Transform.SetRotation(Obb1220ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1220ID)
Obb1220ID = nil

Obb1321ID = {}
Obb1321ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1321ID.transformID, {x=39.6651, y=13, z=185.369})
Transform.SetScaleNonUniform(Obb1321ID.transformID, 11, 13.5, 1)
Transform.SetRotation(Obb1321ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1321ID)
Obb1321ID = nil

Obb1422ID = {}
Obb1422ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1422ID.transformID, {x=35.5826, y=13, z=179.492})
Transform.SetScaleNonUniform(Obb1422ID.transformID, 12.5, 12, 1)
Transform.SetRotation(Obb1422ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1422ID)
Obb1422ID = nil

Obb1723ID = {}
Obb1723ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1723ID.transformID, {x=26.6681, y=8, z=169.626})
Transform.SetScaleNonUniform(Obb1723ID.transformID, 4.5, 6, 1)
Transform.SetRotation(Obb1723ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1723ID)
Obb1723ID = nil

Obb2024ID = {}
Obb2024ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2024ID.transformID, {x=22.3577, y=8, z=175.096})
Transform.SetScaleNonUniform(Obb2024ID.transformID, 4, 9, 1)
Transform.SetRotation(Obb2024ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2024ID)
Obb2024ID = nil

Obb2125ID = {}
Obb2125ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2125ID.transformID, {x=23.4884, y=8, z=178.927})
Transform.SetScaleNonUniform(Obb2125ID.transformID, 4.5111, 9, 1.13998)
Transform.SetRotation(Obb2125ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2125ID)
Obb2125ID = nil

Obb2226ID = {}
Obb2226ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2226ID.transformID, {x=28.5969, y=8, z=185.441})
Transform.SetScaleNonUniform(Obb2226ID.transformID, 12.5, 11.5, 1)
Transform.SetRotation(Obb2226ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2226ID)
Obb2226ID = nil

Obb2327ID = {}
Obb2327ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2327ID.transformID, {x=34.4504, y=9, z=191.759})
Transform.SetScaleNonUniform(Obb2327ID.transformID, 5.22974, 11.5, 0.968994)
Transform.SetRotation(Obb2327ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2327ID)
Obb2327ID = nil

Obb1628ID = {}
Obb1628ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1628ID.transformID, {x=29.6417, y=8, z=168.466})
Transform.SetScaleNonUniform(Obb1628ID.transformID, 2.8098, 10, 1)
Transform.SetRotation(Obb1628ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1628ID)
Obb1628ID = nil

Obb2429ID = {}
Obb2429ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2429ID.transformID, {x=20.0467, y=10, z=140.246})
Transform.SetScaleNonUniform(Obb2429ID.transformID, 7.14175, 6.5, 1)
Transform.SetRotation(Obb2429ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2429ID)
Obb2429ID = nil

Obb2530ID = {}
Obb2530ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2530ID.transformID, {x=14.8325, y=11, z=141.399})
Transform.SetScaleNonUniform(Obb2530ID.transformID, 4, 10, 1)
Transform.SetRotation(Obb2530ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2530ID)
Obb2530ID = nil

Obb2631ID = {}
Obb2631ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2631ID.transformID, {x=11.2464, y=10, z=140.542})
Transform.SetScaleNonUniform(Obb2631ID.transformID, 4, 8, 1)
Transform.SetRotation(Obb2631ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2631ID)
Obb2631ID = nil

Obb2732ID = {}
Obb2732ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2732ID.transformID, {x=7.59128, y=8, z=138.891})
Transform.SetScaleNonUniform(Obb2732ID.transformID, 4.5, 7.5, 1)
Transform.SetRotation(Obb2732ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2732ID)
Obb2732ID = nil

Obb2833ID = {}
Obb2833ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2833ID.transformID, {x=6.45969, y=7, z=200.601})
Transform.SetScaleNonUniform(Obb2833ID.transformID, 6.5, 9, 1)
Transform.SetRotation(Obb2833ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2833ID)
Obb2833ID = nil

Obb2934ID = {}
Obb2934ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2934ID.transformID, {x=4.30202, y=6, z=197.811})
Transform.SetScaleNonUniform(Obb2934ID.transformID, 8.5, 11, 1)
Transform.SetRotation(Obb2934ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2934ID)
Obb2934ID = nil

Obb3035ID = {}
Obb3035ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3035ID.transformID, {x=2.80227, y=6, z=191.704})
Transform.SetScaleNonUniform(Obb3035ID.transformID, 9.5, 12, 1)
Transform.SetRotation(Obb3035ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3035ID)
Obb3035ID = nil

Obb3136ID = {}
Obb3136ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3136ID.transformID, {x=2.65523, y=7, z=183.261})
Transform.SetScaleNonUniform(Obb3136ID.transformID, 12.5, 10, 1)
Transform.SetRotation(Obb3136ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3136ID)
Obb3136ID = nil

Obb3237ID = {}
Obb3237ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3237ID.transformID, {x=5.44154, y=7, z=178.748})
Transform.SetScaleNonUniform(Obb3237ID.transformID, 10, 12.5, 1)
Transform.SetRotation(Obb3237ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3237ID)
Obb3237ID = nil

Obb3338ID = {}
Obb3338ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3338ID.transformID, {x=9.41838, y=10, z=174.488})
Transform.SetScaleNonUniform(Obb3338ID.transformID, 2.5, 9, 1)
Transform.SetRotation(Obb3338ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3338ID)
Obb3338ID = nil

Obb3439ID = {}
Obb3439ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3439ID.transformID, {x=9.58863, y=9, z=172.07})
Transform.SetScaleNonUniform(Obb3439ID.transformID, 3, 7.5, 1)
Transform.SetRotation(Obb3439ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3439ID)
Obb3439ID = nil

Obb3540ID = {}
Obb3540ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3540ID.transformID, {x=7.46277, y=9, z=168.952})
Transform.SetScaleNonUniform(Obb3540ID.transformID, 5.5, 10, 1)
Transform.SetRotation(Obb3540ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3540ID)
Obb3540ID = nil

Obb3641ID = {}
Obb3641ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3641ID.transformID, {x=3.96612, y=10, z=163.15})
Transform.SetScaleNonUniform(Obb3641ID.transformID, 8, 9.5, 1)
Transform.SetRotation(Obb3641ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3641ID)
Obb3641ID = nil

Obb3742ID = {}
Obb3742ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3742ID.transformID, {x=3.57684, y=10, z=155.965})
Transform.SetScaleNonUniform(Obb3742ID.transformID, 14, 9.5, 1)
Transform.SetRotation(Obb3742ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3742ID)
Obb3742ID = nil

Obb3943ID = {}
Obb3943ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3943ID.transformID, {x=49.4084, y=12, z=201.832})
Transform.SetScaleNonUniform(Obb3943ID.transformID, 10.5, 9.5, 1)
Transform.SetRotation(Obb3943ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3943ID)
Obb3943ID = nil

Obb4044ID = {}
Obb4044ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4044ID.transformID, {x=54.7569, y=13, z=206.949})
Transform.SetScaleNonUniform(Obb4044ID.transformID, 5, 13, 1)
Transform.SetRotation(Obb4044ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4044ID)
Obb4044ID = nil

Obb4145ID = {}
Obb4145ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4145ID.transformID, {x=61.1504, y=16, z=208.037})
Transform.SetScaleNonUniform(Obb4145ID.transformID, 9, 18.5, 1)
Transform.SetRotation(Obb4145ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4145ID)
Obb4145ID = nil

Obb4246ID = {}
Obb4246ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4246ID.transformID, {x=72.5637, y=20, z=204.506})
Transform.SetScaleNonUniform(Obb4246ID.transformID, 16, 24.5, 1)
Transform.SetRotation(Obb4246ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4246ID)
Obb4246ID = nil

Obb4347ID = {}
Obb4347ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4347ID.transformID, {x=84.2015, y=26.8573, z=198.428})
Transform.SetScaleNonUniform(Obb4347ID.transformID, 11, 14, 1)
Transform.SetRotation(Obb4347ID.transformID, {x=0, y=0, z=0})
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
table.insert(props,ObbRot80ID)
ObbRot80ID = nil

ObbRot282ID = {}
ObbRot282ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot282ID.transformID, {x=126.338, y=33.4473, z=228.83})
Transform.SetScaleNonUniform(ObbRot282ID.transformID, 1, 8.14921, 8.69229)
Transform.SetRotation(ObbRot282ID.transformID, {x=0, y=-0.042339, z=0})
table.insert(props,ObbRot282ID)
ObbRot282ID = nil

ObbRot383ID = {}
ObbRot383ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot383ID.transformID, {x=133.49, y=36.6591, z=224.246})
Transform.SetScaleNonUniform(ObbRot383ID.transformID, 15.3474, 11.4235, 1)
Transform.SetRotation(ObbRot383ID.transformID, {x=0, y=0.0933742, z=0})
table.insert(props,ObbRot383ID)
ObbRot383ID = nil

ObbRot484ID = {}
ObbRot484ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot484ID.transformID, {x=137.673, y=36.5255, z=222.988})
Transform.SetScaleNonUniform(ObbRot484ID.transformID, 14.6798, 11.1924, 1)
Transform.SetRotation(ObbRot484ID.transformID, {x=0, y=0.354433, z=0})
table.insert(props,ObbRot484ID)
ObbRot484ID = nil

Obb3897ID = {}
Obb3897ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3897ID.transformID, {x=-1.07374e+08, y=-1.07374e+08, z=-1.07374e+08})
Transform.SetScaleNonUniform(Obb3897ID.transformID, 1, 1, 1)
Transform.SetRotation(Obb3897ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3897ID)
Obb3897ID = nil

Obb4698ID = {}
Obb4698ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4698ID.transformID, {x=27.0532, y=10.4212, z=133.303})
Transform.SetScaleNonUniform(Obb4698ID.transformID, 1.27297, 5.5868, 13.9593)
Transform.SetRotation(Obb4698ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4698ID)
Obb4698ID = nil

Obb46199ID = {}
Obb46199ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46199ID.transformID, {x=33.2583, y=10.5917, z=127.573})
Transform.SetScaleNonUniform(Obb46199ID.transformID, 6.95827, 5.75073, 1)
Transform.SetRotation(Obb46199ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46199ID)
Obb46199ID = nil

Obb462100ID = {}
Obb462100ID.transformID = Transform.Bind()
Transform.SetPosition(Obb462100ID.transformID, {x=4.88027, y=9.57633, z=141.999})
Transform.SetScaleNonUniform(Obb462100ID.transformID, 1, 6.03523, 11.042)
Transform.SetRotation(Obb462100ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb462100ID)
Obb462100ID = nil

Obb463101ID = {}
Obb463101ID.transformID = Transform.Bind()
Transform.SetPosition(Obb463101ID.transformID, {x=32.5441, y=8.30676, z=171.11})
Transform.SetScaleNonUniform(Obb463101ID.transformID, 6.74602, 7.71894, 0.80043)
Transform.SetRotation(Obb463101ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb463101ID)
Obb463101ID = nil

Obb464102ID = {}
Obb464102ID.transformID = Transform.Bind()
Transform.SetPosition(Obb464102ID.transformID, {x=23.756, y=7.84791, z=172.315})
Transform.SetScaleNonUniform(Obb464102ID.transformID, 4.31209, 6.35992, 1.41016)
Transform.SetRotation(Obb464102ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb464102ID)
Obb464102ID = nil

Obb465103ID = {}
Obb465103ID.transformID = Transform.Bind()
Transform.SetPosition(Obb465103ID.transformID, {x=90.287, y=24.9402, z=213.474})
Transform.SetScaleNonUniform(Obb465103ID.transformID, 9.93155, 7.44146, 1.21475)
Transform.SetRotation(Obb465103ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb465103ID)
Obb465103ID = nil

Obb466104ID = {}
Obb466104ID.transformID = Transform.Bind()
Transform.SetPosition(Obb466104ID.transformID, {x=100.212, y=28.1139, z=220.179})
Transform.SetScaleNonUniform(Obb466104ID.transformID, 17.0373, 10.9946, 1)
Transform.SetRotation(Obb466104ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb466104ID)
Obb466104ID = nil

Obb467105ID = {}
Obb467105ID.transformID = Transform.Bind()
Transform.SetPosition(Obb467105ID.transformID, {x=110.86, y=31.5587, z=222.132})
Transform.SetScaleNonUniform(Obb467105ID.transformID, 6.99899, 8.05659, 1)
Transform.SetRotation(Obb467105ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb467105ID)
Obb467105ID = nil

Obb468106ID = {}
Obb468106ID.transformID = Transform.Bind()
Transform.SetPosition(Obb468106ID.transformID, {x=114.768, y=36.7858, z=217.938})
Transform.SetScaleNonUniform(Obb468106ID.transformID, 6.71252, 12.7726, 1)
Transform.SetRotation(Obb468106ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb468106ID)
Obb468106ID = nil

Obb469107ID = {}
Obb469107ID.transformID = Transform.Bind()
Transform.SetPosition(Obb469107ID.transformID, {x=113.785, y=38.8959, z=210.773})
Transform.SetScaleNonUniform(Obb469107ID.transformID, 9.87627, 10.5123, 1)
Transform.SetRotation(Obb469107ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb469107ID)
Obb469107ID = nil

ObbRot21108ID = {}
ObbRot21108ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot21108ID.transformID, {x=106.309, y=32.7244, z=203.047})
Transform.SetScaleNonUniform(ObbRot21108ID.transformID, 1, 11.8559, 14.346)
Transform.SetRotation(ObbRot21108ID.transformID, {x=0, y=0.922624, z=0})
table.insert(props,ObbRot21108ID)
ObbRot21108ID = nil

ObbRot22109ID = {}
ObbRot22109ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot22109ID.transformID, {x=97.0691, y=30.794, z=200.862})
Transform.SetScaleNonUniform(ObbRot22109ID.transformID, 1.18787, 14.0917, 9.15988)
Transform.SetRotation(ObbRot22109ID.transformID, {x=0, y=-1.10728, z=0})
table.insert(props,ObbRot22109ID)
ObbRot22109ID = nil

Obb4610110ID = {}
Obb4610110ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4610110ID.transformID, {x=90.5686, y=26.7281, z=205.889})
Transform.SetScaleNonUniform(Obb4610110ID.transformID, 1, 12.2942, 8.5386)
Transform.SetRotation(Obb4610110ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4610110ID)
Obb4610110ID = nil

ObbRot23111ID = {}
ObbRot23111ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot23111ID.transformID, {x=24.1105, y=7.51023, z=191.988})
Transform.SetScaleNonUniform(ObbRot23111ID.transformID, 1, 9.67671, 16.8171)
Transform.SetRotation(ObbRot23111ID.transformID, {x=0, y=0.568292, z=0})
table.insert(props,ObbRot23111ID)
ObbRot23111ID = nil

ObbRot24112ID = {}
ObbRot24112ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot24112ID.transformID, {x=32.6054, y=9.09375, z=205.458})
Transform.SetScaleNonUniform(ObbRot24112ID.transformID, 1, 8, 8.13965)
Transform.SetRotation(ObbRot24112ID.transformID, {x=0, y=0.512233, z=0})
table.insert(props,ObbRot24112ID)
ObbRot24112ID = nil

ObbRot25113ID = {}
ObbRot25113ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot25113ID.transformID, {x=43.4584, y=10.573, z=212.737})
Transform.SetScaleNonUniform(ObbRot25113ID.transformID, 1, 9.48976, 19.1709)
Transform.SetRotation(ObbRot25113ID.transformID, {x=0, y=1.17312, z=0})
table.insert(props,ObbRot25113ID)
ObbRot25113ID = nil

ObbRot26114ID = {}
ObbRot26114ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot26114ID.transformID, {x=60.2626, y=12.9969, z=216.789})
Transform.SetScaleNonUniform(ObbRot26114ID.transformID, 1.34885, 11.3449, 15.8494)
Transform.SetRotation(ObbRot26114ID.transformID, {x=0, y=-1.58265, z=0})
table.insert(props,ObbRot26114ID)
ObbRot26114ID = nil

ObbRot27115ID = {}
ObbRot27115ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot27115ID.transformID, {x=83.6042, y=25.556, z=224.591})
Transform.SetScaleNonUniform(ObbRot27115ID.transformID, 1, 29.2246, 35.6535)
Transform.SetRotation(ObbRot27115ID.transformID, {x=-0.0113167, y=1.11617, z=0.0421356})
table.insert(props,ObbRot27115ID)
ObbRot27115ID = nil

ObbRot28116ID = {}
ObbRot28116ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot28116ID.transformID, {x=112.962, y=31.1871, z=232.315})
Transform.SetScaleNonUniform(ObbRot28116ID.transformID, 1, 22.7609, 28.455)
Transform.SetRotation(ObbRot28116ID.transformID, {x=0, y=-1.56484, z=0})
table.insert(props,ObbRot28116ID)
ObbRot28116ID = nil

ObbRot29117ID = {}
ObbRot29117ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot29117ID.transformID, {x=17.5275, y=6.24736, z=200.669})
Transform.SetScaleNonUniform(ObbRot29117ID.transformID, 1, 12.4009, 21.0568)
Transform.SetRotation(ObbRot29117ID.transformID, {x=0, y=1.81414, z=0})
table.insert(props,ObbRot29117ID)
ObbRot29117ID = nil

OakTree2118ID = {}
OakTree2118ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree2118ID.transformID, {x=38.2345, y=7.625, z=182.426})
Transform.SetScaleNonUniform(OakTree2118ID.transformID, 1, 1.28247, 1)
Transform.SetRotation(OakTree2118ID.transformID, {x=0, y=1.53295, z=0})
OakTree2118ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree2118ID.model, OakTree2118ID.transformID)
table.insert(props,OakTree2118ID)
OakTree2118ID = nil

OakTree3119ID = {}
OakTree3119ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree3119ID.transformID, {x=5.85726, y=4.08203, z=182.811})
Transform.SetScaleNonUniform(OakTree3119ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree3119ID.transformID, {x=0, y=0.0549624, z=0})
OakTree3119ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree3119ID.model, OakTree3119ID.transformID)
table.insert(props,OakTree3119ID)
OakTree3119ID = nil

OakTree4120ID = {}
OakTree4120ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree4120ID.transformID, {x=14.3672, y=3.31691, z=237.75})
Transform.SetScaleNonUniform(OakTree4120ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree4120ID.transformID, {x=0, y=-2.41298, z=0})
OakTree4120ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree4120ID.model, OakTree4120ID.transformID)
table.insert(props,OakTree4120ID)
OakTree4120ID = nil

OakTree5121ID = {}
OakTree5121ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree5121ID.transformID, {x=77.25, y=-0.0905709, z=262.5})
Transform.SetScaleNonUniform(OakTree5121ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree5121ID.transformID, {x=0, y=-3.40315, z=0})
OakTree5121ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree5121ID.model, OakTree5121ID.transformID)
table.insert(props,OakTree5121ID)
OakTree5121ID = nil

OakTree6122ID = {}
OakTree6122ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree6122ID.transformID, {x=68.6875, y=-4.23212, z=315.25})
Transform.SetScaleNonUniform(OakTree6122ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree6122ID.transformID, {x=0, y=-4.4111, z=0})
OakTree6122ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree6122ID.model, OakTree6122ID.transformID)
table.insert(props,OakTree6122ID)
OakTree6122ID = nil

OakTree7123ID = {}
OakTree7123ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree7123ID.transformID, {x=113.375, y=28.1496, z=240.5})
Transform.SetScaleNonUniform(OakTree7123ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree7123ID.transformID, {x=0, y=0.131111, z=0})
OakTree7123ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree7123ID.model, OakTree7123ID.transformID)
table.insert(props,OakTree7123ID)
OakTree7123ID = nil

OakTree8124ID = {}
OakTree8124ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree8124ID.transformID, {x=167.375, y=33.9164, z=262.75})
Transform.SetScaleNonUniform(OakTree8124ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree8124ID.transformID, {x=0, y=0.131111, z=0})
OakTree8124ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree8124ID.model, OakTree8124ID.transformID)
table.insert(props,OakTree8124ID)
OakTree8124ID = nil

OakTree9125ID = {}
OakTree9125ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree9125ID.transformID, {x=171, y=27.9898, z=315})
Transform.SetScaleNonUniform(OakTree9125ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree9125ID.transformID, {x=0, y=0.131111, z=0})
OakTree9125ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree9125ID.model, OakTree9125ID.transformID)
table.insert(props,OakTree9125ID)
OakTree9125ID = nil

PineTree1126ID = {}
PineTree1126ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree1126ID.transformID, {x=124.375, y=29.1802, z=260.75})
Transform.SetScaleNonUniform(PineTree1126ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree1126ID.transformID, {x=0, y=0, z=0})
PineTree1126ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree1126ID.model, PineTree1126ID.transformID)
table.insert(props,PineTree1126ID)
PineTree1126ID = nil

PineTree11127ID = {}
PineTree11127ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree11127ID.transformID, {x=105.75, y=23.2717, z=262.75})
Transform.SetScaleNonUniform(PineTree11127ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree11127ID.transformID, {x=0, y=0, z=0})
PineTree11127ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree11127ID.model, PineTree11127ID.transformID)
table.insert(props,PineTree11127ID)
PineTree11127ID = nil

PineTree22128ID = {}
PineTree22128ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree22128ID.transformID, {x=198.875, y=31.2639, z=310.25})
Transform.SetScaleNonUniform(PineTree22128ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree22128ID.transformID, {x=0, y=0, z=0})
PineTree22128ID.model = Assets.LoadModel('Models/PineTree2.model')
Gear.AddStaticInstance(PineTree22128ID.model, PineTree22128ID.transformID)
table.insert(props,PineTree22128ID)
PineTree22128ID = nil

Bridge129ID = {}
Bridge129ID.transformID = Transform.Bind()
Transform.SetPosition(Bridge129ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Bridge129ID.transformID, 1, 1, 1)
Transform.SetRotation(Bridge129ID.transformID, {x=0, y=0, z=0})
Bridge129ID.model = Assets.LoadModel('Models/bridge.model')
Gear.AddStaticInstance(Bridge129ID.model, Bridge129ID.transformID)
table.insert(props,Bridge129ID)
Bridge129ID = nil

Obb46101130ID = {}
Obb46101130ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46101130ID.transformID, {x=28.5373, y=9.88143, z=197.783})
Transform.SetScaleNonUniform(Obb46101130ID.transformID, 4.46827, 8.05776, 0.709167)
Transform.SetRotation(Obb46101130ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46101130ID)
Obb46101130ID = nil

Obb46102131ID = {}
Obb46102131ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46102131ID.transformID, {x=35.5543, y=10.7953, z=194.367})
Transform.SetScaleNonUniform(Obb46102131ID.transformID, 2.89206, 7.78691, 1)
Transform.SetRotation(Obb46102131ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46102131ID)
Obb46102131ID = nil

ObbRot7132ID = {}
ObbRot7132ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot7132ID.transformID, {x=43.1355, y=11.2446, z=199.977})
Transform.SetScaleNonUniform(ObbRot7132ID.transformID, 1, 11.958, 12.5991)
Transform.SetRotation(ObbRot7132ID.transformID, {x=0, y=89.7662, z=0})
table.insert(props,ObbRot7132ID)
ObbRot7132ID = nil

ObbRot30133ID = {}
ObbRot30133ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot30133ID.transformID, {x=31.1048, y=8.78906, z=200.213})
Transform.SetScaleNonUniform(ObbRot30133ID.transformID, 1.65999, 8, 7.45378)
Transform.SetRotation(ObbRot30133ID.transformID, {x=0, y=0.410471, z=0})
table.insert(props,ObbRot30133ID)
ObbRot30133ID = nil

ObbRot31134ID = {}
ObbRot31134ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot31134ID.transformID, {x=36.1122, y=8.98438, z=198.162})
Transform.SetScaleNonUniform(ObbRot31134ID.transformID, 1, 8, 7.31935)
Transform.SetRotation(ObbRot31134ID.transformID, {x=0, y=0.380392, z=0})
table.insert(props,ObbRot31134ID)
ObbRot31134ID = nil

PineTree13138ID = {}
PineTree13138ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree13138ID.transformID, {x=182.339, y=59.8862, z=256.35})
Transform.SetScaleNonUniform(PineTree13138ID.transformID, 0.957413, 1, 1)
Transform.SetRotation(PineTree13138ID.transformID, {x=-0.23092, y=0, z=0.425748})
PineTree13138ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree13138ID.model, PineTree13138ID.transformID)
table.insert(props,PineTree13138ID)
PineTree13138ID = nil

PineTree14139ID = {}
PineTree14139ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree14139ID.transformID, {x=152.875, y=36.25, z=243.375})
Transform.SetScaleNonUniform(PineTree14139ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree14139ID.transformID, {x=0, y=0, z=0})
PineTree14139ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree14139ID.model, PineTree14139ID.transformID)
table.insert(props,PineTree14139ID)
PineTree14139ID = nil

PineTree16140ID = {}
PineTree16140ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree16140ID.transformID, {x=66.669, y=-1.27539, z=239.06})
Transform.SetScaleNonUniform(PineTree16140ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree16140ID.transformID, {x=0, y=0, z=0})
PineTree16140ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree16140ID.model, PineTree16140ID.transformID)
table.insert(props,PineTree16140ID)
PineTree16140ID = nil

PineTree17141ID = {}
PineTree17141ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree17141ID.transformID, {x=73.8203, y=14.2271, z=220.379})
Transform.SetScaleNonUniform(PineTree17141ID.transformID, 1, 1.30762, 1)
Transform.SetRotation(PineTree17141ID.transformID, {x=0.265403, y=-0.178307, z=0.14829})
PineTree17141ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree17141ID.model, PineTree17141ID.transformID)
table.insert(props,PineTree17141ID)
PineTree17141ID = nil

PineTree18142ID = {}
PineTree18142ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree18142ID.transformID, {x=-7.07435, y=3.29102, z=223.481})
Transform.SetScaleNonUniform(PineTree18142ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree18142ID.transformID, {x=0, y=0, z=0})
PineTree18142ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree18142ID.model, PineTree18142ID.transformID)
table.insert(props,PineTree18142ID)
PineTree18142ID = nil

PineTree19143ID = {}
PineTree19143ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree19143ID.transformID, {x=195.5, y=31.5781, z=308.25})
Transform.SetScaleNonUniform(PineTree19143ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree19143ID.transformID, {x=0, y=0, z=0})
PineTree19143ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree19143ID.model, PineTree19143ID.transformID)
table.insert(props,PineTree19143ID)
PineTree19143ID = nil

PineTree15144ID = {}
PineTree15144ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree15144ID.transformID, {x=98.875, y=22.7969, z=238.625})
Transform.SetScaleNonUniform(PineTree15144ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree15144ID.transformID, {x=0, y=0, z=0})
PineTree15144ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree15144ID.model, PineTree15144ID.transformID)
table.insert(props,PineTree15144ID)
PineTree15144ID = nil

PineTree12145ID = {}
PineTree12145ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree12145ID.transformID, {x=193.5, y=68.25, z=255.125})
Transform.SetScaleNonUniform(PineTree12145ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree12145ID.transformID, {x=0, y=0, z=0})
PineTree12145ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree12145ID.model, PineTree12145ID.transformID)
table.insert(props,PineTree12145ID)
PineTree12145ID = nil

AutoGenParent1213ID = {}
AutoGenParent1213ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1213ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1213ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1213ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1213ID)
AutoGenParent1213ID = nil

AutoGenParent2214ID = {}
AutoGenParent2214ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent2214ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent2214ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent2214ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent2214ID)
AutoGenParent2214ID = nil

AutoGenParent3215ID = {}
AutoGenParent3215ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent3215ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent3215ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent3215ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent3215ID)
AutoGenParent3215ID = nil

AutoGenParent4216ID = {}
AutoGenParent4216ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent4216ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent4216ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent4216ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent4216ID)
AutoGenParent4216ID = nil

AutoGenParent5217ID = {}
AutoGenParent5217ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent5217ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent5217ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent5217ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent5217ID)
AutoGenParent5217ID = nil

AutoGenParent6218ID = {}
AutoGenParent6218ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent6218ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent6218ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent6218ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent6218ID)
AutoGenParent6218ID = nil

AutoGenParent7219ID = {}
AutoGenParent7219ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent7219ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent7219ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent7219ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent7219ID)
AutoGenParent7219ID = nil

AutoGenParent8220ID = {}
AutoGenParent8220ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent8220ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent8220ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent8220ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent8220ID)
AutoGenParent8220ID = nil

AutoGenParent9221ID = {}
AutoGenParent9221ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent9221ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent9221ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent9221ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent9221ID)
AutoGenParent9221ID = nil

AutoGenParent10222ID = {}
AutoGenParent10222ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent10222ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent10222ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent10222ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent10222ID)
AutoGenParent10222ID = nil

AutoGenParent11223ID = {}
AutoGenParent11223ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent11223ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent11223ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent11223ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent11223ID)
AutoGenParent11223ID = nil

AutoGenParent12224ID = {}
AutoGenParent12224ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent12224ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent12224ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent12224ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent12224ID)
AutoGenParent12224ID = nil

AutoGenParent13225ID = {}
AutoGenParent13225ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent13225ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent13225ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent13225ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent13225ID)
AutoGenParent13225ID = nil

AutoGenParent14226ID = {}
AutoGenParent14226ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent14226ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent14226ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent14226ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent14226ID)
AutoGenParent14226ID = nil

AutoGenParent15227ID = {}
AutoGenParent15227ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent15227ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent15227ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent15227ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent15227ID)
AutoGenParent15227ID = nil

AutoGenParent16228ID = {}
AutoGenParent16228ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent16228ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent16228ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent16228ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent16228ID)
AutoGenParent16228ID = nil

AutoGenParent229ID = {}
AutoGenParent229ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent229ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent229ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent229ID.transformID, {x=0, y=0, z=0})
AutoGenParent229ID.collider = AABBCollider.Create(AutoGenParent229ID.transformID)
AutoGenParent229ID.collider:SetOffset(0,0,0)
AutoGenParent229ID.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent229ID.collider:SetMaxPos(341.082,78.3555,317.878)
AutoGenParent229ID1 = {}
AutoGenParent229ID1.collider = AABBCollider.Create(-1)
AutoGenParent229ID1.collider:SetOffset(0,0,0)
AutoGenParent229ID1.collider:SetMinPos(-9.87435,-4.23212,19.2979)
AutoGenParent229ID1.collider:SetMaxPos(341.082,78.3555,317.878)
AutoGenParent229ID.collider:AddChild(AutoGenParent229ID1.collider)
table.insert(colliders,AutoGenParent229ID1)
AutoGenParent229ID2 = {}
AutoGenParent229ID2.collider = AABBCollider.Create(-1)
AutoGenParent229ID2.collider:SetOffset(0,0,0)
AutoGenParent229ID2.collider:SetMinPos(3.14297,4.25,126.288)
AutoGenParent229ID2.collider:SetMaxPos(56.0224,21.5156,147.49)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID2.collider)
table.insert(colliders,AutoGenParent229ID2)
AutoGenParent229ID3 = {}
AutoGenParent229ID3.collider = OBBCollider.Create(-1)
AutoGenParent229ID3.collider:SetOffset(39.0404,11,126.919)
AutoGenParent229ID3.collider:SetZAxis(0.0350067,0,0.999387)
AutoGenParent229ID3.collider:SetHalfLengths(2.5,2.75,0.543304)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID3.collider)
table.insert(colliders,AutoGenParent229ID3)
AutoGenParent229ID4 = {}
AutoGenParent229ID4.collider = OBBCollider.Create(-1)
AutoGenParent229ID4.collider:SetOffset(44.9522,12,129.392)
AutoGenParent229ID4.collider:SetZAxis(-0.583273,0,0.812276)
AutoGenParent229ID4.collider:SetHalfLengths(4.19717,3.5,0.435524)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID4.collider)
table.insert(colliders,AutoGenParent229ID4)
AutoGenParent229ID5 = {}
AutoGenParent229ID5.collider = OBBCollider.Create(-1)
AutoGenParent229ID5.collider:SetOffset(51.9199,14,137.106)
AutoGenParent229ID5.collider:SetZAxis(-0.823142,0,0.567836)
AutoGenParent229ID5.collider:SetHalfLengths(6.5,5.5,0.5)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID5.collider)
table.insert(colliders,AutoGenParent229ID5)
AutoGenParent229ID6 = {}
AutoGenParent229ID6.collider = OBBCollider.Create(-1)
AutoGenParent229ID6.collider:SetOffset(24.2969,14.5156,140)
AutoGenParent229ID6.collider:SetZAxis(0.130736,0,0.991417)
AutoGenParent229ID6.collider:SetHalfLengths(1.7,7,1.7)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID6.collider)
table.insert(colliders,AutoGenParent229ID6)
AutoGenParent229ID7 = {}
AutoGenParent229ID7.collider = OBBCollider.Create(-1)
AutoGenParent229ID7.collider:SetOffset(20.0467,10,140.246)
AutoGenParent229ID7.collider:SetZAxis(0.350855,0,0.93643)
AutoGenParent229ID7.collider:SetHalfLengths(3.57088,3.25,0.5)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID7.collider)
table.insert(colliders,AutoGenParent229ID7)
AutoGenParent229ID8 = {}
AutoGenParent229ID8.collider = OBBCollider.Create(-1)
AutoGenParent229ID8.collider:SetOffset(11.2464,10,140.542)
AutoGenParent229ID8.collider:SetZAxis(-0.482651,0,0.875813)
AutoGenParent229ID8.collider:SetHalfLengths(2,4,0.5)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID8.collider)
table.insert(colliders,AutoGenParent229ID8)
AutoGenParent229ID9 = {}
AutoGenParent229ID9.collider = OBBCollider.Create(-1)
AutoGenParent229ID9.collider:SetOffset(7.59128,8,138.891)
AutoGenParent229ID9.collider:SetZAxis(-0.329544,0,0.94414)
AutoGenParent229ID9.collider:SetHalfLengths(2.25,3.75,0.5)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID9.collider)
table.insert(colliders,AutoGenParent229ID9)
AutoGenParent229ID10 = {}
AutoGenParent229ID10.collider = OBBCollider.Create(-1)
AutoGenParent229ID10.collider:SetOffset(27.0532,10.4212,133.303)
AutoGenParent229ID10.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent229ID10.collider:SetHalfLengths(0.636485,2.7934,6.97963)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID10.collider)
table.insert(colliders,AutoGenParent229ID10)
AutoGenParent229ID11 = {}
AutoGenParent229ID11.collider = OBBCollider.Create(-1)
AutoGenParent229ID11.collider:SetOffset(33.2583,10.5917,127.573)
AutoGenParent229ID11.collider:SetZAxis(0.165133,0,0.986271)
AutoGenParent229ID11.collider:SetHalfLengths(3.47914,2.87537,0.5)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID11.collider)
table.insert(colliders,AutoGenParent229ID11)
AutoGenParent229ID12 = {}
AutoGenParent229ID12.collider = OBBCollider.Create(-1)
AutoGenParent229ID12.collider:SetOffset(4.88027,9.57633,141.999)
AutoGenParent229ID12.collider:SetZAxis(0.226461,0,-0.97402)
AutoGenParent229ID12.collider:SetHalfLengths(0.5,3.01761,5.52102)
AutoGenParent229ID2.collider:AddChild(AutoGenParent229ID12.collider)
table.insert(colliders,AutoGenParent229ID12)
AutoGenParent229ID13 = {}
AutoGenParent229ID13.collider = AABBCollider.Create(-1)
AutoGenParent229ID13.collider:SetOffset(0,0,0)
AutoGenParent229ID13.collider:SetMinPos(1.66528,5.25,140.899)
AutoGenParent229ID13.collider:SetMaxPos(56.5285,23.1641,167.057)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID13.collider)
table.insert(colliders,AutoGenParent229ID13)
AutoGenParent229ID14 = {}
AutoGenParent229ID14.collider = OBBCollider.Create(-1)
AutoGenParent229ID14.collider:SetOffset(55.7141,15,145.031)
AutoGenParent229ID14.collider:SetZAxis(-0.996929,0,0.0783057)
AutoGenParent229ID14.collider:SetHalfLengths(2.75,6.25,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID14.collider)
table.insert(colliders,AutoGenParent229ID14)
AutoGenParent229ID15 = {}
AutoGenParent229ID15.collider = OBBCollider.Create(-1)
AutoGenParent229ID15.collider:SetOffset(52.078,13,152.094)
AutoGenParent229ID15.collider:SetZAxis(-0.732567,0,-0.680695)
AutoGenParent229ID15.collider:SetHalfLengths(6,4.5,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID15.collider)
table.insert(colliders,AutoGenParent229ID15)
AutoGenParent229ID16 = {}
AutoGenParent229ID16.collider = OBBCollider.Create(-1)
AutoGenParent229ID16.collider:SetOffset(43.7358,13,156.709)
AutoGenParent229ID16.collider:SetZAxis(-0.117519,0,-0.993071)
AutoGenParent229ID16.collider:SetHalfLengths(4.75,4.5,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID16.collider)
table.insert(colliders,AutoGenParent229ID16)
AutoGenParent229ID17 = {}
AutoGenParent229ID17.collider = OBBCollider.Create(-1)
AutoGenParent229ID17.collider:SetOffset(38.165,16.1641,155.643)
AutoGenParent229ID17.collider:SetZAxis(0.130736,0,0.991417)
AutoGenParent229ID17.collider:SetHalfLengths(1.7,7,1.7)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID17.collider)
table.insert(colliders,AutoGenParent229ID17)
AutoGenParent229ID18 = {}
AutoGenParent229ID18.collider = OBBCollider.Create(-1)
AutoGenParent229ID18.collider:SetOffset(36.7883,9,158.058)
AutoGenParent229ID18.collider:SetZAxis(-0.942602,0,0.33392)
AutoGenParent229ID18.collider:SetHalfLengths(5.1609,2.75,0.54261)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID18.collider)
table.insert(colliders,AutoGenParent229ID18)
AutoGenParent229ID19 = {}
AutoGenParent229ID19.collider = OBBCollider.Create(-1)
AutoGenParent229ID19.collider:SetOffset(42.1897,10,164.405)
AutoGenParent229ID19.collider:SetZAxis(-0.406524,0,0.91364)
AutoGenParent229ID19.collider:SetHalfLengths(4.34583,3,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID19.collider)
table.insert(colliders,AutoGenParent229ID19)
AutoGenParent229ID20 = {}
AutoGenParent229ID20.collider = OBBCollider.Create(-1)
AutoGenParent229ID20.collider:SetOffset(14.8325,11,141.399)
AutoGenParent229ID20.collider:SetZAxis(-7.5809e-06,0,1)
AutoGenParent229ID20.collider:SetHalfLengths(2,5,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID20.collider)
table.insert(colliders,AutoGenParent229ID20)
AutoGenParent229ID21 = {}
AutoGenParent229ID21.collider = OBBCollider.Create(-1)
AutoGenParent229ID21.collider:SetOffset(3.96612,10,163.15)
AutoGenParent229ID21.collider:SetZAxis(0.93109,0,-0.364789)
AutoGenParent229ID21.collider:SetHalfLengths(4,4.75,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID21.collider)
table.insert(colliders,AutoGenParent229ID21)
AutoGenParent229ID22 = {}
AutoGenParent229ID22.collider = OBBCollider.Create(-1)
AutoGenParent229ID22.collider:SetOffset(3.57684,10,155.965)
AutoGenParent229ID22.collider:SetZAxis(0.97915,0,0.20314)
AutoGenParent229ID22.collider:SetHalfLengths(7,4.75,0.5)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID22.collider)
table.insert(colliders,AutoGenParent229ID22)
AutoGenParent229ID23 = {}
AutoGenParent229ID23.collider = OBBCollider.Create(-1)
AutoGenParent229ID23.collider:SetOffset(4.63655,11,148.253)
AutoGenParent229ID23.collider:SetZAxis(0.275141,0,0.961404)
AutoGenParent229ID23.collider:SetHalfLengths(0.5,4,2.58817)
AutoGenParent229ID13.collider:AddChild(AutoGenParent229ID23.collider)
table.insert(colliders,AutoGenParent229ID23)
AutoGenParent229ID24 = {}
AutoGenParent229ID24.collider = AABBCollider.Create(-1)
AutoGenParent229ID24.collider:SetOffset(0,0,0)
AutoGenParent229ID24.collider:SetMinPos(1.19996,0.75,19.2979)
AutoGenParent229ID24.collider:SetMaxPos(212.991,70.9964,190.34)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID24.collider)
table.insert(colliders,AutoGenParent229ID24)
AutoGenParent229ID25 = {}
AutoGenParent229ID25.collider = OBBCollider.Create(-1)
AutoGenParent229ID25.collider:SetOffset(57.658,12,175.255)
AutoGenParent229ID25.collider:SetZAxis(-0.997282,0,-0.073685)
AutoGenParent229ID25.collider:SetHalfLengths(5.25,4.75,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID25.collider)
table.insert(colliders,AutoGenParent229ID25)
AutoGenParent229ID26 = {}
AutoGenParent229ID26.collider = OBBCollider.Create(-1)
AutoGenParent229ID26.collider:SetOffset(39.6651,13,185.369)
AutoGenParent229ID26.collider:SetZAxis(0.622728,0,-0.782439)
AutoGenParent229ID26.collider:SetHalfLengths(5.5,6.75,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID26.collider)
table.insert(colliders,AutoGenParent229ID26)
AutoGenParent229ID27 = {}
AutoGenParent229ID27.collider = OBBCollider.Create(-1)
AutoGenParent229ID27.collider:SetOffset(35.5826,13,179.492)
AutoGenParent229ID27.collider:SetZAxis(0.971509,0,-0.237004)
AutoGenParent229ID27.collider:SetHalfLengths(6.25,6,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID27.collider)
table.insert(colliders,AutoGenParent229ID27)
AutoGenParent229ID28 = {}
AutoGenParent229ID28.collider = OBBCollider.Create(-1)
AutoGenParent229ID28.collider:SetOffset(23.4884,8,178.927)
AutoGenParent229ID28.collider:SetZAxis(-0.905241,0,0.424899)
AutoGenParent229ID28.collider:SetHalfLengths(2.25555,4.5,0.569992)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID28.collider)
table.insert(colliders,AutoGenParent229ID28)
AutoGenParent229ID29 = {}
AutoGenParent229ID29.collider = OBBCollider.Create(-1)
AutoGenParent229ID29.collider:SetOffset(28.5969,8,185.441)
AutoGenParent229ID29.collider:SetZAxis(-0.729108,0,0.684399)
AutoGenParent229ID29.collider:SetHalfLengths(6.25,5.75,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID29.collider)
table.insert(colliders,AutoGenParent229ID29)
AutoGenParent229ID30 = {}
AutoGenParent229ID30.collider = OBBCollider.Create(-1)
AutoGenParent229ID30.collider:SetOffset(2.65523,7,183.261)
AutoGenParent229ID30.collider:SetZAxis(0.999723,0,0.0235538)
AutoGenParent229ID30.collider:SetHalfLengths(6.25,5,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID30.collider)
table.insert(colliders,AutoGenParent229ID30)
AutoGenParent229ID31 = {}
AutoGenParent229ID31.collider = OBBCollider.Create(-1)
AutoGenParent229ID31.collider:SetOffset(5.44154,7,178.748)
AutoGenParent229ID31.collider:SetZAxis(0.617509,0,0.786564)
AutoGenParent229ID31.collider:SetHalfLengths(5,6.25,0.5)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID31.collider)
table.insert(colliders,AutoGenParent229ID31)
AutoGenParent229ID32 = {}
AutoGenParent229ID32.collider = OBBCollider.Create(-1)
AutoGenParent229ID32.collider:SetOffset(194.369,58.0954,39.8305)
AutoGenParent229ID32.collider:SetZAxis(-0.670457,0,0.741948)
AutoGenParent229ID32.collider:SetHalfLengths(0.5,12.901,27.2222)
AutoGenParent229ID24.collider:AddChild(AutoGenParent229ID32.collider)
table.insert(colliders,AutoGenParent229ID32)
AutoGenParent229ID33 = {}
AutoGenParent229ID33.collider = AABBCollider.Create(-1)
AutoGenParent229ID33.collider:SetOffset(0,0,0)
AutoGenParent229ID33.collider:SetMinPos(1.87186,0,59.8285)
AutoGenParent229ID33.collider:SetMaxPos(177.101,70.5033,203.691)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID33.collider)
table.insert(colliders,AutoGenParent229ID33)
AutoGenParent229ID34 = {}
AutoGenParent229ID34.collider = OBBCollider.Create(-1)
AutoGenParent229ID34.collider:SetOffset(55.0522,12,182.172)
AutoGenParent229ID34.collider:SetZAxis(-0.779628,0,-0.626243)
AutoGenParent229ID34.collider:SetHalfLengths(5,4.5,0.5)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID34.collider)
table.insert(colliders,AutoGenParent229ID34)
AutoGenParent229ID35 = {}
AutoGenParent229ID35.collider = OBBCollider.Create(-1)
AutoGenParent229ID35.collider:SetOffset(47.8056,12,186.651)
AutoGenParent229ID35.collider:SetZAxis(-0.227771,0,-0.973715)
AutoGenParent229ID35.collider:SetHalfLengths(6.75,5.75,0.5)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID35.collider)
table.insert(colliders,AutoGenParent229ID35)
AutoGenParent229ID36 = {}
AutoGenParent229ID36.collider = OBBCollider.Create(-1)
AutoGenParent229ID36.collider:SetOffset(34.4504,9,191.759)
AutoGenParent229ID36.collider:SetZAxis(-0.765715,0,0.643181)
AutoGenParent229ID36.collider:SetHalfLengths(2.61487,5.75,0.484497)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID36.collider)
table.insert(colliders,AutoGenParent229ID36)
AutoGenParent229ID37 = {}
AutoGenParent229ID37.collider = OBBCollider.Create(-1)
AutoGenParent229ID37.collider:SetOffset(4.30202,6,197.811)
AutoGenParent229ID37.collider:SetZAxis(0.900335,0,-0.435197)
AutoGenParent229ID37.collider:SetHalfLengths(4.25,5.5,0.5)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID37.collider)
table.insert(colliders,AutoGenParent229ID37)
AutoGenParent229ID38 = {}
AutoGenParent229ID38.collider = OBBCollider.Create(-1)
AutoGenParent229ID38.collider:SetOffset(2.80227,6,191.704)
AutoGenParent229ID38.collider:SetZAxis(0.995846,0,-0.0910506)
AutoGenParent229ID38.collider:SetHalfLengths(4.75,6,0.5)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID38.collider)
table.insert(colliders,AutoGenParent229ID38)
AutoGenParent229ID39 = {}
AutoGenParent229ID39.collider = OBBCollider.Create(-1)
AutoGenParent229ID39.collider:SetOffset(176.601,61.4354,82.604)
AutoGenParent229ID39.collider:SetZAxis(0,0,1)
AutoGenParent229ID39.collider:SetHalfLengths(0.5,9.06792,22.7755)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID39.collider)
table.insert(colliders,AutoGenParent229ID39)
AutoGenParent229ID40 = {}
AutoGenParent229ID40.collider = OBBCollider.Create(-1)
AutoGenParent229ID40.collider:SetOffset(24.1105,7.51023,191.988)
AutoGenParent229ID40.collider:SetZAxis(0.538193,0,0.842822)
AutoGenParent229ID40.collider:SetHalfLengths(0.5,4.83835,8.40855)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID40.collider)
table.insert(colliders,AutoGenParent229ID40)
AutoGenParent229ID41 = {}
AutoGenParent229ID41.collider = OBBCollider.Create(-1)
AutoGenParent229ID41.collider:SetOffset(17.5275,6.24736,200.669)
AutoGenParent229ID41.collider:SetZAxis(0.970537,0,-0.240954)
AutoGenParent229ID41.collider:SetHalfLengths(0.5,6.20047,10.5284)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID41.collider)
table.insert(colliders,AutoGenParent229ID41)
AutoGenParent229ID42 = {}
AutoGenParent229ID42.collider = OBBCollider.Create(-1)
AutoGenParent229ID42.collider:SetOffset(35.5543,10.7953,194.367)
AutoGenParent229ID42.collider:SetZAxis(-0.707107,0,-0.707107)
AutoGenParent229ID42.collider:SetHalfLengths(1.44603,3.89346,0.5)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID42.collider)
table.insert(colliders,AutoGenParent229ID42)
AutoGenParent229ID43 = {}
AutoGenParent229ID43.collider = OBBCollider.Create(-1)
AutoGenParent229ID43.collider:SetOffset(36.1122,8.98438,198.162)
AutoGenParent229ID43.collider:SetZAxis(0.371285,0,0.928519)
AutoGenParent229ID43.collider:SetHalfLengths(0.5,4,3.65968)
AutoGenParent229ID33.collider:AddChild(AutoGenParent229ID43.collider)
table.insert(colliders,AutoGenParent229ID43)
AutoGenParent229ID44 = {}
AutoGenParent229ID44.collider = AABBCollider.Create(-1)
AutoGenParent229ID44.collider:SetOffset(0,0,0)
AutoGenParent229ID44.collider:SetMinPos(3.63884,2.5,28.9949)
AutoGenParent229ID44.collider:SetMaxPos(235.735,78.3555,209.251)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID44.collider)
table.insert(colliders,AutoGenParent229ID44)
AutoGenParent229ID45 = {}
AutoGenParent229ID45.collider = OBBCollider.Create(-1)
AutoGenParent229ID45.collider:SetOffset(6.45969,7,200.601)
AutoGenParent229ID45.collider:SetZAxis(0.63835,0,-0.769746)
AutoGenParent229ID45.collider:SetHalfLengths(3.25,4.5,0.5)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID45.collider)
table.insert(colliders,AutoGenParent229ID45)
AutoGenParent229ID46 = {}
AutoGenParent229ID46.collider = OBBCollider.Create(-1)
AutoGenParent229ID46.collider:SetOffset(49.4084,12,201.832)
AutoGenParent229ID46.collider:SetZAxis(-0.753698,0,0.657221)
AutoGenParent229ID46.collider:SetHalfLengths(5.25,4.75,0.5)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID46.collider)
table.insert(colliders,AutoGenParent229ID46)
AutoGenParent229ID47 = {}
AutoGenParent229ID47.collider = OBBCollider.Create(-1)
AutoGenParent229ID47.collider:SetOffset(94.7039,28,192.132)
AutoGenParent229ID47.collider:SetZAxis(0.474159,0,0.880439)
AutoGenParent229ID47.collider:SetHalfLengths(7.5,7.25,0.5)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID47.collider)
table.insert(colliders,AutoGenParent229ID47)
AutoGenParent229ID48 = {}
AutoGenParent229ID48.collider = OBBCollider.Create(-1)
AutoGenParent229ID48.collider:SetOffset(141.56,62.9363,147.26)
AutoGenParent229ID48.collider:SetZAxis(-0.54617,0,0.837674)
AutoGenParent229ID48.collider:SetHalfLengths(0.5,15.4193,8.4473)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID48.collider)
table.insert(colliders,AutoGenParent229ID48)
AutoGenParent229ID49 = {}
AutoGenParent229ID49.collider = OBBCollider.Create(-1)
AutoGenParent229ID49.collider:SetOffset(154.796,64.2819,144.174)
AutoGenParent229ID49.collider:SetZAxis(-0.396287,0,0.918127)
AutoGenParent229ID49.collider:SetHalfLengths(13.1226,14.0206,0.5)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID49.collider)
table.insert(colliders,AutoGenParent229ID49)
AutoGenParent229ID50 = {}
AutoGenParent229ID50.collider = OBBCollider.Create(-1)
AutoGenParent229ID50.collider:SetOffset(213.89,58.4684,31.2186)
AutoGenParent229ID50.collider:SetZAxis(0.996885,0,-0.0788692)
AutoGenParent229ID50.collider:SetHalfLengths(0.5,18.1077,21.8744)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID50.collider)
table.insert(colliders,AutoGenParent229ID50)
AutoGenParent229ID51 = {}
AutoGenParent229ID51.collider = OBBCollider.Create(-1)
AutoGenParent229ID51.collider:SetOffset(32.6054,9.09375,205.458)
AutoGenParent229ID51.collider:SetZAxis(0.490125,0,0.871652)
AutoGenParent229ID51.collider:SetHalfLengths(0.5,4,4.06982)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID51.collider)
table.insert(colliders,AutoGenParent229ID51)
AutoGenParent229ID52 = {}
AutoGenParent229ID52.collider = OBBCollider.Create(-1)
AutoGenParent229ID52.collider:SetOffset(28.5373,9.88143,197.783)
AutoGenParent229ID52.collider:SetZAxis(0.364207,0,0.931318)
AutoGenParent229ID52.collider:SetHalfLengths(2.23414,4.02888,0.354584)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID52.collider)
table.insert(colliders,AutoGenParent229ID52)
AutoGenParent229ID53 = {}
AutoGenParent229ID53.collider = OBBCollider.Create(-1)
AutoGenParent229ID53.collider:SetOffset(43.1355,11.2446,199.977)
AutoGenParent229ID53.collider:SetZAxis(0.973475,0,-0.228792)
AutoGenParent229ID53.collider:SetHalfLengths(0.5,5.97899,6.29956)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID53.collider)
table.insert(colliders,AutoGenParent229ID53)
AutoGenParent229ID54 = {}
AutoGenParent229ID54.collider = OBBCollider.Create(-1)
AutoGenParent229ID54.collider:SetOffset(31.1048,8.78906,200.213)
AutoGenParent229ID54.collider:SetZAxis(0.399041,0,0.916933)
AutoGenParent229ID54.collider:SetHalfLengths(0.829996,4,3.72689)
AutoGenParent229ID44.collider:AddChild(AutoGenParent229ID54.collider)
table.insert(colliders,AutoGenParent229ID54)
AutoGenParent229ID55 = {}
AutoGenParent229ID55.collider = AABBCollider.Create(-1)
AutoGenParent229ID55.collider:SetOffset(0,0,0)
AutoGenParent229ID55.collider:SetMinPos(-9.87435,3.29102,105.185)
AutoGenParent229ID55.collider:SetMaxPos(185.173,77.457,226.281)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID55.collider)
table.insert(colliders,AutoGenParent229ID55)
AutoGenParent229ID56 = {}
AutoGenParent229ID56.collider = OBBCollider.Create(-1)
AutoGenParent229ID56.collider:SetOffset(54.7569,13,206.949)
AutoGenParent229ID56.collider:SetZAxis(-0.529293,0,0.848439)
AutoGenParent229ID56.collider:SetHalfLengths(2.5,6.5,0.5)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID56.collider)
table.insert(colliders,AutoGenParent229ID56)
AutoGenParent229ID57 = {}
AutoGenParent229ID57.collider = OBBCollider.Create(-1)
AutoGenParent229ID57.collider:SetOffset(61.1504,16,208.037)
AutoGenParent229ID57.collider:SetZAxis(0.0403177,0,0.999187)
AutoGenParent229ID57.collider:SetHalfLengths(4.5,9.25,0.5)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID57.collider)
table.insert(colliders,AutoGenParent229ID57)
AutoGenParent229ID58 = {}
AutoGenParent229ID58.collider = OBBCollider.Create(-1)
AutoGenParent229ID58.collider:SetOffset(72.5637,20,204.506)
AutoGenParent229ID58.collider:SetZAxis(0.424874,0,0.905252)
AutoGenParent229ID58.collider:SetHalfLengths(8,12.25,0.5)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID58.collider)
table.insert(colliders,AutoGenParent229ID58)
AutoGenParent229ID59 = {}
AutoGenParent229ID59.collider = OBBCollider.Create(-1)
AutoGenParent229ID59.collider:SetOffset(84.2015,26.8573,198.428)
AutoGenParent229ID59.collider:SetZAxis(0.623735,0,0.781636)
AutoGenParent229ID59.collider:SetHalfLengths(5.5,7,0.5)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID59.collider)
table.insert(colliders,AutoGenParent229ID59)
AutoGenParent229ID60 = {}
AutoGenParent229ID60.collider = OBBCollider.Create(-1)
AutoGenParent229ID60.collider:SetOffset(108,40,192)
AutoGenParent229ID60.collider:SetZAxis(-0.345483,0,0.938425)
AutoGenParent229ID60.collider:SetHalfLengths(14.25,17,0.5)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID60.collider)
table.insert(colliders,AutoGenParent229ID60)
AutoGenParent229ID61 = {}
AutoGenParent229ID61.collider = OBBCollider.Create(-1)
AutoGenParent229ID61.collider:SetOffset(141.038,56.1095,172.394)
AutoGenParent229ID61.collider:SetZAxis(0.201656,0,0.979456)
AutoGenParent229ID61.collider:SetHalfLengths(0.5,21.3475,18.6774)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID61.collider)
table.insert(colliders,AutoGenParent229ID61)
AutoGenParent229ID62 = {}
AutoGenParent229ID62.collider = OBBCollider.Create(-1)
AutoGenParent229ID62.collider:SetOffset(180.698,62,118.111)
AutoGenParent229ID62.collider:SetZAxis(0.298656,0,0.954361)
AutoGenParent229ID62.collider:SetHalfLengths(0.5,8.25,13.3884)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID62.collider)
table.insert(colliders,AutoGenParent229ID62)
AutoGenParent229ID63 = {}
AutoGenParent229ID63.collider = OBBCollider.Create(-1)
AutoGenParent229ID63.collider:SetOffset(97.0691,30.794,200.862)
AutoGenParent229ID63.collider:SetZAxis(-0.894485,0,0.447098)
AutoGenParent229ID63.collider:SetHalfLengths(0.593933,7.04586,4.57994)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID63.collider)
table.insert(colliders,AutoGenParent229ID63)
AutoGenParent229ID64 = {}
AutoGenParent229ID64.collider = OBBCollider.Create(-1)
AutoGenParent229ID64.collider:SetOffset(43.4584,10.573,212.737)
AutoGenParent229ID64.collider:SetZAxis(0.921964,0,0.387277)
AutoGenParent229ID64.collider:SetHalfLengths(0.5,4.74488,9.58544)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID64.collider)
table.insert(colliders,AutoGenParent229ID64)
AutoGenParent229ID65 = {}
AutoGenParent229ID65.collider = OBBCollider.Create(-1)
AutoGenParent229ID65.collider:SetOffset(-7.07435,6.99102,223.481)
AutoGenParent229ID65.collider:SetZAxis(0,0,1)
AutoGenParent229ID65.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID55.collider:AddChild(AutoGenParent229ID65.collider)
table.insert(colliders,AutoGenParent229ID65)
AutoGenParent229ID66 = {}
AutoGenParent229ID66.collider = AABBCollider.Create(-1)
AutoGenParent229ID66.collider:SetOffset(0,0,0)
AutoGenParent229ID66.collider:SetMinPos(52.3304,7.32448,29.1988)
AutoGenParent229ID66.collider:SetMaxPos(300.606,69.95,232.941)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID66.collider)
table.insert(colliders,AutoGenParent229ID66)
AutoGenParent229ID67 = {}
AutoGenParent229ID67.collider = OBBCollider.Create(-1)
AutoGenParent229ID67.collider:SetOffset(117.911,37.1709,200.394)
AutoGenParent229ID67.collider:SetZAxis(0.406929,0,0.91346)
AutoGenParent229ID67.collider:SetHalfLengths(0.5,9.36204,10.9041)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID67.collider)
table.insert(colliders,AutoGenParent229ID67)
AutoGenParent229ID68 = {}
AutoGenParent229ID68.collider = OBBCollider.Create(-1)
AutoGenParent229ID68.collider:SetOffset(184.806,61.5997,136.889)
AutoGenParent229ID68.collider:SetZAxis(0,0,1)
AutoGenParent229ID68.collider:SetHalfLengths(0.5,5.66944,5.84614)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID68.collider)
table.insert(colliders,AutoGenParent229ID68)
AutoGenParent229ID69 = {}
AutoGenParent229ID69.collider = OBBCollider.Create(-1)
AutoGenParent229ID69.collider:SetOffset(260.112,52.6605,48.757)
AutoGenParent229ID69.collider:SetZAxis(-0.428573,0,0.903507)
AutoGenParent229ID69.collider:SetHalfLengths(44.5816,17.2895,0.5)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID69.collider)
table.insert(colliders,AutoGenParent229ID69)
AutoGenParent229ID70 = {}
AutoGenParent229ID70.collider = OBBCollider.Create(-1)
AutoGenParent229ID70.collider:SetOffset(90.287,24.9402,213.474)
AutoGenParent229ID70.collider:SetZAxis(-0.908103,0,0.418747)
AutoGenParent229ID70.collider:SetHalfLengths(4.96577,3.72073,0.607376)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID70.collider)
table.insert(colliders,AutoGenParent229ID70)
AutoGenParent229ID71 = {}
AutoGenParent229ID71.collider = OBBCollider.Create(-1)
AutoGenParent229ID71.collider:SetOffset(106.309,32.7244,203.047)
AutoGenParent229ID71.collider:SetZAxis(0.797189,0,0.60373)
AutoGenParent229ID71.collider:SetHalfLengths(0.5,5.92793,7.17301)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID71.collider)
table.insert(colliders,AutoGenParent229ID71)
AutoGenParent229ID72 = {}
AutoGenParent229ID72.collider = OBBCollider.Create(-1)
AutoGenParent229ID72.collider:SetOffset(90.5686,26.7281,205.889)
AutoGenParent229ID72.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent229ID72.collider:SetHalfLengths(0.5,6.14712,4.2693)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID72.collider)
table.insert(colliders,AutoGenParent229ID72)
AutoGenParent229ID73 = {}
AutoGenParent229ID73.collider = OBBCollider.Create(-1)
AutoGenParent229ID73.collider:SetOffset(60.2626,12.9969,216.789)
AutoGenParent229ID73.collider:SetZAxis(-0.99993,0,-0.0118487)
AutoGenParent229ID73.collider:SetHalfLengths(0.674427,5.67245,7.92471)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID73.collider)
table.insert(colliders,AutoGenParent229ID73)
AutoGenParent229ID74 = {}
AutoGenParent229ID74.collider = OBBCollider.Create(-1)
AutoGenParent229ID74.collider:SetOffset(83.6042,25.556,224.591)
AutoGenParent229ID74.collider:SetZAxis(0.897094,0.0491485,0.439098)
AutoGenParent229ID74.collider:SetHalfLengths(0.5,14.6123,17.8267)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID74.collider)
table.insert(colliders,AutoGenParent229ID74)
AutoGenParent229ID75 = {}
AutoGenParent229ID75.collider = OBBCollider.Create(-1)
AutoGenParent229ID75.collider:SetOffset(173.363,56.2095,150.617)
AutoGenParent229ID75.collider:SetZAxis(-0.12898,0,0.991647)
AutoGenParent229ID75.collider:SetHalfLengths(6.86769,5.01493,0.5)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID75.collider)
table.insert(colliders,AutoGenParent229ID75)
AutoGenParent229ID76 = {}
AutoGenParent229ID76.collider = OBBCollider.Create(-1)
AutoGenParent229ID76.collider:SetOffset(73.8203,17.9271,220.379)
AutoGenParent229ID76.collider:SetZAxis(-0.130522,-0.284707,0.949687)
AutoGenParent229ID76.collider:SetHalfLengths(2.8,4.83819,2.8)
AutoGenParent229ID66.collider:AddChild(AutoGenParent229ID76.collider)
table.insert(colliders,AutoGenParent229ID76)
AutoGenParent229ID77 = {}
AutoGenParent229ID77.collider = AABBCollider.Create(-1)
AutoGenParent229ID77.collider:SetOffset(0,0,0)
AutoGenParent229ID77.collider:SetMinPos(11.9669,-1.27539,142.388)
AutoGenParent229ID77.collider:SetMaxPos(185.889,64.8781,241.86)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID77.collider)
table.insert(colliders,AutoGenParent229ID77)
AutoGenParent229ID78 = {}
AutoGenParent229ID78.collider = OBBCollider.Create(-1)
AutoGenParent229ID78.collider:SetOffset(125.175,37.5857,210.972)
AutoGenParent229ID78.collider:SetZAxis(0.068262,0,0.997667)
AutoGenParent229ID78.collider:SetHalfLengths(2.37066,4.8916,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID78.collider)
table.insert(colliders,AutoGenParent229ID78)
AutoGenParent229ID79 = {}
AutoGenParent229ID79.collider = OBBCollider.Create(-1)
AutoGenParent229ID79.collider:SetOffset(133.336,37.8301,207.834)
AutoGenParent229ID79.collider:SetZAxis(0.490085,0,0.871675)
AutoGenParent229ID79.collider:SetHalfLengths(6.46809,4.89245,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID79.collider)
table.insert(colliders,AutoGenParent229ID79)
AutoGenParent229ID80 = {}
AutoGenParent229ID80.collider = OBBCollider.Create(-1)
AutoGenParent229ID80.collider:SetOffset(100.212,28.1139,220.179)
AutoGenParent229ID80.collider:SetZAxis(-0.313659,0,0.949536)
AutoGenParent229ID80.collider:SetHalfLengths(8.51867,5.49728,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID80.collider)
table.insert(colliders,AutoGenParent229ID80)
AutoGenParent229ID81 = {}
AutoGenParent229ID81.collider = OBBCollider.Create(-1)
AutoGenParent229ID81.collider:SetOffset(110.86,31.5587,222.132)
AutoGenParent229ID81.collider:SetZAxis(0.363101,0,0.93175)
AutoGenParent229ID81.collider:SetHalfLengths(3.49949,4.02829,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID81.collider)
table.insert(colliders,AutoGenParent229ID81)
AutoGenParent229ID82 = {}
AutoGenParent229ID82.collider = OBBCollider.Create(-1)
AutoGenParent229ID82.collider:SetOffset(114.768,36.7858,217.938)
AutoGenParent229ID82.collider:SetZAxis(0.919051,0,0.394139)
AutoGenParent229ID82.collider:SetHalfLengths(3.35626,6.38632,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID82.collider)
table.insert(colliders,AutoGenParent229ID82)
AutoGenParent229ID83 = {}
AutoGenParent229ID83.collider = OBBCollider.Create(-1)
AutoGenParent229ID83.collider:SetOffset(113.785,38.8959,210.773)
AutoGenParent229ID83.collider:SetZAxis(0.909768,0,-0.415118)
AutoGenParent229ID83.collider:SetHalfLengths(4.93813,5.25616,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID83.collider)
table.insert(colliders,AutoGenParent229ID83)
AutoGenParent229ID84 = {}
AutoGenParent229ID84.collider = OBBCollider.Create(-1)
AutoGenParent229ID84.collider:SetOffset(141.993,43.2297,198.398)
AutoGenParent229ID84.collider:SetZAxis(-0.338253,0.000578738,0.941055)
AutoGenParent229ID84.collider:SetHalfLengths(0.5,11.9185,8.44772)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID84.collider)
table.insert(colliders,AutoGenParent229ID84)
AutoGenParent229ID85 = {}
AutoGenParent229ID85.collider = OBBCollider.Create(-1)
AutoGenParent229ID85.collider:SetOffset(182.429,58.9652,147.346)
AutoGenParent229ID85.collider:SetZAxis(0.867123,-0.0527169,0.495297)
AutoGenParent229ID85.collider:SetHalfLengths(5.40083,5.71534,0.5)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID85.collider)
table.insert(colliders,AutoGenParent229ID85)
AutoGenParent229ID86 = {}
AutoGenParent229ID86.collider = OBBCollider.Create(-1)
AutoGenParent229ID86.collider:SetOffset(66.669,2.42461,239.06)
AutoGenParent229ID86.collider:SetZAxis(0,0,1)
AutoGenParent229ID86.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID77.collider:AddChild(AutoGenParent229ID86.collider)
table.insert(colliders,AutoGenParent229ID86)
AutoGenParent229ID87 = {}
AutoGenParent229ID87.collider = AABBCollider.Create(-1)
AutoGenParent229ID87.collider:SetOffset(0,0,0)
AutoGenParent229ID87.collider:SetMinPos(75.1682,-0.0905709,52.2018)
AutoGenParent229ID87.collider:SetMaxPos(341.082,73.8487,265.082)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID87.collider)
table.insert(colliders,AutoGenParent229ID87)
AutoGenParent229ID88 = {}
AutoGenParent229ID88.collider = OBBCollider.Create(-1)
AutoGenParent229ID88.collider:SetOffset(126.338,33.4473,228.83)
AutoGenParent229ID88.collider:SetZAxis(-0.0423263,0,0.999104)
AutoGenParent229ID88.collider:SetHalfLengths(0.5,4.07461,4.34615)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID88.collider)
table.insert(colliders,AutoGenParent229ID88)
AutoGenParent229ID89 = {}
AutoGenParent229ID89.collider = OBBCollider.Create(-1)
AutoGenParent229ID89.collider:SetOffset(133.49,36.6591,224.246)
AutoGenParent229ID89.collider:SetZAxis(0.0932386,0,0.995644)
AutoGenParent229ID89.collider:SetHalfLengths(7.67372,5.71174,0.5)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID89.collider)
table.insert(colliders,AutoGenParent229ID89)
AutoGenParent229ID90 = {}
AutoGenParent229ID90.collider = OBBCollider.Create(-1)
AutoGenParent229ID90.collider:SetOffset(137.673,36.5255,222.988)
AutoGenParent229ID90.collider:SetZAxis(0.347059,0,0.937843)
AutoGenParent229ID90.collider:SetHalfLengths(7.33991,5.5962,0.5)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID90.collider)
table.insert(colliders,AutoGenParent229ID90)
AutoGenParent229ID91 = {}
AutoGenParent229ID91.collider = OBBCollider.Create(-1)
AutoGenParent229ID91.collider:SetOffset(307.673,49.0794,88.9136)
AutoGenParent229ID91.collider:SetZAxis(-0.740246,0,0.672336)
AutoGenParent229ID91.collider:SetHalfLengths(49.1399,24.7693,0.5)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID91.collider)
table.insert(colliders,AutoGenParent229ID91)
AutoGenParent229ID92 = {}
AutoGenParent229ID92.collider = OBBCollider.Create(-1)
AutoGenParent229ID92.collider:SetOffset(112.962,31.1871,232.315)
AutoGenParent229ID92.collider:SetZAxis(-0.999982,0,0.00595741)
AutoGenParent229ID92.collider:SetHalfLengths(0.5,11.3804,14.2275)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID92.collider)
table.insert(colliders,AutoGenParent229ID92)
AutoGenParent229ID93 = {}
AutoGenParent229ID93.collider = OBBCollider.Create(-1)
AutoGenParent229ID93.collider:SetOffset(98.875,26.4969,238.625)
AutoGenParent229ID93.collider:SetZAxis(0,0,1)
AutoGenParent229ID93.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID93.collider)
table.insert(colliders,AutoGenParent229ID93)
AutoGenParent229ID94 = {}
AutoGenParent229ID94.collider = OBBCollider.Create(-1)
AutoGenParent229ID94.collider:SetOffset(147.612,37.8097,231.742)
AutoGenParent229ID94.collider:SetZAxis(0.967628,0,-0.252382)
AutoGenParent229ID94.collider:SetHalfLengths(12.0475,7.16809,1.02982)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID94.collider)
table.insert(colliders,AutoGenParent229ID94)
AutoGenParent229ID95 = {}
AutoGenParent229ID95.collider = OBBCollider.Create(-1)
AutoGenParent229ID95.collider:SetOffset(178.5,42.1563,209.625)
AutoGenParent229ID95.collider:SetZAxis(0,0,1)
AutoGenParent229ID95.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID87.collider:AddChild(AutoGenParent229ID95.collider)
table.insert(colliders,AutoGenParent229ID95)
AutoGenParent229ID96 = {}
AutoGenParent229ID96.collider = AABBCollider.Create(-1)
AutoGenParent229ID96.collider:SetOffset(0,0,0)
AutoGenParent229ID96.collider:SetMinPos(66.5596,-4.23212,135.375)
AutoGenParent229ID96.collider:SetMaxPos(316.5,75.65,317.878)
AutoGenParent229ID1.collider:AddChild(AutoGenParent229ID96.collider)
table.insert(colliders,AutoGenParent229ID96)
AutoGenParent229ID97 = {}
AutoGenParent229ID97.collider = OBBCollider.Create(-1)
AutoGenParent229ID97.collider:SetOffset(193.5,71.95,255.125)
AutoGenParent229ID97.collider:SetZAxis(0,0,1)
AutoGenParent229ID97.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID97.collider)
table.insert(colliders,AutoGenParent229ID97)
AutoGenParent229ID98 = {}
AutoGenParent229ID98.collider = OBBCollider.Create(-1)
AutoGenParent229ID98.collider:SetOffset(217.404,59.7579,249.4)
AutoGenParent229ID98.collider:SetZAxis(0.518697,0,-0.854958)
AutoGenParent229ID98.collider:SetHalfLengths(9.25164,5.92891,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID98.collider)
table.insert(colliders,AutoGenParent229ID98)
AutoGenParent229ID99 = {}
AutoGenParent229ID99.collider = OBBCollider.Create(-1)
AutoGenParent229ID99.collider:SetOffset(237.276,62.932,250.283)
AutoGenParent229ID99.collider:SetZAxis(-0.224193,0,-0.974545)
AutoGenParent229ID99.collider:SetHalfLengths(16.7637,4.66546,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID99.collider)
table.insert(colliders,AutoGenParent229ID99)
AutoGenParent229ID100 = {}
AutoGenParent229ID100.collider = OBBCollider.Create(-1)
AutoGenParent229ID100.collider:SetOffset(275.762,60.1068,249.015)
AutoGenParent229ID100.collider:SetZAxis(0.102682,0,-0.994714)
AutoGenParent229ID100.collider:SetHalfLengths(22.6822,7.94091,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID100.collider)
table.insert(colliders,AutoGenParent229ID100)
AutoGenParent229ID101 = {}
AutoGenParent229ID101.collider = OBBCollider.Create(-1)
AutoGenParent229ID101.collider:SetOffset(272.878,60.8679,234.75)
AutoGenParent229ID101.collider:SetZAxis(-0.0628568,0,0.998023)
AutoGenParent229ID101.collider:SetHalfLengths(17.8764,9.15899,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID101.collider)
table.insert(colliders,AutoGenParent229ID101)
AutoGenParent229ID102 = {}
AutoGenParent229ID102.collider = OBBCollider.Create(-1)
AutoGenParent229ID102.collider:SetOffset(247.802,62.164,233.623)
AutoGenParent229ID102.collider:SetZAxis(0,0,1)
AutoGenParent229ID102.collider:SetHalfLengths(7.81145,7.26974,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID102.collider)
table.insert(colliders,AutoGenParent229ID102)
AutoGenParent229ID103 = {}
AutoGenParent229ID103.collider = OBBCollider.Create(-1)
AutoGenParent229ID103.collider:SetOffset(236.505,61.3086,235.331)
AutoGenParent229ID103.collider:SetZAxis(0.340784,0,0.940142)
AutoGenParent229ID103.collider:SetHalfLengths(5.18256,7.29406,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID103.collider)
table.insert(colliders,AutoGenParent229ID103)
AutoGenParent229ID104 = {}
AutoGenParent229ID104.collider = OBBCollider.Create(-1)
AutoGenParent229ID104.collider:SetOffset(316,35.1875,135.875)
AutoGenParent229ID104.collider:SetZAxis(0,0,1)
AutoGenParent229ID104.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID96.collider:AddChild(AutoGenParent229ID104.collider)
table.insert(colliders,AutoGenParent229ID104)
AutoGenParent229ID105 = {}
AutoGenParent229ID105.collider = AABBCollider.Create(-1)
AutoGenParent229ID105.collider:SetOffset(0,0,0)
AutoGenParent229ID105.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent229ID105.collider:SetMaxPos(314.391,68.5572,312.25)
AutoGenParent229ID.collider:AddChild(AutoGenParent229ID105.collider)
table.insert(colliders,AutoGenParent229ID105)
AutoGenParent229ID106 = {}
AutoGenParent229ID106.collider = AABBCollider.Create(-1)
AutoGenParent229ID106.collider:SetOffset(0,0,0)
AutoGenParent229ID106.collider:SetMinPos(5.14364,3,165.157)
AutoGenParent229ID106.collider:SetMaxPos(59.3513,15.75,177.128)
AutoGenParent229ID105.collider:AddChild(AutoGenParent229ID106.collider)
table.insert(colliders,AutoGenParent229ID106)
AutoGenParent229ID107 = {}
AutoGenParent229ID107.collider = OBBCollider.Create(-1)
AutoGenParent229ID107.collider:SetOffset(49.0721,10,165.871)
AutoGenParent229ID107.collider:SetZAxis(0.0659963,0,0.99782)
AutoGenParent229ID107.collider:SetHalfLengths(3.25,3.5,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID107.collider)
table.insert(colliders,AutoGenParent229ID107)
AutoGenParent229ID108 = {}
AutoGenParent229ID108.collider = OBBCollider.Create(-1)
AutoGenParent229ID108.collider:SetOffset(55.1278,11,169.08)
AutoGenParent229ID108.collider:SetZAxis(-0.672089,0,0.74047)
AutoGenParent229ID108.collider:SetHalfLengths(5.25,4.75,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID108.collider)
table.insert(colliders,AutoGenParent229ID108)
AutoGenParent229ID109 = {}
AutoGenParent229ID109.collider = OBBCollider.Create(-1)
AutoGenParent229ID109.collider:SetOffset(26.6681,8,169.626)
AutoGenParent229ID109.collider:SetZAxis(-0.595609,0,-0.803275)
AutoGenParent229ID109.collider:SetHalfLengths(2.25,3,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID109.collider)
table.insert(colliders,AutoGenParent229ID109)
AutoGenParent229ID110 = {}
AutoGenParent229ID110.collider = OBBCollider.Create(-1)
AutoGenParent229ID110.collider:SetOffset(22.3577,8,175.096)
AutoGenParent229ID110.collider:SetZAxis(-0.997205,0,0.0747166)
AutoGenParent229ID110.collider:SetHalfLengths(2,4.5,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID110.collider)
table.insert(colliders,AutoGenParent229ID110)
AutoGenParent229ID111 = {}
AutoGenParent229ID111.collider = OBBCollider.Create(-1)
AutoGenParent229ID111.collider:SetOffset(29.6417,8,168.466)
AutoGenParent229ID111.collider:SetZAxis(-0.0377485,0,-0.999287)
AutoGenParent229ID111.collider:SetHalfLengths(1.4049,5,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID111.collider)
table.insert(colliders,AutoGenParent229ID111)
AutoGenParent229ID112 = {}
AutoGenParent229ID112.collider = OBBCollider.Create(-1)
AutoGenParent229ID112.collider:SetOffset(9.41838,10,174.488)
AutoGenParent229ID112.collider:SetZAxis(0.897614,0,0.440783)
AutoGenParent229ID112.collider:SetHalfLengths(1.25,4.5,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID112.collider)
table.insert(colliders,AutoGenParent229ID112)
AutoGenParent229ID113 = {}
AutoGenParent229ID113.collider = OBBCollider.Create(-1)
AutoGenParent229ID113.collider:SetOffset(9.58863,9,172.07)
AutoGenParent229ID113.collider:SetZAxis(0.973328,0,-0.22942)
AutoGenParent229ID113.collider:SetHalfLengths(1.5,3.75,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID113.collider)
table.insert(colliders,AutoGenParent229ID113)
AutoGenParent229ID114 = {}
AutoGenParent229ID114.collider = OBBCollider.Create(-1)
AutoGenParent229ID114.collider:SetOffset(7.46277,9,168.952)
AutoGenParent229ID114.collider:SetZAxis(0.697603,0,-0.716485)
AutoGenParent229ID114.collider:SetHalfLengths(2.75,5,0.5)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID114.collider)
table.insert(colliders,AutoGenParent229ID114)
AutoGenParent229ID115 = {}
AutoGenParent229ID115.collider = OBBCollider.Create(-1)
AutoGenParent229ID115.collider:SetOffset(32.5441,8.30676,171.11)
AutoGenParent229ID115.collider:SetZAxis(0.853695,0,-0.520774)
AutoGenParent229ID115.collider:SetHalfLengths(3.37301,3.85947,0.400215)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID115.collider)
table.insert(colliders,AutoGenParent229ID115)
AutoGenParent229ID116 = {}
AutoGenParent229ID116.collider = OBBCollider.Create(-1)
AutoGenParent229ID116.collider:SetOffset(23.756,7.84791,172.315)
AutoGenParent229ID116.collider:SetZAxis(-0.656941,0,-0.753942)
AutoGenParent229ID116.collider:SetHalfLengths(2.15604,3.17996,0.705078)
AutoGenParent229ID106.collider:AddChild(AutoGenParent229ID116.collider)
table.insert(colliders,AutoGenParent229ID116)
AutoGenParent229ID117 = {}
AutoGenParent229ID117.collider = AABBCollider.Create(-1)
AutoGenParent229ID117.collider:SetOffset(0,0,0)
AutoGenParent229ID117.collider:SetMinPos(102.95,23.2717,160.125)
AutoGenParent229ID117.collider:SetMaxPos(235.125,54.1795,265.55)
AutoGenParent229ID105.collider:AddChild(AutoGenParent229ID117.collider)
table.insert(colliders,AutoGenParent229ID117)
AutoGenParent229ID118 = {}
AutoGenParent229ID118.collider = OBBCollider.Create(-1)
AutoGenParent229ID118.collider:SetOffset(124.375,32.8802,260.75)
AutoGenParent229ID118.collider:SetZAxis(0,0,1)
AutoGenParent229ID118.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID118.collider)
table.insert(colliders,AutoGenParent229ID118)
AutoGenParent229ID119 = {}
AutoGenParent229ID119.collider = OBBCollider.Create(-1)
AutoGenParent229ID119.collider:SetOffset(105.75,26.9717,262.75)
AutoGenParent229ID119.collider:SetZAxis(0,0,1)
AutoGenParent229ID119.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID119.collider)
table.insert(colliders,AutoGenParent229ID119)
AutoGenParent229ID120 = {}
AutoGenParent229ID120.collider = OBBCollider.Create(-1)
AutoGenParent229ID120.collider:SetOffset(152.875,39.95,243.375)
AutoGenParent229ID120.collider:SetZAxis(0,0,1)
AutoGenParent229ID120.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID120.collider)
table.insert(colliders,AutoGenParent229ID120)
AutoGenParent229ID121 = {}
AutoGenParent229ID121.collider = OBBCollider.Create(-1)
AutoGenParent229ID121.collider:SetOffset(165.742,45.3755,245.272)
AutoGenParent229ID121.collider:SetZAxis(-0.371106,0,0.928591)
AutoGenParent229ID121.collider:SetHalfLengths(17.4133,8.80402,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID121.collider)
table.insert(colliders,AutoGenParent229ID121)
AutoGenParent229ID122 = {}
AutoGenParent229ID122.collider = OBBCollider.Create(-1)
AutoGenParent229ID122.collider:SetOffset(183.5,46.0938,226)
AutoGenParent229ID122.collider:SetZAxis(0,0,1)
AutoGenParent229ID122.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID122.collider)
table.insert(colliders,AutoGenParent229ID122)
AutoGenParent229ID123 = {}
AutoGenParent229ID123.collider = OBBCollider.Create(-1)
AutoGenParent229ID123.collider:SetOffset(177.125,42.0313,219.125)
AutoGenParent229ID123.collider:SetZAxis(0,0,1)
AutoGenParent229ID123.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID123.collider)
table.insert(colliders,AutoGenParent229ID123)
AutoGenParent229ID124 = {}
AutoGenParent229ID124.collider = OBBCollider.Create(-1)
AutoGenParent229ID124.collider:SetOffset(193.375,41.3438,204.25)
AutoGenParent229ID124.collider:SetZAxis(0,0,1)
AutoGenParent229ID124.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID124.collider)
table.insert(colliders,AutoGenParent229ID124)
AutoGenParent229ID125 = {}
AutoGenParent229ID125.collider = OBBCollider.Create(-1)
AutoGenParent229ID125.collider:SetOffset(206,39.6563,193)
AutoGenParent229ID125.collider:SetZAxis(0,0,1)
AutoGenParent229ID125.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID125.collider)
table.insert(colliders,AutoGenParent229ID125)
AutoGenParent229ID126 = {}
AutoGenParent229ID126.collider = OBBCollider.Create(-1)
AutoGenParent229ID126.collider:SetOffset(216.625,36.3125,179.25)
AutoGenParent229ID126.collider:SetZAxis(0,0,1)
AutoGenParent229ID126.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID126.collider)
table.insert(colliders,AutoGenParent229ID126)
AutoGenParent229ID127 = {}
AutoGenParent229ID127.collider = OBBCollider.Create(-1)
AutoGenParent229ID127.collider:SetOffset(234.625,36.3125,160.625)
AutoGenParent229ID127.collider:SetZAxis(0,0,1)
AutoGenParent229ID127.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID117.collider:AddChild(AutoGenParent229ID127.collider)
table.insert(colliders,AutoGenParent229ID127)
AutoGenParent229ID128 = {}
AutoGenParent229ID128.collider = AABBCollider.Create(-1)
AutoGenParent229ID128.collider:SetOffset(0,0,0)
AutoGenParent229ID128.collider:SetMinPos(165.467,33.9164,128)
AutoGenParent229ID128.collider:SetMaxPos(292.5,68.5572,265.158)
AutoGenParent229ID105.collider:AddChild(AutoGenParent229ID128.collider)
table.insert(colliders,AutoGenParent229ID128)
AutoGenParent229ID129 = {}
AutoGenParent229ID129.collider = OBBCollider.Create(-1)
AutoGenParent229ID129.collider:SetOffset(182.339,63.5862,256.35)
AutoGenParent229ID129.collider:SetZAxis(-0.0945252,0.208442,0.973456)
AutoGenParent229ID129.collider:SetHalfLengths(2.68076,3.7,2.8)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID129.collider)
table.insert(colliders,AutoGenParent229ID129)
AutoGenParent229ID130 = {}
AutoGenParent229ID130.collider = OBBCollider.Create(-1)
AutoGenParent229ID130.collider:SetOffset(187.793,51.6983,247.419)
AutoGenParent229ID130.collider:SetZAxis(-0.574462,0,-0.818531)
AutoGenParent229ID130.collider:SetHalfLengths(8.32278,5.48897,0.648575)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID130.collider)
table.insert(colliders,AutoGenParent229ID130)
AutoGenParent229ID131 = {}
AutoGenParent229ID131.collider = OBBCollider.Create(-1)
AutoGenParent229ID131.collider:SetOffset(201.825,55.617,244.207)
AutoGenParent229ID131.collider:SetZAxis(0.114227,0,-0.993455)
AutoGenParent229ID131.collider:SetHalfLengths(7.96354,5.05569,1.03339)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID131.collider)
table.insert(colliders,AutoGenParent229ID131)
AutoGenParent229ID132 = {}
AutoGenParent229ID132.collider = OBBCollider.Create(-1)
AutoGenParent229ID132.collider:SetOffset(209.975,52.6271,224.413)
AutoGenParent229ID132.collider:SetZAxis(0.241666,0,0.970359)
AutoGenParent229ID132.collider:SetHalfLengths(7.97708,7.57346,0.5)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID132.collider)
table.insert(colliders,AutoGenParent229ID132)
AutoGenParent229ID133 = {}
AutoGenParent229ID133.collider = OBBCollider.Create(-1)
AutoGenParent229ID133.collider:SetOffset(195.449,50.3358,227.236)
AutoGenParent229ID133.collider:SetZAxis(0.120108,0,0.992761)
AutoGenParent229ID133.collider:SetHalfLengths(7.05114,2.94977,0.5)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID133.collider)
table.insert(colliders,AutoGenParent229ID133)
AutoGenParent229ID134 = {}
AutoGenParent229ID134.collider = OBBCollider.Create(-1)
AutoGenParent229ID134.collider:SetOffset(256.5,37.7188,140.5)
AutoGenParent229ID134.collider:SetZAxis(0,0,1)
AutoGenParent229ID134.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID134.collider)
table.insert(colliders,AutoGenParent229ID134)
AutoGenParent229ID135 = {}
AutoGenParent229ID135.collider = OBBCollider.Create(-1)
AutoGenParent229ID135.collider:SetOffset(271.5,37.375,129.875)
AutoGenParent229ID135.collider:SetZAxis(0,0,1)
AutoGenParent229ID135.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID135.collider)
table.insert(colliders,AutoGenParent229ID135)
AutoGenParent229ID136 = {}
AutoGenParent229ID136.collider = OBBCollider.Create(-1)
AutoGenParent229ID136.collider:SetOffset(292,38.0625,128.5)
AutoGenParent229ID136.collider:SetZAxis(0,0,1)
AutoGenParent229ID136.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID136.collider)
table.insert(colliders,AutoGenParent229ID136)
AutoGenParent229ID137 = {}
AutoGenParent229ID137.collider = OBBCollider.Create(-1)
AutoGenParent229ID137.collider:SetOffset(224.713,59.4225,229.973)
AutoGenParent229ID137.collider:SetZAxis(0.724917,0,0.688836)
AutoGenParent229ID137.collider:SetHalfLengths(0.550316,8.24128,10.557)
AutoGenParent229ID128.collider:AddChild(AutoGenParent229ID137.collider)
table.insert(colliders,AutoGenParent229ID137)
AutoGenParent229ID138 = {}
AutoGenParent229ID138.collider = AABBCollider.Create(-1)
AutoGenParent229ID138.collider:SetOffset(0,0,0)
AutoGenParent229ID138.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent229ID138.collider:SetMaxPos(314.391,67.226,312.25)
AutoGenParent229ID105.collider:AddChild(AutoGenParent229ID138.collider)
table.insert(colliders,AutoGenParent229ID138)
AutoGenParent229ID139 = {}
AutoGenParent229ID139.collider = OBBCollider.Create(-1)
AutoGenParent229ID139.collider:SetOffset(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent229ID139.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent229ID139.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent229ID138.collider:AddChild(AutoGenParent229ID139.collider)
table.insert(colliders,AutoGenParent229ID139)
AutoGenParent229ID140 = {}
AutoGenParent229ID140.collider = OBBCollider.Create(-1)
AutoGenParent229ID140.collider:SetOffset(198.875,36.7639,310.25)
AutoGenParent229ID140.collider:SetZAxis(0,0,1)
AutoGenParent229ID140.collider:SetHalfLengths(2,5,2)
AutoGenParent229ID138.collider:AddChild(AutoGenParent229ID140.collider)
table.insert(colliders,AutoGenParent229ID140)
AutoGenParent229ID141 = {}
AutoGenParent229ID141.collider = OBBCollider.Create(-1)
AutoGenParent229ID141.collider:SetOffset(195.5,35.2781,308.25)
AutoGenParent229ID141.collider:SetZAxis(0,0,1)
AutoGenParent229ID141.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent229ID138.collider:AddChild(AutoGenParent229ID141.collider)
table.insert(colliders,AutoGenParent229ID141)
AutoGenParent229ID142 = {}
AutoGenParent229ID142.collider = OBBCollider.Create(-1)
AutoGenParent229ID142.collider:SetOffset(306.014,58.8756,257.684)
AutoGenParent229ID142.collider:SetZAxis(-0.634415,0,0.772993)
AutoGenParent229ID142.collider:SetHalfLengths(10.4271,8.3504,0.5)
AutoGenParent229ID138.collider:AddChild(AutoGenParent229ID142.collider)
table.insert(colliders,AutoGenParent229ID142)
CollisionHandler.AddAABB(AutoGenParent229ID.collider, 3)
AutoGenParent229ID1 = nil
AutoGenParent229ID2 = nil
AutoGenParent229ID3 = nil
AutoGenParent229ID4 = nil
AutoGenParent229ID5 = nil
AutoGenParent229ID6 = nil
AutoGenParent229ID7 = nil
AutoGenParent229ID8 = nil
AutoGenParent229ID9 = nil
AutoGenParent229ID10 = nil
AutoGenParent229ID11 = nil
AutoGenParent229ID12 = nil
AutoGenParent229ID13 = nil
AutoGenParent229ID14 = nil
AutoGenParent229ID15 = nil
AutoGenParent229ID16 = nil
AutoGenParent229ID17 = nil
AutoGenParent229ID18 = nil
AutoGenParent229ID19 = nil
AutoGenParent229ID20 = nil
AutoGenParent229ID21 = nil
AutoGenParent229ID22 = nil
AutoGenParent229ID23 = nil
AutoGenParent229ID24 = nil
AutoGenParent229ID25 = nil
AutoGenParent229ID26 = nil
AutoGenParent229ID27 = nil
AutoGenParent229ID28 = nil
AutoGenParent229ID29 = nil
AutoGenParent229ID30 = nil
AutoGenParent229ID31 = nil
AutoGenParent229ID32 = nil
AutoGenParent229ID33 = nil
AutoGenParent229ID34 = nil
AutoGenParent229ID35 = nil
AutoGenParent229ID36 = nil
AutoGenParent229ID37 = nil
AutoGenParent229ID38 = nil
AutoGenParent229ID39 = nil
AutoGenParent229ID40 = nil
AutoGenParent229ID41 = nil
AutoGenParent229ID42 = nil
AutoGenParent229ID43 = nil
AutoGenParent229ID44 = nil
AutoGenParent229ID45 = nil
AutoGenParent229ID46 = nil
AutoGenParent229ID47 = nil
AutoGenParent229ID48 = nil
AutoGenParent229ID49 = nil
AutoGenParent229ID50 = nil
AutoGenParent229ID51 = nil
AutoGenParent229ID52 = nil
AutoGenParent229ID53 = nil
AutoGenParent229ID54 = nil
AutoGenParent229ID55 = nil
AutoGenParent229ID56 = nil
AutoGenParent229ID57 = nil
AutoGenParent229ID58 = nil
AutoGenParent229ID59 = nil
AutoGenParent229ID60 = nil
AutoGenParent229ID61 = nil
AutoGenParent229ID62 = nil
AutoGenParent229ID63 = nil
AutoGenParent229ID64 = nil
AutoGenParent229ID65 = nil
AutoGenParent229ID66 = nil
AutoGenParent229ID67 = nil
AutoGenParent229ID68 = nil
AutoGenParent229ID69 = nil
AutoGenParent229ID70 = nil
AutoGenParent229ID71 = nil
AutoGenParent229ID72 = nil
AutoGenParent229ID73 = nil
AutoGenParent229ID74 = nil
AutoGenParent229ID75 = nil
AutoGenParent229ID76 = nil
AutoGenParent229ID77 = nil
AutoGenParent229ID78 = nil
AutoGenParent229ID79 = nil
AutoGenParent229ID80 = nil
AutoGenParent229ID81 = nil
AutoGenParent229ID82 = nil
AutoGenParent229ID83 = nil
AutoGenParent229ID84 = nil
AutoGenParent229ID85 = nil
AutoGenParent229ID86 = nil
AutoGenParent229ID87 = nil
AutoGenParent229ID88 = nil
AutoGenParent229ID89 = nil
AutoGenParent229ID90 = nil
AutoGenParent229ID91 = nil
AutoGenParent229ID92 = nil
AutoGenParent229ID93 = nil
AutoGenParent229ID94 = nil
AutoGenParent229ID95 = nil
AutoGenParent229ID96 = nil
AutoGenParent229ID97 = nil
AutoGenParent229ID98 = nil
AutoGenParent229ID99 = nil
AutoGenParent229ID100 = nil
AutoGenParent229ID101 = nil
AutoGenParent229ID102 = nil
AutoGenParent229ID103 = nil
AutoGenParent229ID104 = nil
AutoGenParent229ID105 = nil
AutoGenParent229ID106 = nil
AutoGenParent229ID107 = nil
AutoGenParent229ID108 = nil
AutoGenParent229ID109 = nil
AutoGenParent229ID110 = nil
AutoGenParent229ID111 = nil
AutoGenParent229ID112 = nil
AutoGenParent229ID113 = nil
AutoGenParent229ID114 = nil
AutoGenParent229ID115 = nil
AutoGenParent229ID116 = nil
AutoGenParent229ID117 = nil
AutoGenParent229ID118 = nil
AutoGenParent229ID119 = nil
AutoGenParent229ID120 = nil
AutoGenParent229ID121 = nil
AutoGenParent229ID122 = nil
AutoGenParent229ID123 = nil
AutoGenParent229ID124 = nil
AutoGenParent229ID125 = nil
AutoGenParent229ID126 = nil
AutoGenParent229ID127 = nil
AutoGenParent229ID128 = nil
AutoGenParent229ID129 = nil
AutoGenParent229ID130 = nil
AutoGenParent229ID131 = nil
AutoGenParent229ID132 = nil
AutoGenParent229ID133 = nil
AutoGenParent229ID134 = nil
AutoGenParent229ID135 = nil
AutoGenParent229ID136 = nil
AutoGenParent229ID137 = nil
AutoGenParent229ID138 = nil
AutoGenParent229ID139 = nil
AutoGenParent229ID140 = nil
AutoGenParent229ID141 = nil
AutoGenParent229ID142 = nil
table.insert(colliders,AutoGenParent229ID)
AutoGenParent229ID = nil

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
table.insert(props,ObbRot181ID)
ObbRot181ID = nil

ObbRot585ID = {}
ObbRot585ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot585ID.transformID, {x=125.175, y=37.5857, z=210.972})
Transform.SetScaleNonUniform(ObbRot585ID.transformID, 4.74132, 9.7832, 1)
Transform.SetRotation(ObbRot585ID.transformID, {x=0, y=0.0683151, z=0})
table.insert(props,ObbRot585ID)
ObbRot585ID = nil

ObbRot686ID = {}
ObbRot686ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot686ID.transformID, {x=133.336, y=37.8301, z=207.834})
Transform.SetScaleNonUniform(ObbRot686ID.transformID, 12.9362, 9.7849, 1)
Transform.SetRotation(ObbRot686ID.transformID, {x=0, y=0.512187, z=0})
table.insert(props,ObbRot686ID)
ObbRot686ID = nil

ObbRot887ID = {}
ObbRot887ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot887ID.transformID, {x=141.038, y=56.1095, z=172.394})
Transform.SetScaleNonUniform(ObbRot887ID.transformID, 1, 42.6949, 37.3548)
Transform.SetRotation(ObbRot887ID.transformID, {x=0, y=0.203048, z=0})
table.insert(props,ObbRot887ID)
ObbRot887ID = nil

ObbRot988ID = {}
ObbRot988ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot988ID.transformID, {x=141.56, y=62.9363, z=147.26})
Transform.SetScaleNonUniform(ObbRot988ID.transformID, 1, 30.8385, 16.8946)
Transform.SetRotation(ObbRot988ID.transformID, {x=0, y=-0.577785, z=0})
table.insert(props,ObbRot988ID)
ObbRot988ID = nil

ObbRot1089ID = {}
ObbRot1089ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1089ID.transformID, {x=154.796, y=64.2819, z=144.174})
Transform.SetScaleNonUniform(ObbRot1089ID.transformID, 26.2452, 28.0413, 1)
Transform.SetRotation(ObbRot1089ID.transformID, {x=0, y=-0.407469, z=0})
table.insert(props,ObbRot1089ID)
ObbRot1089ID = nil

ObbRot1390ID = {}
ObbRot1390ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1390ID.transformID, {x=184.806, y=61.5997, z=136.889})
Transform.SetScaleNonUniform(ObbRot1390ID.transformID, 1, 11.3389, 11.6923)
Transform.SetRotation(ObbRot1390ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot1390ID)
ObbRot1390ID = nil

ObbRot1491ID = {}
ObbRot1491ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1491ID.transformID, {x=180.698, y=62, z=118.111})
Transform.SetScaleNonUniform(ObbRot1491ID.transformID, 1, 16.5, 26.7768)
Transform.SetRotation(ObbRot1491ID.transformID, {x=0, y=0.303284, z=0})
table.insert(props,ObbRot1491ID)
ObbRot1491ID = nil

ObbRot1592ID = {}
ObbRot1592ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1592ID.transformID, {x=176.601, y=61.4354, z=82.604})
Transform.SetScaleNonUniform(ObbRot1592ID.transformID, 1, 18.1358, 45.5511)
Transform.SetRotation(ObbRot1592ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot1592ID)
ObbRot1592ID = nil

ObbRot1793ID = {}
ObbRot1793ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1793ID.transformID, {x=194.369, y=58.0954, z=39.8305})
Transform.SetScaleNonUniform(ObbRot1793ID.transformID, 1, 25.802, 54.4443)
Transform.SetRotation(ObbRot1793ID.transformID, {x=0, y=-0.734825, z=0})
table.insert(props,ObbRot1793ID)
ObbRot1793ID = nil

ObbRot1894ID = {}
ObbRot1894ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1894ID.transformID, {x=213.89, y=58.4684, z=31.2186})
Transform.SetScaleNonUniform(ObbRot1894ID.transformID, 1, 36.2154, 43.7488)
Transform.SetRotation(ObbRot1894ID.transformID, {x=0, y=1.64975, z=0})
table.insert(props,ObbRot1894ID)
ObbRot1894ID = nil

ObbRot1995ID = {}
ObbRot1995ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot1995ID.transformID, {x=260.112, y=52.6605, z=48.757})
Transform.SetScaleNonUniform(ObbRot1995ID.transformID, 89.1631, 34.5789, 1)
Transform.SetRotation(ObbRot1995ID.transformID, {x=0, y=-0.442913, z=0})
table.insert(props,ObbRot1995ID)
ObbRot1995ID = nil

ObbRot2096ID = {}
ObbRot2096ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot2096ID.transformID, {x=307.673, y=49.0794, z=88.9136})
Transform.SetScaleNonUniform(ObbRot2096ID.transformID, 98.2798, 49.5385, 1)
Transform.SetRotation(ObbRot2096ID.transformID, {x=0, y=-0.833437, z=0})
table.insert(props,ObbRot2096ID)
ObbRot2096ID = nil

ObbRot71135ID = {}
ObbRot71135ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot71135ID.transformID, {x=141.993, y=43.2297, z=198.398})
Transform.SetScaleNonUniform(ObbRot71135ID.transformID, 1, 23.8371, 16.8954)
Transform.SetRotation(ObbRot71135ID.transformID, {x=-0.000514221, y=-0.34506, z=-0.000190735})
table.insert(props,ObbRot71135ID)
ObbRot71135ID = nil

ObbRot72136ID = {}
ObbRot72136ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot72136ID.transformID, {x=173.363, y=56.2095, z=150.617})
Transform.SetScaleNonUniform(ObbRot72136ID.transformID, 13.7354, 10.0299, 1)
Transform.SetRotation(ObbRot72136ID.transformID, {x=0, y=-0.129341, z=0})
table.insert(props,ObbRot72136ID)
ObbRot72136ID = nil

ObbRot73137ID = {}
ObbRot73137ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot73137ID.transformID, {x=182.429, y=58.9652, z=147.346})
Transform.SetScaleNonUniform(ObbRot73137ID.transformID, 10.8017, 11.4307, 1)
Transform.SetRotation(ObbRot73137ID.transformID, {x=-0.0065155, y=1.05261, z=-0.0682205})
table.insert(props,ObbRot73137ID)
ObbRot73137ID = nil

Obb4611146ID = {}
Obb4611146ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4611146ID.transformID, {x=147.612, y=37.8097, z=231.742})
Transform.SetScaleNonUniform(Obb4611146ID.transformID, 24.0951, 14.3362, 2.05965)
Transform.SetRotation(Obb4611146ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4611146ID)
Obb4611146ID = nil

ObbRot74147ID = {}
ObbRot74147ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot74147ID.transformID, {x=165.742, y=45.3755, z=245.272})
Transform.SetScaleNonUniform(ObbRot74147ID.transformID, 34.8267, 17.608, 1)
Transform.SetRotation(ObbRot74147ID.transformID, {x=0, y=-0.3802, z=0})
table.insert(props,ObbRot74147ID)
ObbRot74147ID = nil

Obb46111148ID = {}
Obb46111148ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46111148ID.transformID, {x=187.793, y=51.6983, z=247.419})
Transform.SetScaleNonUniform(Obb46111148ID.transformID, 16.6456, 10.9779, 1.29715)
Transform.SetRotation(Obb46111148ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46111148ID)
Obb46111148ID = nil

Obb46112149ID = {}
Obb46112149ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46112149ID.transformID, {x=201.825, y=55.617, z=244.207})
Transform.SetScaleNonUniform(Obb46112149ID.transformID, 15.9271, 10.1114, 2.06677)
Transform.SetRotation(Obb46112149ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46112149ID)
Obb46112149ID = nil

Obb46113150ID = {}
Obb46113150ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46113150ID.transformID, {x=217.404, y=59.7579, z=249.4})
Transform.SetScaleNonUniform(Obb46113150ID.transformID, 18.5033, 11.8578, 1)
Transform.SetRotation(Obb46113150ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46113150ID)
Obb46113150ID = nil

Obb46114151ID = {}
Obb46114151ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46114151ID.transformID, {x=237.276, y=62.932, z=250.283})
Transform.SetScaleNonUniform(Obb46114151ID.transformID, 33.5274, 9.33092, 1)
Transform.SetRotation(Obb46114151ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46114151ID)
Obb46114151ID = nil

Obb46115152ID = {}
Obb46115152ID.transformID = Transform.Bind()
Transform.SetPosition(Obb46115152ID.transformID, {x=275.762, y=60.1068, z=249.015})
Transform.SetScaleNonUniform(Obb46115152ID.transformID, 45.3645, 15.8818, 1)
Transform.SetRotation(Obb46115152ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb46115152ID)
Obb46115152ID = nil

ObbRot75153ID = {}
ObbRot75153ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot75153ID.transformID, {x=306.014, y=58.8756, z=257.684})
Transform.SetScaleNonUniform(ObbRot75153ID.transformID, 20.8542, 16.7008, 1)
Transform.SetRotation(ObbRot75153ID.transformID, {x=0, y=-0.687251, z=0})
table.insert(props,ObbRot75153ID)
ObbRot75153ID = nil

ObbRot76154ID = {}
ObbRot76154ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot76154ID.transformID, {x=272.878, y=60.8679, z=234.75})
Transform.SetScaleNonUniform(ObbRot76154ID.transformID, 35.7529, 18.318, 1)
Transform.SetRotation(ObbRot76154ID.transformID, {x=0, y=-0.0628983, z=0})
table.insert(props,ObbRot76154ID)
ObbRot76154ID = nil

ObbRot77155ID = {}
ObbRot77155ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot77155ID.transformID, {x=247.802, y=62.164, z=233.623})
Transform.SetScaleNonUniform(ObbRot77155ID.transformID, 15.6229, 14.5395, 1)
Transform.SetRotation(ObbRot77155ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot77155ID)
ObbRot77155ID = nil

ObbRot78156ID = {}
ObbRot78156ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot78156ID.transformID, {x=236.505, y=61.3086, z=235.331})
Transform.SetScaleNonUniform(ObbRot78156ID.transformID, 10.3651, 14.5881, 1)
Transform.SetRotation(ObbRot78156ID.transformID, {x=0, y=0.347751, z=0})
table.insert(props,ObbRot78156ID)
ObbRot78156ID = nil

ObbRot710157ID = {}
ObbRot710157ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot710157ID.transformID, {x=209.975, y=52.6271, z=224.413})
Transform.SetScaleNonUniform(ObbRot710157ID.transformID, 15.9542, 15.1469, 1)
Transform.SetRotation(ObbRot710157ID.transformID, {x=0, y=0.244083, z=0})
table.insert(props,ObbRot710157ID)
ObbRot710157ID = nil

ObbRot711158ID = {}
ObbRot711158ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot711158ID.transformID, {x=195.449, y=50.3358, z=227.236})
Transform.SetScaleNonUniform(ObbRot711158ID.transformID, 14.1023, 5.89954, 1)
Transform.SetRotation(ObbRot711158ID.transformID, {x=0, y=0.120399, z=0})
table.insert(props,ObbRot711158ID)
ObbRot711158ID = nil

ObbRot712159ID = {}
ObbRot712159ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot712159ID.transformID, {x=183.5, y=46.0938, z=226})
Transform.SetScaleNonUniform(ObbRot712159ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot712159ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot712159ID)
ObbRot712159ID = nil

ObbRot713160ID = {}
ObbRot713160ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot713160ID.transformID, {x=177.125, y=42.0313, z=219.125})
Transform.SetScaleNonUniform(ObbRot713160ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot713160ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot713160ID)
ObbRot713160ID = nil

ObbRot714161ID = {}
ObbRot714161ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot714161ID.transformID, {x=178.5, y=42.1563, z=209.625})
Transform.SetScaleNonUniform(ObbRot714161ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot714161ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot714161ID)
ObbRot714161ID = nil

ObbRot715162ID = {}
ObbRot715162ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot715162ID.transformID, {x=193.375, y=41.3438, z=204.25})
Transform.SetScaleNonUniform(ObbRot715162ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot715162ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot715162ID)
ObbRot715162ID = nil

ObbRot716163ID = {}
ObbRot716163ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot716163ID.transformID, {x=206, y=39.6563, z=193})
Transform.SetScaleNonUniform(ObbRot716163ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot716163ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot716163ID)
ObbRot716163ID = nil

ObbRot717164ID = {}
ObbRot717164ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot717164ID.transformID, {x=216.625, y=36.3125, z=179.25})
Transform.SetScaleNonUniform(ObbRot717164ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot717164ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot717164ID)
ObbRot717164ID = nil

ObbRot718165ID = {}
ObbRot718165ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot718165ID.transformID, {x=234.625, y=36.3125, z=160.625})
Transform.SetScaleNonUniform(ObbRot718165ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot718165ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot718165ID)
ObbRot718165ID = nil

ObbRot719166ID = {}
ObbRot719166ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot719166ID.transformID, {x=256.5, y=37.7188, z=140.5})
Transform.SetScaleNonUniform(ObbRot719166ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot719166ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot719166ID)
ObbRot719166ID = nil

ObbRot720167ID = {}
ObbRot720167ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot720167ID.transformID, {x=271.5, y=37.375, z=129.875})
Transform.SetScaleNonUniform(ObbRot720167ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot720167ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot720167ID)
ObbRot720167ID = nil

ObbRot721168ID = {}
ObbRot721168ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot721168ID.transformID, {x=292, y=38.0625, z=128.5})
Transform.SetScaleNonUniform(ObbRot721168ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot721168ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot721168ID)
ObbRot721168ID = nil

ObbRot722169ID = {}
ObbRot722169ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot722169ID.transformID, {x=316, y=35.1875, z=135.875})
Transform.SetScaleNonUniform(ObbRot722169ID.transformID, 1, 1, 1)
Transform.SetRotation(ObbRot722169ID.transformID, {x=0, y=0, z=0})
table.insert(props,ObbRot722169ID)
ObbRot722169ID = nil

ObbRot79212ID = {}
ObbRot79212ID.transformID = Transform.Bind()
Transform.SetPosition(ObbRot79212ID.transformID, {x=224.713, y=59.4225, z=229.973})
Transform.SetScaleNonUniform(ObbRot79212ID.transformID, 1.10063, 16.4826, 21.1139)
Transform.SetRotation(ObbRot79212ID.transformID, {x=0, y=0.810915, z=0})
table.insert(props,ObbRot79212ID)
ObbRot79212ID = nil

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
t3s1170ID = {}
t3s1170ID.transformID = Transform.Bind()
Transform.SetPosition(t3s1170ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s1170ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s1170ID.transformID, {x=0, y=0, z=0})
t3s1170ID.model = Assets.LoadModel('Models/tile3_s1.model')
Gear.AddStaticInstance(t3s1170ID.model, t3s1170ID.transformID)
table.insert(props,t3s1170ID)
t3s1170ID = nil

tile3171ID = {}
tile3171ID.transformID = Transform.Bind()
Transform.SetPosition(tile3171ID.transformID, {x=384, y=0, z=128})
Transform.SetScaleNonUniform(tile3171ID.transformID, 1, 1, 1)
Transform.SetRotation(tile3171ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile3171ID)
tile3171ID = nil

t3s2177ID = {}
t3s2177ID.transformID = Transform.Bind()
Transform.SetPosition(t3s2177ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s2177ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s2177ID.transformID, {x=0, y=0, z=0})
t3s2177ID.model = Assets.LoadModel('Models/tile3_s2.model')
Gear.AddStaticInstance(t3s2177ID.model, t3s2177ID.transformID)
table.insert(props,t3s2177ID)
t3s2177ID = nil

t3s3178ID = {}
t3s3178ID.transformID = Transform.Bind()
Transform.SetPosition(t3s3178ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s3178ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s3178ID.transformID, {x=0, y=0, z=0})
t3s3178ID.model = Assets.LoadModel('Models/tile3_s3.model')
Gear.AddStaticInstance(t3s3178ID.model, t3s3178ID.transformID)
table.insert(props,t3s3178ID)
t3s3178ID = nil

t3s4179ID = {}
t3s4179ID.transformID = Transform.Bind()
Transform.SetPosition(t3s4179ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s4179ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s4179ID.transformID, {x=0, y=0, z=0})
t3s4179ID.model = Assets.LoadModel('Models/tile3_s4.model')
Gear.AddStaticInstance(t3s4179ID.model, t3s4179ID.transformID)
table.insert(props,t3s4179ID)
t3s4179ID = nil

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
tile4172ID = {}
tile4172ID.transformID = Transform.Bind()
Transform.SetPosition(tile4172ID.transformID, {x=384, y=0, z=256})
Transform.SetScaleNonUniform(tile4172ID.transformID, 1, 1, 1)
Transform.SetRotation(tile4172ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile4172ID)
tile4172ID = nil

t4s1180ID = {}
t4s1180ID.transformID = Transform.Bind()
Transform.SetPosition(t4s1180ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s1180ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s1180ID.transformID, {x=0, y=0, z=0})
t4s1180ID.model = Assets.LoadModel('Models/tile4_s1.model')
Gear.AddStaticInstance(t4s1180ID.model, t4s1180ID.transformID)
table.insert(props,t4s1180ID)
t4s1180ID = nil

t4s2181ID = {}
t4s2181ID.transformID = Transform.Bind()
Transform.SetPosition(t4s2181ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s2181ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s2181ID.transformID, {x=0, y=0, z=0})
t4s2181ID.model = Assets.LoadModel('Models/tile4_s2.model')
Gear.AddStaticInstance(t4s2181ID.model, t4s2181ID.transformID)
table.insert(props,t4s2181ID)
t4s2181ID = nil

t4s3182ID = {}
t4s3182ID.transformID = Transform.Bind()
Transform.SetPosition(t4s3182ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s3182ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s3182ID.transformID, {x=0, y=0, z=0})
t4s3182ID.model = Assets.LoadModel('Models/tile4_s3.model')
Gear.AddStaticInstance(t4s3182ID.model, t4s3182ID.transformID)
table.insert(props,t4s3182ID)
t4s3182ID = nil

t4s4183ID = {}
t4s4183ID.transformID = Transform.Bind()
Transform.SetPosition(t4s4183ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s4183ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s4183ID.transformID, {x=0, y=0, z=0})
t4s4183ID.model = Assets.LoadModel('Models/tile4_s4.model')
Gear.AddStaticInstance(t4s4183ID.model, t4s4183ID.transformID)
table.insert(props,t4s4183ID)
t4s4183ID = nil

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
tile5173ID = {}
tile5173ID.transformID = Transform.Bind()
Transform.SetPosition(tile5173ID.transformID, {x=384, y=0, z=384})
Transform.SetScaleNonUniform(tile5173ID.transformID, 1, 1, 1)
Transform.SetRotation(tile5173ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile5173ID)
tile5173ID = nil

t5s1184ID = {}
t5s1184ID.transformID = Transform.Bind()
Transform.SetPosition(t5s1184ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s1184ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s1184ID.transformID, {x=0, y=0, z=0})
t5s1184ID.model = Assets.LoadModel('Models/tile5_s1.model')
Gear.AddStaticInstance(t5s1184ID.model, t5s1184ID.transformID)
table.insert(props,t5s1184ID)
t5s1184ID = nil

t5s2185ID = {}
t5s2185ID.transformID = Transform.Bind()
Transform.SetPosition(t5s2185ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s2185ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s2185ID.transformID, {x=0, y=0, z=0})
t5s2185ID.model = Assets.LoadModel('Models/tile5_s2.model')
Gear.AddStaticInstance(t5s2185ID.model, t5s2185ID.transformID)
table.insert(props,t5s2185ID)
t5s2185ID = nil

t5s3186ID = {}
t5s3186ID.transformID = Transform.Bind()
Transform.SetPosition(t5s3186ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s3186ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s3186ID.transformID, {x=0, y=0, z=0})
t5s3186ID.model = Assets.LoadModel('Models/tile5_s3.model')
Gear.AddStaticInstance(t5s3186ID.model, t5s3186ID.transformID)
table.insert(props,t5s3186ID)
t5s3186ID = nil

t5s4187ID = {}
t5s4187ID.transformID = Transform.Bind()
Transform.SetPosition(t5s4187ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s4187ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s4187ID.transformID, {x=0, y=0, z=0})
t5s4187ID.model = Assets.LoadModel('Models/tile5_s4.model')
Gear.AddStaticInstance(t5s4187ID.model, t5s4187ID.transformID)
table.insert(props,t5s4187ID)
t5s4187ID = nil

t5s5188ID = {}
t5s5188ID.transformID = Transform.Bind()
Transform.SetPosition(t5s5188ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s5188ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s5188ID.transformID, {x=0, y=0, z=0})
t5s5188ID.model = Assets.LoadModel('Models/tile5_s5.model')
Gear.AddStaticInstance(t5s5188ID.model, t5s5188ID.transformID)
table.insert(props,t5s5188ID)
t5s5188ID = nil

t5s6189ID = {}
t5s6189ID.transformID = Transform.Bind()
Transform.SetPosition(t5s6189ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s6189ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s6189ID.transformID, {x=0, y=0, z=0})
t5s6189ID.model = Assets.LoadModel('Models/tile5_s6.model')
Gear.AddStaticInstance(t5s6189ID.model, t5s6189ID.transformID)
table.insert(props,t5s6189ID)
t5s6189ID = nil

t6s4193ID = {}
t6s4193ID.transformID = Transform.Bind()
Transform.SetPosition(t6s4193ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s4193ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s4193ID.transformID, {x=0, y=0, z=0})
t6s4193ID.model = Assets.LoadModel('Models/tile6_s4.model')
Gear.AddStaticInstance(t6s4193ID.model, t6s4193ID.transformID)
table.insert(props,t6s4193ID)
t6s4193ID = nil

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
tile6174ID = {}
tile6174ID.transformID = Transform.Bind()
Transform.SetPosition(tile6174ID.transformID, {x=384, y=0, z=640})
Transform.SetScaleNonUniform(tile6174ID.transformID, 1, 1, 1)
Transform.SetRotation(tile6174ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile6174ID)
tile6174ID = nil

t6s1190ID = {}
t6s1190ID.transformID = Transform.Bind()
Transform.SetPosition(t6s1190ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s1190ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s1190ID.transformID, {x=0, y=0, z=0})
t6s1190ID.model = Assets.LoadModel('Models/tile6_s1.model')
Gear.AddStaticInstance(t6s1190ID.model, t6s1190ID.transformID)
table.insert(props,t6s1190ID)
t6s1190ID = nil

t6s2191ID = {}
t6s2191ID.transformID = Transform.Bind()
Transform.SetPosition(t6s2191ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s2191ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s2191ID.transformID, {x=0, y=0, z=0})
t6s2191ID.model = Assets.LoadModel('Models/tile6_s2.model')
Gear.AddStaticInstance(t6s2191ID.model, t6s2191ID.transformID)
table.insert(props,t6s2191ID)
t6s2191ID = nil

t6s3192ID = {}
t6s3192ID.transformID = Transform.Bind()
Transform.SetPosition(t6s3192ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s3192ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s3192ID.transformID, {x=0, y=0, z=0})
t6s3192ID.model = Assets.LoadModel('Models/tile6_s3.model')
Gear.AddStaticInstance(t6s3192ID.model, t6s3192ID.transformID)
table.insert(props,t6s3192ID)
t6s3192ID = nil

t6s5194ID = {}
t6s5194ID.transformID = Transform.Bind()
Transform.SetPosition(t6s5194ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s5194ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s5194ID.transformID, {x=0, y=0, z=0})
t6s5194ID.model = Assets.LoadModel('Models/tile6_s5.model')
Gear.AddStaticInstance(t6s5194ID.model, t6s5194ID.transformID)
table.insert(props,t6s5194ID)
t6s5194ID = nil

t6s6195ID = {}
t6s6195ID.transformID = Transform.Bind()
Transform.SetPosition(t6s6195ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s6195ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s6195ID.transformID, {x=0, y=0, z=0})
t6s6195ID.model = Assets.LoadModel('Models/tile6_s6.model')
Gear.AddStaticInstance(t6s6195ID.model, t6s6195ID.transformID)
table.insert(props,t6s6195ID)
t6s6195ID = nil

t6s7196ID = {}
t6s7196ID.transformID = Transform.Bind()
Transform.SetPosition(t6s7196ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s7196ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s7196ID.transformID, {x=0, y=0, z=0})
t6s7196ID.model = Assets.LoadModel('Models/tile6_s7.model')
Gear.AddStaticInstance(t6s7196ID.model, t6s7196ID.transformID)
table.insert(props,t6s7196ID)
t6s7196ID = nil

t6s8197ID = {}
t6s8197ID.transformID = Transform.Bind()
Transform.SetPosition(t6s8197ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s8197ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s8197ID.transformID, {x=0, y=0, z=0})
t6s8197ID.model = Assets.LoadModel('Models/tile6_s8.model')
Gear.AddStaticInstance(t6s8197ID.model, t6s8197ID.transformID)
table.insert(props,t6s8197ID)
t6s8197ID = nil

t6s9198ID = {}
t6s9198ID.transformID = Transform.Bind()
Transform.SetPosition(t6s9198ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s9198ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s9198ID.transformID, {x=0, y=0, z=0})
t6s9198ID.model = Assets.LoadModel('Models/tile6_s9.model')
Gear.AddStaticInstance(t6s9198ID.model, t6s9198ID.transformID)
table.insert(props,t6s9198ID)
t6s9198ID = nil

t6s10199ID = {}
t6s10199ID.transformID = Transform.Bind()
Transform.SetPosition(t6s10199ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s10199ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s10199ID.transformID, {x=0, y=0, z=0})
t6s10199ID.model = Assets.LoadModel('Models/tile6_s10.model')
Gear.AddStaticInstance(t6s10199ID.model, t6s10199ID.transformID)
table.insert(props,t6s10199ID)
t6s10199ID = nil

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
tile7175ID = {}
tile7175ID.transformID = Transform.Bind()
Transform.SetPosition(tile7175ID.transformID, {x=128, y=0, z=512})
Transform.SetScaleNonUniform(tile7175ID.transformID, 1, 1, 1)
Transform.SetRotation(tile7175ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile7175ID)
tile7175ID = nil

t7s1200ID = {}
t7s1200ID.transformID = Transform.Bind()
Transform.SetPosition(t7s1200ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s1200ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s1200ID.transformID, {x=0, y=0, z=0})
t7s1200ID.model = Assets.LoadModel('Models/tile7_s1.model')
Gear.AddStaticInstance(t7s1200ID.model, t7s1200ID.transformID)
table.insert(props,t7s1200ID)
t7s1200ID = nil

t7s2201ID = {}
t7s2201ID.transformID = Transform.Bind()
Transform.SetPosition(t7s2201ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s2201ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s2201ID.transformID, {x=0, y=0, z=0})
t7s2201ID.model = Assets.LoadModel('Models/tile7_s2.model')
Gear.AddStaticInstance(t7s2201ID.model, t7s2201ID.transformID)
table.insert(props,t7s2201ID)
t7s2201ID = nil

t7s3202ID = {}
t7s3202ID.transformID = Transform.Bind()
Transform.SetPosition(t7s3202ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s3202ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s3202ID.transformID, {x=0, y=0, z=0})
t7s3202ID.model = Assets.LoadModel('Models/tile7_s3.model')
Gear.AddStaticInstance(t7s3202ID.model, t7s3202ID.transformID)
table.insert(props,t7s3202ID)
t7s3202ID = nil

t7s4203ID = {}
t7s4203ID.transformID = Transform.Bind()
Transform.SetPosition(t7s4203ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s4203ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s4203ID.transformID, {x=0, y=0, z=0})
t7s4203ID.model = Assets.LoadModel('Models/tile7_s4.model')
Gear.AddStaticInstance(t7s4203ID.model, t7s4203ID.transformID)
table.insert(props,t7s4203ID)
t7s4203ID = nil

t7s5204ID = {}
t7s5204ID.transformID = Transform.Bind()
Transform.SetPosition(t7s5204ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s5204ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s5204ID.transformID, {x=0, y=0, z=0})
t7s5204ID.model = Assets.LoadModel('Models/tile7_s5.model')
Gear.AddStaticInstance(t7s5204ID.model, t7s5204ID.transformID)
table.insert(props,t7s5204ID)
t7s5204ID = nil

t7s6205ID = {}
t7s6205ID.transformID = Transform.Bind()
Transform.SetPosition(t7s6205ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s6205ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s6205ID.transformID, {x=0, y=0, z=0})
t7s6205ID.model = Assets.LoadModel('Models/tile7_s6.model')
Gear.AddStaticInstance(t7s6205ID.model, t7s6205ID.transformID)
table.insert(props,t7s6205ID)
t7s6205ID = nil

t7s7206ID = {}
t7s7206ID.transformID = Transform.Bind()
Transform.SetPosition(t7s7206ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s7206ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s7206ID.transformID, {x=0, y=0, z=0})
t7s7206ID.model = Assets.LoadModel('Models/tile7_s7.model')
Gear.AddStaticInstance(t7s7206ID.model, t7s7206ID.transformID)
table.insert(props,t7s7206ID)
t7s7206ID = nil

t7s8207ID = {}
t7s8207ID.transformID = Transform.Bind()
Transform.SetPosition(t7s8207ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s8207ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s8207ID.transformID, {x=0, y=0, z=0})
t7s8207ID.model = Assets.LoadModel('Models/tile7_s8.model')
Gear.AddStaticInstance(t7s8207ID.model, t7s8207ID.transformID)
table.insert(props,t7s8207ID)
t7s8207ID = nil

t7s9208ID = {}
t7s9208ID.transformID = Transform.Bind()
Transform.SetPosition(t7s9208ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s9208ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s9208ID.transformID, {x=0, y=0, z=0})
t7s9208ID.model = Assets.LoadModel('Models/tile7_s9.model')
Gear.AddStaticInstance(t7s9208ID.model, t7s9208ID.transformID)
table.insert(props,t7s9208ID)
t7s9208ID = nil

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
tile8176ID = {}
tile8176ID.transformID = Transform.Bind()
Transform.SetPosition(tile8176ID.transformID, {x=256, y=0, z=384})
Transform.SetScaleNonUniform(tile8176ID.transformID, 1, 1, 1)
Transform.SetRotation(tile8176ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile8176ID)
tile8176ID = nil

t8s1209ID = {}
t8s1209ID.transformID = Transform.Bind()
Transform.SetPosition(t8s1209ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s1209ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s1209ID.transformID, {x=0, y=0, z=0})
t8s1209ID.model = Assets.LoadModel('Models/tile8_s1.model')
Gear.AddStaticInstance(t8s1209ID.model, t8s1209ID.transformID)
table.insert(props,t8s1209ID)
t8s1209ID = nil

t8s2210ID = {}
t8s2210ID.transformID = Transform.Bind()
Transform.SetPosition(t8s2210ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s2210ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s2210ID.transformID, {x=0, y=0, z=0})
t8s2210ID.model = Assets.LoadModel('Models/tile8_s2.model')
Gear.AddStaticInstance(t8s2210ID.model, t8s2210ID.transformID)
table.insert(props,t8s2210ID)
t8s2210ID = nil

t8s3211ID = {}
t8s3211ID.transformID = Transform.Bind()
Transform.SetPosition(t8s3211ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s3211ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s3211ID.transformID, {x=0, y=0, z=0})
t8s3211ID.model = Assets.LoadModel('Models/tile8_s3.model')
Gear.AddStaticInstance(t8s3211ID.model, t8s3211ID.transformID)
table.insert(props,t8s3211ID)
t8s3211ID = nil

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
