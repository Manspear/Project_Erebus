levels = {}
heightmaps = {}

---------------------------------Heightmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_height.png")
Heightmap1.asset:SetPosition({x=0, y=-0.67693, z=128})
Heightmap1.asset:SetHeightMultiplier(0.147291)
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_height.png")
Heightmap2.asset:SetPosition({x=128, y=32.1865, z=0})
Heightmap2.asset:SetHeightMultiplier(0.111404)
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap3.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap3.asset:SetHeightMultiplier(0.0707237)
heightmaps[3] = Heightmap3
Heightmap3 = nil
Heightmap4 = {}
Heightmap4.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap4.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap4.asset:SetHeightMultiplier(0.113531)
heightmaps[4] = Heightmap4
Heightmap4 = nil
Heightmap5 = {}
Heightmap5.asset = Assets.LoadHeightmap("Textures/tile5_height.png")
Heightmap5.asset:SetPosition({x=384, y=38.5561, z=384})
Heightmap5.asset:SetHeightMultiplier(0.260571)
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=85.0848, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0852758)
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.2563, z=512})
Heightmap7.asset:SetHeightMultiplier(0.241725)
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165535)
heightmaps[8] = Heightmap8
Heightmap8 = nil

---------------------------------Heightmap-----------------------------


---------------------------------Settings-----------------------------

Transform.SetPosition(player.transformID, {x=32.9063, y=13.4809, z=145.625})
player:ChangeHeightmap(1)


