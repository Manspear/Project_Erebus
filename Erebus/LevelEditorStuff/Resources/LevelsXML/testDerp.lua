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
TileAssets2ID = {}
TileAssets2ID.transformID = Transform.Bind()
Transform.SetPosition(TileAssets2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(TileAssets2ID.transformID, 1, 1, 1)
Transform.SetRotation(TileAssets2ID.transformID, {x=0, y=0, z=0})
TileAssets2ID.model = Assets.LoadModel('Models/tile1_Assets.model')
Gear.AddStaticInstance(TileAssets2ID.model, TileAssets2ID.transformID)
table.insert(props,TileAssets2ID)
TileAssets2ID = nil

TilePlaceholder3ID = {}
TilePlaceholder3ID.transformID = Transform.Bind()
Transform.SetPosition(TilePlaceholder3ID.transformID, {x=0, y=500, z=0})
Transform.SetScaleNonUniform(TilePlaceholder3ID.transformID, 1, 1, 1)
Transform.SetRotation(TilePlaceholder3ID.transformID, {x=0, y=0, z=0})
TilePlaceholder3ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
Gear.AddStaticInstance(TilePlaceholder3ID.model, TilePlaceholder3ID.transformID)
table.insert(props,TilePlaceholder3ID)
TilePlaceholder3ID = nil

tile14ID = {}
tile14ID.transformID = Transform.Bind()
Transform.SetPosition(tile14ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile14ID.transformID, 1, 1, 1)
Transform.SetRotation(tile14ID.transformID, {x=0, y=0, z=0})
tile14ID.model = Assets.LoadModel('Models/tile1.model')
Gear.AddStaticInstance(tile14ID.model, tile14ID.transformID)
table.insert(props,tile14ID)
tile14ID = nil

TileSettings5ID = {}
Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,TileSettings5ID)
TileSettings5ID = nil

Obb7ID = {}
Obb7ID.transformID = Transform.Bind()
Transform.SetPosition(Obb7ID.transformID, {x=39.2188, y=11.0963, z=126.485})
Transform.SetScaleNonUniform(Obb7ID.transformID, 5.33843, 5.90499, 0.887863)
Transform.SetRotation(Obb7ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb7ID)
Obb7ID = nil

Obb18ID = {}
Obb18ID.transformID = Transform.Bind()
Transform.SetPosition(Obb18ID.transformID, {x=44.7947, y=12.0151, z=129.069})
Transform.SetScaleNonUniform(Obb18ID.transformID, 8.30671, 7.20676, 0.65567)
Transform.SetRotation(Obb18ID.transformID, {x=0, y=-0.0131889, z=0})
table.insert(colliders,Obb18ID)
Obb18ID = nil

Obb29ID = {}
Obb29ID.transformID = Transform.Bind()
Transform.SetPosition(Obb29ID.transformID, {x=52.2659, y=14.2357, z=137.028})
Transform.SetScaleNonUniform(Obb29ID.transformID, 13.4763, 11.3442, 1)
Transform.SetRotation(Obb29ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb29ID)
Obb29ID = nil

Obb310ID = {}
Obb310ID.transformID = Transform.Bind()
Transform.SetPosition(Obb310ID.transformID, {x=56.6113, y=15.1691, z=145.5})
Transform.SetScaleNonUniform(Obb310ID.transformID, 5.78123, 12.6913, 1.29184)
Transform.SetRotation(Obb310ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb310ID)
Obb310ID = nil

Obb411ID = {}
Obb411ID.transformID = Transform.Bind()
Transform.SetPosition(Obb411ID.transformID, {x=52.7757, y=13.3417, z=152.966})
Transform.SetScaleNonUniform(Obb411ID.transformID, 12.2092, 9.29743, 1)
Transform.SetRotation(Obb411ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb411ID)
Obb411ID = nil

Obb512ID = {}
Obb512ID.transformID = Transform.Bind()
Transform.SetPosition(Obb512ID.transformID, {x=44.1356, y=13.6087, z=157.73})
Transform.SetScaleNonUniform(Obb512ID.transformID, 9.82996, 9.1749, 1)
Transform.SetRotation(Obb512ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb512ID)
Obb512ID = nil

OakTree13ID = {}
OakTree13ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree13ID.transformID, {x=24.2969, y=7.51563, z=139.5})
Transform.SetScaleNonUniform(OakTree13ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree13ID.transformID, {x=0, y=0.131111, z=0})
OakTree13ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree13ID.model, OakTree13ID.transformID)
table.insert(props,OakTree13ID)
OakTree13ID = nil

OakTree114ID = {}
OakTree114ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree114ID.transformID, {x=38.165, y=9.16406, z=155.143})
Transform.SetScaleNonUniform(OakTree114ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree114ID.transformID, {x=0, y=0.131111, z=0})
OakTree114ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree114ID.model, OakTree114ID.transformID)
table.insert(props,OakTree114ID)
OakTree114ID = nil

Obb615ID = {}
Obb615ID.transformID = Transform.Bind()
Transform.SetPosition(Obb615ID.transformID, {x=37, y=9.5333, z=157.949})
Transform.SetScaleNonUniform(Obb615ID.transformID, 9.35705, 5.50959, 1)
Transform.SetRotation(Obb615ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb615ID)
Obb615ID = nil

Obb716ID = {}
Obb716ID.transformID = Transform.Bind()
Transform.SetPosition(Obb716ID.transformID, {x=42.2044, y=10.3271, z=163.596})
Transform.SetScaleNonUniform(Obb716ID.transformID, 8.15694, 6.00243, 1)
Transform.SetRotation(Obb716ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb716ID)
Obb716ID = nil

Obb817ID = {}
Obb817ID.transformID = Transform.Bind()
Transform.SetPosition(Obb817ID.transformID, {x=48.9783, y=10.9527, z=164.675})
Transform.SetScaleNonUniform(Obb817ID.transformID, 6.97815, 7.49178, 1)
Transform.SetRotation(Obb817ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb817ID)
Obb817ID = nil

Obb918ID = {}
Obb918ID.transformID = Transform.Bind()
Transform.SetPosition(Obb918ID.transformID, {x=55.3556, y=11.1204, z=168.448})
Transform.SetScaleNonUniform(Obb918ID.transformID, 10.8495, 9.54112, 1)
Transform.SetRotation(Obb918ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb918ID)
Obb918ID = nil

Obb1019ID = {}
Obb1019ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1019ID.transformID, {x=58.6678, y=12.1175, z=174.958})
Transform.SetScaleNonUniform(Obb1019ID.transformID, 10.9676, 9.64082, 1)
Transform.SetRotation(Obb1019ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1019ID)
Obb1019ID = nil

Obb1120ID = {}
Obb1120ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1120ID.transformID, {x=55.9463, y=12.6501, z=182.812})
Transform.SetScaleNonUniform(Obb1120ID.transformID, 10.1088, 9.38199, 1)
Transform.SetRotation(Obb1120ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1120ID)
Obb1120ID = nil

Obb1221ID = {}
Obb1221ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1221ID.transformID, {x=48.6808, y=12.5014, z=187.183})
Transform.SetScaleNonUniform(Obb1221ID.transformID, 13.7087, 11.7246, 1)
Transform.SetRotation(Obb1221ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1221ID)
Obb1221ID = nil

Obb1322ID = {}
Obb1322ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1322ID.transformID, {x=38.1514, y=13.6557, z=185.956})
Transform.SetScaleNonUniform(Obb1322ID.transformID, 11.3925, 13.5993, 1)
Transform.SetRotation(Obb1322ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1322ID)
Obb1322ID = nil

Obb1423ID = {}
Obb1423ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1423ID.transformID, {x=34.5771, y=13.8542, z=180.313})
Transform.SetScaleNonUniform(Obb1423ID.transformID, 12.9332, 12.3953, 1)
Transform.SetRotation(Obb1423ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1423ID)
Obb1423ID = nil

Obb1524ID = {}
Obb1524ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1524ID.transformID, {x=31.8688, y=14.2511, z=173.021})
Transform.SetScaleNonUniform(Obb1524ID.transformID, 8.30632, 13.757, 1)
Transform.SetRotation(Obb1524ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1524ID)
Obb1524ID = nil