---------------------------------Settings-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.props.TilePlaceholder2ID = {}
level01.props.TilePlaceholder2ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
level01.props.TilePlaceholder2ID.transformID = Gear.BindStaticInstance(level01.props.TilePlaceholder2ID.model)
Transform.SetPosition(level01.props.TilePlaceholder2ID.transformID, {x=0, y=255, z=0})
Transform.SetScaleNonUniform(level01.props.TilePlaceholder2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
level01.props.tile13ID = {}
level01.props.m16ID = {}
level01.props.m16ID.model = Assets.LoadModel('Models/tile1_m1.model')
level01.props.m16ID.transformID = Gear.BindStaticInstance(level01.props.m16ID.model)
Transform.SetPosition(level01.props.m16ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m16ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m16ID.transformID, {x=0, y=0, z=0})
level01.props.m27ID = {}
level01.props.m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
level01.props.m27ID.transformID = Gear.BindStaticInstance(level01.props.m27ID.model)
Transform.SetPosition(level01.props.m27ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m27ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m27ID.transformID, {x=0, y=0, z=0})
level01.props.m38ID = {}
level01.props.m38ID.model = Assets.LoadModel('Models/tile1_m3.model')
level01.props.m38ID.transformID = Gear.BindStaticInstance(level01.props.m38ID.model)
Transform.SetPosition(level01.props.m38ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m38ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m38ID.transformID, {x=0, y=0, z=0})
level01.props.m49ID = {}
level01.props.m49ID.model = Assets.LoadModel('Models/tile1_m4.model')
level01.props.m49ID.transformID = Gear.BindStaticInstance(level01.props.m49ID.model)
Transform.SetPosition(level01.props.m49ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m49ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m49ID.transformID, {x=0, y=0, z=0})
level01.props.m510ID = {}
level01.props.m510ID.model = Assets.LoadModel('Models/tile1_m5.model')
level01.props.m510ID.transformID = Gear.BindStaticInstance(level01.props.m510ID.model)
Transform.SetPosition(level01.props.m510ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m510ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m510ID.transformID, {x=0, y=0, z=0})
level01.props.m611ID = {}
level01.props.m611ID.model = Assets.LoadModel('Models/tile1_m6.model')
level01.props.m611ID.transformID = Gear.BindStaticInstance(level01.props.m611ID.model)
Transform.SetPosition(level01.props.m611ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m611ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m611ID.transformID, {x=0, y=0, z=0})
level01.props.m712ID = {}
level01.props.m712ID.model = Assets.LoadModel('Models/tile1_m7.model')
level01.props.m712ID.transformID = Gear.BindStaticInstance(level01.props.m712ID.model)
Transform.SetPosition(level01.props.m712ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m712ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m712ID.transformID, {x=0, y=0, z=0})
level01.props.m813ID = {}
level01.props.m813ID.model = Assets.LoadModel('Models/tile1_m8.model')
level01.props.m813ID.transformID = Gear.BindStaticInstance(level01.props.m813ID.model)
Transform.SetPosition(level01.props.m813ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m813ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m813ID.transformID, {x=0, y=0, z=0})
level01.props.s114ID = {}
level01.props.s114ID.model = Assets.LoadModel('Models/tile1_s1.model')
level01.props.s114ID.transformID = Gear.BindStaticInstance(level01.props.s114ID.model)
Transform.SetPosition(level01.props.s114ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s114ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s114ID.transformID, {x=0, y=0, z=0})
level01.props.s215ID = {}
level01.props.s215ID.model = Assets.LoadModel('Models/tile1_s2.model')
level01.props.s215ID.transformID = Gear.BindStaticInstance(level01.props.s215ID.model)
Transform.SetPosition(level01.props.s215ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s215ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s215ID.transformID, {x=0, y=0, z=0})
level01.props.s316ID = {}
level01.props.s316ID.model = Assets.LoadModel('Models/tile1_s3.model')
level01.props.s316ID.transformID = Gear.BindStaticInstance(level01.props.s316ID.model)
Transform.SetPosition(level01.props.s316ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s316ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s316ID.transformID, {x=0, y=0, z=0})
level01.props.s417ID = {}
level01.props.s417ID.model = Assets.LoadModel('Models/tile1_s4.model')
level01.props.s417ID.transformID = Gear.BindStaticInstance(level01.props.s417ID.model)
Transform.SetPosition(level01.props.s417ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s417ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s417ID.transformID, {x=0, y=0, z=0})
level01.props.s518ID = {}
level01.props.s518ID.model = Assets.LoadModel('Models/tile1_s5.model')
level01.props.s518ID.transformID = Gear.BindStaticInstance(level01.props.s518ID.model)
Transform.SetPosition(level01.props.s518ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s518ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s518ID.transformID, {x=0, y=0, z=0})
level01.props.s619ID = {}
level01.props.s619ID.model = Assets.LoadModel('Models/tile1_s6.model')
level01.props.s619ID.transformID = Gear.BindStaticInstance(level01.props.s619ID.model)
Transform.SetPosition(level01.props.s619ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s619ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s619ID.transformID, {x=0, y=0, z=0})
level01.props.s720ID = {}
level01.props.s720ID.model = Assets.LoadModel('Models/tile1_s7.model')
level01.props.s720ID.transformID = Gear.BindStaticInstance(level01.props.s720ID.model)
Transform.SetPosition(level01.props.s720ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s720ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s720ID.transformID, {x=0, y=0, z=0})
level01.props.Bridge369ID = {}
level01.props.Bridge369ID.model = Assets.LoadModel('Models/bridge.model')
level01.props.Bridge369ID.transformID = Gear.BindStaticInstance(level01.props.Bridge369ID.model)
Transform.SetPosition(level01.props.Bridge369ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.Bridge369ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Bridge369ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider11370ID = {}
level01.props.OakTree_NoCollider11370ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11370ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11370ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11370ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11370ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11370ID.transformID, {x=0, y=2.76508, z=0})
level01.props.OakTree_NoCollider12371ID = {}
level01.props.OakTree_NoCollider12371ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12371ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12371ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12371ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12371ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12371ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider13372ID = {}
level01.props.OakTree_NoCollider13372ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13372ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13372ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13372ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13372ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13372ID.transformID, {x=0, y=2.16382, z=0})
level01.props.OakTree_NoCollider14373ID = {}
level01.props.OakTree_NoCollider14373ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14373ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14373ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14373ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14373ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14373ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider151374ID = {}
level01.props.OakTree_NoCollider151374ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151374ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151374ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151374ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151374ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151374ID.transformID, {x=0, y=1.62265, z=0})
level01.props.OakTree_NoCollider16375ID = {}
level01.props.OakTree_NoCollider16375ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16375ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16375ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16375ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16375ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16375ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider17376ID = {}
level01.props.OakTree_NoCollider17376ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17376ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17376ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17376ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17376ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17376ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider18377ID = {}
level01.props.OakTree_NoCollider18377ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18377ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18377ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18377ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18377ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18377ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider19378ID = {}
level01.props.OakTree_NoCollider19378ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19378ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19378ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19378ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19378ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19378ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
level01.props.OakTree_Collider379ID = {}
level01.props.OakTree_Collider379ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider379ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider379ID.model)
Transform.SetPosition(level01.props.OakTree_Collider379ID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider379ID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_Collider379ID.transformID, {x=0, y=1.7421, z=-0.00619812})
level01.props.OakTree_Collider1380ID = {}
level01.props.OakTree_Collider1380ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1380ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1380ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1380ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1380ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1380ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider2381ID = {}
level01.props.OakTree_Collider2381ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2381ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2381ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2381ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2381ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2381ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider3382ID = {}
level01.props.OakTree_Collider3382ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3382ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3382ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3382ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3382ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3382ID.transformID, {x=0, y=-1.42165, z=0})
level01.props.PineTree_NoCollider383ID = {}
level01.props.PineTree_NoCollider383ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider383ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider383ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider383ID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider383ID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoCollider383ID.transformID, {x=0.536822, y=0.137189, z=0.401651})
level01.props.PineTree_NoCollider2421ID = {}
level01.props.PineTree_NoCollider2421ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2421ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2421ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2421ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2421ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2421ID.transformID, {x=0, y=2.5061, z=0})
level01.props.PineTree_NoCollider3422ID = {}
level01.props.PineTree_NoCollider3422ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3422ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3422ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3422ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3422ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3422ID.transformID, {x=0, y=1.9694, z=0})
level01.props.PineTree_NoCollider4423ID = {}
level01.props.PineTree_NoCollider4423ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4423ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4423ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4423ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4423ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4423ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree_NoCollider5424ID = {}
level01.props.PineTree_NoCollider5424ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5424ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5424ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5424ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5424ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5424ID.transformID, {x=0, y=2.83677, z=0})
level01.triggers.New438ID = {}
level01.triggers.New438ID.collider = SphereCollider.Create(-1)
level01.triggers.New438ID.collider:SetOffset(0,0,0)
level01.triggers.New438ID.collider:SetRadius(1)
level01.triggers.New438ID.collider:SetPos(20.0156,6.19141,157.875)
level01.triggers.New438ID.collider.OnTriggering = function() print("Derp") end
level01.triggers.New438ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.New438ID.collider, 4)
level01.colliders.C_Parent_Tile_1454ID = {}
level01.colliders.C_Parent_Tile_1454ID.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID.collider:SetMinPos(1.70104,-3.32028,127.7)
level01.colliders.C_Parent_Tile_1454ID.collider:SetMaxPos(128.073,45.7117,237.297)
level01.colliders.C_Parent_Tile_1454ID.collider:SetPos(0,0,0)
level01.colliders.C_Parent_Tile_1454ID1 = {}
level01.colliders.C_Parent_Tile_1454ID1.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID1.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID1.collider:SetMinPos(3.73167,1.54031,127.7)
level01.colliders.C_Parent_Tile_1454ID1.collider:SetMaxPos(55.2591,16.3583,148.212)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID1.collider)
level01.colliders.C_Parent_Tile_1454ID2 = {}
level01.colliders.C_Parent_Tile_1454ID2.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID2.collider:SetOffset(6,6.83489,143)
level01.colliders.C_Parent_Tile_1454ID2.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_1454ID2.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID2.collider)
level01.colliders.C_Parent_Tile_1454ID3 = {}
level01.colliders.C_Parent_Tile_1454ID3.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID3.collider:SetOffset(10.5,7.12947,140)
level01.colliders.C_Parent_Tile_1454ID3.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_1454ID3.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID3.collider)
level01.colliders.C_Parent_Tile_1454ID4 = {}
level01.colliders.C_Parent_Tile_1454ID4.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID4.collider:SetOffset(17,6.98218,141)
level01.colliders.C_Parent_Tile_1454ID4.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1454ID4.collider:SetHalfLengths(0.3,5,4)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID4.collider)
level01.colliders.C_Parent_Tile_1454ID5 = {}
level01.colliders.C_Parent_Tile_1454ID5.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID5.collider:SetOffset(45,8.60238,129.5)
level01.colliders.C_Parent_Tile_1454ID5.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1454ID5.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID5.collider)
level01.colliders.C_Parent_Tile_1454ID6 = {}
level01.colliders.C_Parent_Tile_1454ID6.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID6.collider:SetOffset(51.5,8.60238,137)
level01.colliders.C_Parent_Tile_1454ID6.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.C_Parent_Tile_1454ID6.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID6.collider)
level01.colliders.C_Parent_Tile_1454ID7 = {}
level01.colliders.C_Parent_Tile_1454ID7.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID7.collider:SetOffset(4.5,6.83489,147.5)
level01.colliders.C_Parent_Tile_1454ID7.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1454ID7.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID7.collider)
level01.colliders.C_Parent_Tile_1454ID8 = {}
level01.colliders.C_Parent_Tile_1454ID8.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID8.collider:SetOffset(24,10.8555,139)
level01.colliders.C_Parent_Tile_1454ID8.collider:SetZAxis(0.367737,0,0.92993)
level01.colliders.C_Parent_Tile_1454ID8.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID8.collider)
level01.colliders.C_Parent_Tile_1454ID9 = {}
level01.colliders.C_Parent_Tile_1454ID9.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID9.collider:SetOffset(36.5,8.3078,128)
level01.colliders.C_Parent_Tile_1454ID9.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1454ID9.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID9.collider)
level01.colliders.C_Parent_Tile_1454ID10 = {}
level01.colliders.C_Parent_Tile_1454ID10.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID10.collider:SetOffset(28,7.86593,132)
level01.colliders.C_Parent_Tile_1454ID10.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.C_Parent_Tile_1454ID10.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID10.collider)
level01.colliders.C_Parent_Tile_1454ID11 = {}
level01.colliders.C_Parent_Tile_1454ID11.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID11.collider:SetOffset(23,7.71863,138.5)
level01.colliders.C_Parent_Tile_1454ID11.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.C_Parent_Tile_1454ID11.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.C_Parent_Tile_1454ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID11.collider)
level01.colliders.C_Parent_Tile_1454ID12 = {}
level01.colliders.C_Parent_Tile_1454ID12.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID12.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID12.collider:SetMinPos(3.70232,1.24573,142.941)
level01.colliders.C_Parent_Tile_1454ID12.collider:SetMaxPos(56.2942,18.8731,171.18)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID12.collider)
level01.colliders.C_Parent_Tile_1454ID13 = {}
level01.colliders.C_Parent_Tile_1454ID13.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID13.collider:SetOffset(55.5,9.33883,145.5)
level01.colliders.C_Parent_Tile_1454ID13.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.C_Parent_Tile_1454ID13.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID13.collider)
level01.colliders.C_Parent_Tile_1454ID14 = {}
level01.colliders.C_Parent_Tile_1454ID14.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID14.collider:SetOffset(52.5,9.33883,152)
level01.colliders.C_Parent_Tile_1454ID14.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.C_Parent_Tile_1454ID14.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID14.collider)
level01.colliders.C_Parent_Tile_1454ID15 = {}
level01.colliders.C_Parent_Tile_1454ID15.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID15.collider:SetOffset(44,9.48612,157)
level01.colliders.C_Parent_Tile_1454ID15.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.C_Parent_Tile_1454ID15.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID15.collider)
level01.colliders.C_Parent_Tile_1454ID16 = {}
level01.colliders.C_Parent_Tile_1454ID16.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID16.collider:SetOffset(35,7.12947,155)
level01.colliders.C_Parent_Tile_1454ID16.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.C_Parent_Tile_1454ID16.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID16.collider)
level01.colliders.C_Parent_Tile_1454ID17 = {}
level01.colliders.C_Parent_Tile_1454ID17.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID17.collider:SetOffset(37,7.27676,160)
level01.colliders.C_Parent_Tile_1454ID17.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID17.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID17.collider)
level01.colliders.C_Parent_Tile_1454ID18 = {}
level01.colliders.C_Parent_Tile_1454ID18.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID18.collider:SetOffset(39.5,6.98218,163)
level01.colliders.C_Parent_Tile_1454ID18.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_1454ID18.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID18.collider)
level01.colliders.C_Parent_Tile_1454ID19 = {}
level01.colliders.C_Parent_Tile_1454ID19.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID19.collider:SetOffset(5,6.98218,151.5)
level01.colliders.C_Parent_Tile_1454ID19.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1454ID19.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID19.collider)
level01.colliders.C_Parent_Tile_1454ID20 = {}
level01.colliders.C_Parent_Tile_1454ID20.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID20.collider:SetOffset(4.5,7.42405,159)
level01.colliders.C_Parent_Tile_1454ID20.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_1454ID20.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID20.collider)
level01.colliders.C_Parent_Tile_1454ID21 = {}
level01.colliders.C_Parent_Tile_1454ID21.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID21.collider:SetOffset(7,6.54031,167)
level01.colliders.C_Parent_Tile_1454ID21.collider:SetZAxis(0.6,0,0.8)
level01.colliders.C_Parent_Tile_1454ID21.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID21.collider)
level01.colliders.C_Parent_Tile_1454ID22 = {}
level01.colliders.C_Parent_Tile_1454ID22.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID22.collider:SetOffset(39.8641,12.8281,155.087)
level01.colliders.C_Parent_Tile_1454ID22.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.colliders.C_Parent_Tile_1454ID22.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.colliders.C_Parent_Tile_1454ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID22.collider)
level01.colliders.C_Parent_Tile_1454ID23 = {}
level01.colliders.C_Parent_Tile_1454ID23.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID23.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID23.collider:SetMinPos(2.80476,0.361984,163.721)
level01.colliders.C_Parent_Tile_1454ID23.collider:SetMaxPos(57.1664,13.0132,182.228)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID23.collider)
level01.colliders.C_Parent_Tile_1454ID24 = {}
level01.colliders.C_Parent_Tile_1454ID24.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID24.collider:SetOffset(43.5,7.12947,165)
level01.colliders.C_Parent_Tile_1454ID24.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_1454ID24.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID24.collider)
level01.colliders.C_Parent_Tile_1454ID25 = {}
level01.colliders.C_Parent_Tile_1454ID25.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID25.collider:SetOffset(48.5,7.57134,166)
level01.colliders.C_Parent_Tile_1454ID25.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1454ID25.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID25.collider)
level01.colliders.C_Parent_Tile_1454ID26 = {}
level01.colliders.C_Parent_Tile_1454ID26.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID26.collider:SetOffset(54,8.01322,168)
level01.colliders.C_Parent_Tile_1454ID26.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_1454ID26.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID26.collider)
level01.colliders.C_Parent_Tile_1454ID27 = {}
level01.colliders.C_Parent_Tile_1454ID27.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID27.collider:SetOffset(35,7.12947,176.5)
level01.colliders.C_Parent_Tile_1454ID27.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.C_Parent_Tile_1454ID27.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID27.collider)
level01.colliders.C_Parent_Tile_1454ID28 = {}
level01.colliders.C_Parent_Tile_1454ID28.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID28.collider:SetOffset(32.5,6.54031,170.5)
level01.colliders.C_Parent_Tile_1454ID28.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.C_Parent_Tile_1454ID28.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID28.collider)
level01.colliders.C_Parent_Tile_1454ID29 = {}
level01.colliders.C_Parent_Tile_1454ID29.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID29.collider:SetOffset(29.5,6.54031,168)
level01.colliders.C_Parent_Tile_1454ID29.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1454ID29.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID29.collider)
level01.colliders.C_Parent_Tile_1454ID30 = {}
level01.colliders.C_Parent_Tile_1454ID30.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID30.collider:SetOffset(25,6.09844,170.5)
level01.colliders.C_Parent_Tile_1454ID30.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.C_Parent_Tile_1454ID30.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID30.collider)
level01.colliders.C_Parent_Tile_1454ID31 = {}
level01.colliders.C_Parent_Tile_1454ID31.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID31.collider:SetOffset(22,5.80386,174.5)
level01.colliders.C_Parent_Tile_1454ID31.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1454ID31.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID31.collider)
level01.colliders.C_Parent_Tile_1454ID32 = {}
level01.colliders.C_Parent_Tile_1454ID32.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID32.collider:SetOffset(10,6.24573,173.5)
level01.colliders.C_Parent_Tile_1454ID32.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1454ID32.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID32.collider)
level01.colliders.C_Parent_Tile_1454ID33 = {}
level01.colliders.C_Parent_Tile_1454ID33.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID33.collider:SetOffset(6.5,5.65657,179)
level01.colliders.C_Parent_Tile_1454ID33.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.C_Parent_Tile_1454ID33.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.C_Parent_Tile_1454ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID33.collider)
level01.colliders.C_Parent_Tile_1454ID34 = {}
level01.colliders.C_Parent_Tile_1454ID34.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID34.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID34.collider:SetMinPos(1.70104,-2.14196,169.866)
level01.colliders.C_Parent_Tile_1454ID34.collider:SetMaxPos(58.2977,21.9153,196.22)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID34.collider)
level01.colliders.C_Parent_Tile_1454ID35 = {}
level01.colliders.C_Parent_Tile_1454ID35.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID35.collider:SetOffset(57.5,8.01322,171)
level01.colliders.C_Parent_Tile_1454ID35.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID35.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID35.collider)
level01.colliders.C_Parent_Tile_1454ID36 = {}
level01.colliders.C_Parent_Tile_1454ID36.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID36.collider:SetOffset(57.5,8.01322,176)
level01.colliders.C_Parent_Tile_1454ID36.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_1454ID36.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID36.collider)
level01.colliders.C_Parent_Tile_1454ID37 = {}
level01.colliders.C_Parent_Tile_1454ID37.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID37.collider:SetOffset(54.5,8.01322,183)
level01.colliders.C_Parent_Tile_1454ID37.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.C_Parent_Tile_1454ID37.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID37.collider)
level01.colliders.C_Parent_Tile_1454ID38 = {}
level01.colliders.C_Parent_Tile_1454ID38.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID38.collider:SetOffset(37,7.71863,182)
level01.colliders.C_Parent_Tile_1454ID38.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_1454ID38.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID38.collider)
level01.colliders.C_Parent_Tile_1454ID39 = {}
level01.colliders.C_Parent_Tile_1454ID39.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID39.collider:SetOffset(23.5,5.80386,179.5)
level01.colliders.C_Parent_Tile_1454ID39.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.C_Parent_Tile_1454ID39.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID39.collider)
level01.colliders.C_Parent_Tile_1454ID40 = {}
level01.colliders.C_Parent_Tile_1454ID40.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID40.collider:SetOffset(32,5.50927,189.5)
level01.colliders.C_Parent_Tile_1454ID40.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.C_Parent_Tile_1454ID40.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID40.collider)
level01.colliders.C_Parent_Tile_1454ID41 = {}
level01.colliders.C_Parent_Tile_1454ID41.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID41.collider:SetOffset(2.5,5.36198,188)
level01.colliders.C_Parent_Tile_1454ID41.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.C_Parent_Tile_1454ID41.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID41.collider)
level01.colliders.C_Parent_Tile_1454ID42 = {}
level01.colliders.C_Parent_Tile_1454ID42.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID42.collider:SetOffset(23,4.33095,190.5)
level01.colliders.C_Parent_Tile_1454ID42.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.C_Parent_Tile_1454ID42.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID42.collider)
level01.colliders.C_Parent_Tile_1454ID43 = {}
level01.colliders.C_Parent_Tile_1454ID43.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID43.collider:SetOffset(6.18867,8.53125,180.735)
level01.colliders.C_Parent_Tile_1454ID43.collider:SetZAxis(-0.891114,0,-0.453779)
level01.colliders.C_Parent_Tile_1454ID43.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID43.collider)
level01.colliders.C_Parent_Tile_1454ID44 = {}
level01.colliders.C_Parent_Tile_1454ID44.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID44.collider:SetOffset(37.7154,11.4688,182.582)
level01.colliders.C_Parent_Tile_1454ID44.collider:SetZAxis(-0.988898,0,0.148599)
level01.colliders.C_Parent_Tile_1454ID44.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.colliders.C_Parent_Tile_1454ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID44.collider)
level01.colliders.C_Parent_Tile_1454ID45 = {}
level01.colliders.C_Parent_Tile_1454ID45.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID45.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID45.collider:SetMinPos(1.74275,-3.32028,183.76)
level01.colliders.C_Parent_Tile_1454ID45.collider:SetMaxPos(52.0493,13.3078,202.166)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID45.collider)
level01.colliders.C_Parent_Tile_1454ID46 = {}
level01.colliders.C_Parent_Tile_1454ID46.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID46.collider:SetOffset(49,8.01322,186.5)
level01.colliders.C_Parent_Tile_1454ID46.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_1454ID46.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID46.collider)
level01.colliders.C_Parent_Tile_1454ID47 = {}
level01.colliders.C_Parent_Tile_1454ID47.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID47.collider:SetOffset(44,8.01322,187)
level01.colliders.C_Parent_Tile_1454ID47.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1454ID47.collider:SetHalfLengths(0.3,5,2)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID47.collider)
level01.colliders.C_Parent_Tile_1454ID48 = {}
level01.colliders.C_Parent_Tile_1454ID48.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID48.collider:SetOffset(40,8.01322,185.5)
level01.colliders.C_Parent_Tile_1454ID48.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.C_Parent_Tile_1454ID48.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID48.collider)
level01.colliders.C_Parent_Tile_1454ID49 = {}
level01.colliders.C_Parent_Tile_1454ID49.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID49.collider:SetOffset(37.5,8.16051,196.5)
level01.colliders.C_Parent_Tile_1454ID49.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.C_Parent_Tile_1454ID49.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID49.collider)
level01.colliders.C_Parent_Tile_1454ID50 = {}
level01.colliders.C_Parent_Tile_1454ID50.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID50.collider:SetOffset(35.5,8.16051,198)
level01.colliders.C_Parent_Tile_1454ID50.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID50.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID50.collider)
level01.colliders.C_Parent_Tile_1454ID51 = {}
level01.colliders.C_Parent_Tile_1454ID51.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID51.collider:SetOffset(3.5,4.03637,196.5)
level01.colliders.C_Parent_Tile_1454ID51.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.C_Parent_Tile_1454ID51.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID51.collider)
level01.colliders.C_Parent_Tile_1454ID52 = {}
level01.colliders.C_Parent_Tile_1454ID52.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID52.collider:SetOffset(6,3.44721,200.5)
level01.colliders.C_Parent_Tile_1454ID52.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_1454ID52.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID52.collider)
level01.colliders.C_Parent_Tile_1454ID53 = {}
level01.colliders.C_Parent_Tile_1454ID53.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID53.collider:SetOffset(24.5,3.15263,199.5)
level01.colliders.C_Parent_Tile_1454ID53.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.C_Parent_Tile_1454ID53.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID53.collider)
level01.colliders.C_Parent_Tile_1454ID54 = {}
level01.colliders.C_Parent_Tile_1454ID54.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID54.collider:SetOffset(27,5.36198,196.5)
level01.colliders.C_Parent_Tile_1454ID54.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.C_Parent_Tile_1454ID54.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID54.collider)
level01.colliders.C_Parent_Tile_1454ID55 = {}
level01.colliders.C_Parent_Tile_1454ID55.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID55.collider:SetOffset(29,7.71863,197)
level01.colliders.C_Parent_Tile_1454ID55.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1454ID55.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.C_Parent_Tile_1454ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID55.collider)
level01.colliders.C_Parent_Tile_1454ID56 = {}
level01.colliders.C_Parent_Tile_1454ID56.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID56.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID56.collider:SetMinPos(6.73167,-1.84737,189.723)
level01.colliders.C_Parent_Tile_1454ID56.collider:SetMaxPos(101.115,32.0137,211.174)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID56.collider)
level01.colliders.C_Parent_Tile_1454ID57 = {}
level01.colliders.C_Parent_Tile_1454ID57.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID57.collider:SetOffset(42.5,8.3078,200)
level01.colliders.C_Parent_Tile_1454ID57.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.C_Parent_Tile_1454ID57.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID57.collider)
level01.colliders.C_Parent_Tile_1454ID58 = {}
level01.colliders.C_Parent_Tile_1454ID58.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID58.collider:SetOffset(50.5,9.63341,202.5)
level01.colliders.C_Parent_Tile_1454ID58.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_1454ID58.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID58.collider)
level01.colliders.C_Parent_Tile_1454ID59 = {}
level01.colliders.C_Parent_Tile_1454ID59.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID59.collider:SetOffset(55,10.3699,207.5)
level01.colliders.C_Parent_Tile_1454ID59.collider:SetZAxis(0.8,0,0.6)
level01.colliders.C_Parent_Tile_1454ID59.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID59.collider)
level01.colliders.C_Parent_Tile_1454ID60 = {}
level01.colliders.C_Parent_Tile_1454ID60.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID60.collider:SetOffset(85.5,20.091,198)
level01.colliders.C_Parent_Tile_1454ID60.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.C_Parent_Tile_1454ID60.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID60.collider)
level01.colliders.C_Parent_Tile_1454ID61 = {}
level01.colliders.C_Parent_Tile_1454ID61.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID61.collider:SetOffset(95,23.1841,192.5)
level01.colliders.C_Parent_Tile_1454ID61.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.C_Parent_Tile_1454ID61.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID61.collider)
level01.colliders.C_Parent_Tile_1454ID62 = {}
level01.colliders.C_Parent_Tile_1454ID62.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID62.collider:SetOffset(7.5,3.44721,203)
level01.colliders.C_Parent_Tile_1454ID62.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID62.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID62.collider)
level01.colliders.C_Parent_Tile_1454ID63 = {}
level01.colliders.C_Parent_Tile_1454ID63.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID63.collider:SetOffset(15,3.29992,202.5)
level01.colliders.C_Parent_Tile_1454ID63.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.C_Parent_Tile_1454ID63.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID63.collider)
level01.colliders.C_Parent_Tile_1454ID64 = {}
level01.colliders.C_Parent_Tile_1454ID64.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID64.collider:SetOffset(31.5,8.16051,200)
level01.colliders.C_Parent_Tile_1454ID64.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID64.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID64.collider)
level01.colliders.C_Parent_Tile_1454ID65 = {}
level01.colliders.C_Parent_Tile_1454ID65.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID65.collider:SetOffset(32.5,8.89696,203.5)
level01.colliders.C_Parent_Tile_1454ID65.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1454ID65.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID65.collider)
level01.colliders.C_Parent_Tile_1454ID66 = {}
level01.colliders.C_Parent_Tile_1454ID66.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID66.collider:SetOffset(34.5,8.45509,207.5)
level01.colliders.C_Parent_Tile_1454ID66.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_1454ID66.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.C_Parent_Tile_1454ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID66.collider)
level01.colliders.C_Parent_Tile_1454ID67 = {}
level01.colliders.C_Parent_Tile_1454ID67.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID67.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID67.collider:SetMinPos(36.8512,-1.70009,189.746)
level01.colliders.C_Parent_Tile_1454ID67.collider:SetMaxPos(109.159,37.0216,217.3)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID67.collider)
level01.colliders.C_Parent_Tile_1454ID68 = {}
level01.colliders.C_Parent_Tile_1454ID68.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID68.collider:SetOffset(62,11.4009,208)
level01.colliders.C_Parent_Tile_1454ID68.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.C_Parent_Tile_1454ID68.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID68.collider)
level01.colliders.C_Parent_Tile_1454ID69 = {}
level01.colliders.C_Parent_Tile_1454ID69.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID69.collider:SetOffset(71.5,15.0832,205.5)
level01.colliders.C_Parent_Tile_1454ID69.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.C_Parent_Tile_1454ID69.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID69.collider)
level01.colliders.C_Parent_Tile_1454ID70 = {}
level01.colliders.C_Parent_Tile_1454ID70.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID70.collider:SetOffset(79,18.3236,202.5)
level01.colliders.C_Parent_Tile_1454ID70.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1454ID70.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID70.collider)
level01.colliders.C_Parent_Tile_1454ID71 = {}
level01.colliders.C_Parent_Tile_1454ID71.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID71.collider:SetOffset(105,27.0137,192.5)
level01.colliders.C_Parent_Tile_1454ID71.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.C_Parent_Tile_1454ID71.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID71.collider)
level01.colliders.C_Parent_Tile_1454ID72 = {}
level01.colliders.C_Parent_Tile_1454ID72.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID72.collider:SetOffset(101,28.6339,199)
level01.colliders.C_Parent_Tile_1454ID72.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1454ID72.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID72.collider)
level01.colliders.C_Parent_Tile_1454ID73 = {}
level01.colliders.C_Parent_Tile_1454ID73.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID73.collider:SetOffset(95,27.3083,202.5)
level01.colliders.C_Parent_Tile_1454ID73.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.C_Parent_Tile_1454ID73.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID73.collider)
level01.colliders.C_Parent_Tile_1454ID74 = {}
level01.colliders.C_Parent_Tile_1454ID74.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID74.collider:SetOffset(89,22.595,207.5)
level01.colliders.C_Parent_Tile_1454ID74.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_1454ID74.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID74.collider)
level01.colliders.C_Parent_Tile_1454ID75 = {}
level01.colliders.C_Parent_Tile_1454ID75.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID75.collider:SetOffset(40.5,8.60238,213)
level01.colliders.C_Parent_Tile_1454ID75.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.C_Parent_Tile_1454ID75.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID75.collider)
level01.colliders.C_Parent_Tile_1454ID76 = {}
level01.colliders.C_Parent_Tile_1454ID76.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID76.collider:SetOffset(51,9.33883,216)
level01.colliders.C_Parent_Tile_1454ID76.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.C_Parent_Tile_1454ID76.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID76.collider)
level01.colliders.C_Parent_Tile_1454ID77 = {}
level01.colliders.C_Parent_Tile_1454ID77.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID77.collider:SetOffset(63,8.74967,217)
level01.colliders.C_Parent_Tile_1454ID77.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1454ID77.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.C_Parent_Tile_1454ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID77.collider)
level01.colliders.C_Parent_Tile_1454ID78 = {}
level01.colliders.C_Parent_Tile_1454ID78.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID78.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID78.collider:SetMinPos(67.8529,3.74966,194.709)
level01.colliders.C_Parent_Tile_1454ID78.collider:SetMaxPos(124.268,45.7117,235.252)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID78.collider)
level01.colliders.C_Parent_Tile_1454ID79 = {}
level01.colliders.C_Parent_Tile_1454ID79.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID79.collider:SetOffset(111,30.696,195.5)
level01.colliders.C_Parent_Tile_1454ID79.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.C_Parent_Tile_1454ID79.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID79.collider)
level01.colliders.C_Parent_Tile_1454ID80 = {}
level01.colliders.C_Parent_Tile_1454ID80.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID80.collider:SetOffset(115.5,31.8743,198)
level01.colliders.C_Parent_Tile_1454ID80.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.C_Parent_Tile_1454ID80.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID80.collider)
level01.colliders.C_Parent_Tile_1454ID81 = {}
level01.colliders.C_Parent_Tile_1454ID81.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID81.collider:SetOffset(121,34.6728,206)
level01.colliders.C_Parent_Tile_1454ID81.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1454ID81.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID81.collider)
level01.colliders.C_Parent_Tile_1454ID82 = {}
level01.colliders.C_Parent_Tile_1454ID82.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID82.collider:SetOffset(90,21.5639,213.5)
level01.colliders.C_Parent_Tile_1454ID82.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.C_Parent_Tile_1454ID82.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID82.collider)
level01.colliders.C_Parent_Tile_1454ID83 = {}
level01.colliders.C_Parent_Tile_1454ID83.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID83.collider:SetOffset(98,22.4477,219.5)
level01.colliders.C_Parent_Tile_1454ID83.collider:SetZAxis(0.970142,0,0.242536)
level01.colliders.C_Parent_Tile_1454ID83.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID83.collider)
level01.colliders.C_Parent_Tile_1454ID84 = {}
level01.colliders.C_Parent_Tile_1454ID84.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID84.collider:SetOffset(116,30.9905,217)
level01.colliders.C_Parent_Tile_1454ID84.collider:SetZAxis(0,0,-1)
level01.colliders.C_Parent_Tile_1454ID84.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID84.collider)
level01.colliders.C_Parent_Tile_1454ID85 = {}
level01.colliders.C_Parent_Tile_1454ID85.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID85.collider:SetOffset(114,36.1457,210.5)
level01.colliders.C_Parent_Tile_1454ID85.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.C_Parent_Tile_1454ID85.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID85.collider)
level01.colliders.C_Parent_Tile_1454ID86 = {}
level01.colliders.C_Parent_Tile_1454ID86.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID86.collider:SetOffset(107,34.6728,203)
level01.colliders.C_Parent_Tile_1454ID86.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.C_Parent_Tile_1454ID86.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID86.collider)
level01.colliders.C_Parent_Tile_1454ID87 = {}
level01.colliders.C_Parent_Tile_1454ID87.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID87.collider:SetOffset(76,14.1994,221.5)
level01.colliders.C_Parent_Tile_1454ID87.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.C_Parent_Tile_1454ID87.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID87.collider)
level01.colliders.C_Parent_Tile_1454ID88 = {}
level01.colliders.C_Parent_Tile_1454ID88.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID88.collider:SetOffset(91,15.6723,230.5)
level01.colliders.C_Parent_Tile_1454ID88.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.C_Parent_Tile_1454ID88.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.C_Parent_Tile_1454ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID88.collider)
level01.colliders.C_Parent_Tile_1454ID89 = {}
level01.colliders.C_Parent_Tile_1454ID89.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID89.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1454ID89.collider:SetMinPos(97.9544,11.7034,210.709)
level01.colliders.C_Parent_Tile_1454ID89.collider:SetMaxPos(128.073,38.7891,237.297)
level01.colliders.C_Parent_Tile_1454ID.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID89.collider)
level01.colliders.C_Parent_Tile_1454ID90 = {}
level01.colliders.C_Parent_Tile_1454ID90.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID90.collider:SetOffset(126,32.9053,211.5)
level01.colliders.C_Parent_Tile_1454ID90.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.C_Parent_Tile_1454ID90.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID90.collider)
level01.colliders.C_Parent_Tile_1454ID91 = {}
level01.colliders.C_Parent_Tile_1454ID91.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID91.collider:SetOffset(105.5,26.8664,222.5)
level01.colliders.C_Parent_Tile_1454ID91.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1454ID91.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID91.collider)
level01.colliders.C_Parent_Tile_1454ID92 = {}
level01.colliders.C_Parent_Tile_1454ID92.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID92.collider:SetOffset(111.5,28.3393,222)
level01.colliders.C_Parent_Tile_1454ID92.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.C_Parent_Tile_1454ID92.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID92.collider)
level01.colliders.C_Parent_Tile_1454ID93 = {}
level01.colliders.C_Parent_Tile_1454ID93.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID93.collider:SetOffset(104.5,22.595,236)
level01.colliders.C_Parent_Tile_1454ID93.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.C_Parent_Tile_1454ID93.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID93.collider)
level01.colliders.C_Parent_Tile_1454ID94 = {}
level01.colliders.C_Parent_Tile_1454ID94.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID94.collider:SetOffset(115,28.4866,235)
level01.colliders.C_Parent_Tile_1454ID94.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1454ID94.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID94.collider)
level01.colliders.C_Parent_Tile_1454ID95 = {}
level01.colliders.C_Parent_Tile_1454ID95.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID95.collider:SetOffset(122,30.4014,233.5)
level01.colliders.C_Parent_Tile_1454ID95.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_1454ID95.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID95.collider)
level01.colliders.C_Parent_Tile_1454ID96 = {}
level01.colliders.C_Parent_Tile_1454ID96.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID96.collider:SetOffset(125.5,32.1689,229)
level01.colliders.C_Parent_Tile_1454ID96.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.C_Parent_Tile_1454ID96.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID96.collider)
level01.colliders.C_Parent_Tile_1454ID97 = {}
level01.colliders.C_Parent_Tile_1454ID97.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1454ID97.collider:SetOffset(127,32.758,224)
level01.colliders.C_Parent_Tile_1454ID97.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1454ID97.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.C_Parent_Tile_1454ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1454ID97.collider)
CollisionHandler.AddAABB(level01.colliders.C_Parent_Tile_1454ID.collider, 3)
level01.colliders.C_Parent_Tile_1454ID1 = nil
level01.colliders.C_Parent_Tile_1454ID2 = nil
level01.colliders.C_Parent_Tile_1454ID3 = nil
level01.colliders.C_Parent_Tile_1454ID4 = nil
level01.colliders.C_Parent_Tile_1454ID5 = nil
level01.colliders.C_Parent_Tile_1454ID6 = nil
level01.colliders.C_Parent_Tile_1454ID7 = nil
level01.colliders.C_Parent_Tile_1454ID8 = nil
level01.colliders.C_Parent_Tile_1454ID9 = nil
level01.colliders.C_Parent_Tile_1454ID10 = nil
level01.colliders.C_Parent_Tile_1454ID11 = nil
level01.colliders.C_Parent_Tile_1454ID12 = nil
level01.colliders.C_Parent_Tile_1454ID13 = nil
level01.colliders.C_Parent_Tile_1454ID14 = nil
level01.colliders.C_Parent_Tile_1454ID15 = nil
level01.colliders.C_Parent_Tile_1454ID16 = nil
level01.colliders.C_Parent_Tile_1454ID17 = nil
level01.colliders.C_Parent_Tile_1454ID18 = nil
level01.colliders.C_Parent_Tile_1454ID19 = nil
level01.colliders.C_Parent_Tile_1454ID20 = nil
level01.colliders.C_Parent_Tile_1454ID21 = nil
level01.colliders.C_Parent_Tile_1454ID22 = nil
level01.colliders.C_Parent_Tile_1454ID23 = nil
level01.colliders.C_Parent_Tile_1454ID24 = nil
level01.colliders.C_Parent_Tile_1454ID25 = nil
level01.colliders.C_Parent_Tile_1454ID26 = nil
level01.colliders.C_Parent_Tile_1454ID27 = nil
level01.colliders.C_Parent_Tile_1454ID28 = nil
level01.colliders.C_Parent_Tile_1454ID29 = nil
level01.colliders.C_Parent_Tile_1454ID30 = nil
level01.colliders.C_Parent_Tile_1454ID31 = nil
level01.colliders.C_Parent_Tile_1454ID32 = nil
level01.colliders.C_Parent_Tile_1454ID33 = nil
level01.colliders.C_Parent_Tile_1454ID34 = nil
level01.colliders.C_Parent_Tile_1454ID35 = nil
level01.colliders.C_Parent_Tile_1454ID36 = nil
level01.colliders.C_Parent_Tile_1454ID37 = nil
level01.colliders.C_Parent_Tile_1454ID38 = nil
level01.colliders.C_Parent_Tile_1454ID39 = nil
level01.colliders.C_Parent_Tile_1454ID40 = nil
level01.colliders.C_Parent_Tile_1454ID41 = nil
level01.colliders.C_Parent_Tile_1454ID42 = nil
level01.colliders.C_Parent_Tile_1454ID43 = nil
level01.colliders.C_Parent_Tile_1454ID44 = nil
level01.colliders.C_Parent_Tile_1454ID45 = nil
level01.colliders.C_Parent_Tile_1454ID46 = nil
level01.colliders.C_Parent_Tile_1454ID47 = nil
level01.colliders.C_Parent_Tile_1454ID48 = nil
level01.colliders.C_Parent_Tile_1454ID49 = nil
level01.colliders.C_Parent_Tile_1454ID50 = nil
level01.colliders.C_Parent_Tile_1454ID51 = nil
level01.colliders.C_Parent_Tile_1454ID52 = nil
level01.colliders.C_Parent_Tile_1454ID53 = nil
level01.colliders.C_Parent_Tile_1454ID54 = nil
level01.colliders.C_Parent_Tile_1454ID55 = nil
level01.colliders.C_Parent_Tile_1454ID56 = nil
level01.colliders.C_Parent_Tile_1454ID57 = nil
level01.colliders.C_Parent_Tile_1454ID58 = nil
level01.colliders.C_Parent_Tile_1454ID59 = nil
level01.colliders.C_Parent_Tile_1454ID60 = nil
level01.colliders.C_Parent_Tile_1454ID61 = nil
level01.colliders.C_Parent_Tile_1454ID62 = nil
level01.colliders.C_Parent_Tile_1454ID63 = nil
level01.colliders.C_Parent_Tile_1454ID64 = nil
level01.colliders.C_Parent_Tile_1454ID65 = nil
level01.colliders.C_Parent_Tile_1454ID66 = nil
level01.colliders.C_Parent_Tile_1454ID67 = nil
level01.colliders.C_Parent_Tile_1454ID68 = nil
level01.colliders.C_Parent_Tile_1454ID69 = nil
level01.colliders.C_Parent_Tile_1454ID70 = nil
level01.colliders.C_Parent_Tile_1454ID71 = nil
level01.colliders.C_Parent_Tile_1454ID72 = nil
level01.colliders.C_Parent_Tile_1454ID73 = nil
level01.colliders.C_Parent_Tile_1454ID74 = nil
level01.colliders.C_Parent_Tile_1454ID75 = nil
level01.colliders.C_Parent_Tile_1454ID76 = nil
level01.colliders.C_Parent_Tile_1454ID77 = nil
level01.colliders.C_Parent_Tile_1454ID78 = nil
level01.colliders.C_Parent_Tile_1454ID79 = nil
level01.colliders.C_Parent_Tile_1454ID80 = nil
level01.colliders.C_Parent_Tile_1454ID81 = nil
level01.colliders.C_Parent_Tile_1454ID82 = nil
level01.colliders.C_Parent_Tile_1454ID83 = nil
level01.colliders.C_Parent_Tile_1454ID84 = nil
level01.colliders.C_Parent_Tile_1454ID85 = nil
level01.colliders.C_Parent_Tile_1454ID86 = nil
level01.colliders.C_Parent_Tile_1454ID87 = nil
level01.colliders.C_Parent_Tile_1454ID88 = nil
level01.colliders.C_Parent_Tile_1454ID89 = nil
level01.colliders.C_Parent_Tile_1454ID90 = nil
level01.colliders.C_Parent_Tile_1454ID91 = nil
level01.colliders.C_Parent_Tile_1454ID92 = nil
level01.colliders.C_Parent_Tile_1454ID93 = nil
level01.colliders.C_Parent_Tile_1454ID94 = nil
level01.colliders.C_Parent_Tile_1454ID95 = nil
level01.colliders.C_Parent_Tile_1454ID96 = nil
level01.colliders.C_Parent_Tile_1454ID97 = nil
end
level01.unload = function()
Gear.UnbindInstance(level01.props.TilePlaceholder2ID.transformID)
level01.props.TilePlaceholder2ID = nil
level01.props.tile13ID = nil
level01..TileSettings4ID = nil
Gear.UnbindInstance(level01.props.m16ID.transformID)
level01.props.m16ID = nil
Gear.UnbindInstance(level01.props.m27ID.transformID)
level01.props.m27ID = nil
Gear.UnbindInstance(level01.props.m38ID.transformID)
level01.props.m38ID = nil
Gear.UnbindInstance(level01.props.m49ID.transformID)
level01.props.m49ID = nil
Gear.UnbindInstance(level01.props.m510ID.transformID)
level01.props.m510ID = nil
Gear.UnbindInstance(level01.props.m611ID.transformID)
level01.props.m611ID = nil
Gear.UnbindInstance(level01.props.m712ID.transformID)
level01.props.m712ID = nil
Gear.UnbindInstance(level01.props.m813ID.transformID)
level01.props.m813ID = nil
Gear.UnbindInstance(level01.props.s114ID.transformID)
level01.props.s114ID = nil
Gear.UnbindInstance(level01.props.s215ID.transformID)
level01.props.s215ID = nil
Gear.UnbindInstance(level01.props.s316ID.transformID)
level01.props.s316ID = nil
Gear.UnbindInstance(level01.props.s417ID.transformID)
level01.props.s417ID = nil
Gear.UnbindInstance(level01.props.s518ID.transformID)
level01.props.s518ID = nil
Gear.UnbindInstance(level01.props.s619ID.transformID)
level01.props.s619ID = nil
Gear.UnbindInstance(level01.props.s720ID.transformID)
level01.props.s720ID = nil
level01.colliders.OpWall77ID = nil
level01.colliders.OpWall178ID = nil
level01.colliders.OpWall279ID = nil
level01.colliders.OpWall380ID = nil
level01.colliders.OpWall481ID = nil
level01.colliders.OpWall582ID = nil
level01.colliders.OpWall683ID = nil
level01.colliders.OpWall784ID = nil
level01.colliders.OpWall885ID = nil
level01.colliders.OpWall986ID = nil
level01.colliders.OpWall1087ID = nil
level01.colliders.OpWall1188ID = nil
level01.colliders.OpWall1289ID = nil
level01.colliders.OpWall1390ID = nil
level01.colliders.OpWall1491ID = nil
level01.colliders.OpWall1592ID = nil
level01.colliders.OpWall1693ID = nil
level01.colliders.OpWall1794ID = nil
level01.colliders.OpWall1895ID = nil
level01.colliders.OpWall1996ID = nil
level01.colliders.OpWall2097ID = nil
level01.colliders.OpWall2198ID = nil
level01.colliders.OpWall2299ID = nil
level01.colliders.OpWall23100ID = nil
level01.colliders.OpWall24101ID = nil
level01.colliders.OpWall25102ID = nil
level01.colliders.OpWall26103ID = nil
level01.colliders.OpWall27104ID = nil
level01.colliders.OpWall28105ID = nil
level01.colliders.OpWall29106ID = nil
level01.colliders.OpWall30107ID = nil
level01.colliders.OpWall31108ID = nil
level01.colliders.OpWall32109ID = nil
level01.colliders.OpWall33110ID = nil
level01.colliders.OpWall34111ID = nil
level01.colliders.OpWall35112ID = nil
level01.colliders.OpWall36113ID = nil
level01.colliders.OpWall37114ID = nil
level01.colliders.OpWall38115ID = nil
level01.colliders.OpWall39116ID = nil
level01.colliders.OpWall40117ID = nil
level01.colliders.OpWall41118ID = nil
level01.colliders.OpWall42119ID = nil
level01.colliders.OpWall43120ID = nil
level01.colliders.OpWall44121ID = nil
level01.colliders.OpWall45122ID = nil
level01.colliders.OpWall46123ID = nil
level01.colliders.OpWall47124ID = nil
level01.colliders.OpWall48125ID = nil
level01.colliders.OpWall49126ID = nil
level01.colliders.OpWall50127ID = nil
level01.colliders.OpWall51128ID = nil
level01.colliders.OpWall52129ID = nil
level01.colliders.OpWall53130ID = nil
level01.colliders.OpWall54131ID = nil
level01.colliders.OpWall55132ID = nil
level01.colliders.OpWall56133ID = nil
level01.colliders.OpWall57134ID = nil
level01.colliders.OpWall58135ID = nil
level01.colliders.OpWall59136ID = nil
level01.colliders.OpWall60137ID = nil
level01.colliders.OpWall61138ID = nil
level01.colliders.OpWall62139ID = nil
level01.colliders.OpWall63140ID = nil
level01.colliders.OpWall64141ID = nil
level01.colliders.OpWall65142ID = nil
level01.colliders.OpWall66143ID = nil
level01.colliders.OpWall67144ID = nil
level01.colliders.OpWall68145ID = nil
level01.colliders.OpWall69146ID = nil
level01.colliders.OpWall70147ID = nil
level01.colliders.OpWall71148ID = nil
level01.colliders.OpWall72149ID = nil
level01.colliders.OpWall73150ID = nil
level01.colliders.OpWall74151ID = nil
level01.colliders.OpWall75152ID = nil
level01.colliders.OpWall76153ID = nil
level01.colliders.OpWall77154ID = nil
level01.colliders.OpWall78155ID = nil
level01.colliders.OpWall79156ID = nil
level01.colliders.OpWall80157ID = nil
Gear.UnbindInstance(level01.props.Bridge369ID.transformID)
level01.props.Bridge369ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11370ID.transformID)
level01.props.OakTree_NoCollider11370ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12371ID.transformID)
level01.props.OakTree_NoCollider12371ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13372ID.transformID)
level01.props.OakTree_NoCollider13372ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14373ID.transformID)
level01.props.OakTree_NoCollider14373ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151374ID.transformID)
level01.props.OakTree_NoCollider151374ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16375ID.transformID)
level01.props.OakTree_NoCollider16375ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17376ID.transformID)
level01.props.OakTree_NoCollider17376ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18377ID.transformID)
level01.props.OakTree_NoCollider18377ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19378ID.transformID)
level01.props.OakTree_NoCollider19378ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider379ID.transformID)
level01.props.OakTree_Collider379ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1380ID.transformID)
level01.props.OakTree_Collider1380ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2381ID.transformID)
level01.props.OakTree_Collider2381ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3382ID.transformID)
level01.props.OakTree_Collider3382ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider383ID.transformID)
level01.props.PineTree_NoCollider383ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2421ID.transformID)
level01.props.PineTree_NoCollider2421ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3422ID.transformID)
level01.props.PineTree_NoCollider3422ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4423ID.transformID)
level01.props.PineTree_NoCollider4423ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5424ID.transformID)
level01.props.PineTree_NoCollider5424ID = nil
level01.colliders.Tile1_wallNr435ID = nil
level01.colliders.Tile1_wallNr1436ID = nil
level01.colliders.Tile1_wallNr2437ID = nil
level01.triggers.New438ID = nil
level01.colliders.C_Parent_Tile_11445ID = nil
level01.colliders.C_Parent_Tile_12446ID = nil
level01.colliders.C_Parent_Tile_13447ID = nil
level01.colliders.C_Parent_Tile_14448ID = nil
level01.colliders.C_Parent_Tile_15449ID = nil
level01.colliders.C_Parent_Tile_16450ID = nil
level01.colliders.C_Parent_Tile_17451ID = nil
level01.colliders.C_Parent_Tile_18452ID = nil
level01.colliders.C_Parent_Tile_19453ID = nil
level01.colliders.C_Parent_Tile_1454ID = nil
level01.props = nil
level01.colliders = nil
level01.triggers = nil
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.surrounding = { 1, 3 }
level02.load = function()
level02.props = {}
level02.colliders = {}
level02.triggers = {}
level02.props.tile25ID = {}
level02.props.t2s121ID = {}
level02.props.t2s121ID.model = Assets.LoadModel('Models/tile2_s1.model')
level02.props.t2s121ID.transformID = Gear.BindStaticInstance(level02.props.t2s121ID.model)
Transform.SetPosition(level02.props.t2s121ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s121ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s121ID.transformID, {x=0, y=0, z=0})
level02.props.t2s222ID = {}
level02.props.t2s222ID.model = Assets.LoadModel('Models/tile2_s2.model')
level02.props.t2s222ID.transformID = Gear.BindStaticInstance(level02.props.t2s222ID.model)
Transform.SetPosition(level02.props.t2s222ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s222ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s222ID.transformID, {x=0, y=0, z=0})
level02.props.t2s323ID = {}
level02.props.t2s323ID.model = Assets.LoadModel('Models/tile2_s3.model')
level02.props.t2s323ID.transformID = Gear.BindStaticInstance(level02.props.t2s323ID.model)
Transform.SetPosition(level02.props.t2s323ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s323ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s323ID.transformID, {x=0, y=0, z=0})
level02.props.t2s424ID = {}
level02.props.t2s424ID.model = Assets.LoadModel('Models/tile2_s4.model')
level02.props.t2s424ID.transformID = Gear.BindStaticInstance(level02.props.t2s424ID.model)
Transform.SetPosition(level02.props.t2s424ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s424ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s424ID.transformID, {x=0, y=0, z=0})
level02.props.t2s525ID = {}
level02.props.t2s525ID.model = Assets.LoadModel('Models/tile2_s5.model')
level02.props.t2s525ID.transformID = Gear.BindStaticInstance(level02.props.t2s525ID.model)
Transform.SetPosition(level02.props.t2s525ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s525ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s525ID.transformID, {x=0, y=0, z=0})
level02.props.t2s626ID = {}
level02.props.t2s626ID.model = Assets.LoadModel('Models/tile2_s6.model')
level02.props.t2s626ID.transformID = Gear.BindStaticInstance(level02.props.t2s626ID.model)
Transform.SetPosition(level02.props.t2s626ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s626ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s626ID.transformID, {x=0, y=0, z=0})
level02.props.t2s727ID = {}
level02.props.t2s727ID.model = Assets.LoadModel('Models/tile2_s7.model')
level02.props.t2s727ID.transformID = Gear.BindStaticInstance(level02.props.t2s727ID.model)
Transform.SetPosition(level02.props.t2s727ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s727ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s727ID.transformID, {x=0, y=0, z=0})
level02.props.t2s828ID = {}
level02.props.t2s828ID.model = Assets.LoadModel('Models/tile2_s8.model')
level02.props.t2s828ID.transformID = Gear.BindStaticInstance(level02.props.t2s828ID.model)
Transform.SetPosition(level02.props.t2s828ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s828ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s828ID.transformID, {x=0, y=0, z=0})
level02.props.t2s929ID = {}
level02.props.t2s929ID.model = Assets.LoadModel('Models/tile2_s9.model')
level02.props.t2s929ID.transformID = Gear.BindStaticInstance(level02.props.t2s929ID.model)
Transform.SetPosition(level02.props.t2s929ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s929ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s929ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1030ID = {}
level02.props.t2s1030ID.model = Assets.LoadModel('Models/tile2_s10.model')
level02.props.t2s1030ID.transformID = Gear.BindStaticInstance(level02.props.t2s1030ID.model)
Transform.SetPosition(level02.props.t2s1030ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1030ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1030ID.transformID, {x=0, y=0, z=0})
level02.props.t2s11a31ID = {}
level02.props.t2s11a31ID.model = Assets.LoadModel('Models/tile2_s11a.model')
level02.props.t2s11a31ID.transformID = Gear.BindStaticInstance(level02.props.t2s11a31ID.model)
Transform.SetPosition(level02.props.t2s11a31ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s11a31ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s11a31ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1232ID = {}
level02.props.t2s1232ID.model = Assets.LoadModel('Models/tile2_s12.model')
level02.props.t2s1232ID.transformID = Gear.BindStaticInstance(level02.props.t2s1232ID.model)
Transform.SetPosition(level02.props.t2s1232ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1232ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1232ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1333ID = {}
level02.props.t2s1333ID.model = Assets.LoadModel('Models/tile2_s13.model')
level02.props.t2s1333ID.transformID = Gear.BindStaticInstance(level02.props.t2s1333ID.model)
Transform.SetPosition(level02.props.t2s1333ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1333ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1333ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1434ID = {}
level02.props.t2s1434ID.model = Assets.LoadModel('Models/tile2_s14.model')
level02.props.t2s1434ID.transformID = Gear.BindStaticInstance(level02.props.t2s1434ID.model)
Transform.SetPosition(level02.props.t2s1434ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1434ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1434ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider384ID = {}
level02.props.PineTree_Collider384ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider384ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider384ID.model)
Transform.SetPosition(level02.props.PineTree_Collider384ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider384ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_Collider384ID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider1385ID = {}
level02.props.PineTree_Collider1385ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1385ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1385ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1385ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1385ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1385ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2386ID = {}
level02.props.PineTree_Collider2386ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2386ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2386ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2386ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2386ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2386ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider1387ID = {}
level02.props.PineTree_NoCollider1387ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1387ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1387ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1387ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1387ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1387ID.transformID, {x=0, y=2.74772, z=0})
level02.props.PineTree_NoCollider11388ID = {}
level02.props.PineTree_NoCollider11388ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11388ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11388ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11388ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11388ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11388ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider12389ID = {}
level02.props.PineTree_NoCollider12389ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12389ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12389ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12389ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12389ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12389ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider13390ID = {}
level02.props.PineTree_NoCollider13390ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13390ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13390ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13390ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13390ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13390ID.transformID, {x=0, y=0.550171, z=0})
level02.props.PineTree_NoCollider14391ID = {}
level02.props.PineTree_NoCollider14391ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14391ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14391ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14391ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14391ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14391ID.transformID, {x=0, y=2.98311, z=0})
level02.props.PineTree_NoCollider15392ID = {}
level02.props.PineTree_NoCollider15392ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15392ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15392ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15392ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15392ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15392ID.transformID, {x=0, y=-7.32886, z=0})
level02.props.PineTree_NoCollider16393ID = {}
level02.props.PineTree_NoCollider16393ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16393ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16393ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16393ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16393ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16393ID.transformID, {x=0, y=-2.98524, z=0})
level02.props.PineTree_NoCollider17394ID = {}
level02.props.PineTree_NoCollider17394ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17394ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17394ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17394ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17394ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17394ID.transformID, {x=0, y=-2.76387, z=0})
level02.props.PineTree_NoCollider18395ID = {}
level02.props.PineTree_NoCollider18395ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18395ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18395ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18395ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18395ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18395ID.transformID, {x=0, y=1.82048, z=0})
level02.props.PineTree_NoCollider19396ID = {}
level02.props.PineTree_NoCollider19396ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19396ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19396ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19396ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19396ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19396ID.transformID, {x=0, y=-2.19759, z=0})
level02.props.OakTree_Collider4397ID = {}
level02.props.OakTree_Collider4397ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4397ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4397ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4397ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4397ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4397ID.transformID, {x=0, y=3.64905, z=0})
level02.props.OakTree_Collider41398ID = {}
level02.props.OakTree_Collider41398ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41398ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41398ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41398ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41398ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41398ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42399ID = {}
level02.props.OakTree_Collider42399ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42399ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42399ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42399ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42399ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42399ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43400ID = {}
level02.props.OakTree_Collider43400ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43400ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43400ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43400ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43400ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43400ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44401ID = {}
level02.props.OakTree_Collider44401ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44401ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44401ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44401ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44401ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44401ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45402ID = {}
level02.props.OakTree_Collider45402ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45402ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45402ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45402ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45402ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45402ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46403ID = {}
level02.props.OakTree_Collider46403ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46403ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46403ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46403ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46403ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46403ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider1404ID = {}
level02.props.OakTree_NoCollider1404ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1404ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1404ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1404ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1404ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1404ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider15405ID = {}
level02.props.OakTree_NoCollider15405ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15405ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15405ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15405ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15405ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15405ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider111406ID = {}
level02.props.OakTree_NoCollider111406ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111406ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111406ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111406ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111406ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111406ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider112407ID = {}
level02.props.OakTree_NoCollider112407ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112407ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112407ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112407ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112407ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112407ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider113408ID = {}
level02.props.OakTree_NoCollider113408ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113408ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113408ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113408ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113408ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113408ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider114409ID = {}
level02.props.OakTree_NoCollider114409ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114409ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114409ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114409ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114409ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114409ID.transformID, {x=0, y=-5.86132, z=0})
level02.props.OakTree_NoCollider115410ID = {}
level02.props.OakTree_NoCollider115410ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115410ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115410ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115410ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115410ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115410ID.transformID, {x=0, y=1.59683, z=0})
level02.props.OakTree_NoCollider116411ID = {}
level02.props.OakTree_NoCollider116411ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116411ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116411ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116411ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116411ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116411ID.transformID, {x=0, y=-1.86515, z=0})
level02.props.OakTree_NoCollider117412ID = {}
level02.props.OakTree_NoCollider117412ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117412ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117412ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117412ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117412ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117412ID.transformID, {x=0, y=-1.52942, z=0})
level02.props.OakTree_NoCollider118413ID = {}
level02.props.OakTree_NoCollider118413ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118413ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118413ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118413ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118413ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118413ID.transformID, {x=0, y=3.43332, z=0})
level02.props.OakTree_NoCollider119414ID = {}
level02.props.OakTree_NoCollider119414ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119414ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119414ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119414ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119414ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119414ID.transformID, {x=0, y=1.121, z=0})
level02.props.OakTree_NoCollider120415ID = {}
level02.props.OakTree_NoCollider120415ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120415ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120415ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120415ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120415ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120415ID.transformID, {x=0, y=1.69246, z=0})
level02.props.OakTree_NoCollider121416ID = {}
level02.props.OakTree_NoCollider121416ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121416ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121416ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121416ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121416ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121416ID.transformID, {x=0, y=1.70454, z=0})
level02.props.OakTree_NoCollider122417ID = {}
level02.props.OakTree_NoCollider122417ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122417ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122417ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122417ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122417ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122417ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider123418ID = {}
level02.props.OakTree_NoCollider123418ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123418ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123418ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123418ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123418ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123418ID.transformID, {x=0, y=2.28254, z=0})
level02.props.OakTree_NoCollider124419ID = {}
level02.props.OakTree_NoCollider124419ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124419ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124419ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124419ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124419ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124419ID.transformID, {x=0, y=-7.63234, z=0})
level02.props.OakTree_NoCollider125420ID = {}
level02.props.OakTree_NoCollider125420ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125420ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125420ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125420ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125420ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125420ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider126425ID = {}
level02.props.OakTree_NoCollider126425ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126425ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126425ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126425ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126425ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126425ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider127426ID = {}
level02.props.OakTree_NoCollider127426ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127426ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127426ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127426ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127426ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127426ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider128427ID = {}
level02.props.OakTree_NoCollider128427ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128427ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128427ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128427ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128427ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128427ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider129428ID = {}
level02.props.OakTree_NoCollider129428ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129428ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129428ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129428ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129428ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129428ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider130429ID = {}
level02.props.OakTree_NoCollider130429ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130429ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130429ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130429ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130429ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130429ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider131430ID = {}
level02.props.OakTree_NoCollider131430ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131430ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131430ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131430ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131430ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131430ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider132431ID = {}
level02.props.OakTree_NoCollider132431ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132431ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132431ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132431ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132431ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132431ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider133432ID = {}
level02.props.OakTree_NoCollider133432ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133432ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133432ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133432ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133432ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133432ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider134433ID = {}
level02.props.OakTree_NoCollider134433ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134433ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134433ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134433ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134433ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134433ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider135434ID = {}
level02.props.OakTree_NoCollider135434ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135434ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135434ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135434ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135434ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135434ID.transformID, {x=0, y=0, z=0})
level02.props.Bridge1439ID = {}
level02.props.Bridge1439ID.model = Assets.LoadModel('Models/Bridge1.model')
level02.props.Bridge1439ID.transformID = Gear.BindStaticInstance(level02.props.Bridge1439ID.model)
Transform.SetPosition(level02.props.Bridge1439ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Bridge1439ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Bridge1439ID.transformID, {x=0, y=0, z=0})
level02.colliders.C_Parent_Tile_2475ID = {}
level02.colliders.C_Parent_Tile_2475ID.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_2475ID.collider:SetMaxPos(384.073,67.2657,255.3)
level02.colliders.C_Parent_Tile_2475ID.collider:SetPos(0,0,0)
level02.colliders.C_Parent_Tile_2475ID1 = {}
level02.colliders.C_Parent_Tile_2475ID1.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID1.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID1.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_2475ID1.collider:SetMaxPos(309.235,62.9209,252.296)
level02.colliders.C_Parent_Tile_2475ID.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID1.collider)
level02.colliders.C_Parent_Tile_2475ID2 = {}
level02.colliders.C_Parent_Tile_2475ID2.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID2.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID2.collider:SetMinPos(137.719,42.3375,33.7395)
level02.colliders.C_Parent_Tile_2475ID2.collider:SetMaxPos(206.149,62.9209,157.105)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID2.collider)
level02.colliders.C_Parent_Tile_2475ID3 = {}
level02.colliders.C_Parent_Tile_2475ID3.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID3.collider:SetOffset(139.5,48.7857,153)
level02.colliders.C_Parent_Tile_2475ID3.collider:SetZAxis(0.351123,0,-0.936329)
level02.colliders.C_Parent_Tile_2475ID3.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID3.collider)
level02.colliders.C_Parent_Tile_2475ID4 = {}
level02.colliders.C_Parent_Tile_2475ID4.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID4.collider:SetOffset(144.5,50.234,147.5)
level02.colliders.C_Parent_Tile_2475ID4.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2475ID4.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID4.collider)
level02.colliders.C_Parent_Tile_2475ID5 = {}
level02.colliders.C_Parent_Tile_2475ID5.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID5.collider:SetOffset(181.5,55.2472,112)
level02.colliders.C_Parent_Tile_2475ID5.collider:SetZAxis(-0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_2475ID5.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID5.collider)
level02.colliders.C_Parent_Tile_2475ID6 = {}
level02.colliders.C_Parent_Tile_2475ID6.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID6.collider:SetOffset(176.5,56.8068,92)
level02.colliders.C_Parent_Tile_2475ID6.collider:SetZAxis(-0.0995037,0,-0.995037)
level02.colliders.C_Parent_Tile_2475ID6.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID6.collider)
level02.colliders.C_Parent_Tile_2475ID7 = {}
level02.colliders.C_Parent_Tile_2475ID7.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID7.collider:SetOffset(176.5,56.584,78.5)
level02.colliders.C_Parent_Tile_2475ID7.collider:SetZAxis(0.058722,0,-0.998274)
level02.colliders.C_Parent_Tile_2475ID7.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID7.collider)
level02.colliders.C_Parent_Tile_2475ID8 = {}
level02.colliders.C_Parent_Tile_2475ID8.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID8.collider:SetOffset(179,56.2498,63.5)
level02.colliders.C_Parent_Tile_2475ID8.collider:SetZAxis(0.294086,0,-0.955779)
level02.colliders.C_Parent_Tile_2475ID8.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID8.collider)
level02.colliders.C_Parent_Tile_2475ID9 = {}
level02.colliders.C_Parent_Tile_2475ID9.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID9.collider:SetOffset(185,54.5788,51)
level02.colliders.C_Parent_Tile_2475ID9.collider:SetZAxis(0.5547,0,-0.83205)
level02.colliders.C_Parent_Tile_2475ID9.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID9.collider)
level02.colliders.C_Parent_Tile_2475ID10 = {}
level02.colliders.C_Parent_Tile_2475ID10.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID10.collider:SetOffset(194,53.5761,41.5)
level02.colliders.C_Parent_Tile_2475ID10.collider:SetZAxis(0.819232,0,-0.573462)
level02.colliders.C_Parent_Tile_2475ID10.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID10.collider)
level02.colliders.C_Parent_Tile_2475ID11 = {}
level02.colliders.C_Parent_Tile_2475ID11.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID11.collider:SetOffset(202.5,52.9077,36)
level02.colliders.C_Parent_Tile_2475ID11.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_2475ID11.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID11.collider)
level02.colliders.C_Parent_Tile_2475ID12 = {}
level02.colliders.C_Parent_Tile_2475ID12.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID12.collider:SetOffset(197,53.6875,59.5)
level02.colliders.C_Parent_Tile_2475ID12.collider:SetZAxis(-0.5547,0,0.83205)
level02.colliders.C_Parent_Tile_2475ID12.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_2475ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID12.collider)
level02.colliders.C_Parent_Tile_2475ID13 = {}
level02.colliders.C_Parent_Tile_2475ID13.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID13.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID13.collider:SetMinPos(137.705,31.8654,33.7004)
level02.colliders.C_Parent_Tile_2475ID13.collider:SetMaxPos(225.016,62.1411,178.059)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID13.collider)
level02.colliders.C_Parent_Tile_2475ID14 = {}
level02.colliders.C_Parent_Tile_2475ID14.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID14.collider:SetOffset(141,40.5418,173)
level02.colliders.C_Parent_Tile_2475ID14.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2475ID14.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID14.collider)
level02.colliders.C_Parent_Tile_2475ID15 = {}
level02.colliders.C_Parent_Tile_2475ID15.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID15.collider:SetOffset(139,44.2181,162.5)
level02.colliders.C_Parent_Tile_2475ID15.collider:SetZAxis(-0.178885,0,-0.98387)
level02.colliders.C_Parent_Tile_2475ID15.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID15.collider)
level02.colliders.C_Parent_Tile_2475ID16 = {}
level02.colliders.C_Parent_Tile_2475ID16.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID16.collider:SetOffset(152,50.4568,146.5)
level02.colliders.C_Parent_Tile_2475ID16.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2475ID16.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID16.collider)
level02.colliders.C_Parent_Tile_2475ID17 = {}
level02.colliders.C_Parent_Tile_2475ID17.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID17.collider:SetOffset(161.5,50.234,149)
level02.colliders.C_Parent_Tile_2475ID17.collider:SetZAxis(0.939793,0,0.341743)
level02.colliders.C_Parent_Tile_2475ID17.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID17.collider)
level02.colliders.C_Parent_Tile_2475ID18 = {}
level02.colliders.C_Parent_Tile_2475ID18.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID18.collider:SetOffset(215.5,52.0165,34.5)
level02.colliders.C_Parent_Tile_2475ID18.collider:SetZAxis(0.998618,0,0.0525588)
level02.colliders.C_Parent_Tile_2475ID18.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID18.collider)
level02.colliders.C_Parent_Tile_2475ID19 = {}
level02.colliders.C_Parent_Tile_2475ID19.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID19.collider:SetOffset(213,50.4568,48.5)
level02.colliders.C_Parent_Tile_2475ID19.collider:SetZAxis(-0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2475ID19.collider:SetHalfLengths(0.3,6.78247,4.03113)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID19.collider)
level02.colliders.C_Parent_Tile_2475ID20 = {}
level02.colliders.C_Parent_Tile_2475ID20.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID20.collider:SetOffset(204.5,52.2393,52)
level02.colliders.C_Parent_Tile_2475ID20.collider:SetZAxis(-0.83205,0,0.5547)
level02.colliders.C_Parent_Tile_2475ID20.collider:SetHalfLengths(0.3,6.44826,5.40833)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID20.collider)
level02.colliders.C_Parent_Tile_2475ID21 = {}
level02.colliders.C_Parent_Tile_2475ID21.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID21.collider:SetOffset(193.5,54.5788,70.5)
level02.colliders.C_Parent_Tile_2475ID21.collider:SetZAxis(-0.0766965,0,0.997055)
level02.colliders.C_Parent_Tile_2475ID21.collider:SetHalfLengths(0.3,6.00264,6.5192)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID21.collider)
level02.colliders.C_Parent_Tile_2475ID22 = {}
level02.colliders.C_Parent_Tile_2475ID22.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID22.collider:SetOffset(194,55.5814,84)
level02.colliders.C_Parent_Tile_2475ID22.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_2475ID22.collider:SetHalfLengths(0.3,6.00264,7.07107)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID22.collider)
level02.colliders.C_Parent_Tile_2475ID23 = {}
level02.colliders.C_Parent_Tile_2475ID23.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID23.collider:SetOffset(197.5,56.584,98.5)
level02.colliders.C_Parent_Tile_2475ID23.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_2475ID23.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_2475ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID23.collider)
level02.colliders.C_Parent_Tile_2475ID24 = {}
level02.colliders.C_Parent_Tile_2475ID24.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID24.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID24.collider:SetMinPos(141.703,32.1997,34.7033)
level02.colliders.C_Parent_Tile_2475ID24.collider:SetMaxPos(245.044,62.6981,192.042)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID24.collider)
level02.colliders.C_Parent_Tile_2475ID25 = {}
level02.colliders.C_Parent_Tile_2475ID25.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID25.collider:SetOffset(143,38.8707,185)
level02.colliders.C_Parent_Tile_2475ID25.collider:SetZAxis(-0.141421,0,-0.98995)
level02.colliders.C_Parent_Tile_2475ID25.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID25.collider)
level02.colliders.C_Parent_Tile_2475ID26 = {}
level02.colliders.C_Parent_Tile_2475ID26.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID26.collider:SetOffset(170,52.1279,152)
level02.colliders.C_Parent_Tile_2475ID26.collider:SetZAxis(0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2475ID26.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID26.collider)
level02.colliders.C_Parent_Tile_2475ID27 = {}
level02.colliders.C_Parent_Tile_2475ID27.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID27.collider:SetOffset(187.5,55.2472,133)
level02.colliders.C_Parent_Tile_2475ID27.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2475ID27.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID27.collider)
level02.colliders.C_Parent_Tile_2475ID28 = {}
level02.colliders.C_Parent_Tile_2475ID28.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID28.collider:SetOffset(186.5,55.3586,129)
level02.colliders.C_Parent_Tile_2475ID28.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2475ID28.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID28.collider)
level02.colliders.C_Parent_Tile_2475ID29 = {}
level02.colliders.C_Parent_Tile_2475ID29.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID29.collider:SetOffset(235,48.0059,36.5)
level02.colliders.C_Parent_Tile_2475ID29.collider:SetZAxis(0.988936,0,0.14834)
level02.colliders.C_Parent_Tile_2475ID29.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID29.collider)
level02.colliders.C_Parent_Tile_2475ID30 = {}
level02.colliders.C_Parent_Tile_2475ID30.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID30.collider:SetOffset(221.5,48.4515,48.5)
level02.colliders.C_Parent_Tile_2475ID30.collider:SetZAxis(-0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_2475ID30.collider:SetHalfLengths(0.3,7.00528,4.52769)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID30.collider)
level02.colliders.C_Parent_Tile_2475ID31 = {}
level02.colliders.C_Parent_Tile_2475ID31.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID31.collider:SetOffset(202.5,56.027,116.5)
level02.colliders.C_Parent_Tile_2475ID31.collider:SetZAxis(0.231621,0,0.972806)
level02.colliders.C_Parent_Tile_2475ID31.collider:SetHalfLengths(0.3,5.89124,10.7935)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID31.collider)
level02.colliders.C_Parent_Tile_2475ID32 = {}
level02.colliders.C_Parent_Tile_2475ID32.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID32.collider:SetOffset(160.5,54.1331,160.5)
level02.colliders.C_Parent_Tile_2475ID32.collider:SetZAxis(-0.910366,0,-0.413803)
level02.colliders.C_Parent_Tile_2475ID32.collider:SetHalfLengths(0.3,8.56494,6.04152)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID32.collider)
level02.colliders.C_Parent_Tile_2475ID33 = {}
level02.colliders.C_Parent_Tile_2475ID33.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID33.collider:SetOffset(153.5,50.5682,161.5)
level02.colliders.C_Parent_Tile_2475ID33.collider:SetZAxis(-0.393919,0,0.919145)
level02.colliders.C_Parent_Tile_2475ID33.collider:SetHalfLengths(0.3,6.67107,3.80789)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID33.collider)
level02.colliders.C_Parent_Tile_2475ID34 = {}
level02.colliders.C_Parent_Tile_2475ID34.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID34.collider:SetOffset(155.5,48.8971,169)
level02.colliders.C_Parent_Tile_2475ID34.collider:SetZAxis(0.658505,0,0.752577)
level02.colliders.C_Parent_Tile_2475ID34.collider:SetHalfLengths(0.3,5.44561,5.31507)
level02.colliders.C_Parent_Tile_2475ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID34.collider)
level02.colliders.C_Parent_Tile_2475ID35 = {}
level02.colliders.C_Parent_Tile_2475ID35.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID35.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID35.collider:SetMinPos(136.756,27.5207,48.7154)
level02.colliders.C_Parent_Tile_2475ID35.collider:SetMaxPos(241.095,62.0297,206.174)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID35.collider)
level02.colliders.C_Parent_Tile_2475ID36 = {}
level02.colliders.C_Parent_Tile_2475ID36.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID36.collider:SetOffset(139.5,34.7488,202.5)
level02.colliders.C_Parent_Tile_2475ID36.collider:SetZAxis(0.581238,0,-0.813733)
level02.colliders.C_Parent_Tile_2475ID36.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID36.collider)
level02.colliders.C_Parent_Tile_2475ID37 = {}
level02.colliders.C_Parent_Tile_2475ID37.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID37.collider:SetOffset(143,36.9769,195.5)
level02.colliders.C_Parent_Tile_2475ID37.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_2475ID37.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID37.collider)
level02.colliders.C_Parent_Tile_2475ID38 = {}
level02.colliders.C_Parent_Tile_2475ID38.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID38.collider:SetOffset(176.5,52.7963,152.5)
level02.colliders.C_Parent_Tile_2475ID38.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_2475ID38.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID38.collider)
level02.colliders.C_Parent_Tile_2475ID39 = {}
level02.colliders.C_Parent_Tile_2475ID39.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID39.collider:SetOffset(182,54.1331,150.5)
level02.colliders.C_Parent_Tile_2475ID39.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2475ID39.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID39.collider)
level02.colliders.C_Parent_Tile_2475ID40 = {}
level02.colliders.C_Parent_Tile_2475ID40.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID40.collider:SetOffset(184.5,54.8016,147.5)
level02.colliders.C_Parent_Tile_2475ID40.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2475ID40.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID40.collider)
level02.colliders.C_Parent_Tile_2475ID41 = {}
level02.colliders.C_Parent_Tile_2475ID41.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID41.collider:SetOffset(186,55.5814,143.5)
level02.colliders.C_Parent_Tile_2475ID41.collider:SetZAxis(0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_2475ID41.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID41.collider)
level02.colliders.C_Parent_Tile_2475ID42 = {}
level02.colliders.C_Parent_Tile_2475ID42.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID42.collider:SetOffset(187.5,55.2472,138)
level02.colliders.C_Parent_Tile_2475ID42.collider:SetZAxis(0.164399,0,-0.986394)
level02.colliders.C_Parent_Tile_2475ID42.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID42.collider)
level02.colliders.C_Parent_Tile_2475ID43 = {}
level02.colliders.C_Parent_Tile_2475ID43.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID43.collider:SetOffset(233.5,44.998,51.5)
level02.colliders.C_Parent_Tile_2475ID43.collider:SetZAxis(-0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_2475ID43.collider:SetHalfLengths(0.3,8.45354,7.90569)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID43.collider)
level02.colliders.C_Parent_Tile_2475ID44 = {}
level02.colliders.C_Parent_Tile_2475ID44.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID44.collider:SetOffset(170.5,55.5814,165.5)
level02.colliders.C_Parent_Tile_2475ID44.collider:SetZAxis(-0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_2475ID44.collider:SetHalfLengths(0.3,6.44826,5.14782)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID44.collider)
level02.colliders.C_Parent_Tile_2475ID45 = {}
level02.colliders.C_Parent_Tile_2475ID45.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID45.collider:SetOffset(161,48.4515,179)
level02.colliders.C_Parent_Tile_2475ID45.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_2475ID45.collider:SetHalfLengths(0.3,9.7904,6.32456)
level02.colliders.C_Parent_Tile_2475ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID45.collider)
level02.colliders.C_Parent_Tile_2475ID46 = {}
level02.colliders.C_Parent_Tile_2475ID46.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID46.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID46.collider:SetMinPos(127.854,28.4119,37.73)
level02.colliders.C_Parent_Tile_2475ID46.collider:SetMaxPos(276.131,61.4726,211.262)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID46.collider)
level02.colliders.C_Parent_Tile_2475ID47 = {}
level02.colliders.C_Parent_Tile_2475ID47.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID47.collider:SetOffset(132.5,34.0803,208.5)
level02.colliders.C_Parent_Tile_2475ID47.collider:SetZAxis(0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_2475ID47.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID47.collider)
level02.colliders.C_Parent_Tile_2475ID48 = {}
level02.colliders.C_Parent_Tile_2475ID48.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID48.collider:SetOffset(260.5,45.2208,45.5)
level02.colliders.C_Parent_Tile_2475ID48.collider:SetZAxis(0.900159,0,0.435561)
level02.colliders.C_Parent_Tile_2475ID48.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID48.collider)
level02.colliders.C_Parent_Tile_2475ID49 = {}
level02.colliders.C_Parent_Tile_2475ID49.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID49.collider:SetOffset(248,40.9874,57)
level02.colliders.C_Parent_Tile_2475ID49.collider:SetZAxis(-0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2475ID49.collider:SetHalfLengths(0.3,9.01056,7.61577)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID49.collider)
level02.colliders.C_Parent_Tile_2475ID50 = {}
level02.colliders.C_Parent_Tile_2475ID50.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID50.collider:SetOffset(205.5,55.1358,132.5)
level02.colliders.C_Parent_Tile_2475ID50.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.C_Parent_Tile_2475ID50.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID50.collider)
level02.colliders.C_Parent_Tile_2475ID51 = {}
level02.colliders.C_Parent_Tile_2475ID51.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID51.collider:SetOffset(206.5,55.47,143.5)
level02.colliders.C_Parent_Tile_2475ID51.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.C_Parent_Tile_2475ID51.collider:SetHalfLengths(0.3,5.22281,5.52268)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID51.collider)
level02.colliders.C_Parent_Tile_2475ID52 = {}
level02.colliders.C_Parent_Tile_2475ID52.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID52.collider:SetOffset(180,56.027,169)
level02.colliders.C_Parent_Tile_2475ID52.collider:SetZAxis(-0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2475ID52.collider:SetHalfLengths(0.3,5.44562,5.09902)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID52.collider)
level02.colliders.C_Parent_Tile_2475ID53 = {}
level02.colliders.C_Parent_Tile_2475ID53.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID53.collider:SetOffset(163,43.6611,194.5)
level02.colliders.C_Parent_Tile_2475ID53.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID53.collider:SetHalfLengths(0.3,8.34213,9.5)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID53.collider)
level02.colliders.C_Parent_Tile_2475ID54 = {}
level02.colliders.C_Parent_Tile_2475ID54.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID54.collider:SetOffset(218.5,38.9821,136)
level02.colliders.C_Parent_Tile_2475ID54.collider:SetZAxis(-0.209529,0,-0.977802)
level02.colliders.C_Parent_Tile_2475ID54.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID54.collider)
level02.colliders.C_Parent_Tile_2475ID55 = {}
level02.colliders.C_Parent_Tile_2475ID55.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID55.collider:SetOffset(221.5,41.3216,126)
level02.colliders.C_Parent_Tile_2475ID55.collider:SetZAxis(0.83205,0,-0.5547)
level02.colliders.C_Parent_Tile_2475ID55.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID55.collider)
level02.colliders.C_Parent_Tile_2475ID56 = {}
level02.colliders.C_Parent_Tile_2475ID56.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID56.collider:SetOffset(163.885,45.0938,193.24)
level02.colliders.C_Parent_Tile_2475ID56.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID56.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.colliders.C_Parent_Tile_2475ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID56.collider)
level02.colliders.C_Parent_Tile_2475ID57 = {}
level02.colliders.C_Parent_Tile_2475ID57.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID57.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID57.collider:SetMinPos(127.963,27.1865,120.706)
level02.colliders.C_Parent_Tile_2475ID57.collider:SetMaxPos(236.059,61.027,224.298)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID57.collider)
level02.colliders.C_Parent_Tile_2475ID58 = {}
level02.colliders.C_Parent_Tile_2475ID58.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID58.collider:SetOffset(132,33.8575,223.5)
level02.colliders.C_Parent_Tile_2475ID58.collider:SetZAxis(0.992278,0,-0.124035)
level02.colliders.C_Parent_Tile_2475ID58.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID58.collider)
level02.colliders.C_Parent_Tile_2475ID59 = {}
level02.colliders.C_Parent_Tile_2475ID59.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID59.collider:SetOffset(138.5,35.5286,222)
level02.colliders.C_Parent_Tile_2475ID59.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_2475ID59.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID59.collider)
level02.colliders.C_Parent_Tile_2475ID60 = {}
level02.colliders.C_Parent_Tile_2475ID60.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID60.collider:SetOffset(143,35.1944,220.5)
level02.colliders.C_Parent_Tile_2475ID60.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2475ID60.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID60.collider)
level02.colliders.C_Parent_Tile_2475ID61 = {}
level02.colliders.C_Parent_Tile_2475ID61.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID61.collider:SetOffset(205,55.2472,154)
level02.colliders.C_Parent_Tile_2475ID61.collider:SetZAxis(-0.371391,0,0.928477)
level02.colliders.C_Parent_Tile_2475ID61.collider:SetHalfLengths(0.3,5.22281,5.38516)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID61.collider)
level02.colliders.C_Parent_Tile_2475ID62 = {}
level02.colliders.C_Parent_Tile_2475ID62.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID62.collider:SetOffset(198.5,55.0244,163.5)
level02.colliders.C_Parent_Tile_2475ID62.collider:SetZAxis(-0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID62.collider:SetHalfLengths(0.3,5.77983,6.36396)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID62.collider)
level02.colliders.C_Parent_Tile_2475ID63 = {}
level02.colliders.C_Parent_Tile_2475ID63.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID63.collider:SetOffset(189.5,55.8042,169)
level02.colliders.C_Parent_Tile_2475ID63.collider:SetZAxis(-0.976187,0,0.21693)
level02.colliders.C_Parent_Tile_2475ID63.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID63.collider)
level02.colliders.C_Parent_Tile_2475ID64 = {}
level02.colliders.C_Parent_Tile_2475ID64.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID64.collider:SetOffset(170,40.319,200)
level02.colliders.C_Parent_Tile_2475ID64.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_2475ID64.collider:SetHalfLengths(0.3,7.5623,8.06226)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID64.collider)
level02.colliders.C_Parent_Tile_2475ID65 = {}
level02.colliders.C_Parent_Tile_2475ID65.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID65.collider:SetOffset(184,42.8813,193)
level02.colliders.C_Parent_Tile_2475ID65.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2475ID65.collider:SetHalfLengths(0.3,5.22281,7.61577)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID65.collider)
level02.colliders.C_Parent_Tile_2475ID66 = {}
level02.colliders.C_Parent_Tile_2475ID66.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID66.collider:SetOffset(201,40.319,176.5)
level02.colliders.C_Parent_Tile_2475ID66.collider:SetZAxis(0.841179,0,-0.540758)
level02.colliders.C_Parent_Tile_2475ID66.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID66.collider)
level02.colliders.C_Parent_Tile_2475ID67 = {}
level02.colliders.C_Parent_Tile_2475ID67.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID67.collider:SetOffset(231,42.2129,122)
level02.colliders.C_Parent_Tile_2475ID67.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2475ID67.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.C_Parent_Tile_2475ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID67.collider)
level02.colliders.C_Parent_Tile_2475ID68 = {}
level02.colliders.C_Parent_Tile_2475ID68.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID68.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID68.collider:SetMinPos(144.788,29.3031,59.7622)
level02.colliders.C_Parent_Tile_2475ID68.collider:SetMaxPos(268.183,49.998,233.03)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID68.collider)
level02.colliders.C_Parent_Tile_2475ID69 = {}
level02.colliders.C_Parent_Tile_2475ID69.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID69.collider:SetOffset(146.5,35.1944,221.5)
level02.colliders.C_Parent_Tile_2475ID69.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID69.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID69.collider)
level02.colliders.C_Parent_Tile_2475ID70 = {}
level02.colliders.C_Parent_Tile_2475ID70.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID70.collider:SetOffset(148.5,36.0856,228)
level02.colliders.C_Parent_Tile_2475ID70.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.C_Parent_Tile_2475ID70.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID70.collider)
level02.colliders.C_Parent_Tile_2475ID71 = {}
level02.colliders.C_Parent_Tile_2475ID71.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID71.collider:SetOffset(261.5,38.7593,65)
level02.colliders.C_Parent_Tile_2475ID71.collider:SetZAxis(-0.792624,0,-0.609711)
level02.colliders.C_Parent_Tile_2475ID71.collider:SetHalfLengths(0.3,7.22809,8.20061)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID71.collider)
level02.colliders.C_Parent_Tile_2475ID72 = {}
level02.colliders.C_Parent_Tile_2475ID72.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID72.collider:SetOffset(192.5,42.6585,185.5)
level02.colliders.C_Parent_Tile_2475ID72.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2475ID72.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID72.collider)
level02.colliders.C_Parent_Tile_2475ID73 = {}
level02.colliders.C_Parent_Tile_2475ID73.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID73.collider:SetOffset(213,39.3163,166.5)
level02.colliders.C_Parent_Tile_2475ID73.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_2475ID73.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID73.collider)
level02.colliders.C_Parent_Tile_2475ID74 = {}
level02.colliders.C_Parent_Tile_2475ID74.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID74.collider:SetOffset(219,36.4198,158)
level02.colliders.C_Parent_Tile_2475ID74.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2475ID74.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID74.collider)
level02.colliders.C_Parent_Tile_2475ID75 = {}
level02.colliders.C_Parent_Tile_2475ID75.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID75.collider:SetOffset(222,36.5312,153.5)
level02.colliders.C_Parent_Tile_2475ID75.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2475ID75.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID75.collider)
level02.colliders.C_Parent_Tile_2475ID76 = {}
level02.colliders.C_Parent_Tile_2475ID76.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID76.collider:SetOffset(221,36.6426,148)
level02.colliders.C_Parent_Tile_2475ID76.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2475ID76.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID76.collider)
level02.colliders.C_Parent_Tile_2475ID77 = {}
level02.colliders.C_Parent_Tile_2475ID77.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID77.collider:SetOffset(242,40.0962,124.5)
level02.colliders.C_Parent_Tile_2475ID77.collider:SetZAxis(0.863779,0,0.503871)
level02.colliders.C_Parent_Tile_2475ID77.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID77.collider)
level02.colliders.C_Parent_Tile_2475ID78 = {}
level02.colliders.C_Parent_Tile_2475ID78.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID78.collider:SetOffset(235,42.375,133.125)
level02.colliders.C_Parent_Tile_2475ID78.collider:SetZAxis(-0.485958,0,-0.873982)
level02.colliders.C_Parent_Tile_2475ID78.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.colliders.C_Parent_Tile_2475ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID78.collider)
level02.colliders.C_Parent_Tile_2475ID79 = {}
level02.colliders.C_Parent_Tile_2475ID79.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID79.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID79.collider:SetMinPos(148.703,30.1944,69.8112)
level02.colliders.C_Parent_Tile_2475ID79.collider:SetMaxPos(285.233,47.5471,240.042)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID79.collider)
level02.colliders.C_Parent_Tile_2475ID80 = {}
level02.colliders.C_Parent_Tile_2475ID80.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID80.collider:SetOffset(149.5,37.0883,236.5)
level02.colliders.C_Parent_Tile_2475ID80.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_2475ID80.collider:SetHalfLengths(0.3,5.1114,3.53553)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID80.collider)
level02.colliders.C_Parent_Tile_2475ID81 = {}
level02.colliders.C_Parent_Tile_2475ID81.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID81.collider:SetOffset(176.5,41.9901,216.5)
level02.colliders.C_Parent_Tile_2475ID81.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2475ID81.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID81.collider)
level02.colliders.C_Parent_Tile_2475ID82 = {}
level02.colliders.C_Parent_Tile_2475ID82.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID82.collider:SetOffset(190.5,41.3216,205.5)
level02.colliders.C_Parent_Tile_2475ID82.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2475ID82.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID82.collider)
level02.colliders.C_Parent_Tile_2475ID83 = {}
level02.colliders.C_Parent_Tile_2475ID83.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID83.collider:SetOffset(198,40.6532,203)
level02.colliders.C_Parent_Tile_2475ID83.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_2475ID83.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID83.collider)
level02.colliders.C_Parent_Tile_2475ID84 = {}
level02.colliders.C_Parent_Tile_2475ID84.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID84.collider:SetOffset(207.5,38.9821,191)
level02.colliders.C_Parent_Tile_2475ID84.collider:SetZAxis(0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_2475ID84.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID84.collider)
level02.colliders.C_Parent_Tile_2475ID85 = {}
level02.colliders.C_Parent_Tile_2475ID85.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID85.collider:SetOffset(211,37.7567,184.5)
level02.colliders.C_Parent_Tile_2475ID85.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2475ID85.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID85.collider)
level02.colliders.C_Parent_Tile_2475ID86 = {}
level02.colliders.C_Parent_Tile_2475ID86.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID86.collider:SetOffset(215,36.9769,181.5)
level02.colliders.C_Parent_Tile_2475ID86.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2475ID86.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID86.collider)
level02.colliders.C_Parent_Tile_2475ID87 = {}
level02.colliders.C_Parent_Tile_2475ID87.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID87.collider:SetOffset(227.5,35.64,167.5)
level02.colliders.C_Parent_Tile_2475ID87.collider:SetZAxis(0.813733,0,-0.581238)
level02.colliders.C_Parent_Tile_2475ID87.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID87.collider)
level02.colliders.C_Parent_Tile_2475ID88 = {}
level02.colliders.C_Parent_Tile_2475ID88.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID88.collider:SetOffset(237.5,35.64,159.5)
level02.colliders.C_Parent_Tile_2475ID88.collider:SetZAxis(0.763386,0,-0.645942)
level02.colliders.C_Parent_Tile_2475ID88.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID88.collider)
level02.colliders.C_Parent_Tile_2475ID89 = {}
level02.colliders.C_Parent_Tile_2475ID89.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID89.collider:SetOffset(276.5,39.5392,80.5)
level02.colliders.C_Parent_Tile_2475ID89.collider:SetZAxis(-0.629198,0,-0.777245)
level02.colliders.C_Parent_Tile_2475ID89.collider:SetHalfLengths(0.3,5.77983,13.5093)
level02.colliders.C_Parent_Tile_2475ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID89.collider)
level02.colliders.C_Parent_Tile_2475ID90 = {}
level02.colliders.C_Parent_Tile_2475ID90.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID90.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID90.collider:SetMinPos(149.7,26.2952,52.7879)
level02.colliders.C_Parent_Tile_2475ID90.collider:SetMaxPos(298.031,56.0138,250.277)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID90.collider)
level02.colliders.C_Parent_Tile_2475ID91 = {}
level02.colliders.C_Parent_Tile_2475ID91.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID91.collider:SetOffset(283,40.9874,60)
level02.colliders.C_Parent_Tile_2475ID91.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID91.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID91.collider)
level02.colliders.C_Parent_Tile_2475ID92 = {}
level02.colliders.C_Parent_Tile_2475ID92.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID92.collider:SetOffset(150,37.1997,241.5)
level02.colliders.C_Parent_Tile_2475ID92.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID92.collider:SetHalfLengths(0.3,5,1.5)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID92.collider)
level02.colliders.C_Parent_Tile_2475ID93 = {}
level02.colliders.C_Parent_Tile_2475ID93.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID93.collider:SetOffset(158.5,37.1997,246.5)
level02.colliders.C_Parent_Tile_2475ID93.collider:SetZAxis(0.924678,0,0.38075)
level02.colliders.C_Parent_Tile_2475ID93.collider:SetHalfLengths(0.3,10.9044,9.19239)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID93.collider)
level02.colliders.C_Parent_Tile_2475ID94 = {}
level02.colliders.C_Parent_Tile_2475ID94.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID94.collider:SetOffset(183.5,46.8918,226)
level02.colliders.C_Parent_Tile_2475ID94.collider:SetZAxis(-0.913812,0,-0.406139)
level02.colliders.C_Parent_Tile_2475ID94.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID94.collider)
level02.colliders.C_Parent_Tile_2475ID95 = {}
level02.colliders.C_Parent_Tile_2475ID95.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID95.collider:SetOffset(178,42.7699,221.5)
level02.colliders.C_Parent_Tile_2475ID95.collider:SetZAxis(-0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_2475ID95.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID95.collider)
level02.colliders.C_Parent_Tile_2475ID96 = {}
level02.colliders.C_Parent_Tile_2475ID96.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID96.collider:SetOffset(204.5,39.6506,198.5)
level02.colliders.C_Parent_Tile_2475ID96.collider:SetZAxis(0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_2475ID96.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID96.collider)
level02.colliders.C_Parent_Tile_2475ID97 = {}
level02.colliders.C_Parent_Tile_2475ID97.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID97.collider:SetOffset(249.5,36.0856,148.5)
level02.colliders.C_Parent_Tile_2475ID97.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2475ID97.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID97.collider)
level02.colliders.C_Parent_Tile_2475ID98 = {}
level02.colliders.C_Parent_Tile_2475ID98.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID98.collider:SetOffset(258,36.8654,140)
level02.colliders.C_Parent_Tile_2475ID98.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2475ID98.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID98.collider)
level02.colliders.C_Parent_Tile_2475ID99 = {}
level02.colliders.C_Parent_Tile_2475ID99.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID99.collider:SetOffset(263.5,37.4225,113.5)
level02.colliders.C_Parent_Tile_2475ID99.collider:SetZAxis(0.773957,0,-0.633238)
level02.colliders.C_Parent_Tile_2475ID99.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID99.collider)
level02.colliders.C_Parent_Tile_2475ID100 = {}
level02.colliders.C_Parent_Tile_2475ID100.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID100.collider:SetOffset(283.5,36.9769,107.5)
level02.colliders.C_Parent_Tile_2475ID100.collider:SetZAxis(0.994692,0,-0.102899)
level02.colliders.C_Parent_Tile_2475ID100.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.C_Parent_Tile_2475ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID100.collider)
level02.colliders.C_Parent_Tile_2475ID101 = {}
level02.colliders.C_Parent_Tile_2475ID101.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID101.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID101.collider:SetMinPos(166.951,31.8654,66.8138)
level02.colliders.C_Parent_Tile_2475ID101.collider:SetMaxPos(309.235,56.7937,252.296)
level02.colliders.C_Parent_Tile_2475ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID101.collider)
level02.colliders.C_Parent_Tile_2475ID102 = {}
level02.colliders.C_Parent_Tile_2475ID102.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID102.collider:SetOffset(299.5,41.3216,79)
level02.colliders.C_Parent_Tile_2475ID102.collider:SetZAxis(0.620703,0,0.784046)
level02.colliders.C_Parent_Tile_2475ID102.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID102.collider)
level02.colliders.C_Parent_Tile_2475ID103 = {}
level02.colliders.C_Parent_Tile_2475ID103.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID103.collider:SetOffset(173,43.1041,251)
level02.colliders.C_Parent_Tile_2475ID103.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2475ID103.collider:SetHalfLengths(0.3,9.01056,6.08276)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID103.collider)
level02.colliders.C_Parent_Tile_2475ID104 = {}
level02.colliders.C_Parent_Tile_2475ID104.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID104.collider:SetOffset(205,50.6796,226)
level02.colliders.C_Parent_Tile_2475ID104.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2475ID104.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID104.collider)
level02.colliders.C_Parent_Tile_2475ID105 = {}
level02.colliders.C_Parent_Tile_2475ID105.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID105.collider:SetOffset(198.5,49.5656,227.5)
level02.colliders.C_Parent_Tile_2475ID105.collider:SetZAxis(-0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2475ID105.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID105.collider)
level02.colliders.C_Parent_Tile_2475ID106 = {}
level02.colliders.C_Parent_Tile_2475ID106.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID106.collider:SetOffset(191.5,48.3401,228)
level02.colliders.C_Parent_Tile_2475ID106.collider:SetZAxis(-1,0,0)
level02.colliders.C_Parent_Tile_2475ID106.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID106.collider)
level02.colliders.C_Parent_Tile_2475ID107 = {}
level02.colliders.C_Parent_Tile_2475ID107.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID107.collider:SetOffset(264,37.3111,134.5)
level02.colliders.C_Parent_Tile_2475ID107.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_2475ID107.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID107.collider)
level02.colliders.C_Parent_Tile_2475ID108 = {}
level02.colliders.C_Parent_Tile_2475ID108.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID108.collider:SetOffset(269,37.4225,131)
level02.colliders.C_Parent_Tile_2475ID108.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_2475ID108.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID108.collider)
level02.colliders.C_Parent_Tile_2475ID109 = {}
level02.colliders.C_Parent_Tile_2475ID109.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID109.collider:SetOffset(273.5,37.3111,129.5)
level02.colliders.C_Parent_Tile_2475ID109.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2475ID109.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID109.collider)
level02.colliders.C_Parent_Tile_2475ID110 = {}
level02.colliders.C_Parent_Tile_2475ID110.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID110.collider:SetOffset(291.5,38.2023,98.5)
level02.colliders.C_Parent_Tile_2475ID110.collider:SetZAxis(-0.654931,0,-0.755689)
level02.colliders.C_Parent_Tile_2475ID110.collider:SetHalfLengths(0.3,6.33685,9.92472)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID110.collider)
level02.colliders.C_Parent_Tile_2475ID111 = {}
level02.colliders.C_Parent_Tile_2475ID111.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID111.collider:SetOffset(183.5,51.8438,240)
level02.colliders.C_Parent_Tile_2475ID111.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID111.collider:SetHalfLengths(2.5,4,2.5)
level02.colliders.C_Parent_Tile_2475ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID111.collider)
level02.colliders.C_Parent_Tile_2475ID112 = {}
level02.colliders.C_Parent_Tile_2475ID112.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID112.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID112.collider:SetMinPos(172.899,29.1917,90.7879)
level02.colliders.C_Parent_Tile_2475ID112.collider:SetMaxPos(384.073,67.2657,255.3)
level02.colliders.C_Parent_Tile_2475ID.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID112.collider)
level02.colliders.C_Parent_Tile_2475ID113 = {}
level02.colliders.C_Parent_Tile_2475ID113.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID113.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID113.collider:SetMinPos(172.899,30.64,117.788)
level02.colliders.C_Parent_Tile_2475ID113.collider:SetMaxPos(258.212,51.2525,218.715)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID113.collider)
level02.colliders.C_Parent_Tile_2475ID114 = {}
level02.colliders.C_Parent_Tile_2475ID114.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID114.collider:SetOffset(177,41.433,212)
level02.colliders.C_Parent_Tile_2475ID114.collider:SetZAxis(0.447214,0,-0.894427)
level02.colliders.C_Parent_Tile_2475ID114.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID114.collider)
level02.colliders.C_Parent_Tile_2475ID115 = {}
level02.colliders.C_Parent_Tile_2475ID115.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID115.collider:SetOffset(180.5,41.6558,208.5)
level02.colliders.C_Parent_Tile_2475ID115.collider:SetZAxis(0.857493,0,-0.514496)
level02.colliders.C_Parent_Tile_2475ID115.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID115.collider)
level02.colliders.C_Parent_Tile_2475ID116 = {}
level02.colliders.C_Parent_Tile_2475ID116.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID116.collider:SetOffset(185.5,41.8786,206.5)
level02.colliders.C_Parent_Tile_2475ID116.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2475ID116.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID116.collider)
level02.colliders.C_Parent_Tile_2475ID117 = {}
level02.colliders.C_Parent_Tile_2475ID117.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID117.collider:SetOffset(220.5,36.0856,175)
level02.colliders.C_Parent_Tile_2475ID117.collider:SetZAxis(0.573462,0,-0.819232)
level02.colliders.C_Parent_Tile_2475ID117.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID117.collider)
level02.colliders.C_Parent_Tile_2475ID118 = {}
level02.colliders.C_Parent_Tile_2475ID118.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID118.collider:SetOffset(228.5,36.6426,150.5)
level02.colliders.C_Parent_Tile_2475ID118.collider:SetZAxis(0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_2475ID118.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID118.collider)
level02.colliders.C_Parent_Tile_2475ID119 = {}
level02.colliders.C_Parent_Tile_2475ID119.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID119.collider:SetOffset(236.5,36.5312,145)
level02.colliders.C_Parent_Tile_2475ID119.collider:SetZAxis(0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_2475ID119.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID119.collider)
level02.colliders.C_Parent_Tile_2475ID120 = {}
level02.colliders.C_Parent_Tile_2475ID120.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID120.collider:SetOffset(240,36.754,139)
level02.colliders.C_Parent_Tile_2475ID120.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2475ID120.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID120.collider)
level02.colliders.C_Parent_Tile_2475ID121 = {}
level02.colliders.C_Parent_Tile_2475ID121.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID121.collider:SetOffset(238,37.3111,135)
level02.colliders.C_Parent_Tile_2475ID121.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2475ID121.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID121.collider)
level02.colliders.C_Parent_Tile_2475ID122 = {}
level02.colliders.C_Parent_Tile_2475ID122.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID122.collider:SetOffset(253,37.9795,123)
level02.colliders.C_Parent_Tile_2475ID122.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2475ID122.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID122.collider)
level02.colliders.C_Parent_Tile_2475ID123 = {}
level02.colliders.C_Parent_Tile_2475ID123.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID123.collider:SetOffset(176.796,45.2188,214.625)
level02.colliders.C_Parent_Tile_2475ID123.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level02.colliders.C_Parent_Tile_2475ID123.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.colliders.C_Parent_Tile_2475ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID123.collider)
level02.colliders.C_Parent_Tile_2475ID124 = {}
level02.colliders.C_Parent_Tile_2475ID124.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID124.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID124.collider:SetMinPos(178.882,31.3084,90.7879)
level02.colliders.C_Parent_Tile_2475ID124.collider:SetMaxPos(315.212,66.1516,252.276)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID124.collider)
level02.colliders.C_Parent_Tile_2475ID125 = {}
level02.colliders.C_Parent_Tile_2475ID125.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID125.collider:SetOffset(312,42.6585,94)
level02.colliders.C_Parent_Tile_2475ID125.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID125.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID125.collider)
level02.colliders.C_Parent_Tile_2475ID126 = {}
level02.colliders.C_Parent_Tile_2475ID126.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID126.collider:SetOffset(182.5,47.1147,250.5)
level02.colliders.C_Parent_Tile_2475ID126.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2475ID126.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID126.collider)
level02.colliders.C_Parent_Tile_2475ID127 = {}
level02.colliders.C_Parent_Tile_2475ID127.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID127.collider:SetOffset(189,50.5682,246.5)
level02.colliders.C_Parent_Tile_2475ID127.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_2475ID127.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID127.collider)
level02.colliders.C_Parent_Tile_2475ID128 = {}
level02.colliders.C_Parent_Tile_2475ID128.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID128.collider:SetOffset(194.5,51.4594,244)
level02.colliders.C_Parent_Tile_2475ID128.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2475ID128.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID128.collider)
level02.colliders.C_Parent_Tile_2475ID129 = {}
level02.colliders.C_Parent_Tile_2475ID129.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID129.collider:SetOffset(200.5,53.2419,244.5)
level02.colliders.C_Parent_Tile_2475ID129.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2475ID129.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID129.collider)
level02.colliders.C_Parent_Tile_2475ID130 = {}
level02.colliders.C_Parent_Tile_2475ID130.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID130.collider:SetOffset(207,55.2472,245.5)
level02.colliders.C_Parent_Tile_2475ID130.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2475ID130.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID130.collider)
level02.colliders.C_Parent_Tile_2475ID131 = {}
level02.colliders.C_Parent_Tile_2475ID131.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID131.collider:SetOffset(220.5,56.3612,226)
level02.colliders.C_Parent_Tile_2475ID131.collider:SetZAxis(-0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_2475ID131.collider:SetHalfLengths(0.3,9.79039,5.31507)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID131.collider)
level02.colliders.C_Parent_Tile_2475ID132 = {}
level02.colliders.C_Parent_Tile_2475ID132.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID132.collider:SetOffset(212.5,51.5708,223.5)
level02.colliders.C_Parent_Tile_2475ID132.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2475ID132.collider:SetHalfLengths(0.3,5.89124,4.74342)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID132.collider)
level02.colliders.C_Parent_Tile_2475ID133 = {}
level02.colliders.C_Parent_Tile_2475ID133.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID133.collider:SetOffset(281.5,37.5339,128.5)
level02.colliders.C_Parent_Tile_2475ID133.collider:SetZAxis(0.995893,0,-0.0905358)
level02.colliders.C_Parent_Tile_2475ID133.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID133.collider)
level02.colliders.C_Parent_Tile_2475ID134 = {}
level02.colliders.C_Parent_Tile_2475ID134.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID134.collider:SetOffset(293,37.1997,129)
level02.colliders.C_Parent_Tile_2475ID134.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2475ID134.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.C_Parent_Tile_2475ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID134.collider)
level02.colliders.C_Parent_Tile_2475ID135 = {}
level02.colliders.C_Parent_Tile_2475ID135.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID135.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID135.collider:SetMinPos(209.889,30.3058,96.8126)
level02.colliders.C_Parent_Tile_2475ID135.collider:SetMaxPos(336.204,65.2604,254.212)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID135.collider)
level02.colliders.C_Parent_Tile_2475ID136 = {}
level02.colliders.C_Parent_Tile_2475ID136.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID136.collider:SetOffset(318,42.1015,102)
level02.colliders.C_Parent_Tile_2475ID136.collider:SetZAxis(0.624695,0,0.780869)
level02.colliders.C_Parent_Tile_2475ID136.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID136.collider)
level02.colliders.C_Parent_Tile_2475ID137 = {}
level02.colliders.C_Parent_Tile_2475ID137.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID137.collider:SetOffset(329,37.4225,113.5)
level02.colliders.C_Parent_Tile_2475ID137.collider:SetZAxis(0.732794,0,0.680451)
level02.colliders.C_Parent_Tile_2475ID137.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID137.collider)
level02.colliders.C_Parent_Tile_2475ID138 = {}
level02.colliders.C_Parent_Tile_2475ID138.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID138.collider:SetOffset(212.5,56.6954,247)
level02.colliders.C_Parent_Tile_2475ID138.collider:SetZAxis(0.928477,0,0.371391)
level02.colliders.C_Parent_Tile_2475ID138.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID138.collider)
level02.colliders.C_Parent_Tile_2475ID139 = {}
level02.colliders.C_Parent_Tile_2475ID139.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID139.collider:SetOffset(217.5,58.9235,249.5)
level02.colliders.C_Parent_Tile_2475ID139.collider:SetZAxis(0.857493,0,0.514496)
level02.colliders.C_Parent_Tile_2475ID139.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID139.collider)
level02.colliders.C_Parent_Tile_2475ID140 = {}
level02.colliders.C_Parent_Tile_2475ID140.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID140.collider:SetOffset(221.5,59.7034,252.5)
level02.colliders.C_Parent_Tile_2475ID140.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID140.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID140.collider)
level02.colliders.C_Parent_Tile_2475ID141 = {}
level02.colliders.C_Parent_Tile_2475ID141.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID141.collider:SetOffset(234.5,57.1411,234.5)
level02.colliders.C_Parent_Tile_2475ID141.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2475ID141.collider:SetHalfLengths(0.3,5.66843,3.53553)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID141.collider)
level02.colliders.C_Parent_Tile_2475ID142 = {}
level02.colliders.C_Parent_Tile_2475ID142.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID142.collider:SetOffset(241,57.8095,233.5)
level02.colliders.C_Parent_Tile_2475ID142.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_2475ID142.collider:SetHalfLengths(0.3,5.22281,3.3541)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID142.collider)
level02.colliders.C_Parent_Tile_2475ID143 = {}
level02.colliders.C_Parent_Tile_2475ID143.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID143.collider:SetOffset(247.5,57.5867,231.5)
level02.colliders.C_Parent_Tile_2475ID143.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_2475ID143.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID143.collider)
level02.colliders.C_Parent_Tile_2475ID144 = {}
level02.colliders.C_Parent_Tile_2475ID144.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID144.collider:SetOffset(306,36.3084,132)
level02.colliders.C_Parent_Tile_2475ID144.collider:SetZAxis(0.961524,0,0.274721)
level02.colliders.C_Parent_Tile_2475ID144.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID144.collider)
level02.colliders.C_Parent_Tile_2475ID145 = {}
level02.colliders.C_Parent_Tile_2475ID145.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID145.collider:SetOffset(227.5,56.3612,232)
level02.colliders.C_Parent_Tile_2475ID145.collider:SetZAxis(0.868243,0,0.496139)
level02.colliders.C_Parent_Tile_2475ID145.collider:SetHalfLengths(0.3,5.77983,4.03113)
level02.colliders.C_Parent_Tile_2475ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID145.collider)
level02.colliders.C_Parent_Tile_2475ID146 = {}
level02.colliders.C_Parent_Tile_2475ID146.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID146.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID146.collider:SetMinPos(222.967,29.1917,111.26)
level02.colliders.C_Parent_Tile_2475ID146.collider:SetMaxPos(350.246,65.8174,254.298)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID146.collider)
level02.colliders.C_Parent_Tile_2475ID147 = {}
level02.colliders.C_Parent_Tile_2475ID147.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID147.collider:SetOffset(343,37.0883,130)
level02.colliders.C_Parent_Tile_2475ID147.collider:SetZAxis(0.573462,0,0.819232)
level02.colliders.C_Parent_Tile_2475ID147.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID147.collider)
level02.colliders.C_Parent_Tile_2475ID148 = {}
level02.colliders.C_Parent_Tile_2475ID148.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID148.collider:SetOffset(227.5,60.2604,253.5)
level02.colliders.C_Parent_Tile_2475ID148.collider:SetZAxis(0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_2475ID148.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID148.collider)
level02.colliders.C_Parent_Tile_2475ID149 = {}
level02.colliders.C_Parent_Tile_2475ID149.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID149.collider:SetOffset(236.5,60.149,252)
level02.colliders.C_Parent_Tile_2475ID149.collider:SetZAxis(0.976187,0,-0.21693)
level02.colliders.C_Parent_Tile_2475ID149.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID149.collider)
level02.colliders.C_Parent_Tile_2475ID150 = {}
level02.colliders.C_Parent_Tile_2475ID150.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID150.collider:SetOffset(246.5,60.3718,250)
level02.colliders.C_Parent_Tile_2475ID150.collider:SetZAxis(0.98387,0,-0.178885)
level02.colliders.C_Parent_Tile_2475ID150.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID150.collider)
level02.colliders.C_Parent_Tile_2475ID151 = {}
level02.colliders.C_Parent_Tile_2475ID151.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID151.collider:SetOffset(259.5,59.9262,249.5)
level02.colliders.C_Parent_Tile_2475ID151.collider:SetZAxis(0.997785,0,0.066519)
level02.colliders.C_Parent_Tile_2475ID151.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID151.collider)
level02.colliders.C_Parent_Tile_2475ID152 = {}
level02.colliders.C_Parent_Tile_2475ID152.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID152.collider:SetOffset(259,57.8095,232)
level02.colliders.C_Parent_Tile_2475ID152.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2475ID152.collider:SetHalfLengths(0.3,6.00264,8.06226)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID152.collider)
level02.colliders.C_Parent_Tile_2475ID153 = {}
level02.colliders.C_Parent_Tile_2475ID153.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID153.collider:SetOffset(277,56.8068,233.5)
level02.colliders.C_Parent_Tile_2475ID153.collider:SetZAxis(0.998752,0,0.0499376)
level02.colliders.C_Parent_Tile_2475ID153.collider:SetHalfLengths(0.3,5.77983,10.0125)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID153.collider)
level02.colliders.C_Parent_Tile_2475ID154 = {}
level02.colliders.C_Parent_Tile_2475ID154.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID154.collider:SetOffset(330,35.64,149.5)
level02.colliders.C_Parent_Tile_2475ID154.collider:SetZAxis(-0.524097,0,-0.851658)
level02.colliders.C_Parent_Tile_2475ID154.collider:SetHalfLengths(0.3,5.89124,7.63217)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID154.collider)
level02.colliders.C_Parent_Tile_2475ID155 = {}
level02.colliders.C_Parent_Tile_2475ID155.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID155.collider:SetOffset(319.5,34.7488,138.5)
level02.colliders.C_Parent_Tile_2475ID155.collider:SetZAxis(-0.822192,0,-0.56921)
level02.colliders.C_Parent_Tile_2475ID155.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID155.collider)
level02.colliders.C_Parent_Tile_2475ID156 = {}
level02.colliders.C_Parent_Tile_2475ID156.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID156.collider:SetOffset(328.75,41.0313,113.313)
level02.colliders.C_Parent_Tile_2475ID156.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID156.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.colliders.C_Parent_Tile_2475ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID156.collider)
level02.colliders.C_Parent_Tile_2475ID157 = {}
level02.colliders.C_Parent_Tile_2475ID157.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID157.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID157.collider:SetMinPos(266.958,30.64,139.746)
level02.colliders.C_Parent_Tile_2475ID157.collider:SetMaxPos(368.059,67.2657,252.3)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID157.collider)
level02.colliders.C_Parent_Tile_2475ID158 = {}
level02.colliders.C_Parent_Tile_2475ID158.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID158.collider:SetOffset(354,38.8707,142.5)
level02.colliders.C_Parent_Tile_2475ID158.collider:SetZAxis(0.847998,0,0.529999)
level02.colliders.C_Parent_Tile_2475ID158.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID158.collider)
level02.colliders.C_Parent_Tile_2475ID159 = {}
level02.colliders.C_Parent_Tile_2475ID159.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID159.collider:SetOffset(363,38.6479,146)
level02.colliders.C_Parent_Tile_2475ID159.collider:SetZAxis(0.980581,0,0.196116)
level02.colliders.C_Parent_Tile_2475ID159.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID159.collider)
level02.colliders.C_Parent_Tile_2475ID160 = {}
level02.colliders.C_Parent_Tile_2475ID160.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID160.collider:SetOffset(274,60.0376,251)
level02.colliders.C_Parent_Tile_2475ID160.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2475ID160.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID160.collider)
level02.colliders.C_Parent_Tile_2475ID161 = {}
level02.colliders.C_Parent_Tile_2475ID161.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID161.collider:SetOffset(287.5,59.7034,252)
level02.colliders.C_Parent_Tile_2475ID161.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2475ID161.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID161.collider)
level02.colliders.C_Parent_Tile_2475ID162 = {}
level02.colliders.C_Parent_Tile_2475ID162.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID162.collider:SetOffset(295,56.027,232)
level02.colliders.C_Parent_Tile_2475ID162.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2475ID162.collider:SetHalfLengths(0.3,11.2386,8.24621)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID162.collider)
level02.colliders.C_Parent_Tile_2475ID163 = {}
level02.colliders.C_Parent_Tile_2475ID163.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID163.collider:SetOffset(350,37.0883,173)
level02.colliders.C_Parent_Tile_2475ID163.collider:SetZAxis(-0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_2475ID163.collider:SetHalfLengths(0.3,5.89124,5.83095)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID163.collider)
level02.colliders.C_Parent_Tile_2475ID164 = {}
level02.colliders.C_Parent_Tile_2475ID164.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID164.collider:SetOffset(340.5,36.197,162)
level02.colliders.C_Parent_Tile_2475ID164.collider:SetZAxis(-0.734803,0,-0.67828)
level02.colliders.C_Parent_Tile_2475ID164.collider:SetHalfLengths(0.3,5.55702,8.8459)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID164.collider)
level02.colliders.C_Parent_Tile_2475ID165 = {}
level02.colliders.C_Parent_Tile_2475ID165.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID165.collider:SetOffset(339.5,40.3125,156.5)
level02.colliders.C_Parent_Tile_2475ID165.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID165.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID165.collider)
level02.colliders.C_Parent_Tile_2475ID166 = {}
level02.colliders.C_Parent_Tile_2475ID166.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID166.collider:SetOffset(320,48.7857,232)
level02.colliders.C_Parent_Tile_2475ID166.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2475ID166.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID166.collider)
level02.colliders.C_Parent_Tile_2475ID167 = {}
level02.colliders.C_Parent_Tile_2475ID167.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID167.collider:SetOffset(305.5,51.2366,233.5)
level02.colliders.C_Parent_Tile_2475ID167.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2475ID167.collider:SetHalfLengths(0.3,6.00264,3.53553)
level02.colliders.C_Parent_Tile_2475ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID167.collider)
level02.colliders.C_Parent_Tile_2475ID168 = {}
level02.colliders.C_Parent_Tile_2475ID168.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID168.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID168.collider:SetMinPos(293.927,32.0883,146.7)
level02.colliders.C_Parent_Tile_2475ID168.collider:SetMaxPos(376,67.0429,255.3)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID168.collider)
level02.colliders.C_Parent_Tile_2475ID169 = {}
level02.colliders.C_Parent_Tile_2475ID169.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID169.collider:SetOffset(372,38.3137,147)
level02.colliders.C_Parent_Tile_2475ID169.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2475ID169.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID169.collider)
level02.colliders.C_Parent_Tile_2475ID170 = {}
level02.colliders.C_Parent_Tile_2475ID170.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID170.collider:SetOffset(296,58.5893,252.5)
level02.colliders.C_Parent_Tile_2475ID170.collider:SetZAxis(0.970143,0,0.242536)
level02.colliders.C_Parent_Tile_2475ID170.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID170.collider)
level02.colliders.C_Parent_Tile_2475ID171 = {}
level02.colliders.C_Parent_Tile_2475ID171.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID171.collider:SetOffset(299,55.1358,254)
level02.colliders.C_Parent_Tile_2475ID171.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2475ID171.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID171.collider)
level02.colliders.C_Parent_Tile_2475ID172 = {}
level02.colliders.C_Parent_Tile_2475ID172.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID172.collider:SetOffset(307,55.2472,255)
level02.colliders.C_Parent_Tile_2475ID172.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2475ID172.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID172.collider)
level02.colliders.C_Parent_Tile_2475ID173 = {}
level02.colliders.C_Parent_Tile_2475ID173.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID173.collider:SetOffset(313.5,50.5682,248)
level02.colliders.C_Parent_Tile_2475ID173.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2475ID173.collider:SetHalfLengths(0.3,5.44562,2.06155)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID173.collider)
level02.colliders.C_Parent_Tile_2475ID174 = {}
level02.colliders.C_Parent_Tile_2475ID174.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID174.collider:SetOffset(339,48.1173,215.5)
level02.colliders.C_Parent_Tile_2475ID174.collider:SetZAxis(0.682318,0,-0.731055)
level02.colliders.C_Parent_Tile_2475ID174.collider:SetHalfLengths(0.3,12.0185,10.2591)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID174.collider)
level02.colliders.C_Parent_Tile_2475ID175 = {}
level02.colliders.C_Parent_Tile_2475ID175.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID175.collider:SetOffset(348,41.0988,203.5)
level02.colliders.C_Parent_Tile_2475ID175.collider:SetZAxis(0.406139,0,-0.913812)
level02.colliders.C_Parent_Tile_2475ID175.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID175.collider)
level02.colliders.C_Parent_Tile_2475ID176 = {}
level02.colliders.C_Parent_Tile_2475ID176.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID176.collider:SetOffset(350,39.4277,194)
level02.colliders.C_Parent_Tile_2475ID176.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2475ID176.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID176.collider)
level02.colliders.C_Parent_Tile_2475ID177 = {}
level02.colliders.C_Parent_Tile_2475ID177.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID177.collider:SetOffset(351.5,38.3137,183.5)
level02.colliders.C_Parent_Tile_2475ID177.collider:SetZAxis(0.263117,0,-0.964764)
level02.colliders.C_Parent_Tile_2475ID177.collider:SetHalfLengths(0.3,6.22545,5.70088)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID177.collider)
level02.colliders.C_Parent_Tile_2475ID178 = {}
level02.colliders.C_Parent_Tile_2475ID178.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID178.collider:SetOffset(323.5,51.6822,242)
level02.colliders.C_Parent_Tile_2475ID178.collider:SetZAxis(0.944497,0,-0.328521)
level02.colliders.C_Parent_Tile_2475ID178.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.C_Parent_Tile_2475ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID178.collider)
level02.colliders.C_Parent_Tile_2475ID179 = {}
level02.colliders.C_Parent_Tile_2475ID179.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID179.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID179.collider:SetMinPos(313.7,31.0856,146.7)
level02.colliders.C_Parent_Tile_2475ID179.collider:SetMaxPos(384.073,64.592,255.171)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID179.collider)
level02.colliders.C_Parent_Tile_2475ID180 = {}
level02.colliders.C_Parent_Tile_2475ID180.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID180.collider:SetOffset(380,37.1997,147)
level02.colliders.C_Parent_Tile_2475ID180.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2475ID180.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID180.collider)
level02.colliders.C_Parent_Tile_2475ID181 = {}
level02.colliders.C_Parent_Tile_2475ID181.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID181.collider:SetOffset(314,51.2366,252.5)
level02.colliders.C_Parent_Tile_2475ID181.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2475ID181.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID181.collider)
level02.colliders.C_Parent_Tile_2475ID182 = {}
level02.colliders.C_Parent_Tile_2475ID182.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID182.collider:SetOffset(340.5,55.47,248.5)
level02.colliders.C_Parent_Tile_2475ID182.collider:SetZAxis(-0.56921,0,-0.822192)
level02.colliders.C_Parent_Tile_2475ID182.collider:SetHalfLengths(0.3,9.12196,7.90569)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID182.collider)
level02.colliders.C_Parent_Tile_2475ID183 = {}
level02.colliders.C_Parent_Tile_2475ID183.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID183.collider:SetOffset(373.5,46.4462,189)
level02.colliders.C_Parent_Tile_2475ID183.collider:SetZAxis(-0.0333148,0,-0.999445)
level02.colliders.C_Parent_Tile_2475ID183.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID183.collider)
level02.colliders.C_Parent_Tile_2475ID184 = {}
level02.colliders.C_Parent_Tile_2475ID184.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID184.collider:SetOffset(374,39.4277,170.5)
level02.colliders.C_Parent_Tile_2475ID184.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_2475ID184.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID184.collider)
level02.colliders.C_Parent_Tile_2475ID185 = {}
level02.colliders.C_Parent_Tile_2475ID185.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID185.collider:SetOffset(377.5,39.9848,162.5)
level02.colliders.C_Parent_Tile_2475ID185.collider:SetZAxis(0.485643,0,-0.874157)
level02.colliders.C_Parent_Tile_2475ID185.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID185.collider)
level02.colliders.C_Parent_Tile_2475ID186 = {}
level02.colliders.C_Parent_Tile_2475ID186.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID186.collider:SetOffset(382,37.0883,157.5)
level02.colliders.C_Parent_Tile_2475ID186.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2475ID186.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID186.collider)
level02.colliders.C_Parent_Tile_2475ID187 = {}
level02.colliders.C_Parent_Tile_2475ID187.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID187.collider:SetOffset(370.079,42.4331,185.415)
level02.colliders.C_Parent_Tile_2475ID187.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID187.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID187.collider)
level02.colliders.C_Parent_Tile_2475ID188 = {}
level02.colliders.C_Parent_Tile_2475ID188.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID188.collider:SetOffset(332,48.7857,225.5)
level02.colliders.C_Parent_Tile_2475ID188.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2475ID188.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID188.collider)
level02.colliders.C_Parent_Tile_2475ID189 = {}
level02.colliders.C_Parent_Tile_2475ID189.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID189.collider:SetOffset(335.5,50.791,240)
level02.colliders.C_Parent_Tile_2475ID189.collider:SetZAxis(0.242536,0,0.970143)
level02.colliders.C_Parent_Tile_2475ID189.collider:SetHalfLengths(0.3,5.55702,2.06155)
level02.colliders.C_Parent_Tile_2475ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID189.collider)
level02.colliders.C_Parent_Tile_2475ID190 = {}
level02.colliders.C_Parent_Tile_2475ID190.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID190.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2475ID190.collider:SetMinPos(344.715,41.4462,203.882)
level02.colliders.C_Parent_Tile_2475ID190.collider:SetMaxPos(374.276,65.4832,255.095)
level02.colliders.C_Parent_Tile_2475ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID190.collider)
level02.colliders.C_Parent_Tile_2475ID191 = {}
level02.colliders.C_Parent_Tile_2475ID191.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID191.collider:SetOffset(346.5,55.47,250.5)
level02.colliders.C_Parent_Tile_2475ID191.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2475ID191.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID191.collider)
level02.colliders.C_Parent_Tile_2475ID192 = {}
level02.colliders.C_Parent_Tile_2475ID192.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID192.collider:SetOffset(353,57.0297,240.5)
level02.colliders.C_Parent_Tile_2475ID192.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_2475ID192.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID192.collider)
level02.colliders.C_Parent_Tile_2475ID193 = {}
level02.colliders.C_Parent_Tile_2475ID193.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID193.collider:SetOffset(363,53.5761,226.5)
level02.colliders.C_Parent_Tile_2475ID193.collider:SetZAxis(0.50702,0,-0.861934)
level02.colliders.C_Parent_Tile_2475ID193.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID193.collider)
level02.colliders.C_Parent_Tile_2475ID194 = {}
level02.colliders.C_Parent_Tile_2475ID194.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID194.collider:SetOffset(371,48.8971,211)
level02.colliders.C_Parent_Tile_2475ID194.collider:SetZAxis(0.393919,0,-0.919145)
level02.colliders.C_Parent_Tile_2475ID194.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID194.collider)
level02.colliders.C_Parent_Tile_2475ID195 = {}
level02.colliders.C_Parent_Tile_2475ID195.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID195.collider:SetOffset(365.671,47.676,214.229)
level02.colliders.C_Parent_Tile_2475ID195.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID195.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID195.collider)
level02.colliders.C_Parent_Tile_2475ID196 = {}
level02.colliders.C_Parent_Tile_2475ID196.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID196.collider:SetOffset(354.858,50.9688,226.742)
level02.colliders.C_Parent_Tile_2475ID196.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID196.collider:SetHalfLengths(1.75,4,1.75)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID196.collider)
level02.colliders.C_Parent_Tile_2475ID197 = {}
level02.colliders.C_Parent_Tile_2475ID197.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2475ID197.collider:SetOffset(347.526,56,240.375)
level02.colliders.C_Parent_Tile_2475ID197.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2475ID197.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.colliders.C_Parent_Tile_2475ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2475ID197.collider)
CollisionHandler.AddAABB(level02.colliders.C_Parent_Tile_2475ID.collider, 3)
level02.colliders.C_Parent_Tile_2475ID1 = nil
level02.colliders.C_Parent_Tile_2475ID2 = nil
level02.colliders.C_Parent_Tile_2475ID3 = nil
level02.colliders.C_Parent_Tile_2475ID4 = nil
level02.colliders.C_Parent_Tile_2475ID5 = nil
level02.colliders.C_Parent_Tile_2475ID6 = nil
level02.colliders.C_Parent_Tile_2475ID7 = nil
level02.colliders.C_Parent_Tile_2475ID8 = nil
level02.colliders.C_Parent_Tile_2475ID9 = nil
level02.colliders.C_Parent_Tile_2475ID10 = nil
level02.colliders.C_Parent_Tile_2475ID11 = nil
level02.colliders.C_Parent_Tile_2475ID12 = nil
level02.colliders.C_Parent_Tile_2475ID13 = nil
level02.colliders.C_Parent_Tile_2475ID14 = nil
level02.colliders.C_Parent_Tile_2475ID15 = nil
level02.colliders.C_Parent_Tile_2475ID16 = nil
level02.colliders.C_Parent_Tile_2475ID17 = nil
level02.colliders.C_Parent_Tile_2475ID18 = nil
level02.colliders.C_Parent_Tile_2475ID19 = nil
level02.colliders.C_Parent_Tile_2475ID20 = nil
level02.colliders.C_Parent_Tile_2475ID21 = nil
level02.colliders.C_Parent_Tile_2475ID22 = nil
level02.colliders.C_Parent_Tile_2475ID23 = nil
level02.colliders.C_Parent_Tile_2475ID24 = nil
level02.colliders.C_Parent_Tile_2475ID25 = nil
level02.colliders.C_Parent_Tile_2475ID26 = nil
level02.colliders.C_Parent_Tile_2475ID27 = nil
level02.colliders.C_Parent_Tile_2475ID28 = nil
level02.colliders.C_Parent_Tile_2475ID29 = nil
level02.colliders.C_Parent_Tile_2475ID30 = nil
level02.colliders.C_Parent_Tile_2475ID31 = nil
level02.colliders.C_Parent_Tile_2475ID32 = nil
level02.colliders.C_Parent_Tile_2475ID33 = nil
level02.colliders.C_Parent_Tile_2475ID34 = nil
level02.colliders.C_Parent_Tile_2475ID35 = nil
level02.colliders.C_Parent_Tile_2475ID36 = nil
level02.colliders.C_Parent_Tile_2475ID37 = nil
level02.colliders.C_Parent_Tile_2475ID38 = nil
level02.colliders.C_Parent_Tile_2475ID39 = nil
level02.colliders.C_Parent_Tile_2475ID40 = nil
level02.colliders.C_Parent_Tile_2475ID41 = nil
level02.colliders.C_Parent_Tile_2475ID42 = nil
level02.colliders.C_Parent_Tile_2475ID43 = nil
level02.colliders.C_Parent_Tile_2475ID44 = nil
level02.colliders.C_Parent_Tile_2475ID45 = nil
level02.colliders.C_Parent_Tile_2475ID46 = nil
level02.colliders.C_Parent_Tile_2475ID47 = nil
level02.colliders.C_Parent_Tile_2475ID48 = nil
level02.colliders.C_Parent_Tile_2475ID49 = nil
level02.colliders.C_Parent_Tile_2475ID50 = nil
level02.colliders.C_Parent_Tile_2475ID51 = nil
level02.colliders.C_Parent_Tile_2475ID52 = nil
level02.colliders.C_Parent_Tile_2475ID53 = nil
level02.colliders.C_Parent_Tile_2475ID54 = nil
level02.colliders.C_Parent_Tile_2475ID55 = nil
level02.colliders.C_Parent_Tile_2475ID56 = nil
level02.colliders.C_Parent_Tile_2475ID57 = nil
level02.colliders.C_Parent_Tile_2475ID58 = nil
level02.colliders.C_Parent_Tile_2475ID59 = nil
level02.colliders.C_Parent_Tile_2475ID60 = nil
level02.colliders.C_Parent_Tile_2475ID61 = nil
level02.colliders.C_Parent_Tile_2475ID62 = nil
level02.colliders.C_Parent_Tile_2475ID63 = nil
level02.colliders.C_Parent_Tile_2475ID64 = nil
level02.colliders.C_Parent_Tile_2475ID65 = nil
level02.colliders.C_Parent_Tile_2475ID66 = nil
level02.colliders.C_Parent_Tile_2475ID67 = nil
level02.colliders.C_Parent_Tile_2475ID68 = nil
level02.colliders.C_Parent_Tile_2475ID69 = nil
level02.colliders.C_Parent_Tile_2475ID70 = nil
level02.colliders.C_Parent_Tile_2475ID71 = nil
level02.colliders.C_Parent_Tile_2475ID72 = nil
level02.colliders.C_Parent_Tile_2475ID73 = nil
level02.colliders.C_Parent_Tile_2475ID74 = nil
level02.colliders.C_Parent_Tile_2475ID75 = nil
level02.colliders.C_Parent_Tile_2475ID76 = nil
level02.colliders.C_Parent_Tile_2475ID77 = nil
level02.colliders.C_Parent_Tile_2475ID78 = nil
level02.colliders.C_Parent_Tile_2475ID79 = nil
level02.colliders.C_Parent_Tile_2475ID80 = nil
level02.colliders.C_Parent_Tile_2475ID81 = nil
level02.colliders.C_Parent_Tile_2475ID82 = nil
level02.colliders.C_Parent_Tile_2475ID83 = nil
level02.colliders.C_Parent_Tile_2475ID84 = nil
level02.colliders.C_Parent_Tile_2475ID85 = nil
level02.colliders.C_Parent_Tile_2475ID86 = nil
level02.colliders.C_Parent_Tile_2475ID87 = nil
level02.colliders.C_Parent_Tile_2475ID88 = nil
level02.colliders.C_Parent_Tile_2475ID89 = nil
level02.colliders.C_Parent_Tile_2475ID90 = nil
level02.colliders.C_Parent_Tile_2475ID91 = nil
level02.colliders.C_Parent_Tile_2475ID92 = nil
level02.colliders.C_Parent_Tile_2475ID93 = nil
level02.colliders.C_Parent_Tile_2475ID94 = nil
level02.colliders.C_Parent_Tile_2475ID95 = nil
level02.colliders.C_Parent_Tile_2475ID96 = nil
level02.colliders.C_Parent_Tile_2475ID97 = nil
level02.colliders.C_Parent_Tile_2475ID98 = nil
level02.colliders.C_Parent_Tile_2475ID99 = nil
level02.colliders.C_Parent_Tile_2475ID100 = nil
level02.colliders.C_Parent_Tile_2475ID101 = nil
level02.colliders.C_Parent_Tile_2475ID102 = nil
level02.colliders.C_Parent_Tile_2475ID103 = nil
level02.colliders.C_Parent_Tile_2475ID104 = nil
level02.colliders.C_Parent_Tile_2475ID105 = nil
level02.colliders.C_Parent_Tile_2475ID106 = nil
level02.colliders.C_Parent_Tile_2475ID107 = nil
level02.colliders.C_Parent_Tile_2475ID108 = nil
level02.colliders.C_Parent_Tile_2475ID109 = nil
level02.colliders.C_Parent_Tile_2475ID110 = nil
level02.colliders.C_Parent_Tile_2475ID111 = nil
level02.colliders.C_Parent_Tile_2475ID112 = nil
level02.colliders.C_Parent_Tile_2475ID113 = nil
level02.colliders.C_Parent_Tile_2475ID114 = nil
level02.colliders.C_Parent_Tile_2475ID115 = nil
level02.colliders.C_Parent_Tile_2475ID116 = nil
level02.colliders.C_Parent_Tile_2475ID117 = nil
level02.colliders.C_Parent_Tile_2475ID118 = nil
level02.colliders.C_Parent_Tile_2475ID119 = nil
level02.colliders.C_Parent_Tile_2475ID120 = nil
level02.colliders.C_Parent_Tile_2475ID121 = nil
level02.colliders.C_Parent_Tile_2475ID122 = nil
level02.colliders.C_Parent_Tile_2475ID123 = nil
level02.colliders.C_Parent_Tile_2475ID124 = nil
level02.colliders.C_Parent_Tile_2475ID125 = nil
level02.colliders.C_Parent_Tile_2475ID126 = nil
level02.colliders.C_Parent_Tile_2475ID127 = nil
level02.colliders.C_Parent_Tile_2475ID128 = nil
level02.colliders.C_Parent_Tile_2475ID129 = nil
level02.colliders.C_Parent_Tile_2475ID130 = nil
level02.colliders.C_Parent_Tile_2475ID131 = nil
level02.colliders.C_Parent_Tile_2475ID132 = nil
level02.colliders.C_Parent_Tile_2475ID133 = nil
level02.colliders.C_Parent_Tile_2475ID134 = nil
level02.colliders.C_Parent_Tile_2475ID135 = nil
level02.colliders.C_Parent_Tile_2475ID136 = nil
level02.colliders.C_Parent_Tile_2475ID137 = nil
level02.colliders.C_Parent_Tile_2475ID138 = nil
level02.colliders.C_Parent_Tile_2475ID139 = nil
level02.colliders.C_Parent_Tile_2475ID140 = nil
level02.colliders.C_Parent_Tile_2475ID141 = nil
level02.colliders.C_Parent_Tile_2475ID142 = nil
level02.colliders.C_Parent_Tile_2475ID143 = nil
level02.colliders.C_Parent_Tile_2475ID144 = nil
level02.colliders.C_Parent_Tile_2475ID145 = nil
level02.colliders.C_Parent_Tile_2475ID146 = nil
level02.colliders.C_Parent_Tile_2475ID147 = nil
level02.colliders.C_Parent_Tile_2475ID148 = nil
level02.colliders.C_Parent_Tile_2475ID149 = nil
level02.colliders.C_Parent_Tile_2475ID150 = nil
level02.colliders.C_Parent_Tile_2475ID151 = nil
level02.colliders.C_Parent_Tile_2475ID152 = nil
level02.colliders.C_Parent_Tile_2475ID153 = nil
level02.colliders.C_Parent_Tile_2475ID154 = nil
level02.colliders.C_Parent_Tile_2475ID155 = nil
level02.colliders.C_Parent_Tile_2475ID156 = nil
level02.colliders.C_Parent_Tile_2475ID157 = nil
level02.colliders.C_Parent_Tile_2475ID158 = nil
level02.colliders.C_Parent_Tile_2475ID159 = nil
level02.colliders.C_Parent_Tile_2475ID160 = nil
level02.colliders.C_Parent_Tile_2475ID161 = nil
level02.colliders.C_Parent_Tile_2475ID162 = nil
level02.colliders.C_Parent_Tile_2475ID163 = nil
level02.colliders.C_Parent_Tile_2475ID164 = nil
level02.colliders.C_Parent_Tile_2475ID165 = nil
level02.colliders.C_Parent_Tile_2475ID166 = nil
level02.colliders.C_Parent_Tile_2475ID167 = nil
level02.colliders.C_Parent_Tile_2475ID168 = nil
level02.colliders.C_Parent_Tile_2475ID169 = nil
level02.colliders.C_Parent_Tile_2475ID170 = nil
level02.colliders.C_Parent_Tile_2475ID171 = nil
level02.colliders.C_Parent_Tile_2475ID172 = nil
level02.colliders.C_Parent_Tile_2475ID173 = nil
level02.colliders.C_Parent_Tile_2475ID174 = nil
level02.colliders.C_Parent_Tile_2475ID175 = nil
level02.colliders.C_Parent_Tile_2475ID176 = nil
level02.colliders.C_Parent_Tile_2475ID177 = nil
level02.colliders.C_Parent_Tile_2475ID178 = nil
level02.colliders.C_Parent_Tile_2475ID179 = nil
level02.colliders.C_Parent_Tile_2475ID180 = nil
level02.colliders.C_Parent_Tile_2475ID181 = nil
level02.colliders.C_Parent_Tile_2475ID182 = nil
level02.colliders.C_Parent_Tile_2475ID183 = nil
level02.colliders.C_Parent_Tile_2475ID184 = nil
level02.colliders.C_Parent_Tile_2475ID185 = nil
level02.colliders.C_Parent_Tile_2475ID186 = nil
level02.colliders.C_Parent_Tile_2475ID187 = nil
level02.colliders.C_Parent_Tile_2475ID188 = nil
level02.colliders.C_Parent_Tile_2475ID189 = nil
level02.colliders.C_Parent_Tile_2475ID190 = nil
level02.colliders.C_Parent_Tile_2475ID191 = nil
level02.colliders.C_Parent_Tile_2475ID192 = nil
level02.colliders.C_Parent_Tile_2475ID193 = nil
level02.colliders.C_Parent_Tile_2475ID194 = nil
level02.colliders.C_Parent_Tile_2475ID195 = nil
level02.colliders.C_Parent_Tile_2475ID196 = nil
level02.colliders.C_Parent_Tile_2475ID197 = nil
end
level02.unload = function()
level02.props.tile25ID = nil
Gear.UnbindInstance(level02.props.t2s121ID.transformID)
level02.props.t2s121ID = nil
Gear.UnbindInstance(level02.props.t2s222ID.transformID)
level02.props.t2s222ID = nil
Gear.UnbindInstance(level02.props.t2s323ID.transformID)
level02.props.t2s323ID = nil
Gear.UnbindInstance(level02.props.t2s424ID.transformID)
level02.props.t2s424ID = nil
Gear.UnbindInstance(level02.props.t2s525ID.transformID)
level02.props.t2s525ID = nil
Gear.UnbindInstance(level02.props.t2s626ID.transformID)
level02.props.t2s626ID = nil
Gear.UnbindInstance(level02.props.t2s727ID.transformID)
level02.props.t2s727ID = nil
Gear.UnbindInstance(level02.props.t2s828ID.transformID)
level02.props.t2s828ID = nil
Gear.UnbindInstance(level02.props.t2s929ID.transformID)
level02.props.t2s929ID = nil
Gear.UnbindInstance(level02.props.t2s1030ID.transformID)
level02.props.t2s1030ID = nil
Gear.UnbindInstance(level02.props.t2s11a31ID.transformID)
level02.props.t2s11a31ID = nil
Gear.UnbindInstance(level02.props.t2s1232ID.transformID)
level02.props.t2s1232ID = nil
Gear.UnbindInstance(level02.props.t2s1333ID.transformID)
level02.props.t2s1333ID = nil
Gear.UnbindInstance(level02.props.t2s1434ID.transformID)
level02.props.t2s1434ID = nil
level02.colliders.Tile2_wallNr158ID = nil
level02.colliders.Tile2_wallNr1159ID = nil
level02.colliders.Tile2_wallNr2160ID = nil
level02.colliders.Tile2_wallNr3161ID = nil
level02.colliders.Tile2_wallNr4162ID = nil
level02.colliders.Tile2_wallNr5163ID = nil
level02.colliders.Tile2_wallNr6164ID = nil
level02.colliders.Tile2_wallNr7165ID = nil
level02.colliders.Tile2_wallNr8166ID = nil
level02.colliders.Tile2_wallNr9167ID = nil
level02.colliders.Tile2_wallNr10168ID = nil
level02.colliders.Tile2_wallNr11169ID = nil
level02.colliders.Tile2_wallNr12170ID = nil
level02.colliders.Tile2_wallNr13171ID = nil
level02.colliders.Tile2_wallNr14172ID = nil
level02.colliders.Tile2_wallNr15173ID = nil
level02.colliders.Tile2_wallNr16174ID = nil
level02.colliders.Tile2_wallNr17175ID = nil
level02.colliders.Tile2_wallNr18176ID = nil
level02.colliders.Tile2_wallNr19177ID = nil
level02.colliders.Tile2_wallNr20178ID = nil
level02.colliders.Tile2_wallNr21179ID = nil
level02.colliders.Tile2_wallNr22180ID = nil
level02.colliders.Tile2_wallNr23181ID = nil
level02.colliders.Tile2_wallNr24182ID = nil
level02.colliders.Tile2_wallNr25183ID = nil
level02.colliders.Tile2_wallNr26184ID = nil
level02.colliders.Tile2_wallNr27185ID = nil
level02.colliders.Tile2_wallNr28186ID = nil
level02.colliders.Tile2_wallNr29187ID = nil
level02.colliders.Tile2_wallNr30188ID = nil
level02.colliders.Tile2_wallNr31189ID = nil
level02.colliders.Tile2_wallNr32190ID = nil
level02.colliders.Tile2_wallNr33191ID = nil
level02.colliders.Tile2_wallNr34192ID = nil
level02.colliders.Tile2_wallNr35193ID = nil
level02.colliders.Tile2_wallNr36194ID = nil
level02.colliders.Tile2_wallNr37195ID = nil
level02.colliders.Tile2_wallNr38196ID = nil
level02.colliders.Tile2_wallNr39197ID = nil
level02.colliders.Tile2_wallNr40198ID = nil
level02.colliders.Tile2_wallNr41199ID = nil
level02.colliders.Tile2_wallNr42200ID = nil
level02.colliders.Tile2_wallNr43201ID = nil
level02.colliders.Tile2_wallNr44202ID = nil
level02.colliders.Tile2_wallNr45203ID = nil
level02.colliders.Tile2_wallNr46204ID = nil
level02.colliders.Tile2_wallNr47205ID = nil
level02.colliders.Tile2_wallNr48206ID = nil
level02.colliders.Tile2_wallNr49207ID = nil
level02.colliders.Tile2_wallNr50208ID = nil
level02.colliders.Tile2_wallNr51209ID = nil
level02.colliders.Tile2_wallNr52210ID = nil
level02.colliders.Tile2_wallNr53211ID = nil
level02.colliders.Tile2_wallNr54212ID = nil
level02.colliders.Tile2_wallNr55213ID = nil
level02.colliders.Tile2_wallNr56214ID = nil
level02.colliders.Tile2_wallNr57215ID = nil
level02.colliders.Tile2_wallNr58216ID = nil
level02.colliders.Tile2_wallNr59217ID = nil
level02.colliders.Tile2_wallNr60218ID = nil
level02.colliders.Tile2_wallNr61219ID = nil
level02.colliders.Tile2_wallNr62220ID = nil
level02.colliders.Tile2_wallNr63221ID = nil
level02.colliders.Tile2_wallNr64222ID = nil
level02.colliders.Tile2_wallNr65223ID = nil
level02.colliders.Tile2_wallNr87224ID = nil
level02.colliders.Tile2_wallNr88225ID = nil
level02.colliders.Tile2_wallNr89226ID = nil
level02.colliders.Tile2_wallNr90227ID = nil
level02.colliders.Tile2_wallNr91228ID = nil
level02.colliders.Tile2_wallNr92229ID = nil
level02.colliders.Tile2_wallNr94230ID = nil
level02.colliders.Tile2_wallNr95231ID = nil
level02.colliders.Tile2_wallNr96232ID = nil
level02.colliders.Tile2_wallNr97233ID = nil
level02.colliders.Tile2_wallNr98234ID = nil
level02.colliders.Tile2_wallNr99235ID = nil
level02.colliders.Tile2_wallNr100236ID = nil
level02.colliders.Tile2_wallNr101237ID = nil
level02.colliders.Tile2_wallNr102238ID = nil
level02.colliders.Tile2_wallNr66239ID = nil
level02.colliders.Tile2_wallNr67240ID = nil
level02.colliders.Tile2_wallNr68241ID = nil
level02.colliders.Tile2_wallNr69242ID = nil
level02.colliders.Tile2_wallNr70243ID = nil
level02.colliders.Tile2_wallNr71244ID = nil
level02.colliders.Tile2_wallNr72245ID = nil
level02.colliders.Tile2_wallNr73246ID = nil
level02.colliders.Tile2_wallNr74247ID = nil
level02.colliders.Tile2_wallNr75248ID = nil
level02.colliders.Tile2_wallNr76249ID = nil
level02.colliders.Tile2_wallNr77250ID = nil
level02.colliders.Tile2_wallNr78251ID = nil
level02.colliders.Tile2_wallNr79252ID = nil
level02.colliders.Tile2_wallNr80253ID = nil
level02.colliders.Tile2_wallNr81254ID = nil
level02.colliders.Tile2_wallNr82255ID = nil
level02.colliders.Tile2_wallNr83256ID = nil
level02.colliders.Tile2_wallNr84257ID = nil
level02.colliders.Tile2_wallNr85258ID = nil
level02.colliders.Tile2_wallNr86259ID = nil
level02.colliders.Tile2_wallNr103260ID = nil
level02.colliders.Tile2_wallNr104261ID = nil
level02.colliders.Tile2_wallNr105262ID = nil
level02.colliders.Tile2_wallNr106263ID = nil
level02.colliders.Tile2_wallNr107264ID = nil
level02.colliders.Tile2_wallNr108265ID = nil
level02.colliders.Tile2_wallNr109266ID = nil
level02.colliders.Tile2_wallNr110267ID = nil
level02.colliders.Tile2_wallNr111268ID = nil
level02.colliders.Tile2_wallNr112269ID = nil
level02.colliders.Tile2_wallNr113270ID = nil
level02.colliders.Tile2_wallNr114271ID = nil
level02.colliders.Tile2_wallNr115272ID = nil
level02.colliders.Tile2_wallNr116273ID = nil
level02.colliders.Tile2_wallNr117274ID = nil
level02.colliders.Tile2_wallNr118275ID = nil
level02.colliders.Tile2_wallNr119276ID = nil
level02.colliders.Tile2_wallNr120277ID = nil
level02.colliders.Tile2_wallNr121278ID = nil
level02.colliders.Tile2_wallNr122279ID = nil
level02.colliders.Tile2_wallNr123280ID = nil
level02.colliders.Tile2_wallNr124281ID = nil
level02.colliders.Tile2_wallNr125282ID = nil
level02.colliders.Tile2_wallNr126283ID = nil
level02.colliders.Tile2_wallNr127284ID = nil
level02.colliders.Tile2_wallNr128285ID = nil
level02.colliders.Tile2_wallNr129286ID = nil
level02.colliders.Tile2_wallNr130287ID = nil
level02.colliders.Tile2_wallNr131288ID = nil
level02.colliders.Tile2_wallNr132289ID = nil
level02.colliders.Tile2_wallNr133290ID = nil
level02.colliders.Tile2_wallNr134291ID = nil
level02.colliders.Tile2_wallNr135292ID = nil
level02.colliders.Tile2_wallNr136293ID = nil
level02.colliders.Tile2_wallNr137294ID = nil
level02.colliders.Tile2_wallNr138295ID = nil
level02.colliders.Tile2_wallNr139296ID = nil
level02.colliders.Tile2_wallNr140297ID = nil
level02.colliders.Tile2_wallNr141298ID = nil
level02.colliders.Tile2_wallNr142299ID = nil
level02.colliders.Tile2_wallNr143300ID = nil
level02.colliders.Tile2_wallNr144301ID = nil
level02.colliders.Tile2_wallNr145302ID = nil
level02.colliders.Tile2_wallNr146303ID = nil
level02.colliders.Tile2_wallNr147304ID = nil
level02.colliders.Tile2_wallNr148305ID = nil
level02.colliders.Tile2_wallNr149306ID = nil
level02.colliders.Tile2_wallNr150307ID = nil
level02.colliders.Tile2_wallNr151308ID = nil
level02.colliders.Tile2_wallNr152309ID = nil
level02.colliders.Tile2_wallNr153310ID = nil
level02.colliders.Tile2_wallNr154311ID = nil
level02.colliders.Tile2_wallNr155312ID = nil
level02.colliders.Tile2_wallNr156313ID = nil
level02.colliders.Tile2_wallNr157314ID = nil
level02.colliders.Tile2_wallNr158315ID = nil
level02.colliders.Tile2_wallNr159316ID = nil
level02.colliders.Tile2_wallNr160317ID = nil
level02.colliders.Tile2_wallNr161318ID = nil
level02.colliders.Tile2_wallNr164319ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider384ID.transformID)
level02.props.PineTree_Collider384ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1385ID.transformID)
level02.props.PineTree_Collider1385ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2386ID.transformID)
level02.props.PineTree_Collider2386ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1387ID.transformID)
level02.props.PineTree_NoCollider1387ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11388ID.transformID)
level02.props.PineTree_NoCollider11388ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12389ID.transformID)
level02.props.PineTree_NoCollider12389ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13390ID.transformID)
level02.props.PineTree_NoCollider13390ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14391ID.transformID)
level02.props.PineTree_NoCollider14391ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15392ID.transformID)
level02.props.PineTree_NoCollider15392ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16393ID.transformID)
level02.props.PineTree_NoCollider16393ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17394ID.transformID)
level02.props.PineTree_NoCollider17394ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18395ID.transformID)
level02.props.PineTree_NoCollider18395ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19396ID.transformID)
level02.props.PineTree_NoCollider19396ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4397ID.transformID)
level02.props.OakTree_Collider4397ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41398ID.transformID)
level02.props.OakTree_Collider41398ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42399ID.transformID)
level02.props.OakTree_Collider42399ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43400ID.transformID)
level02.props.OakTree_Collider43400ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44401ID.transformID)
level02.props.OakTree_Collider44401ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45402ID.transformID)
level02.props.OakTree_Collider45402ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46403ID.transformID)
level02.props.OakTree_Collider46403ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1404ID.transformID)
level02.props.OakTree_NoCollider1404ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15405ID.transformID)
level02.props.OakTree_NoCollider15405ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111406ID.transformID)
level02.props.OakTree_NoCollider111406ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112407ID.transformID)
level02.props.OakTree_NoCollider112407ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113408ID.transformID)
level02.props.OakTree_NoCollider113408ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114409ID.transformID)
level02.props.OakTree_NoCollider114409ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115410ID.transformID)
level02.props.OakTree_NoCollider115410ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116411ID.transformID)
level02.props.OakTree_NoCollider116411ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117412ID.transformID)
level02.props.OakTree_NoCollider117412ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118413ID.transformID)
level02.props.OakTree_NoCollider118413ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119414ID.transformID)
level02.props.OakTree_NoCollider119414ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120415ID.transformID)
level02.props.OakTree_NoCollider120415ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121416ID.transformID)
level02.props.OakTree_NoCollider121416ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122417ID.transformID)
level02.props.OakTree_NoCollider122417ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123418ID.transformID)
level02.props.OakTree_NoCollider123418ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124419ID.transformID)
level02.props.OakTree_NoCollider124419ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125420ID.transformID)
level02.props.OakTree_NoCollider125420ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126425ID.transformID)
level02.props.OakTree_NoCollider126425ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127426ID.transformID)
level02.props.OakTree_NoCollider127426ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128427ID.transformID)
level02.props.OakTree_NoCollider128427ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129428ID.transformID)
level02.props.OakTree_NoCollider129428ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130429ID.transformID)
level02.props.OakTree_NoCollider130429ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131430ID.transformID)
level02.props.OakTree_NoCollider131430ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132431ID.transformID)
level02.props.OakTree_NoCollider132431ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133432ID.transformID)
level02.props.OakTree_NoCollider133432ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134433ID.transformID)
level02.props.OakTree_NoCollider134433ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135434ID.transformID)
level02.props.OakTree_NoCollider135434ID = nil
Gear.UnbindInstance(level02.props.Bridge1439ID.transformID)
level02.props.Bridge1439ID = nil
level02.colliders.Tile2_wallNr162440ID = nil
level02.colliders.Tile2_wallNr163441ID = nil
level02.colliders.Tile2_wallNr165442ID = nil
level02.colliders.Tile2_wallNr93443ID = nil
level02.colliders.Tile2_wallNr166444ID = nil
level02.colliders.C_Parent_Tile_21455ID = nil
level02.colliders.C_Parent_Tile_22456ID = nil
level02.colliders.C_Parent_Tile_23457ID = nil
level02.colliders.C_Parent_Tile_24458ID = nil
level02.colliders.C_Parent_Tile_25459ID = nil
level02.colliders.C_Parent_Tile_26460ID = nil
level02.colliders.C_Parent_Tile_27461ID = nil
level02.colliders.C_Parent_Tile_28462ID = nil
level02.colliders.C_Parent_Tile_29463ID = nil
level02.colliders.C_Parent_Tile_210464ID = nil
level02.colliders.C_Parent_Tile_211465ID = nil
level02.colliders.C_Parent_Tile_212466ID = nil
level02.colliders.C_Parent_Tile_213467ID = nil
level02.colliders.C_Parent_Tile_214468ID = nil
level02.colliders.C_Parent_Tile_215469ID = nil
level02.colliders.C_Parent_Tile_216470ID = nil
level02.colliders.C_Parent_Tile_217471ID = nil
level02.colliders.C_Parent_Tile_218472ID = nil
level02.colliders.C_Parent_Tile_219473ID = nil
level02.colliders.C_Parent_Tile_220474ID = nil
level02.colliders.C_Parent_Tile_2475ID = nil
level02.props = nil
level02.colliders = nil
level02.triggers = nil
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.surrounding = { 2, 4 }
level03.load = function()
level03.props = {}
level03.colliders = {}
level03.triggers = {}
level03.props.t3s135ID = {}
level03.props.t3s135ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s135ID.transformID = Gear.BindStaticInstance(level03.props.t3s135ID.model)
Transform.SetPosition(level03.props.t3s135ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s135ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s135ID.transformID, {x=0, y=0, z=0})
level03.props.tile336ID = {}
level03.props.t3s242ID = {}
level03.props.t3s242ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s242ID.transformID = Gear.BindStaticInstance(level03.props.t3s242ID.model)
Transform.SetPosition(level03.props.t3s242ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s242ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s242ID.transformID, {x=0, y=0, z=0})
level03.props.t3s343ID = {}
level03.props.t3s343ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s343ID.transformID = Gear.BindStaticInstance(level03.props.t3s343ID.model)
Transform.SetPosition(level03.props.t3s343ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s343ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s343ID.transformID, {x=0, y=0, z=0})
level03.props.t3s444ID = {}
level03.props.t3s444ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s444ID.transformID = Gear.BindStaticInstance(level03.props.t3s444ID.model)
Transform.SetPosition(level03.props.t3s444ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s444ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s444ID.transformID, {x=0, y=0, z=0})
level03.colliders.C_Parent_Tile_3479ID = {}
level03.colliders.C_Parent_Tile_3479ID.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3479ID.collider:SetMinPos(383.7,30.1951,127.711)
level03.colliders.C_Parent_Tile_3479ID.collider:SetMaxPos(512.3,68.8781,255.3)
level03.colliders.C_Parent_Tile_3479ID.collider:SetPos(0,0,0)
level03.colliders.C_Parent_Tile_3479ID1 = {}
level03.colliders.C_Parent_Tile_3479ID1.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID1.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3479ID1.collider:SetMinPos(383.7,30.1951,127.741)
level03.colliders.C_Parent_Tile_3479ID1.collider:SetMaxPos(434.151,41.7798,172.134)
level03.colliders.C_Parent_Tile_3479ID.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID1.collider)
level03.colliders.C_Parent_Tile_3479ID2 = {}
level03.colliders.C_Parent_Tile_3479ID2.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID2.collider:SetOffset(388.5,36.4629,157)
level03.colliders.C_Parent_Tile_3479ID2.collider:SetZAxis(1,0,0)
level03.colliders.C_Parent_Tile_3479ID2.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID2.collider)
level03.colliders.C_Parent_Tile_3479ID3 = {}
level03.colliders.C_Parent_Tile_3479ID3.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID3.collider:SetOffset(398,36.3044,158)
level03.colliders.C_Parent_Tile_3479ID3.collider:SetZAxis(0.980581,0,0.196116)
level03.colliders.C_Parent_Tile_3479ID3.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID3.collider)
level03.colliders.C_Parent_Tile_3479ID4 = {}
level03.colliders.C_Parent_Tile_3479ID4.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID4.collider:SetOffset(404,36.146,160)
level03.colliders.C_Parent_Tile_3479ID4.collider:SetZAxis(0.707107,0,0.707107)
level03.colliders.C_Parent_Tile_3479ID4.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID4.collider)
level03.colliders.C_Parent_Tile_3479ID5 = {}
level03.colliders.C_Parent_Tile_3479ID5.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID5.collider:SetOffset(406,36.3044,162.5)
level03.colliders.C_Parent_Tile_3479ID5.collider:SetZAxis(0.5547,0,0.83205)
level03.colliders.C_Parent_Tile_3479ID5.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID5.collider)
level03.colliders.C_Parent_Tile_3479ID6 = {}
level03.colliders.C_Parent_Tile_3479ID6.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID6.collider:SetOffset(409,36.4629,168)
level03.colliders.C_Parent_Tile_3479ID6.collider:SetZAxis(0.447214,0,0.894427)
level03.colliders.C_Parent_Tile_3479ID6.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID6.collider)
level03.colliders.C_Parent_Tile_3479ID7 = {}
level03.colliders.C_Parent_Tile_3479ID7.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID7.collider:SetOffset(428,35.829,131.5)
level03.colliders.C_Parent_Tile_3479ID7.collider:SetZAxis(-0.863779,0,0.503871)
level03.colliders.C_Parent_Tile_3479ID7.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID7.collider)
level03.colliders.C_Parent_Tile_3479ID8 = {}
level03.colliders.C_Parent_Tile_3479ID8.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID8.collider:SetOffset(412.5,35.5121,139.5)
level03.colliders.C_Parent_Tile_3479ID8.collider:SetZAxis(-0.903738,0,0.428086)
level03.colliders.C_Parent_Tile_3479ID8.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID8.collider)
level03.colliders.C_Parent_Tile_3479ID9 = {}
level03.colliders.C_Parent_Tile_3479ID9.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID9.collider:SetOffset(401.5,35.3536,144.5)
level03.colliders.C_Parent_Tile_3479ID9.collider:SetZAxis(-0.948683,0,0.316228)
level03.colliders.C_Parent_Tile_3479ID9.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID9.collider)
level03.colliders.C_Parent_Tile_3479ID10 = {}
level03.colliders.C_Parent_Tile_3479ID10.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID10.collider:SetOffset(392,35.3536,145)
level03.colliders.C_Parent_Tile_3479ID10.collider:SetZAxis(-1,0,0)
level03.colliders.C_Parent_Tile_3479ID10.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID10.collider)
level03.colliders.C_Parent_Tile_3479ID11 = {}
level03.colliders.C_Parent_Tile_3479ID11.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID11.collider:SetOffset(384,35.1951,146)
level03.colliders.C_Parent_Tile_3479ID11.collider:SetZAxis(0,0,1)
level03.colliders.C_Parent_Tile_3479ID11.collider:SetHalfLengths(0.3,5,1)
level03.colliders.C_Parent_Tile_3479ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID11.collider)
level03.colliders.C_Parent_Tile_3479ID12 = {}
level03.colliders.C_Parent_Tile_3479ID12.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID12.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3479ID12.collider:SetMinPos(410.719,30.829,127.711)
level03.colliders.C_Parent_Tile_3479ID12.collider:SetMaxPos(475.148,57.3098,255.172)
level03.colliders.C_Parent_Tile_3479ID.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID12.collider)
level03.colliders.C_Parent_Tile_3479ID13 = {}
level03.colliders.C_Parent_Tile_3479ID13.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID13.collider:SetOffset(412.5,36.7798,176)
level03.colliders.C_Parent_Tile_3479ID13.collider:SetZAxis(0.351123,0,0.936329)
level03.colliders.C_Parent_Tile_3479ID13.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID13.collider)
level03.colliders.C_Parent_Tile_3479ID14 = {}
level03.colliders.C_Parent_Tile_3479ID14.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID14.collider:SetOffset(415.5,37.5722,185)
level03.colliders.C_Parent_Tile_3479ID14.collider:SetZAxis(0.287348,0,0.957826)
level03.colliders.C_Parent_Tile_3479ID14.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID14.collider)
level03.colliders.C_Parent_Tile_3479ID15 = {}
level03.colliders.C_Parent_Tile_3479ID15.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID15.collider:SetOffset(418,38.2061,195.5)
level03.colliders.C_Parent_Tile_3479ID15.collider:SetZAxis(0.178885,0,0.98387)
level03.colliders.C_Parent_Tile_3479ID15.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID15.collider)
level03.colliders.C_Parent_Tile_3479ID16 = {}
level03.colliders.C_Parent_Tile_3479ID16.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID16.collider:SetOffset(419.5,40.2662,208.5)
level03.colliders.C_Parent_Tile_3479ID16.collider:SetZAxis(0.066519,0,0.997785)
level03.colliders.C_Parent_Tile_3479ID16.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID16.collider)
level03.colliders.C_Parent_Tile_3479ID17 = {}
level03.colliders.C_Parent_Tile_3479ID17.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID17.collider:SetOffset(418.5,44.5448,223.5)
level03.colliders.C_Parent_Tile_3479ID17.collider:SetZAxis(-0.196116,0,0.980581)
level03.colliders.C_Parent_Tile_3479ID17.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID17.collider)
level03.colliders.C_Parent_Tile_3479ID18 = {}
level03.colliders.C_Parent_Tile_3479ID18.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID18.collider:SetOffset(416,48.3481,235)
level03.colliders.C_Parent_Tile_3479ID18.collider:SetZAxis(-0.242536,0,0.970143)
level03.colliders.C_Parent_Tile_3479ID18.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID18.collider)
level03.colliders.C_Parent_Tile_3479ID19 = {}
level03.colliders.C_Parent_Tile_3479ID19.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID19.collider:SetOffset(422,50.7251,242)
level03.colliders.C_Parent_Tile_3479ID19.collider:SetZAxis(0.919145,0,0.393919)
level03.colliders.C_Parent_Tile_3479ID19.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID19.collider)
level03.colliders.C_Parent_Tile_3479ID20 = {}
level03.colliders.C_Parent_Tile_3479ID20.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID20.collider:SetOffset(432.5,51.5175,250)
level03.colliders.C_Parent_Tile_3479ID20.collider:SetZAxis(0.573462,0,0.819232)
level03.colliders.C_Parent_Tile_3479ID20.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID20.collider)
level03.colliders.C_Parent_Tile_3479ID21 = {}
level03.colliders.C_Parent_Tile_3479ID21.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID21.collider:SetOffset(463.5,38.2061,139.5)
level03.colliders.C_Parent_Tile_3479ID21.collider:SetZAxis(-0.870563,0,-0.492057)
level03.colliders.C_Parent_Tile_3479ID21.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID21.collider)
level03.colliders.C_Parent_Tile_3479ID22 = {}
level03.colliders.C_Parent_Tile_3479ID22.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID22.collider:SetOffset(443,36.7798,130.5)
level03.colliders.C_Parent_Tile_3479ID22.collider:SetZAxis(-0.963518,0,-0.267644)
level03.colliders.C_Parent_Tile_3479ID22.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.C_Parent_Tile_3479ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID22.collider)
level03.colliders.C_Parent_Tile_3479ID23 = {}
level03.colliders.C_Parent_Tile_3479ID23.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID23.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3479ID23.collider:SetMinPos(436,33.2061,145.827)
level03.colliders.C_Parent_Tile_3479ID23.collider:SetMaxPos(512.3,68.8781,255.3)
level03.colliders.C_Parent_Tile_3479ID.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID23.collider)
level03.colliders.C_Parent_Tile_3479ID24 = {}
level03.colliders.C_Parent_Tile_3479ID24.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID24.collider:SetOffset(453.5,52.3098,255)
level03.colliders.C_Parent_Tile_3479ID24.collider:SetZAxis(1,0,0)
level03.colliders.C_Parent_Tile_3479ID24.collider:SetHalfLengths(0.3,16.5682,17.5)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID24.collider)
level03.colliders.C_Parent_Tile_3479ID25 = {}
level03.colliders.C_Parent_Tile_3479ID25.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID25.collider:SetOffset(511.5,41.5339,241.5)
level03.colliders.C_Parent_Tile_3479ID25.collider:SetZAxis(-0.0370117,0,-0.999315)
level03.colliders.C_Parent_Tile_3479ID25.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID25.collider)
level03.colliders.C_Parent_Tile_3479ID26 = {}
level03.colliders.C_Parent_Tile_3479ID26.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID26.collider:SetOffset(510,41.8508,221)
level03.colliders.C_Parent_Tile_3479ID26.collider:SetZAxis(-0.141421,0,-0.98995)
level03.colliders.C_Parent_Tile_3479ID26.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID26.collider)
level03.colliders.C_Parent_Tile_3479ID27 = {}
level03.colliders.C_Parent_Tile_3479ID27.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID27.collider:SetOffset(506.5,42.1678,206.5)
level03.colliders.C_Parent_Tile_3479ID27.collider:SetZAxis(-0.316228,0,-0.948683)
level03.colliders.C_Parent_Tile_3479ID27.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID27.collider)
level03.colliders.C_Parent_Tile_3479ID28 = {}
level03.colliders.C_Parent_Tile_3479ID28.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID28.collider:SetOffset(500.5,41.8508,190)
level03.colliders.C_Parent_Tile_3479ID28.collider:SetZAxis(-0.362446,0,-0.932005)
level03.colliders.C_Parent_Tile_3479ID28.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID28.collider)
level03.colliders.C_Parent_Tile_3479ID29 = {}
level03.colliders.C_Parent_Tile_3479ID29.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID29.collider:SetOffset(492,41.217,172)
level03.colliders.C_Parent_Tile_3479ID29.collider:SetZAxis(-0.485643,0,-0.874157)
level03.colliders.C_Parent_Tile_3479ID29.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID29.collider)
level03.colliders.C_Parent_Tile_3479ID30 = {}
level03.colliders.C_Parent_Tile_3479ID30.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3479ID30.collider:SetOffset(481,39.7907,154.5)
level03.colliders.C_Parent_Tile_3479ID30.collider:SetZAxis(-0.576683,0,-0.816968)
level03.colliders.C_Parent_Tile_3479ID30.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.C_Parent_Tile_3479ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3479ID30.collider)
CollisionHandler.AddAABB(level03.colliders.C_Parent_Tile_3479ID.collider, 3)
level03.colliders.C_Parent_Tile_3479ID1 = nil
level03.colliders.C_Parent_Tile_3479ID2 = nil
level03.colliders.C_Parent_Tile_3479ID3 = nil
level03.colliders.C_Parent_Tile_3479ID4 = nil
level03.colliders.C_Parent_Tile_3479ID5 = nil
level03.colliders.C_Parent_Tile_3479ID6 = nil
level03.colliders.C_Parent_Tile_3479ID7 = nil
level03.colliders.C_Parent_Tile_3479ID8 = nil
level03.colliders.C_Parent_Tile_3479ID9 = nil
level03.colliders.C_Parent_Tile_3479ID10 = nil
level03.colliders.C_Parent_Tile_3479ID11 = nil
level03.colliders.C_Parent_Tile_3479ID12 = nil
level03.colliders.C_Parent_Tile_3479ID13 = nil
level03.colliders.C_Parent_Tile_3479ID14 = nil
level03.colliders.C_Parent_Tile_3479ID15 = nil
level03.colliders.C_Parent_Tile_3479ID16 = nil
level03.colliders.C_Parent_Tile_3479ID17 = nil
level03.colliders.C_Parent_Tile_3479ID18 = nil
level03.colliders.C_Parent_Tile_3479ID19 = nil
level03.colliders.C_Parent_Tile_3479ID20 = nil
level03.colliders.C_Parent_Tile_3479ID21 = nil
level03.colliders.C_Parent_Tile_3479ID22 = nil
level03.colliders.C_Parent_Tile_3479ID23 = nil
level03.colliders.C_Parent_Tile_3479ID24 = nil
level03.colliders.C_Parent_Tile_3479ID25 = nil
level03.colliders.C_Parent_Tile_3479ID26 = nil
level03.colliders.C_Parent_Tile_3479ID27 = nil
level03.colliders.C_Parent_Tile_3479ID28 = nil
level03.colliders.C_Parent_Tile_3479ID29 = nil
level03.colliders.C_Parent_Tile_3479ID30 = nil
end
level03.unload = function()
Gear.UnbindInstance(level03.props.t3s135ID.transformID)
level03.props.t3s135ID = nil
level03.props.tile336ID = nil
Gear.UnbindInstance(level03.props.t3s242ID.transformID)
level03.props.t3s242ID = nil
Gear.UnbindInstance(level03.props.t3s343ID.transformID)
level03.props.t3s343ID = nil
Gear.UnbindInstance(level03.props.t3s444ID.transformID)
level03.props.t3s444ID = nil
level03.colliders.Tile3_wallNr320ID = nil
level03.colliders.Tile3_wallNr1321ID = nil
level03.colliders.Tile3_wallNr2322ID = nil
level03.colliders.Tile3_wallNr3323ID = nil
level03.colliders.Tile3_wallNr4324ID = nil
level03.colliders.Tile3_wallNr5325ID = nil
level03.colliders.Tile3_wallNr6326ID = nil
level03.colliders.Tile3_wallNr7327ID = nil
level03.colliders.Tile3_wallNr8328ID = nil
level03.colliders.Tile3_wallNr9329ID = nil
level03.colliders.Tile3_wallNr10330ID = nil
level03.colliders.Tile3_wallNr11331ID = nil
level03.colliders.Tile3_wallNr12332ID = nil
level03.colliders.Tile3_wallNr13333ID = nil
level03.colliders.Tile3_wallNr14334ID = nil
level03.colliders.Tile3_wallNr15335ID = nil
level03.colliders.Tile3_wallNr16336ID = nil
level03.colliders.Tile3_wallNr17337ID = nil
level03.colliders.Tile3_wallNr18338ID = nil
level03.colliders.Tile3_wallNr19339ID = nil
level03.colliders.Tile3_wallNr20340ID = nil
level03.colliders.Tile3_wallNr21341ID = nil
level03.colliders.Tile3_wallNr22342ID = nil
level03.colliders.Tile3_wallNr23343ID = nil
level03.colliders.Tile3_wallNr24344ID = nil
level03.colliders.Tile3_wallNr25345ID = nil
level03.colliders.Tile3_wallNr26346ID = nil
level03.colliders.C_Parent_Tile_31476ID = nil
level03.colliders.C_Parent_Tile_32477ID = nil
level03.colliders.C_Parent_Tile_33478ID = nil
level03.colliders.C_Parent_Tile_3479ID = nil
level03.props = nil
level03.colliders = nil
level03.triggers = nil
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


-------------------------------------level04-----------------------------------------------

level04 = {}
level04.surrounding = { 3, 5 }
level04.load = function()
level04.props = {}
level04.colliders = {}
level04.triggers = {}
level04.props.tile437ID = {}
level04.props.t4s145ID = {}
level04.props.t4s145ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s145ID.transformID = Gear.BindStaticInstance(level04.props.t4s145ID.model)
Transform.SetPosition(level04.props.t4s145ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s145ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s145ID.transformID, {x=0, y=0, z=0})
level04.props.t4s246ID = {}
level04.props.t4s246ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s246ID.transformID = Gear.BindStaticInstance(level04.props.t4s246ID.model)
Transform.SetPosition(level04.props.t4s246ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s246ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s246ID.transformID, {x=0, y=0, z=0})
level04.props.t4s347ID = {}
level04.props.t4s347ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s347ID.transformID = Gear.BindStaticInstance(level04.props.t4s347ID.model)
Transform.SetPosition(level04.props.t4s347ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s347ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s347ID.transformID, {x=0, y=0, z=0})
level04.props.t4s448ID = {}
level04.props.t4s448ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s448ID.transformID = Gear.BindStaticInstance(level04.props.t4s448ID.model)
Transform.SetPosition(level04.props.t4s448ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s448ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s448ID.transformID, {x=0, y=0, z=0})
level04.colliders.C_Parent_Tile_4483ID = {}
level04.colliders.C_Parent_Tile_4483ID.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4483ID.collider:SetMinPos(434.7,23.9934,255.7)
level04.colliders.C_Parent_Tile_4483ID.collider:SetMaxPos(512.3,78.3839,383.3)
level04.colliders.C_Parent_Tile_4483ID.collider:SetPos(0,0,0)
level04.colliders.C_Parent_Tile_4483ID1 = {}
level04.colliders.C_Parent_Tile_4483ID1.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID1.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4483ID1.collider:SetMinPos(434.7,23.9934,255.7)
level04.colliders.C_Parent_Tile_4483ID1.collider:SetMaxPos(477.295,65.2143,350.111)
level04.colliders.C_Parent_Tile_4483ID.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID1.collider)
level04.colliders.C_Parent_Tile_4483ID2 = {}
level04.colliders.C_Parent_Tile_4483ID2.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID2.collider:SetOffset(474,40.2329,303.5)
level04.colliders.C_Parent_Tile_4483ID2.collider:SetZAxis(0.178885,0,0.98387)
level04.colliders.C_Parent_Tile_4483ID2.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID2.collider)
level04.colliders.C_Parent_Tile_4483ID3 = {}
level04.colliders.C_Parent_Tile_4483ID3.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID3.collider:SetOffset(467.5,40.2329,291.5)
level04.colliders.C_Parent_Tile_4483ID3.collider:SetZAxis(-0.613941,0,0.789352)
level04.colliders.C_Parent_Tile_4483ID3.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID3.collider)
level04.colliders.C_Parent_Tile_4483ID4 = {}
level04.colliders.C_Parent_Tile_4483ID4.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID4.collider:SetOffset(466,50.5642,306)
level04.colliders.C_Parent_Tile_4483ID4.collider:SetZAxis(0.196116,0,0.980581)
level04.colliders.C_Parent_Tile_4483ID4.collider:SetHalfLengths(0.3,5.68119,10.198)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID4.collider)
level04.colliders.C_Parent_Tile_4483ID5 = {}
level04.colliders.C_Parent_Tile_4483ID5.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID5.collider:SetOffset(468.5,51.2454,325.5)
level04.colliders.C_Parent_Tile_4483ID5.collider:SetZAxis(0.0525588,0,0.998618)
level04.colliders.C_Parent_Tile_4483ID5.collider:SetHalfLengths(0.3,8.29239,9.51315)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID5.collider)
level04.colliders.C_Parent_Tile_4483ID6 = {}
level04.colliders.C_Parent_Tile_4483ID6.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID6.collider:SetOffset(453,40.9141,256)
level04.colliders.C_Parent_Tile_4483ID6.collider:SetZAxis(-1,0,0)
level04.colliders.C_Parent_Tile_4483ID6.collider:SetHalfLengths(0.3,16.9207,18)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID6.collider)
level04.colliders.C_Parent_Tile_4483ID7 = {}
level04.colliders.C_Parent_Tile_4483ID7.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID7.collider:SetOffset(435,52.8348,263)
level04.colliders.C_Parent_Tile_4483ID7.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4483ID7.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID7.collider)
level04.colliders.C_Parent_Tile_4483ID8 = {}
level04.colliders.C_Parent_Tile_4483ID8.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID8.collider:SetOffset(436,53.9701,283.5)
level04.colliders.C_Parent_Tile_4483ID8.collider:SetZAxis(0.0738717,0,0.997268)
level04.colliders.C_Parent_Tile_4483ID8.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID8.collider)
level04.colliders.C_Parent_Tile_4483ID9 = {}
level04.colliders.C_Parent_Tile_4483ID9.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID9.collider:SetOffset(439,55.7866,309.5)
level04.colliders.C_Parent_Tile_4483ID9.collider:SetZAxis(0.157991,0,0.987441)
level04.colliders.C_Parent_Tile_4483ID9.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID9.collider)
level04.colliders.C_Parent_Tile_4483ID10 = {}
level04.colliders.C_Parent_Tile_4483ID10.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID10.collider:SetOffset(442.5,56.1272,328.5)
level04.colliders.C_Parent_Tile_4483ID10.collider:SetZAxis(0.22486,0,0.974391)
level04.colliders.C_Parent_Tile_4483ID10.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID10.collider)
level04.colliders.C_Parent_Tile_4483ID11 = {}
level04.colliders.C_Parent_Tile_4483ID11.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID11.collider:SetOffset(447,57.2625,342.5)
level04.colliders.C_Parent_Tile_4483ID11.collider:SetZAxis(0.371391,0,0.928477)
level04.colliders.C_Parent_Tile_4483ID11.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.C_Parent_Tile_4483ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID11.collider)
level04.colliders.C_Parent_Tile_4483ID12 = {}
level04.colliders.C_Parent_Tile_4483ID12.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID12.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4483ID12.collider:SetMinPos(449.701,28.7617,256)
level04.colliders.C_Parent_Tile_4483ID12.collider:SetMaxPos(512.3,78.3839,383.3)
level04.colliders.C_Parent_Tile_4483ID.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID12.collider)
level04.colliders.C_Parent_Tile_4483ID13 = {}
level04.colliders.C_Parent_Tile_4483ID13.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID13.collider:SetOffset(512,41.5953,300.5)
level04.colliders.C_Parent_Tile_4483ID13.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4483ID13.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID13.collider)
level04.colliders.C_Parent_Tile_4483ID14 = {}
level04.colliders.C_Parent_Tile_4483ID14.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID14.collider:SetOffset(508,34.7835,352.5)
level04.colliders.C_Parent_Tile_4483ID14.collider:SetZAxis(-0.470588,0,0.882353)
level04.colliders.C_Parent_Tile_4483ID14.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID14.collider)
level04.colliders.C_Parent_Tile_4483ID15 = {}
level04.colliders.C_Parent_Tile_4483ID15.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID15.collider:SetOffset(502.5,35.8052,364.5)
level04.colliders.C_Parent_Tile_4483ID15.collider:SetZAxis(-0.316228,0,0.948683)
level04.colliders.C_Parent_Tile_4483ID15.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID15.collider)
level04.colliders.C_Parent_Tile_4483ID16 = {}
level04.colliders.C_Parent_Tile_4483ID16.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID16.collider:SetOffset(475.5,42.39,334)
level04.colliders.C_Parent_Tile_4483ID16.collider:SetZAxis(-0.106533,0,0.994309)
level04.colliders.C_Parent_Tile_4483ID16.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID16.collider)
level04.colliders.C_Parent_Tile_4483ID17 = {}
level04.colliders.C_Parent_Tile_4483ID17.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID17.collider:SetOffset(475.5,43.9794,365.5)
level04.colliders.C_Parent_Tile_4483ID17.collider:SetZAxis(0.0854011,0,0.996347)
level04.colliders.C_Parent_Tile_4483ID17.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID17.collider)
level04.colliders.C_Parent_Tile_4483ID18 = {}
level04.colliders.C_Parent_Tile_4483ID18.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID18.collider:SetOffset(469.5,54.5378,347.5)
level04.colliders.C_Parent_Tile_4483ID18.collider:SetZAxis(0.039968,0,0.999201)
level04.colliders.C_Parent_Tile_4483ID18.collider:SetHalfLengths(0.3,6.81649,12.51)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID18.collider)
level04.colliders.C_Parent_Tile_4483ID19 = {}
level04.colliders.C_Parent_Tile_4483ID19.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID19.collider:SetOffset(470,56.3543,371.5)
level04.colliders.C_Parent_Tile_4483ID19.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4483ID19.collider:SetHalfLengths(0.3,7.49767,11.5)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID19.collider)
level04.colliders.C_Parent_Tile_4483ID20 = {}
level04.colliders.C_Parent_Tile_4483ID20.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID20.collider:SetOffset(450.5,60.2143,356.5)
level04.colliders.C_Parent_Tile_4483ID20.collider:SetZAxis(0.0766965,0,0.997055)
level04.colliders.C_Parent_Tile_4483ID20.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID20.collider)
level04.colliders.C_Parent_Tile_4483ID21 = {}
level04.colliders.C_Parent_Tile_4483ID21.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID21.collider:SetOffset(452,61.1226,373)
level04.colliders.C_Parent_Tile_4483ID21.collider:SetZAxis(0.0995037,0,0.995037)
level04.colliders.C_Parent_Tile_4483ID21.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID21.collider)
level04.colliders.C_Parent_Tile_4483ID22 = {}
level04.colliders.C_Parent_Tile_4483ID22.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID22.collider:SetOffset(473.5,58.852,383)
level04.colliders.C_Parent_Tile_4483ID22.collider:SetZAxis(1,0,0)
level04.colliders.C_Parent_Tile_4483ID22.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.C_Parent_Tile_4483ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID22.collider)
level04.colliders.C_Parent_Tile_4483ID23 = {}
level04.colliders.C_Parent_Tile_4483ID23.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID23.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4483ID23.collider:SetMinPos(500.724,31.3729,368.882)
level04.colliders.C_Parent_Tile_4483ID23.collider:SetMaxPos(508.26,43.6435,383.149)
level04.colliders.C_Parent_Tile_4483ID.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID23.collider)
level04.colliders.C_Parent_Tile_4483ID24 = {}
level04.colliders.C_Parent_Tile_4483ID24.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID24.collider:SetOffset(502.5,37.0541,372.5)
level04.colliders.C_Parent_Tile_4483ID24.collider:SetZAxis(0.393919,0,0.919145)
level04.colliders.C_Parent_Tile_4483ID24.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.C_Parent_Tile_4483ID23.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID24.collider)
level04.colliders.C_Parent_Tile_4483ID25 = {}
level04.colliders.C_Parent_Tile_4483ID25.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4483ID25.collider:SetOffset(506,37.7352,379.5)
level04.colliders.C_Parent_Tile_4483ID25.collider:SetZAxis(0.496139,0,0.868243)
level04.colliders.C_Parent_Tile_4483ID25.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.C_Parent_Tile_4483ID23.collider:AddChild(level04.colliders.C_Parent_Tile_4483ID25.collider)
CollisionHandler.AddAABB(level04.colliders.C_Parent_Tile_4483ID.collider, 3)
level04.colliders.C_Parent_Tile_4483ID1 = nil
level04.colliders.C_Parent_Tile_4483ID2 = nil
level04.colliders.C_Parent_Tile_4483ID3 = nil
level04.colliders.C_Parent_Tile_4483ID4 = nil
level04.colliders.C_Parent_Tile_4483ID5 = nil
level04.colliders.C_Parent_Tile_4483ID6 = nil
level04.colliders.C_Parent_Tile_4483ID7 = nil
level04.colliders.C_Parent_Tile_4483ID8 = nil
level04.colliders.C_Parent_Tile_4483ID9 = nil
level04.colliders.C_Parent_Tile_4483ID10 = nil
level04.colliders.C_Parent_Tile_4483ID11 = nil
level04.colliders.C_Parent_Tile_4483ID12 = nil
level04.colliders.C_Parent_Tile_4483ID13 = nil
level04.colliders.C_Parent_Tile_4483ID14 = nil
level04.colliders.C_Parent_Tile_4483ID15 = nil
level04.colliders.C_Parent_Tile_4483ID16 = nil
level04.colliders.C_Parent_Tile_4483ID17 = nil
level04.colliders.C_Parent_Tile_4483ID18 = nil
level04.colliders.C_Parent_Tile_4483ID19 = nil
level04.colliders.C_Parent_Tile_4483ID20 = nil
level04.colliders.C_Parent_Tile_4483ID21 = nil
level04.colliders.C_Parent_Tile_4483ID22 = nil
level04.colliders.C_Parent_Tile_4483ID23 = nil
level04.colliders.C_Parent_Tile_4483ID24 = nil
level04.colliders.C_Parent_Tile_4483ID25 = nil
end
level04.unload = function()
level04.props.tile437ID = nil
Gear.UnbindInstance(level04.props.t4s145ID.transformID)
level04.props.t4s145ID = nil
Gear.UnbindInstance(level04.props.t4s246ID.transformID)
level04.props.t4s246ID = nil
Gear.UnbindInstance(level04.props.t4s347ID.transformID)
level04.props.t4s347ID = nil
Gear.UnbindInstance(level04.props.t4s448ID.transformID)
level04.props.t4s448ID = nil
level04.colliders.Tile4_wallNr347ID = nil
level04.colliders.Tile4_wallNr1348ID = nil
level04.colliders.Tile4_wallNr2349ID = nil
level04.colliders.Tile4_wallNr3350ID = nil
level04.colliders.Tile4_wallNr4351ID = nil
level04.colliders.Tile4_wallNr5352ID = nil
level04.colliders.Tile4_wallNr6353ID = nil
level04.colliders.Tile4_wallNr7354ID = nil
level04.colliders.Tile4_wallNr8355ID = nil
level04.colliders.Tile4_wallNr9356ID = nil
level04.colliders.Tile4_wallNr10357ID = nil
level04.colliders.Tile4_wallNr11358ID = nil
level04.colliders.Tile4_wallNr12359ID = nil
level04.colliders.Tile4_wallNr13360ID = nil
level04.colliders.Tile4_wallNr14361ID = nil
level04.colliders.Tile4_wallNr15362ID = nil
level04.colliders.Tile4_wallNr16363ID = nil
level04.colliders.Tile4_wallNr17364ID = nil
level04.colliders.Tile4_wallNr18365ID = nil
level04.colliders.Tile4_wallNr19366ID = nil
level04.colliders.Tile4_wallNr20367ID = nil
level04.colliders.Tile4_wallNr21368ID = nil
level04.colliders.C_Parent_Tile_41480ID = nil
level04.colliders.C_Parent_Tile_42481ID = nil
level04.colliders.C_Parent_Tile_43482ID = nil
level04.colliders.C_Parent_Tile_4483ID = nil
level04.props = nil
level04.colliders = nil
level04.triggers = nil
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