Obb1725ID = {}
Obb1725ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1725ID.transformID, {x=27.1257, y=8.69628, z=170.818})
Transform.SetScaleNonUniform(Obb1725ID.transformID, 4.71224, 6.04265, 1)
Transform.SetRotation(Obb1725ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1725ID)
Obb1725ID = nil

Obb1826ID = {}
Obb1826ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1826ID.transformID, {x=24.5398, y=8.39063, z=172.849})
Transform.SetScaleNonUniform(Obb1826ID.transformID, 2.51462, 7.81261, 1)
Transform.SetRotation(Obb1826ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1826ID)
Obb1826ID = nil

Obb1927ID = {}
Obb1927ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1927ID.transformID, {x=23.0938, y=8.5625, z=173.17})
Transform.SetScaleNonUniform(Obb1927ID.transformID, 1, 7.31101, 1)
Transform.SetRotation(Obb1927ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1927ID)
Obb1927ID = nil

Obb2028ID = {}
Obb2028ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2028ID.transformID, {x=23.149, y=8.23438, z=175.228})
Transform.SetScaleNonUniform(Obb2028ID.transformID, 4.04565, 9.08401, 1)
Transform.SetRotation(Obb2028ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2028ID)
Obb2028ID = nil

Obb2129ID = {}
Obb2129ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2129ID.transformID, {x=24.4609, y=8.22656, z=179.033})
Transform.SetScaleNonUniform(Obb2129ID.transformID, 4.8056, 9.35686, 1)
Transform.SetRotation(Obb2129ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2129ID)
Obb2129ID = nil

Obb2230ID = {}
Obb2230ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2230ID.transformID, {x=29.7923, y=8.63281, z=186.254})
Transform.SetScaleNonUniform(Obb2230ID.transformID, 12.9065, 11.8147, 1)
Transform.SetRotation(Obb2230ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2230ID)
Obb2230ID = nil

Obb2331ID = {}
Obb2331ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2331ID.transformID, {x=35.0836, y=9.70313, z=192.442})
Transform.SetScaleNonUniform(Obb2331ID.transformID, 7.62255, 11.5604, 1)
Transform.SetRotation(Obb2331ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2331ID)
Obb2331ID = nil

Obb1632ID = {}
Obb1632ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1632ID.transformID, {x=30.0386, y=8.42188, z=169.58})
Transform.SetScaleNonUniform(Obb1632ID.transformID, 2.82024, 10.0437, 1)
Transform.SetRotation(Obb1632ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1632ID)
Obb1632ID = nil

Obb2433ID = {}
Obb2433ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2433ID.transformID, {x=19.4379, y=10.0219, z=140.008})
Transform.SetScaleNonUniform(Obb2433ID.transformID, 2.79296, 6.58353, 1)
Transform.SetRotation(Obb2433ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2433ID)
Obb2433ID = nil

Obb2534ID = {}
Obb2534ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2534ID.transformID, {x=16.0687, y=11.3801, z=140.449})
Transform.SetScaleNonUniform(Obb2534ID.transformID, 4.16547, 10.2432, 1)
Transform.SetRotation(Obb2534ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2534ID)
Obb2534ID = nil

Obb2635ID = {}
Obb2635ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2635ID.transformID, {x=12.2076, y=10.8924, z=139.388})
Transform.SetScaleNonUniform(Obb2635ID.transformID, 4.45512, 8.39056, 1)
Transform.SetRotation(Obb2635ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2635ID)
Obb2635ID = nil

Obb2736ID = {}
Obb2736ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2736ID.transformID, {x=8.25699, y=8.23438, z=137.828})
Transform.SetScaleNonUniform(Obb2736ID.transformID, 4.87982, 7.74944, 1)
Transform.SetRotation(Obb2736ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2736ID)
Obb2736ID = nil

Obb2837ID = {}
Obb2837ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2837ID.transformID, {x=5.1875, y=7.3125, z=201.625})
Transform.SetScaleNonUniform(Obb2837ID.transformID, 6.71884, 9.48064, 1)
Transform.SetRotation(Obb2837ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2837ID)
Obb2837ID = nil

Obb2938ID = {}
Obb2938ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2938ID.transformID, {x=2.38477, y=6.95703, z=198.375})
Transform.SetScaleNonUniform(Obb2938ID.transformID, 8.54796, 11.2199, 1)
Transform.SetRotation(Obb2938ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2938ID)
Obb2938ID = nil

Obb3039ID = {}
Obb3039ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3039ID.transformID, {x=0.623587, y=6.19531, z=191.702})
Transform.SetScaleNonUniform(Obb3039ID.transformID, 9.7465, 12.2743, 1)
Transform.SetRotation(Obb3039ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3039ID)
Obb3039ID = nil

Obb3140ID = {}
Obb3140ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3140ID.transformID, {x=0.610751, y=7.92188, z=184.863})
Transform.SetScaleNonUniform(Obb3140ID.transformID, 12.6674, 10.0445, 1)
Transform.SetRotation(Obb3140ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3140ID)
Obb3140ID = nil

Obb3241ID = {}
Obb3241ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3241ID.transformID, {x=3.37572, y=7.92188, z=178.551})
Transform.SetScaleNonUniform(Obb3241ID.transformID, 10.0506, 12.8097, 1)
Transform.SetRotation(Obb3241ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3241ID)
Obb3241ID = nil

Obb3342ID = {}
Obb3342ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3342ID.transformID, {x=7.74764, y=10.1094, z=174.373})
Transform.SetScaleNonUniform(Obb3342ID.transformID, 2.71867, 9.28327, 1)
Transform.SetRotation(Obb3342ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3342ID)
Obb3342ID = nil

Obb3443ID = {}
Obb3443ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3443ID.transformID, {x=8.11317, y=9.32813, z=172.223})
Transform.SetScaleNonUniform(Obb3443ID.transformID, 3.43608, 7.86563, 1)
Transform.SetRotation(Obb3443ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3443ID)
Obb3443ID = nil

Obb3544ID = {}
Obb3544ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3544ID.transformID, {x=5.56516, y=9.48503, z=168.72})
Transform.SetScaleNonUniform(Obb3544ID.transformID, 5.87615, 10.0751, 1)
Transform.SetRotation(Obb3544ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3544ID)
Obb3544ID = nil

Obb3645ID = {}
Obb3645ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3645ID.transformID, {x=2.59518, y=10.0938, z=164.52})
Transform.SetScaleNonUniform(Obb3645ID.transformID, 8.09491, 9.50447, 1)
Transform.SetRotation(Obb3645ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3645ID)
Obb3645ID = nil

Obb3746ID = {}
Obb3746ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3746ID.transformID, {x=2.78337, y=10.7049, z=156.698})
Transform.SetScaleNonUniform(Obb3746ID.transformID, 14.4018, 9.88275, 1)
Transform.SetRotation(Obb3746ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3746ID)
Obb3746ID = nil

Obb3847ID = {}
Obb3847ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3847ID.transformID, {x=3.62596, y=11.1337, z=148.583})
Transform.SetScaleNonUniform(Obb3847ID.transformID, 2.85839, 9.81549, 1)
Transform.SetRotation(Obb3847ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3847ID)
Obb3847ID = nil

Obb3948ID = {}
Obb3948ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3948ID.transformID, {x=50.8298, y=12.4453, z=201.871})
Transform.SetScaleNonUniform(Obb3948ID.transformID, 10.6439, 9.92635, 1)
Transform.SetRotation(Obb3948ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3948ID)
Obb3948ID = nil

Obb4049ID = {}
Obb4049ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4049ID.transformID, {x=56.1607, y=13.0547, z=206.779})
Transform.SetScaleNonUniform(Obb4049ID.transformID, 5.42791, 13.4841, 1)
Transform.SetRotation(Obb4049ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4049ID)
Obb4049ID = nil

Obb4150ID = {}
Obb4150ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4150ID.transformID, {x=62.7419, y=16.6875, z=207.51})
Transform.SetScaleNonUniform(Obb4150ID.transformID, 9.20728, 18.7853, 1)
Transform.SetRotation(Obb4150ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4150ID)
Obb4150ID = nil

Obb4251ID = {}
Obb4251ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4251ID.transformID, {x=72.6857, y=20.5074, z=203.934})
Transform.SetScaleNonUniform(Obb4251ID.transformID, 16.0584, 24.6348, 1)
Transform.SetRotation(Obb4251ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4251ID)
Obb4251ID = nil