-------------------------------------level05-----------------------------------------------

level05 = {}
level05.surrounding = { 4, 6 }
level05.load = function()
level05.props = {}
level05.colliders = {}
level05.triggers = {}
level05.props.tile538ID = {}
level05.props.t5s149ID = {}
level05.props.t5s149ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s149ID.transformID = Gear.BindStaticInstance(level05.props.t5s149ID.model)
Transform.SetPosition(level05.props.t5s149ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s149ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s149ID.transformID, {x=0, y=0, z=0})
level05.props.t5s250ID = {}
level05.props.t5s250ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s250ID.transformID = Gear.BindStaticInstance(level05.props.t5s250ID.model)
Transform.SetPosition(level05.props.t5s250ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s250ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s250ID.transformID, {x=0, y=0, z=0})
level05.props.t5s351ID = {}
level05.props.t5s351ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s351ID.transformID = Gear.BindStaticInstance(level05.props.t5s351ID.model)
Transform.SetPosition(level05.props.t5s351ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s351ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s351ID.transformID, {x=0, y=0, z=0})
level05.props.t5s452ID = {}
level05.props.t5s452ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s452ID.transformID = Gear.BindStaticInstance(level05.props.t5s452ID.model)
Transform.SetPosition(level05.props.t5s452ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s452ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s452ID.transformID, {x=0, y=0, z=0})
level05.props.t5s553ID = {}
level05.props.t5s553ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s553ID.transformID = Gear.BindStaticInstance(level05.props.t5s553ID.model)
Transform.SetPosition(level05.props.t5s553ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s553ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s553ID.transformID, {x=0, y=0, z=0})
level05.props.t5s654ID = {}
level05.props.t5s654ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s654ID.transformID = Gear.BindStaticInstance(level05.props.t5s654ID.model)
Transform.SetPosition(level05.props.t5s654ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s654ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s654ID.transformID, {x=0, y=0, z=0})
level05.props.t6s458ID = {}
level05.props.t6s458ID.model = Assets.LoadModel('Models/tile6_s4.model')
level05.props.t6s458ID.transformID = Gear.BindStaticInstance(level05.props.t6s458ID.model)
Transform.SetPosition(level05.props.t6s458ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t6s458ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t6s458ID.transformID, {x=0, y=0, z=0})
end
level05.unload = function()
level05.props.tile538ID = nil
Gear.UnbindInstance(level05.props.t5s149ID.transformID)
level05.props.t5s149ID = nil
Gear.UnbindInstance(level05.props.t5s250ID.transformID)
level05.props.t5s250ID = nil
Gear.UnbindInstance(level05.props.t5s351ID.transformID)
level05.props.t5s351ID = nil
Gear.UnbindInstance(level05.props.t5s452ID.transformID)
level05.props.t5s452ID = nil
Gear.UnbindInstance(level05.props.t5s553ID.transformID)
level05.props.t5s553ID = nil
Gear.UnbindInstance(level05.props.t5s654ID.transformID)
level05.props.t5s654ID = nil
Gear.UnbindInstance(level05.props.t6s458ID.transformID)
level05.props.t6s458ID = nil
level05.props = nil
level05.colliders = nil
level05.triggers = nil
end
levels[5] = level05
-------------------------------------level05-----------------------------------------------


-------------------------------------level06-----------------------------------------------

level06 = {}
level06.surrounding = { 5, 7 }
level06.load = function()
level06.props = {}
level06.colliders = {}
level06.triggers = {}
level06.props.tile639ID = {}
level06.props.t6s155ID = {}
level06.props.t6s155ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s155ID.transformID = Gear.BindStaticInstance(level06.props.t6s155ID.model)
Transform.SetPosition(level06.props.t6s155ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s155ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s155ID.transformID, {x=0, y=0, z=0})
level06.props.t6s256ID = {}
level06.props.t6s256ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s256ID.transformID = Gear.BindStaticInstance(level06.props.t6s256ID.model)
Transform.SetPosition(level06.props.t6s256ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s256ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s256ID.transformID, {x=0, y=0, z=0})
level06.props.t6s357ID = {}
level06.props.t6s357ID.model = Assets.LoadModel('Models/tile6_s3.model')
level06.props.t6s357ID.transformID = Gear.BindStaticInstance(level06.props.t6s357ID.model)
Transform.SetPosition(level06.props.t6s357ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s357ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s357ID.transformID, {x=0, y=0, z=0})
level06.props.t6s559ID = {}
level06.props.t6s559ID.model = Assets.LoadModel('Models/tile6_s5.model')
level06.props.t6s559ID.transformID = Gear.BindStaticInstance(level06.props.t6s559ID.model)
Transform.SetPosition(level06.props.t6s559ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s559ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s559ID.transformID, {x=0, y=0, z=0})
level06.props.t6s660ID = {}
level06.props.t6s660ID.model = Assets.LoadModel('Models/tile6_s6.model')
level06.props.t6s660ID.transformID = Gear.BindStaticInstance(level06.props.t6s660ID.model)
Transform.SetPosition(level06.props.t6s660ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s660ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s660ID.transformID, {x=0, y=0, z=0})
level06.props.t6s761ID = {}
level06.props.t6s761ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s761ID.transformID = Gear.BindStaticInstance(level06.props.t6s761ID.model)
Transform.SetPosition(level06.props.t6s761ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s761ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s761ID.transformID, {x=0, y=0, z=0})
level06.props.t6s862ID = {}
level06.props.t6s862ID.model = Assets.LoadModel('Models/tile6_s8.model')
level06.props.t6s862ID.transformID = Gear.BindStaticInstance(level06.props.t6s862ID.model)
Transform.SetPosition(level06.props.t6s862ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s862ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s862ID.transformID, {x=0, y=0, z=0})
level06.props.t6s963ID = {}
level06.props.t6s963ID.model = Assets.LoadModel('Models/tile6_s9.model')
level06.props.t6s963ID.transformID = Gear.BindStaticInstance(level06.props.t6s963ID.model)
Transform.SetPosition(level06.props.t6s963ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s963ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s963ID.transformID, {x=0, y=0, z=0})
level06.props.t6s1064ID = {}
level06.props.t6s1064ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s1064ID.transformID = Gear.BindStaticInstance(level06.props.t6s1064ID.model)
Transform.SetPosition(level06.props.t6s1064ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1064ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1064ID.transformID, {x=0, y=0, z=0})
end
level06.unload = function()
level06.props.tile639ID = nil
Gear.UnbindInstance(level06.props.t6s155ID.transformID)
level06.props.t6s155ID = nil
Gear.UnbindInstance(level06.props.t6s256ID.transformID)
level06.props.t6s256ID = nil
Gear.UnbindInstance(level06.props.t6s357ID.transformID)
level06.props.t6s357ID = nil
Gear.UnbindInstance(level06.props.t6s559ID.transformID)
level06.props.t6s559ID = nil
Gear.UnbindInstance(level06.props.t6s660ID.transformID)
level06.props.t6s660ID = nil
Gear.UnbindInstance(level06.props.t6s761ID.transformID)
level06.props.t6s761ID = nil
Gear.UnbindInstance(level06.props.t6s862ID.transformID)
level06.props.t6s862ID = nil
Gear.UnbindInstance(level06.props.t6s963ID.transformID)
level06.props.t6s963ID = nil
Gear.UnbindInstance(level06.props.t6s1064ID.transformID)
level06.props.t6s1064ID = nil
level06.props = nil
level06.colliders = nil
level06.triggers = nil
end
levels[6] = level06
-------------------------------------level06-----------------------------------------------