Obb4352ID = {}
Obb4352ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4352ID.transformID, {x=83.1706, y=28.2956, z=197.481})
Transform.SetScaleNonUniform(Obb4352ID.transformID, 11.3618, 14.2447, 1)
Transform.SetRotation(Obb4352ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4352ID)
Obb4352ID = nil

New53ID = {}
New53ID.transformID = Transform.Bind()
Transform.SetPosition(New53ID.transformID, {x=118.254, y=53.1783, z=226.98})
Transform.SetScaleNonUniform(New53ID.transformID, 1, 1, 1)
Transform.SetRotation(New53ID.transformID, {x=0, y=0, z=0})
Light.addLight(118.254, 53.1783, 226.98, 0.870588, 0.627451, 0, 100,2)
table.insert(props,New53ID)
New53ID = nil

Obb4454ID = {}
Obb4454ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4454ID.transformID, {x=93.234, y=28.9104, z=190.853})
Transform.SetScaleNonUniform(Obb4454ID.transformID, 15.3271, 14.8288, 1)
Transform.SetRotation(Obb4454ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4454ID)
Obb4454ID = nil

Obb4555ID = {}
Obb4555ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4555ID.transformID, {x=108.002, y=33.3125, z=192.67})
Transform.SetScaleNonUniform(Obb4555ID.transformID, 28.5746, 34.3001, 1)
Transform.SetRotation(Obb4555ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4555ID)
Obb4555ID = nil

Obb4656ID = {}
Obb4656ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4656ID.transformID, {x=120.979, y=41.375, z=202.838})
Transform.SetScaleNonUniform(Obb4656ID.transformID, 13.179, 19.6566, 1)
Transform.SetRotation(Obb4656ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4656ID)
Obb4656ID = nil

Obb4757ID = {}
Obb4757ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4757ID.transformID, {x=105.844, y=32.7476, z=202.393})
Transform.SetScaleNonUniform(Obb4757ID.transformID, 13.5523, 19.4883, 1)
Transform.SetRotation(Obb4757ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4757ID)
Obb4757ID = nil

Obb4958ID = {}
Obb4958ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4958ID.transformID, {x=89.6993, y=29.3027, z=211.726})
Transform.SetScaleNonUniform(Obb4958ID.transformID, 8.35995, 23.2883, 1)
Transform.SetRotation(Obb4958ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4958ID)
Obb4958ID = nil

Obb5059ID = {}
Obb5059ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5059ID.transformID, {x=92.625, y=24.875, z=216.75})
Transform.SetScaleNonUniform(Obb5059ID.transformID, 4.84111, 11.6196, 1)
Transform.SetRotation(Obb5059ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5059ID)
Obb5059ID = nil

Obb5160ID = {}
Obb5160ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5160ID.transformID, {x=98.5347, y=39, z=219.379})
Transform.SetScaleNonUniform(Obb5160ID.transformID, 9.8435, 33.9701, 1)
Transform.SetRotation(Obb5160ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5160ID)
Obb5160ID = nil

Obb5261ID = {}
Obb5261ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5261ID.transformID, {x=105.5, y=31.6984, z=221.867})
Transform.SetScaleNonUniform(Obb5261ID.transformID, 5.8515, 12.7259, 1)
Transform.SetRotation(Obb5261ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5261ID)
Obb5261ID = nil

Obb5362ID = {}
Obb5362ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5362ID.transformID, {x=110.313, y=32.5313, z=221.625})
Transform.SetScaleNonUniform(Obb5362ID.transformID, 7.43607, 11.626, 1)
Transform.SetRotation(Obb5362ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5362ID)
Obb5362ID = nil

Obb5463ID = {}
Obb5463ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5463ID.transformID, {x=114.005, y=32.9375, z=217.166})
Transform.SetScaleNonUniform(Obb5463ID.transformID, 6.09159, 14.7933, 1)
Transform.SetRotation(Obb5463ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5463ID)
Obb5463ID = nil

Obb5564ID = {}
Obb5564ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5564ID.transformID, {x=112.846, y=36.7188, z=210.205})
Transform.SetScaleNonUniform(Obb5564ID.transformID, 9.30988, 8.53436, 1)
Transform.SetRotation(Obb5564ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5564ID)
Obb5564ID = nil

Obb4865ID = {}
Obb4865ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4865ID.transformID, {x=96.1735, y=33.4375, z=201.026})
Transform.SetScaleNonUniform(Obb4865ID.transformID, 10.0435, 18.0165, 1)
Transform.SetRotation(Obb4865ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4865ID)
Obb4865ID = nil

Obb5666ID = {}
Obb5666ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5666ID.transformID, {x=90.5204, y=26.4627, z=206.347})
Transform.SetScaleNonUniform(Obb5666ID.transformID, 7.26399, 16.0026, 1)
Transform.SetRotation(Obb5666ID.transformID, {x=0, y=0.419141, z=0})
table.insert(colliders,Obb5666ID)
Obb5666ID = nil

AutoGenParent167ID = {}
AutoGenParent167ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent167ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent167ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent167ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent167ID)
AutoGenParent167ID = nil

AutoGenParent268ID = {}
AutoGenParent268ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent268ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent268ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent268ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent268ID)
AutoGenParent268ID = nil

AutoGenParent369ID = {}
AutoGenParent369ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent369ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent369ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent369ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent369ID)
AutoGenParent369ID = nil

AutoGenParent470ID = {}
AutoGenParent470ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent470ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent470ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent470ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent470ID)
AutoGenParent470ID = nil

AutoGenParent571ID = {}
AutoGenParent571ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent571ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent571ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent571ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent571ID)
AutoGenParent571ID = nil

AutoGenParent672ID = {}
AutoGenParent672ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent672ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent672ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent672ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent672ID)
AutoGenParent672ID = nil

AutoGenParent773ID = {}
AutoGenParent773ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent773ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent773ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent773ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent773ID)
AutoGenParent773ID = nil

AutoGenParent874ID = {}
AutoGenParent874ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent874ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent874ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent874ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent874ID)
AutoGenParent874ID = nil

AutoGenParent975ID = {}
AutoGenParent975ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent975ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent975ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent975ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent975ID)
AutoGenParent975ID = nil

AutoGenParent1076ID = {}
AutoGenParent1076ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1076ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1076ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1076ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1076ID)
AutoGenParent1076ID = nil

AutoGenParent1177ID = {}
AutoGenParent1177ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1177ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1177ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1177ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1177ID)
AutoGenParent1177ID = nil

AutoGenParent1278ID = {}
AutoGenParent1278ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1278ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1278ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1278ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1278ID)
AutoGenParent1278ID = nil

AutoGenParent1379ID = {}
AutoGenParent1379ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1379ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1379ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1379ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1379ID)
AutoGenParent1379ID = nil

AutoGenParent1480ID = {}
AutoGenParent1480ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1480ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1480ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1480ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1480ID)
AutoGenParent1480ID = nil

AutoGenParent1581ID = {}
AutoGenParent1581ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1581ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1581ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1581ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1581ID)
AutoGenParent1581ID = nil