-------------------------------------level07-----------------------------------------------

level07 = {}
level07.surrounding = { 6, 8 }
level07.load = function()
level07.props = {}
level07.colliders = {}
level07.triggers = {}
level07.props.tile740ID = {}
level07.props.t7s165ID = {}
level07.props.t7s165ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s165ID.transformID = Gear.BindStaticInstance(level07.props.t7s165ID.model)
Transform.SetPosition(level07.props.t7s165ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s165ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s165ID.transformID, {x=0, y=0, z=0})
level07.props.t7s266ID = {}
level07.props.t7s266ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s266ID.transformID = Gear.BindStaticInstance(level07.props.t7s266ID.model)
Transform.SetPosition(level07.props.t7s266ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s266ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s266ID.transformID, {x=0, y=0, z=0})
level07.props.t7s367ID = {}
level07.props.t7s367ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s367ID.transformID = Gear.BindStaticInstance(level07.props.t7s367ID.model)
Transform.SetPosition(level07.props.t7s367ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s367ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s367ID.transformID, {x=0, y=0, z=0})
level07.props.t7s468ID = {}
level07.props.t7s468ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s468ID.transformID = Gear.BindStaticInstance(level07.props.t7s468ID.model)
Transform.SetPosition(level07.props.t7s468ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s468ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s468ID.transformID, {x=0, y=0, z=0})
level07.props.t7s569ID = {}
level07.props.t7s569ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s569ID.transformID = Gear.BindStaticInstance(level07.props.t7s569ID.model)
Transform.SetPosition(level07.props.t7s569ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s569ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s569ID.transformID, {x=0, y=0, z=0})
level07.props.t7s670ID = {}
level07.props.t7s670ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s670ID.transformID = Gear.BindStaticInstance(level07.props.t7s670ID.model)
Transform.SetPosition(level07.props.t7s670ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s670ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s670ID.transformID, {x=0, y=0, z=0})
level07.props.t7s771ID = {}
level07.props.t7s771ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s771ID.transformID = Gear.BindStaticInstance(level07.props.t7s771ID.model)
Transform.SetPosition(level07.props.t7s771ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s771ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s771ID.transformID, {x=0, y=0, z=0})
level07.props.t7s872ID = {}
level07.props.t7s872ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s872ID.transformID = Gear.BindStaticInstance(level07.props.t7s872ID.model)
Transform.SetPosition(level07.props.t7s872ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s872ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s872ID.transformID, {x=0, y=0, z=0})
level07.props.t7s973ID = {}
level07.props.t7s973ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s973ID.transformID = Gear.BindStaticInstance(level07.props.t7s973ID.model)
Transform.SetPosition(level07.props.t7s973ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s973ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s973ID.transformID, {x=0, y=0, z=0})
end
level07.unload = function()
level07.props.tile740ID = nil
Gear.UnbindInstance(level07.props.t7s165ID.transformID)
level07.props.t7s165ID = nil
Gear.UnbindInstance(level07.props.t7s266ID.transformID)
level07.props.t7s266ID = nil
Gear.UnbindInstance(level07.props.t7s367ID.transformID)
level07.props.t7s367ID = nil
Gear.UnbindInstance(level07.props.t7s468ID.transformID)
level07.props.t7s468ID = nil
Gear.UnbindInstance(level07.props.t7s569ID.transformID)
level07.props.t7s569ID = nil
Gear.UnbindInstance(level07.props.t7s670ID.transformID)
level07.props.t7s670ID = nil
Gear.UnbindInstance(level07.props.t7s771ID.transformID)
level07.props.t7s771ID = nil
Gear.UnbindInstance(level07.props.t7s872ID.transformID)
level07.props.t7s872ID = nil
Gear.UnbindInstance(level07.props.t7s973ID.transformID)
level07.props.t7s973ID = nil
level07.props = nil
level07.colliders = nil
level07.triggers = nil
end
levels[7] = level07
-------------------------------------level07-----------------------------------------------


-------------------------------------level08-----------------------------------------------

level08 = {}
level08.surrounding = { 7 }
level08.load = function()
level08.props = {}
level08.colliders = {}
level08.triggers = {}
level08.props.tile841ID = {}
level08.props.t8s174ID = {}
level08.props.t8s174ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s174ID.transformID = Gear.BindStaticInstance(level08.props.t8s174ID.model)
Transform.SetPosition(level08.props.t8s174ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s174ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s174ID.transformID, {x=0, y=0, z=0})
level08.props.t8s275ID = {}
level08.props.t8s275ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s275ID.transformID = Gear.BindStaticInstance(level08.props.t8s275ID.model)
Transform.SetPosition(level08.props.t8s275ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s275ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s275ID.transformID, {x=0, y=0, z=0})
level08.props.t8s376ID = {}
level08.props.t8s376ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s376ID.transformID = Gear.BindStaticInstance(level08.props.t8s376ID.model)
Transform.SetPosition(level08.props.t8s376ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s376ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s376ID.transformID, {x=0, y=0, z=0})
end
level08.unload = function()
level08.props.tile841ID = nil
Gear.UnbindInstance(level08.props.t8s174ID.transformID)
level08.props.t8s174ID = nil
Gear.UnbindInstance(level08.props.t8s275ID.transformID)
level08.props.t8s275ID = nil
Gear.UnbindInstance(level08.props.t8s376ID.transformID)
level08.props.t8s376ID = nil
level08.props = nil
level08.colliders = nil
level08.triggers = nil
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