AutoGenParent82ID = {}
AutoGenParent82ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent82ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent82ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent82ID.transformID, {x=0, y=0, z=0})
AutoGenParent82ID.collider = AABBCollider.Create(AutoGenParent82ID.transformID)
AutoGenParent82ID.collider:SetOffset(0,0,0)
AutoGenParent82ID.collider:SetMinPos(-0.885735,0.0581741,125.948)
AutoGenParent82ID.collider:SetMaxPos(123.601,55.985,224.151)
AutoGenParent82ID1 = {}
AutoGenParent82ID1.collider = AABBCollider.Create(-1)
AutoGenParent82ID1.collider:SetOffset(0,0,0)
AutoGenParent82ID1.collider:SetMinPos(0.65317,3.40003,125.948)
AutoGenParent82ID1.collider:SetMaxPos(59.7085,23.1641,177.037)
AutoGenParent82ID.collider:AddChild(AutoGenParent82ID1.collider)
table.insert(colliders,AutoGenParent82ID1)
AutoGenParent82ID2 = {}
AutoGenParent82ID2.collider = AABBCollider.Create(-1)
AutoGenParent82ID2.collider:SetOffset(0,0,0)
AutoGenParent82ID2.collider:SetMinPos(5.7886,4.35966,125.948)
AutoGenParent82ID2.collider:SetMaxPos(56.5037,19.9078,142.859)
AutoGenParent82ID1.collider:AddChild(AutoGenParent82ID2.collider)
table.insert(colliders,AutoGenParent82ID2)
AutoGenParent82ID3 = {}
AutoGenParent82ID3.collider = OBBCollider.Create(-1)
AutoGenParent82ID3.collider:SetOffset(39.2188,11.0963,126.485)
AutoGenParent82ID3.collider:SetZAxis(0.0350067,0,0.999387)
AutoGenParent82ID3.collider:SetHalfLengths(2.66922,2.9525,0.443932)
AutoGenParent82ID2.collider:AddChild(AutoGenParent82ID3.collider)
table.insert(colliders,AutoGenParent82ID3)
AutoGenParent82ID4 = {}
AutoGenParent82ID4.collider = OBBCollider.Create(-1)
AutoGenParent82ID4.collider:SetOffset(44.7947,12.0151,129.069)
AutoGenParent82ID4.collider:SetZAxis(-0.583273,0,0.812276)
AutoGenParent82ID4.collider:SetHalfLengths(4.15336,3.60338,0.327835)
AutoGenParent82ID2.collider:AddChild(AutoGenParent82ID4.collider)
table.insert(colliders,AutoGenParent82ID4)
AutoGenParent82ID5 = {}
AutoGenParent82ID5.collider = OBBCollider.Create(-1)
AutoGenParent82ID5.collider:SetOffset(52.2659,14.2357,137.028)
AutoGenParent82ID5.collider:SetZAxis(-0.823142,0,0.567836)
AutoGenParent82ID5.collider:SetHalfLengths(6.73815,5.67209,0.5)
AutoGenParent82ID2.collider:AddChild(AutoGenParent82ID5.collider)
table.insert(colliders,AutoGenParent82ID5)
AutoGenParent82ID6 = {}
AutoGenParent82ID6.collider = OBBCollider.Create(-1)
AutoGenParent82ID6.collider:SetOffset(12.2076,10.8924,139.388)
AutoGenParent82ID6.collider:SetZAxis(-0.482651,0,0.875813)
AutoGenParent82ID6.collider:SetHalfLengths(2.22756,4.19528,0.5)
AutoGenParent82ID2.collider:AddChild(AutoGenParent82ID6.collider)
table.insert(colliders,AutoGenParent82ID6)
AutoGenParent82ID7 = {}
AutoGenParent82ID7.collider = OBBCollider.Create(-1)
AutoGenParent82ID7.collider:SetOffset(8.25699,8.23438,137.828)
AutoGenParent82ID7.collider:SetZAxis(-0.329544,0,0.94414)
AutoGenParent82ID7.collider:SetHalfLengths(2.43991,3.87472,0.5)
AutoGenParent82ID2.collider:AddChild(AutoGenParent82ID7.collider)
table.insert(colliders,AutoGenParent82ID7)
AutoGenParent82ID8 = {}
AutoGenParent82ID8.collider = AABBCollider.Create(-1)
AutoGenParent82ID8.collider:SetOffset(0,0,0)
AutoGenParent82ID8.collider:SetMinPos(0.831001,5.76354,138.092)
AutoGenParent82ID8.collider:SetMaxPos(26.2045,21.5156,163.85)
AutoGenParent82ID1.collider:AddChild(AutoGenParent82ID8.collider)
table.insert(colliders,AutoGenParent82ID8)
AutoGenParent82ID9 = {}
AutoGenParent82ID9.collider = OBBCollider.Create(-1)
AutoGenParent82ID9.collider:SetOffset(24.2969,14.5156,140)
AutoGenParent82ID9.collider:SetZAxis(0.130736,0,0.991417)
AutoGenParent82ID9.collider:SetHalfLengths(1.7,7,1.7)
AutoGenParent82ID8.collider:AddChild(AutoGenParent82ID9.collider)
table.insert(colliders,AutoGenParent82ID9)
AutoGenParent82ID10 = {}
AutoGenParent82ID10.collider = OBBCollider.Create(-1)
AutoGenParent82ID10.collider:SetOffset(19.4379,10.0219,140.008)
AutoGenParent82ID10.collider:SetZAxis(0.350855,0,0.93643)
AutoGenParent82ID10.collider:SetHalfLengths(1.39648,3.29177,0.5)
AutoGenParent82ID8.collider:AddChild(AutoGenParent82ID10.collider)
table.insert(colliders,AutoGenParent82ID10)
AutoGenParent82ID11 = {}
AutoGenParent82ID11.collider = OBBCollider.Create(-1)
AutoGenParent82ID11.collider:SetOffset(16.0687,11.3801,140.449)
AutoGenParent82ID11.collider:SetZAxis(-7.5809e-06,0,1)
AutoGenParent82ID11.collider:SetHalfLengths(2.08273,5.1216,0.5)
AutoGenParent82ID8.collider:AddChild(AutoGenParent82ID11.collider)
table.insert(colliders,AutoGenParent82ID11)
AutoGenParent82ID12 = {}
AutoGenParent82ID12.collider = OBBCollider.Create(-1)
AutoGenParent82ID12.collider:SetOffset(2.78337,10.7049,156.698)
AutoGenParent82ID12.collider:SetZAxis(0.97915,0,0.20314)
AutoGenParent82ID12.collider:SetHalfLengths(7.20088,4.94138,0.5)
AutoGenParent82ID8.collider:AddChild(AutoGenParent82ID12.collider)
table.insert(colliders,AutoGenParent82ID12)
AutoGenParent82ID13 = {}
AutoGenParent82ID13.collider = OBBCollider.Create(-1)
AutoGenParent82ID13.collider:SetOffset(3.62596,11.1337,148.583)
AutoGenParent82ID13.collider:SetZAxis(0.684941,0,-0.728598)
AutoGenParent82ID13.collider:SetHalfLengths(1.4292,4.90774,0.5)
AutoGenParent82ID8.collider:AddChild(AutoGenParent82ID13.collider)
table.insert(colliders,AutoGenParent82ID13)
AutoGenParent82ID14 = {}
AutoGenParent82ID14.collider = AABBCollider.Create(-1)
AutoGenParent82ID14.collider:SetOffset(0,0,0)
AutoGenParent82ID14.collider:SetMinPos(0.65317,5.34151,142.568)
AutoGenParent82ID14.collider:SetMaxPos(57.4816,23.1641,168.471)
AutoGenParent82ID1.collider:AddChild(AutoGenParent82ID14.collider)
table.insert(colliders,AutoGenParent82ID14)
AutoGenParent82ID15 = {}
AutoGenParent82ID15.collider = OBBCollider.Create(-1)
AutoGenParent82ID15.collider:SetOffset(56.6113,15.1691,145.5)
AutoGenParent82ID15.collider:SetZAxis(-0.996929,0,0.0783057)
AutoGenParent82ID15.collider:SetHalfLengths(2.89062,6.34563,0.64592)
AutoGenParent82ID14.collider:AddChild(AutoGenParent82ID15.collider)
table.insert(colliders,AutoGenParent82ID15)
AutoGenParent82ID16 = {}
AutoGenParent82ID16.collider = OBBCollider.Create(-1)
AutoGenParent82ID16.collider:SetOffset(52.7757,13.3417,152.966)
AutoGenParent82ID16.collider:SetZAxis(-0.732567,0,-0.680695)
AutoGenParent82ID16.collider:SetHalfLengths(6.10459,4.64871,0.5)
AutoGenParent82ID14.collider:AddChild(AutoGenParent82ID16.collider)
table.insert(colliders,AutoGenParent82ID16)
AutoGenParent82ID17 = {}
AutoGenParent82ID17.collider = OBBCollider.Create(-1)
AutoGenParent82ID17.collider:SetOffset(38.165,16.1641,155.643)
AutoGenParent82ID17.collider:SetZAxis(0.130736,0,0.991417)
AutoGenParent82ID17.collider:SetHalfLengths(1.7,7,1.7)
AutoGenParent82ID14.collider:AddChild(AutoGenParent82ID17.collider)
table.insert(colliders,AutoGenParent82ID17)
AutoGenParent82ID18 = {}
AutoGenParent82ID18.collider = OBBCollider.Create(-1)
AutoGenParent82ID18.collider:SetOffset(37,9.5333,157.949)
AutoGenParent82ID18.collider:SetZAxis(-0.942602,0,0.33392)
AutoGenParent82ID18.collider:SetHalfLengths(4.67852,2.7548,0.5)
AutoGenParent82ID14.collider:AddChild(AutoGenParent82ID18.collider)
table.insert(colliders,AutoGenParent82ID18)
AutoGenParent82ID19 = {}
AutoGenParent82ID19.collider = OBBCollider.Create(-1)
AutoGenParent82ID19.collider:SetOffset(2.59518,10.0938,164.52)
AutoGenParent82ID19.collider:SetZAxis(0.93109,0,-0.364789)
AutoGenParent82ID19.collider:SetHalfLengths(4.04745,4.75224,0.5)
AutoGenParent82ID14.collider:AddChild(AutoGenParent82ID19.collider)
table.insert(colliders,AutoGenParent82ID19)
AutoGenParent82ID20 = {}
AutoGenParent82ID20.collider = AABBCollider.Create(-1)
AutoGenParent82ID20.collider:SetOffset(0,0,0)
AutoGenParent82ID20.collider:SetMinPos(3.11127,4.44748,156.656)
AutoGenParent82ID20.collider:SetMaxPos(52.4928,18.1962,174.01)
AutoGenParent82ID1.collider:AddChild(AutoGenParent82ID20.collider)
table.insert(colliders,AutoGenParent82ID20)
AutoGenParent82ID21 = {}
AutoGenParent82ID21.collider = OBBCollider.Create(-1)
AutoGenParent82ID21.collider:SetOffset(44.1356,13.6087,157.73)
AutoGenParent82ID21.collider:SetZAxis(-0.117519,0,-0.993071)
AutoGenParent82ID21.collider:SetHalfLengths(4.91498,4.58745,0.5)
AutoGenParent82ID20.collider:AddChild(AutoGenParent82ID21.collider)
table.insert(colliders,AutoGenParent82ID21)
AutoGenParent82ID22 = {}
AutoGenParent82ID22.collider = OBBCollider.Create(-1)
AutoGenParent82ID22.collider:SetOffset(42.2044,10.3271,163.596)
AutoGenParent82ID22.collider:SetZAxis(-0.406524,0,0.91364)
AutoGenParent82ID22.collider:SetHalfLengths(4.07847,3.00121,0.5)
AutoGenParent82ID20.collider:AddChild(AutoGenParent82ID22.collider)
table.insert(colliders,AutoGenParent82ID22)
AutoGenParent82ID23 = {}
AutoGenParent82ID23.collider = OBBCollider.Create(-1)
AutoGenParent82ID23.collider:SetOffset(48.9783,10.9527,164.675)
AutoGenParent82ID23.collider:SetZAxis(0.0659963,0,0.99782)
AutoGenParent82ID23.collider:SetHalfLengths(3.48908,3.74589,0.5)
AutoGenParent82ID20.collider:AddChild(AutoGenParent82ID23.collider)
table.insert(colliders,AutoGenParent82ID23)
AutoGenParent82ID24 = {}
AutoGenParent82ID24.collider = OBBCollider.Create(-1)
AutoGenParent82ID24.collider:SetOffset(8.11317,9.32813,172.223)
AutoGenParent82ID24.collider:SetZAxis(0.973328,0,-0.22942)
AutoGenParent82ID24.collider:SetHalfLengths(1.71804,3.93282,0.5)
AutoGenParent82ID20.collider:AddChild(AutoGenParent82ID24.collider)
table.insert(colliders,AutoGenParent82ID24)
AutoGenParent82ID25 = {}
AutoGenParent82ID25.collider = OBBCollider.Create(-1)
AutoGenParent82ID25.collider:SetOffset(5.56516,9.48503,168.72)
AutoGenParent82ID25.collider:SetZAxis(0.697603,0,-0.716485)
AutoGenParent82ID25.collider:SetHalfLengths(2.93807,5.03755,0.5)
AutoGenParent82ID20.collider:AddChild(AutoGenParent82ID25.collider)
table.insert(colliders,AutoGenParent82ID25)
AutoGenParent82ID26 = {}
AutoGenParent82ID26.collider = AABBCollider.Create(-1)
AutoGenParent82ID26.collider:SetOffset(0,0,0)
AutoGenParent82ID26.collider:SetMinPos(6.69966,3.40003,164.432)
AutoGenParent82ID26.collider:SetMaxPos(59.7085,21.1296,177.037)
AutoGenParent82ID1.collider:AddChild(AutoGenParent82ID26.collider)
table.insert(colliders,AutoGenParent82ID26)
AutoGenParent82ID27 = {}
AutoGenParent82ID27.collider = OBBCollider.Create(-1)
AutoGenParent82ID27.collider:SetOffset(55.3556,11.1204,168.448)
AutoGenParent82ID27.collider:SetZAxis(-0.672089,0,0.74047)
AutoGenParent82ID27.collider:SetHalfLengths(5.42477,4.77056,0.5)
AutoGenParent82ID26.collider:AddChild(AutoGenParent82ID27.collider)
table.insert(colliders,AutoGenParent82ID27)
AutoGenParent82ID28 = {}
AutoGenParent82ID28.collider = OBBCollider.Create(-1)
AutoGenParent82ID28.collider:SetOffset(31.8688,14.2511,173.021)
AutoGenParent82ID28.collider:SetZAxis(0.919696,0,-0.392632)
AutoGenParent82ID28.collider:SetHalfLengths(4.15316,6.87849,0.5)
AutoGenParent82ID26.collider:AddChild(AutoGenParent82ID28.collider)
table.insert(colliders,AutoGenParent82ID28)
AutoGenParent82ID29 = {}
AutoGenParent82ID29.collider = OBBCollider.Create(-1)
AutoGenParent82ID29.collider:SetOffset(27.1257,8.69628,170.818)
AutoGenParent82ID29.collider:SetZAxis(-0.595609,0,-0.803275)
AutoGenParent82ID29.collider:SetHalfLengths(2.35612,3.02133,0.5)
AutoGenParent82ID26.collider:AddChild(AutoGenParent82ID29.collider)
table.insert(colliders,AutoGenParent82ID29)
AutoGenParent82ID30 = {}
AutoGenParent82ID30.collider = OBBCollider.Create(-1)
AutoGenParent82ID30.collider:SetOffset(30.0386,8.42188,169.58)
AutoGenParent82ID30.collider:SetZAxis(-0.0377485,0,-0.999287)
AutoGenParent82ID30.collider:SetHalfLengths(1.41012,5.02185,0.5)
AutoGenParent82ID26.collider:AddChild(AutoGenParent82ID30.collider)
table.insert(colliders,AutoGenParent82ID30)
AutoGenParent82ID31 = {}
AutoGenParent82ID31.collider = OBBCollider.Create(-1)
AutoGenParent82ID31.collider:SetOffset(7.74764,10.1094,174.373)
AutoGenParent82ID31.collider:SetZAxis(0.897614,0,0.440783)
AutoGenParent82ID31.collider:SetHalfLengths(1.35934,4.64164,0.5)
AutoGenParent82ID26.collider:AddChild(AutoGenParent82ID31.collider)
table.insert(colliders,AutoGenParent82ID31)
AutoGenParent82ID32 = {}
AutoGenParent82ID32.collider = AABBCollider.Create(-1)
AutoGenParent82ID32.collider:SetOffset(0,0,0)
AutoGenParent82ID32.collider:SetMinPos(-0.885735,0.0581741,169.452)
AutoGenParent82ID32.collider:SetMaxPos(121.582,50.4626,209.834)
AutoGenParent82ID.collider:AddChild(AutoGenParent82ID32.collider)
table.insert(colliders,AutoGenParent82ID32)
AutoGenParent82ID33 = {}
AutoGenParent82ID33.collider = AABBCollider.Create(-1)
AutoGenParent82ID33.collider:SetOffset(0,0,0)
AutoGenParent82ID33.collider:SetMinPos(-0.885735,1.51702,171.819)
AutoGenParent82ID33.collider:SetMaxPos(36.5954,20.0519,186.714)
AutoGenParent82ID32.collider:AddChild(AutoGenParent82ID33.collider)
table.insert(colliders,AutoGenParent82ID33)
AutoGenParent82ID34 = {}
AutoGenParent82ID34.collider = OBBCollider.Create(-1)
AutoGenParent82ID34.collider:SetOffset(34.5771,13.8542,180.313)
AutoGenParent82ID34.collider:SetZAxis(0.971509,0,-0.237004)
AutoGenParent82ID34.collider:SetHalfLengths(6.46658,6.19767,0.5)
AutoGenParent82ID33.collider:AddChild(AutoGenParent82ID34.collider)
table.insert(colliders,AutoGenParent82ID34)
AutoGenParent82ID35 = {}
AutoGenParent82ID35.collider = OBBCollider.Create(-1)
AutoGenParent82ID35.collider:SetOffset(24.5398,8.39063,172.849)
AutoGenParent82ID35.collider:SetZAxis(-0.467568,0,-0.883957)
AutoGenParent82ID35.collider:SetHalfLengths(1.25731,3.9063,0.5)
AutoGenParent82ID33.collider:AddChild(AutoGenParent82ID35.collider)
table.insert(colliders,AutoGenParent82ID35)
AutoGenParent82ID36 = {}
AutoGenParent82ID36.collider = OBBCollider.Create(-1)
AutoGenParent82ID36.collider:SetOffset(23.0938,8.5625,173.17)
AutoGenParent82ID36.collider:SetZAxis(-0.850097,0,-0.526626)
AutoGenParent82ID36.collider:SetHalfLengths(0.5,3.6555,0.5)
AutoGenParent82ID33.collider:AddChild(AutoGenParent82ID36.collider)
table.insert(colliders,AutoGenParent82ID36)
AutoGenParent82ID37 = {}
AutoGenParent82ID37.collider = OBBCollider.Create(-1)
AutoGenParent82ID37.collider:SetOffset(23.149,8.23438,175.228)
AutoGenParent82ID37.collider:SetZAxis(-0.997205,0,0.0747166)
AutoGenParent82ID37.collider:SetHalfLengths(2.02282,4.54201,0.5)
AutoGenParent82ID33.collider:AddChild(AutoGenParent82ID37.collider)
table.insert(colliders,AutoGenParent82ID37)
AutoGenParent82ID38 = {}
AutoGenParent82ID38.collider = OBBCollider.Create(-1)
AutoGenParent82ID38.collider:SetOffset(3.37572,7.92188,178.551)
AutoGenParent82ID38.collider:SetZAxis(0.617509,0,0.786564)
AutoGenParent82ID38.collider:SetHalfLengths(5.02528,6.40485,0.5)
AutoGenParent82ID33.collider:AddChild(AutoGenParent82ID38.collider)
table.insert(colliders,AutoGenParent82ID38)
AutoGenParent82ID39 = {}
AutoGenParent82ID39.collider = AABBCollider.Create(-1)
AutoGenParent82ID39.collider:SetOffset(0,0,0)
AutoGenParent82ID39.collider:SetMinPos(-0.0382934,2.72547,169.452)
AutoGenParent82ID39.collider:SetMaxPos(59.5705,20.4554,191.302)
AutoGenParent82ID32.collider:AddChild(AutoGenParent82ID39.collider)
table.insert(colliders,AutoGenParent82ID39)
AutoGenParent82ID40 = {}
AutoGenParent82ID40.collider = OBBCollider.Create(-1)
AutoGenParent82ID40.collider:SetOffset(58.6678,12.1175,174.958)
AutoGenParent82ID40.collider:SetZAxis(-0.997282,0,-0.073685)
AutoGenParent82ID40.collider:SetHalfLengths(5.48378,4.82041,0.5)
AutoGenParent82ID39.collider:AddChild(AutoGenParent82ID40.collider)
table.insert(colliders,AutoGenParent82ID40)
AutoGenParent82ID41 = {}
AutoGenParent82ID41.collider = OBBCollider.Create(-1)
AutoGenParent82ID41.collider:SetOffset(38.1514,13.6557,185.956)
AutoGenParent82ID41.collider:SetZAxis(0.622728,0,-0.782439)
AutoGenParent82ID41.collider:SetHalfLengths(5.69627,6.79964,0.5)
AutoGenParent82ID39.collider:AddChild(AutoGenParent82ID41.collider)
table.insert(colliders,AutoGenParent82ID41)
AutoGenParent82ID42 = {}
AutoGenParent82ID42.collider = OBBCollider.Create(-1)
AutoGenParent82ID42.collider:SetOffset(24.4609,8.22656,179.033)
AutoGenParent82ID42.collider:SetZAxis(-0.905241,0,0.424899)
AutoGenParent82ID42.collider:SetHalfLengths(2.4028,4.67843,0.5)
AutoGenParent82ID39.collider:AddChild(AutoGenParent82ID42.collider)
table.insert(colliders,AutoGenParent82ID42)
AutoGenParent82ID43 = {}
AutoGenParent82ID43.collider = OBBCollider.Create(-1)
AutoGenParent82ID43.collider:SetOffset(29.7923,8.63281,186.254)
AutoGenParent82ID43.collider:SetZAxis(-0.729108,0,0.684399)
AutoGenParent82ID43.collider:SetHalfLengths(6.45325,5.90734,0.5)
AutoGenParent82ID39.collider:AddChild(AutoGenParent82ID43.collider)
table.insert(colliders,AutoGenParent82ID43)
AutoGenParent82ID44 = {}
AutoGenParent82ID44.collider = OBBCollider.Create(-1)
AutoGenParent82ID44.collider:SetOffset(0.610751,7.92188,184.863)
AutoGenParent82ID44.collider:SetZAxis(0.999723,0,0.0235538)
AutoGenParent82ID44.collider:SetHalfLengths(6.33369,5.02226,0.5)
AutoGenParent82ID39.collider:AddChild(AutoGenParent82ID44.collider)
table.insert(colliders,AutoGenParent82ID44)
AutoGenParent82ID45 = {}
AutoGenParent82ID45.collider = AABBCollider.Create(-1)
AutoGenParent82ID45.collider:SetOffset(0,0,0)
AutoGenParent82ID45.collider:SetMinPos(-0.318049,0.0581741,178.558)
AutoGenParent82ID45.collider:SetMaxPos(59.5014,18.3637,202.441)
AutoGenParent82ID32.collider:AddChild(AutoGenParent82ID45.collider)
table.insert(colliders,AutoGenParent82ID45)
AutoGenParent82ID46 = {}
AutoGenParent82ID46.collider = OBBCollider.Create(-1)
AutoGenParent82ID46.collider:SetOffset(55.9463,12.6501,182.812)
AutoGenParent82ID46.collider:SetZAxis(-0.779628,0,-0.626243)
AutoGenParent82ID46.collider:SetHalfLengths(5.0544,4.691,0.5)
AutoGenParent82ID45.collider:AddChild(AutoGenParent82ID46.collider)
table.insert(colliders,AutoGenParent82ID46)
AutoGenParent82ID47 = {}
AutoGenParent82ID47.collider = OBBCollider.Create(-1)
AutoGenParent82ID47.collider:SetOffset(48.6808,12.5014,187.183)
AutoGenParent82ID47.collider:SetZAxis(-0.227771,0,-0.973715)
AutoGenParent82ID47.collider:SetHalfLengths(6.85436,5.86228,0.5)
AutoGenParent82ID45.collider:AddChild(AutoGenParent82ID47.collider)
table.insert(colliders,AutoGenParent82ID47)
AutoGenParent82ID48 = {}
AutoGenParent82ID48.collider = OBBCollider.Create(-1)
AutoGenParent82ID48.collider:SetOffset(35.0836,9.70313,192.442)
AutoGenParent82ID48.collider:SetZAxis(-0.765715,0,0.643181)
AutoGenParent82ID48.collider:SetHalfLengths(3.81128,5.78018,0.5)
AutoGenParent82ID45.collider:AddChild(AutoGenParent82ID48.collider)
table.insert(colliders,AutoGenParent82ID48)
AutoGenParent82ID49 = {}
AutoGenParent82ID49.collider = OBBCollider.Create(-1)
AutoGenParent82ID49.collider:SetOffset(2.38477,6.95703,198.375)
AutoGenParent82ID49.collider:SetZAxis(0.900335,0,-0.435197)
AutoGenParent82ID49.collider:SetHalfLengths(4.27398,5.60994,0.5)
AutoGenParent82ID45.collider:AddChild(AutoGenParent82ID49.collider)
table.insert(colliders,AutoGenParent82ID49)
AutoGenParent82ID50 = {}
AutoGenParent82ID50.collider = OBBCollider.Create(-1)
AutoGenParent82ID50.collider:SetOffset(0.623587,6.19531,191.702)
AutoGenParent82ID50.collider:SetZAxis(0.995846,0,-0.0910506)
AutoGenParent82ID50.collider:SetHalfLengths(4.87325,6.13714,0.5)
AutoGenParent82ID45.collider:AddChild(AutoGenParent82ID50.collider)
table.insert(colliders,AutoGenParent82ID50)
AutoGenParent82ID51 = {}
AutoGenParent82ID51.collider = AABBCollider.Create(-1)
AutoGenParent82ID51.collider:SetOffset(0,0,0)
AutoGenParent82ID51.collider:SetMinPos(2.28243,2.57218,186.779)
AutoGenParent82ID51.collider:SetMaxPos(121.582,50.4626,206.21)
AutoGenParent82ID32.collider:AddChild(AutoGenParent82ID51.collider)
table.insert(colliders,AutoGenParent82ID51)
AutoGenParent82ID52 = {}
AutoGenParent82ID52.collider = OBBCollider.Create(-1)
AutoGenParent82ID52.collider:SetOffset(5.1875,7.3125,201.625)
AutoGenParent82ID52.collider:SetZAxis(0.63835,0,-0.769746)
AutoGenParent82ID52.collider:SetHalfLengths(3.35942,4.74032,0.5)
AutoGenParent82ID51.collider:AddChild(AutoGenParent82ID52.collider)
table.insert(colliders,AutoGenParent82ID52)
AutoGenParent82ID53 = {}
AutoGenParent82ID53.collider = OBBCollider.Create(-1)
AutoGenParent82ID53.collider:SetOffset(50.8298,12.4453,201.871)
AutoGenParent82ID53.collider:SetZAxis(-0.753698,0,0.657221)
AutoGenParent82ID53.collider:SetHalfLengths(5.32195,4.96317,0.5)
AutoGenParent82ID51.collider:AddChild(AutoGenParent82ID53.collider)
table.insert(colliders,AutoGenParent82ID53)
AutoGenParent82ID54 = {}
AutoGenParent82ID54.collider = OBBCollider.Create(-1)
AutoGenParent82ID54.collider:SetOffset(83.1706,28.2956,197.481)
AutoGenParent82ID54.collider:SetZAxis(0.623735,0,0.781636)
AutoGenParent82ID54.collider:SetHalfLengths(5.68089,7.12234,0.5)
AutoGenParent82ID51.collider:AddChild(AutoGenParent82ID54.collider)
table.insert(colliders,AutoGenParent82ID54)
AutoGenParent82ID55 = {}
AutoGenParent82ID55.collider = OBBCollider.Create(-1)
AutoGenParent82ID55.collider:SetOffset(93.234,28.9104,190.853)
AutoGenParent82ID55.collider:SetZAxis(0.474159,0,0.880439)
AutoGenParent82ID55.collider:SetHalfLengths(7.66356,7.41439,0.5)
AutoGenParent82ID51.collider:AddChild(AutoGenParent82ID55.collider)
table.insert(colliders,AutoGenParent82ID55)
AutoGenParent82ID56 = {}
AutoGenParent82ID56.collider = OBBCollider.Create(-1)
AutoGenParent82ID56.collider:SetOffset(108.002,33.3125,192.67)
AutoGenParent82ID56.collider:SetZAxis(-0.345483,0,0.938425)
AutoGenParent82ID56.collider:SetHalfLengths(14.2873,17.1501,0.5)
AutoGenParent82ID51.collider:AddChild(AutoGenParent82ID56.collider)
table.insert(colliders,AutoGenParent82ID56)
AutoGenParent82ID57 = {}
AutoGenParent82ID57.collider = AABBCollider.Create(-1)
AutoGenParent82ID57.collider:SetOffset(0,0,0)
AutoGenParent82ID57.collider:SetMinPos(53.5935,6.31265,198.267)
AutoGenParent82ID57.collider:SetMaxPos(100.86,42.4458,209.834)
AutoGenParent82ID32.collider:AddChild(AutoGenParent82ID57.collider)
table.insert(colliders,AutoGenParent82ID57)
AutoGenParent82ID58 = {}
AutoGenParent82ID58.collider = OBBCollider.Create(-1)
AutoGenParent82ID58.collider:SetOffset(56.1607,13.0547,206.779)
AutoGenParent82ID58.collider:SetZAxis(-0.529293,0,0.848439)
AutoGenParent82ID58.collider:SetHalfLengths(2.71396,6.74204,0.5)
AutoGenParent82ID57.collider:AddChild(AutoGenParent82ID58.collider)
table.insert(colliders,AutoGenParent82ID58)
AutoGenParent82ID59 = {}
AutoGenParent82ID59.collider = OBBCollider.Create(-1)
AutoGenParent82ID59.collider:SetOffset(62.7419,16.6875,207.51)
AutoGenParent82ID59.collider:SetZAxis(0.0403177,0,0.999187)
AutoGenParent82ID59.collider:SetHalfLengths(4.60364,9.39264,0.5)
AutoGenParent82ID57.collider:AddChild(AutoGenParent82ID59.collider)
table.insert(colliders,AutoGenParent82ID59)
AutoGenParent82ID60 = {}
AutoGenParent82ID60.collider = OBBCollider.Create(-1)
AutoGenParent82ID60.collider:SetOffset(72.6857,20.5074,203.934)
AutoGenParent82ID60.collider:SetZAxis(0.424874,0,0.905252)
AutoGenParent82ID60.collider:SetHalfLengths(8.0292,12.3174,0.5)
AutoGenParent82ID57.collider:AddChild(AutoGenParent82ID60.collider)
table.insert(colliders,AutoGenParent82ID60)
AutoGenParent82ID61 = {}
AutoGenParent82ID61.collider = OBBCollider.Create(-1)
AutoGenParent82ID61.collider:SetOffset(96.1735,33.4375,201.026)
AutoGenParent82ID61.collider:SetZAxis(-0.461222,0,-0.887285)
AutoGenParent82ID61.collider:SetHalfLengths(5.02173,9.00826,0.5)
AutoGenParent82ID57.collider:AddChild(AutoGenParent82ID61.collider)
table.insert(colliders,AutoGenParent82ID61)
AutoGenParent82ID62 = {}
AutoGenParent82ID62.collider = OBBCollider.Create(-1)
AutoGenParent82ID62.collider:SetOffset(90.5204,26.4627,206.347)
AutoGenParent82ID62.collider:SetZAxis(-0.900232,0,-0.435411)
AutoGenParent82ID62.collider:SetHalfLengths(3.632,8.00131,0.5)
AutoGenParent82ID57.collider:AddChild(AutoGenParent82ID62.collider)
table.insert(colliders,AutoGenParent82ID62)
AutoGenParent82ID63 = {}
AutoGenParent82ID63.collider = AABBCollider.Create(-1)
AutoGenParent82ID63.collider:SetOffset(0,0,0)
AutoGenParent82ID63.collider:SetMinPos(87.4955,17.6585,196.446)
AutoGenParent82ID63.collider:SetMaxPos(123.601,55.985,224.151)
AutoGenParent82ID.collider:AddChild(AutoGenParent82ID63.collider)
table.insert(colliders,AutoGenParent82ID63)
AutoGenParent82ID64 = {}
AutoGenParent82ID64.collider = AABBCollider.Create(-1)
AutoGenParent82ID64.collider:SetOffset(0,0,0)
AutoGenParent82ID64.collider:SetMinPos(87.4955,17.6585,196.446)
AutoGenParent82ID64.collider:SetMaxPos(123.601,51.2033,219.031)
AutoGenParent82ID63.collider:AddChild(AutoGenParent82ID64.collider)
table.insert(colliders,AutoGenParent82ID64)
AutoGenParent82ID65 = {}
AutoGenParent82ID65.collider = OBBCollider.Create(-1)
AutoGenParent82ID65.collider:SetOffset(120.979,41.375,202.838)
AutoGenParent82ID65.collider:SetZAxis(-0.945342,0,0.326082)
AutoGenParent82ID65.collider:SetHalfLengths(6.5895,9.82831,0.5)
AutoGenParent82ID64.collider:AddChild(AutoGenParent82ID65.collider)
table.insert(colliders,AutoGenParent82ID65)
AutoGenParent82ID66 = {}
AutoGenParent82ID66.collider = OBBCollider.Create(-1)
AutoGenParent82ID66.collider:SetOffset(105.844,32.7476,202.393)
AutoGenParent82ID66.collider:SetZAxis(0.541425,0,-0.840749)
AutoGenParent82ID66.collider:SetHalfLengths(6.77617,9.74417,0.5)
AutoGenParent82ID64.collider:AddChild(AutoGenParent82ID66.collider)
table.insert(colliders,AutoGenParent82ID66)
AutoGenParent82ID67 = {}
AutoGenParent82ID67.collider = OBBCollider.Create(-1)
AutoGenParent82ID67.collider:SetOffset(89.6993,29.3027,211.726)
AutoGenParent82ID67.collider:SetZAxis(-0.908177,0,0.418586)
AutoGenParent82ID67.collider:SetHalfLengths(4.17998,11.6442,0.5)
AutoGenParent82ID64.collider:AddChild(AutoGenParent82ID67.collider)
table.insert(colliders,AutoGenParent82ID67)
AutoGenParent82ID68 = {}
AutoGenParent82ID68.collider = OBBCollider.Create(-1)
AutoGenParent82ID68.collider:SetOffset(92.625,24.875,216.75)
AutoGenParent82ID68.collider:SetZAxis(-0.825738,0,0.564054)
AutoGenParent82ID68.collider:SetHalfLengths(2.42056,5.80978,0.5)
AutoGenParent82ID64.collider:AddChild(AutoGenParent82ID68.collider)
table.insert(colliders,AutoGenParent82ID68)
AutoGenParent82ID69 = {}
AutoGenParent82ID69.collider = OBBCollider.Create(-1)
AutoGenParent82ID69.collider:SetOffset(112.846,36.7188,210.205)
AutoGenParent82ID69.collider:SetZAxis(-0.94411,0,0.329631)
AutoGenParent82ID69.collider:SetHalfLengths(4.65494,4.26718,0.5)
AutoGenParent82ID64.collider:AddChild(AutoGenParent82ID69.collider)
table.insert(colliders,AutoGenParent82ID69)
AutoGenParent82ID70 = {}
AutoGenParent82ID70.collider = AABBCollider.Create(-1)
AutoGenParent82ID70.collider:SetOffset(0,0,0)
AutoGenParent82ID70.collider:SetMinPos(93.6024,22.015,214.115)
AutoGenParent82ID70.collider:SetMaxPos(115.422,55.985,224.151)
AutoGenParent82ID63.collider:AddChild(AutoGenParent82ID70.collider)
table.insert(colliders,AutoGenParent82ID70)
AutoGenParent82ID71 = {}
AutoGenParent82ID71.collider = OBBCollider.Create(-1)
AutoGenParent82ID71.collider:SetOffset(98.5347,39,219.379)
AutoGenParent82ID71.collider:SetZAxis(-0.177843,0,0.984059)
AutoGenParent82ID71.collider:SetHalfLengths(4.92175,16.985,0.5)
AutoGenParent82ID70.collider:AddChild(AutoGenParent82ID71.collider)
table.insert(colliders,AutoGenParent82ID71)
AutoGenParent82ID72 = {}
AutoGenParent82ID72.collider = OBBCollider.Create(-1)
AutoGenParent82ID72.collider:SetOffset(105.5,31.6984,221.867)
AutoGenParent82ID72.collider:SetZAxis(-0.650917,0,0.759149)
AutoGenParent82ID72.collider:SetHalfLengths(2.92575,6.36294,0.5)
AutoGenParent82ID70.collider:AddChild(AutoGenParent82ID72.collider)
table.insert(colliders,AutoGenParent82ID72)
AutoGenParent82ID73 = {}
AutoGenParent82ID73.collider = OBBCollider.Create(-1)
AutoGenParent82ID73.collider:SetOffset(110.313,32.5313,221.625)
AutoGenParent82ID73.collider:SetZAxis(0.448727,0,0.893669)
AutoGenParent82ID73.collider:SetHalfLengths(3.71803,5.81299,0.5)
AutoGenParent82ID70.collider:AddChild(AutoGenParent82ID73.collider)
table.insert(colliders,AutoGenParent82ID73)
AutoGenParent82ID74 = {}
AutoGenParent82ID74.collider = OBBCollider.Create(-1)
AutoGenParent82ID74.collider:SetOffset(114.005,32.9375,217.166)
AutoGenParent82ID74.collider:SetZAxis(0.951034,0,0.309086)
AutoGenParent82ID74.collider:SetHalfLengths(3.0458,7.39666,0.5)
AutoGenParent82ID70.collider:AddChild(AutoGenParent82ID74.collider)
table.insert(colliders,AutoGenParent82ID74)
CollisionHandler.AddAABB(AutoGenParent82ID.collider, 3)
AutoGenParent82ID1 = nil
AutoGenParent82ID2 = nil
AutoGenParent82ID3 = nil
AutoGenParent82ID4 = nil
AutoGenParent82ID5 = nil
AutoGenParent82ID6 = nil
AutoGenParent82ID7 = nil
AutoGenParent82ID8 = nil
AutoGenParent82ID9 = nil
AutoGenParent82ID10 = nil
AutoGenParent82ID11 = nil
AutoGenParent82ID12 = nil
AutoGenParent82ID13 = nil
AutoGenParent82ID14 = nil
AutoGenParent82ID15 = nil
AutoGenParent82ID16 = nil
AutoGenParent82ID17 = nil
AutoGenParent82ID18 = nil
AutoGenParent82ID19 = nil
AutoGenParent82ID20 = nil
AutoGenParent82ID21 = nil
AutoGenParent82ID22 = nil
AutoGenParent82ID23 = nil
AutoGenParent82ID24 = nil
AutoGenParent82ID25 = nil
AutoGenParent82ID26 = nil
AutoGenParent82ID27 = nil
AutoGenParent82ID28 = nil
AutoGenParent82ID29 = nil
AutoGenParent82ID30 = nil
AutoGenParent82ID31 = nil
AutoGenParent82ID32 = nil
AutoGenParent82ID33 = nil
AutoGenParent82ID34 = nil
AutoGenParent82ID35 = nil
AutoGenParent82ID36 = nil
AutoGenParent82ID37 = nil
AutoGenParent82ID38 = nil
AutoGenParent82ID39 = nil
AutoGenParent82ID40 = nil
AutoGenParent82ID41 = nil
AutoGenParent82ID42 = nil
AutoGenParent82ID43 = nil
AutoGenParent82ID44 = nil
AutoGenParent82ID45 = nil
AutoGenParent82ID46 = nil
AutoGenParent82ID47 = nil
AutoGenParent82ID48 = nil
AutoGenParent82ID49 = nil
AutoGenParent82ID50 = nil
AutoGenParent82ID51 = nil
AutoGenParent82ID52 = nil
AutoGenParent82ID53 = nil
AutoGenParent82ID54 = nil
AutoGenParent82ID55 = nil
AutoGenParent82ID56 = nil
AutoGenParent82ID57 = nil
AutoGenParent82ID58 = nil
AutoGenParent82ID59 = nil
AutoGenParent82ID60 = nil
AutoGenParent82ID61 = nil
AutoGenParent82ID62 = nil
AutoGenParent82ID63 = nil
AutoGenParent82ID64 = nil
AutoGenParent82ID65 = nil
AutoGenParent82ID66 = nil
AutoGenParent82ID67 = nil
AutoGenParent82ID68 = nil
AutoGenParent82ID69 = nil
AutoGenParent82ID70 = nil
AutoGenParent82ID71 = nil
AutoGenParent82ID72 = nil
AutoGenParent82ID73 = nil
AutoGenParent82ID74 = nil
table.insert(colliders,AutoGenParent82ID)
AutoGenParent82ID = nil

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
tile26ID = {}
tile26ID.transformID = Transform.Bind()
Transform.SetPosition(tile26ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile26ID.transformID, 1, 1, 1)
Transform.SetRotation(tile26ID.transformID, {x=0, y=0, z=0})
tile26ID.model = Assets.LoadModel('Models/tile2.model')
Gear.AddStaticInstance(tile26ID.model, tile26ID.transformID)
table.insert(props,tile26ID)
tile26ID = nil

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
