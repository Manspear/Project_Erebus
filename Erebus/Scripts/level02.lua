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

Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(1)

---------------------------------Heightmap-----------------------------

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
Transform.SetPosition(level01.props.TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.TilePlaceholder2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
level01.props.tile13ID = {}
level01.props.TileSettings4ID = {}
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
level01.props.Bridge373ID = {}
level01.props.Bridge373ID.model = Assets.LoadModel('Models/bridge.model')
level01.props.Bridge373ID.transformID = Gear.BindStaticInstance(level01.props.Bridge373ID.model)
Transform.SetPosition(level01.props.Bridge373ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.Bridge373ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Bridge373ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider11374ID = {}
level01.props.OakTree_NoCollider11374ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11374ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11374ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11374ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11374ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11374ID.transformID, {x=0, y=2.76508, z=0})
level01.props.OakTree_NoCollider12375ID = {}
level01.props.OakTree_NoCollider12375ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12375ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12375ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12375ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12375ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12375ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider13376ID = {}
level01.props.OakTree_NoCollider13376ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13376ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13376ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13376ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13376ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13376ID.transformID, {x=0, y=2.16382, z=0})
level01.props.OakTree_NoCollider14377ID = {}
level01.props.OakTree_NoCollider14377ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14377ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14377ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14377ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14377ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14377ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider151378ID = {}
level01.props.OakTree_NoCollider151378ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151378ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151378ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151378ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151378ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151378ID.transformID, {x=0, y=1.62265, z=0})
level01.props.OakTree_NoCollider16379ID = {}
level01.props.OakTree_NoCollider16379ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16379ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16379ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16379ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16379ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16379ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider17380ID = {}
level01.props.OakTree_NoCollider17380ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17380ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17380ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17380ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17380ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17380ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider18381ID = {}
level01.props.OakTree_NoCollider18381ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18381ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18381ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18381ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18381ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18381ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider19382ID = {}
level01.props.OakTree_NoCollider19382ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19382ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19382ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19382ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19382ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19382ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
level01.props.OakTree_NoCollider110383ID = {}
level01.props.OakTree_NoCollider110383ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider110383ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider110383ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider110383ID.transformID, {x=-1.07374e+08, y=-1.07374e+08, z=-1.07374e+08})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider110383ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree_NoCollider110383ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_Collider384ID = {}
level01.props.OakTree_Collider384ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider384ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider384ID.model)
Transform.SetPosition(level01.props.OakTree_Collider384ID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider384ID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_Collider384ID.transformID, {x=0, y=1.7421, z=-0.00619812})
level01.props.OakTree_Collider1385ID = {}
level01.props.OakTree_Collider1385ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1385ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1385ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1385ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1385ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1385ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider2386ID = {}
level01.props.OakTree_Collider2386ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2386ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2386ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2386ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2386ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2386ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider3387ID = {}
level01.props.OakTree_Collider3387ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3387ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3387ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3387ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3387ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3387ID.transformID, {x=0, y=-1.42165, z=0})
level01.props.PineTree_NoCollider388ID = {}
level01.props.PineTree_NoCollider388ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider388ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider388ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider388ID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider388ID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoCollider388ID.transformID, {x=0.536822, y=0.137189, z=0.401651})
level01.props.PineTree_NoCollider2426ID = {}
level01.props.PineTree_NoCollider2426ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2426ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2426ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2426ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2426ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2426ID.transformID, {x=0, y=2.5061, z=0})
level01.props.PineTree_NoCollider3427ID = {}
level01.props.PineTree_NoCollider3427ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3427ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3427ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3427ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3427ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3427ID.transformID, {x=0, y=1.9694, z=0})
level01.props.PineTree_NoCollider4428ID = {}
level01.props.PineTree_NoCollider4428ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4428ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4428ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4428ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4428ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4428ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree_NoCollider5429ID = {}
level01.props.PineTree_NoCollider5429ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5429ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5429ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5429ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5429ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5429ID.transformID, {x=0, y=2.83677, z=0})

level01.colliders.AutoGenParent483ID = {}
level01.colliders.AutoGenParent483ID.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
level01.colliders.AutoGenParent483ID.collider:SetMaxPos(512.3,78.3839,383.3)
level01.colliders.AutoGenParent483ID.collider:SetPos(0,0,0)
level01.colliders.AutoGenParent483ID1 = {}
level01.colliders.AutoGenParent483ID1.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID1.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID1.collider:SetMinPos(1.74275,-3.32028,33.7004)
level01.colliders.AutoGenParent483ID1.collider:SetMaxPos(276.131,62.9209,237.268)
level01.colliders.AutoGenParent483ID.collider:AddChild(level01.colliders.AutoGenParent483ID1.collider)
level01.colliders.AutoGenParent483ID2 = {}
level01.colliders.AutoGenParent483ID2.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID2.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID2.collider:SetMinPos(3.73167,1.54031,127.7)
level01.colliders.AutoGenParent483ID2.collider:SetMaxPos(55.2591,16.3583,148.212)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID2.collider)
level01.colliders.AutoGenParent483ID3 = {}
level01.colliders.AutoGenParent483ID3.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID3.collider:SetOffset(6,6.83489,143)
level01.colliders.AutoGenParent483ID3.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.AutoGenParent483ID3.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID3.collider)
level01.colliders.AutoGenParent483ID4 = {}
level01.colliders.AutoGenParent483ID4.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID4.collider:SetOffset(10.5,7.12947,140)
level01.colliders.AutoGenParent483ID4.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.AutoGenParent483ID4.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID4.collider)
level01.colliders.AutoGenParent483ID5 = {}
level01.colliders.AutoGenParent483ID5.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID5.collider:SetOffset(17,6.98218,141)
level01.colliders.AutoGenParent483ID5.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID5.collider:SetHalfLengths(0.3,5,4)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID5.collider)
level01.colliders.AutoGenParent483ID6 = {}
level01.colliders.AutoGenParent483ID6.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID6.collider:SetOffset(45,8.60238,129.5)
level01.colliders.AutoGenParent483ID6.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.AutoGenParent483ID6.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID6.collider)
level01.colliders.AutoGenParent483ID7 = {}
level01.colliders.AutoGenParent483ID7.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID7.collider:SetOffset(51.5,8.60238,137)
level01.colliders.AutoGenParent483ID7.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.AutoGenParent483ID7.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID7.collider)
level01.colliders.AutoGenParent483ID8 = {}
level01.colliders.AutoGenParent483ID8.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID8.collider:SetOffset(4.5,6.83489,147.5)
level01.colliders.AutoGenParent483ID8.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID8.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID8.collider)
level01.colliders.AutoGenParent483ID9 = {}
level01.colliders.AutoGenParent483ID9.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID9.collider:SetOffset(24,10.8555,139)
level01.colliders.AutoGenParent483ID9.collider:SetZAxis(0.367737,0,0.92993)
level01.colliders.AutoGenParent483ID9.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID9.collider)
level01.colliders.AutoGenParent483ID10 = {}
level01.colliders.AutoGenParent483ID10.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID10.collider:SetOffset(36.5,8.3078,128)
level01.colliders.AutoGenParent483ID10.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID10.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID10.collider)
level01.colliders.AutoGenParent483ID11 = {}
level01.colliders.AutoGenParent483ID11.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID11.collider:SetOffset(28,7.86593,132)
level01.colliders.AutoGenParent483ID11.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.AutoGenParent483ID11.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID11.collider)
level01.colliders.AutoGenParent483ID12 = {}
level01.colliders.AutoGenParent483ID12.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID12.collider:SetOffset(23,7.71863,138.5)
level01.colliders.AutoGenParent483ID12.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.AutoGenParent483ID12.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.AutoGenParent483ID2.collider:AddChild(level01.colliders.AutoGenParent483ID12.collider)
level01.colliders.AutoGenParent483ID13 = {}
level01.colliders.AutoGenParent483ID13.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID13.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID13.collider:SetMinPos(1.74275,-1.99466,37.7542)
level01.colliders.AutoGenParent483ID13.collider:SetMaxPos(199.172,62.9209,201.134)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID13.collider)
level01.colliders.AutoGenParent483ID14 = {}
level01.colliders.AutoGenParent483ID14.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID14.collider:SetOffset(49,8.01322,186.5)
level01.colliders.AutoGenParent483ID14.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.AutoGenParent483ID14.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID14.collider)
level01.colliders.AutoGenParent483ID15 = {}
level01.colliders.AutoGenParent483ID15.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID15.collider:SetOffset(44,8.01322,187)
level01.colliders.AutoGenParent483ID15.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID15.collider:SetHalfLengths(0.3,5,2)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID15.collider)
level01.colliders.AutoGenParent483ID16 = {}
level01.colliders.AutoGenParent483ID16.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID16.collider:SetOffset(40,8.01322,185.5)
level01.colliders.AutoGenParent483ID16.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.AutoGenParent483ID16.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID16.collider)
level01.colliders.AutoGenParent483ID17 = {}
level01.colliders.AutoGenParent483ID17.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID17.collider:SetOffset(35.5,8.16051,198)
level01.colliders.AutoGenParent483ID17.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID17.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID17.collider)
level01.colliders.AutoGenParent483ID18 = {}
level01.colliders.AutoGenParent483ID18.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID18.collider:SetOffset(3.5,4.03637,196.5)
level01.colliders.AutoGenParent483ID18.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.AutoGenParent483ID18.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID18.collider)
level01.colliders.AutoGenParent483ID19 = {}
level01.colliders.AutoGenParent483ID19.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID19.collider:SetOffset(27,5.36198,196.5)
level01.colliders.AutoGenParent483ID19.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.AutoGenParent483ID19.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID19.collider)
level01.colliders.AutoGenParent483ID20 = {}
level01.colliders.AutoGenParent483ID20.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID20.collider:SetOffset(176.5,56.584,78.5)
level01.colliders.AutoGenParent483ID20.collider:SetZAxis(0.058722,0,-0.998274)
level01.colliders.AutoGenParent483ID20.collider:SetHalfLengths(0.3,5.33421,8.51469)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID20.collider)
level01.colliders.AutoGenParent483ID21 = {}
level01.colliders.AutoGenParent483ID21.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID21.collider:SetOffset(179,56.2498,63.5)
level01.colliders.AutoGenParent483ID21.collider:SetZAxis(0.294086,0,-0.955779)
level01.colliders.AutoGenParent483ID21.collider:SetHalfLengths(0.3,6.67107,6.80074)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID21.collider)
level01.colliders.AutoGenParent483ID22 = {}
level01.colliders.AutoGenParent483ID22.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID22.collider:SetOffset(185,54.5788,51)
level01.colliders.AutoGenParent483ID22.collider:SetZAxis(0.5547,0,-0.83205)
level01.colliders.AutoGenParent483ID22.collider:SetHalfLengths(0.3,6.00264,7.2111)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID22.collider)
level01.colliders.AutoGenParent483ID23 = {}
level01.colliders.AutoGenParent483ID23.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID23.collider:SetOffset(194,53.5761,41.5)
level01.colliders.AutoGenParent483ID23.collider:SetZAxis(0.819232,0,-0.573462)
level01.colliders.AutoGenParent483ID23.collider:SetHalfLengths(0.3,5.66843,6.10328)
level01.colliders.AutoGenParent483ID13.collider:AddChild(level01.colliders.AutoGenParent483ID23.collider)
level01.colliders.AutoGenParent483ID24 = {}
level01.colliders.AutoGenParent483ID24.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID24.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID24.collider:SetMinPos(4.75038,-3.32028,86.9701)
level01.colliders.AutoGenParent483ID24.collider:SetMaxPos(177.299,62.0297,206.174)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID24.collider)
level01.colliders.AutoGenParent483ID25 = {}
level01.colliders.AutoGenParent483ID25.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID25.collider:SetOffset(37.5,8.16051,196.5)
level01.colliders.AutoGenParent483ID25.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.AutoGenParent483ID25.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID25.collider)
level01.colliders.AutoGenParent483ID26 = {}
level01.colliders.AutoGenParent483ID26.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID26.collider:SetOffset(42.5,8.3078,200)
level01.colliders.AutoGenParent483ID26.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.AutoGenParent483ID26.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID26.collider)
level01.colliders.AutoGenParent483ID27 = {}
level01.colliders.AutoGenParent483ID27.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID27.collider:SetOffset(50.5,9.63341,202.5)
level01.colliders.AutoGenParent483ID27.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.AutoGenParent483ID27.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID27.collider)
level01.colliders.AutoGenParent483ID28 = {}
level01.colliders.AutoGenParent483ID28.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID28.collider:SetOffset(6,3.44721,200.5)
level01.colliders.AutoGenParent483ID28.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.AutoGenParent483ID28.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID28.collider)
level01.colliders.AutoGenParent483ID29 = {}
level01.colliders.AutoGenParent483ID29.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID29.collider:SetOffset(7.5,3.44721,203)
level01.colliders.AutoGenParent483ID29.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID29.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID29.collider)
level01.colliders.AutoGenParent483ID30 = {}
level01.colliders.AutoGenParent483ID30.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID30.collider:SetOffset(15,3.29992,202.5)
level01.colliders.AutoGenParent483ID30.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.AutoGenParent483ID30.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID30.collider)
level01.colliders.AutoGenParent483ID31 = {}
level01.colliders.AutoGenParent483ID31.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID31.collider:SetOffset(24.5,3.15263,199.5)
level01.colliders.AutoGenParent483ID31.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.AutoGenParent483ID31.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID31.collider)
level01.colliders.AutoGenParent483ID32 = {}
level01.colliders.AutoGenParent483ID32.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID32.collider:SetOffset(29,7.71863,197)
level01.colliders.AutoGenParent483ID32.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID32.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID32.collider)
level01.colliders.AutoGenParent483ID33 = {}
level01.colliders.AutoGenParent483ID33.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID33.collider:SetOffset(31.5,8.16051,200)
level01.colliders.AutoGenParent483ID33.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID33.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID33.collider)
level01.colliders.AutoGenParent483ID34 = {}
level01.colliders.AutoGenParent483ID34.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID34.collider:SetOffset(176.5,56.8068,92)
level01.colliders.AutoGenParent483ID34.collider:SetZAxis(-0.0995037,0,-0.995037)
level01.colliders.AutoGenParent483ID34.collider:SetHalfLengths(0.3,5.22281,5.02494)
level01.colliders.AutoGenParent483ID24.collider:AddChild(level01.colliders.AutoGenParent483ID34.collider)
level01.colliders.AutoGenParent483ID35 = {}
level01.colliders.AutoGenParent483ID35.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID35.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID35.collider:SetMinPos(31.7559,3.3078,33.7395)
level01.colliders.AutoGenParent483ID35.collider:SetMaxPos(209.166,61.8068,211.174)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID35.collider)
level01.colliders.AutoGenParent483ID36 = {}
level01.colliders.AutoGenParent483ID36.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID36.collider:SetOffset(95,23.1841,192.5)
level01.colliders.AutoGenParent483ID36.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.AutoGenParent483ID36.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID36.collider)
level01.colliders.AutoGenParent483ID37 = {}
level01.colliders.AutoGenParent483ID37.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID37.collider:SetOffset(32.5,8.89696,203.5)
level01.colliders.AutoGenParent483ID37.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID37.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID37.collider)
level01.colliders.AutoGenParent483ID38 = {}
level01.colliders.AutoGenParent483ID38.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID38.collider:SetOffset(34.5,8.45509,207.5)
level01.colliders.AutoGenParent483ID38.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.AutoGenParent483ID38.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID38.collider)
level01.colliders.AutoGenParent483ID39 = {}
level01.colliders.AutoGenParent483ID39.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID39.collider:SetOffset(139.5,48.7857,153)
level01.colliders.AutoGenParent483ID39.collider:SetZAxis(0.351123,0,-0.936329)
level01.colliders.AutoGenParent483ID39.collider:SetHalfLengths(0.3,6.44826,4.272)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID39.collider)
level01.colliders.AutoGenParent483ID40 = {}
level01.colliders.AutoGenParent483ID40.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID40.collider:SetOffset(144.5,50.234,147.5)
level01.colliders.AutoGenParent483ID40.collider:SetZAxis(0.919145,0,-0.393919)
level01.colliders.AutoGenParent483ID40.collider:SetHalfLengths(0.3,5.22281,3.80789)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID40.collider)
level01.colliders.AutoGenParent483ID41 = {}
level01.colliders.AutoGenParent483ID41.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID41.collider:SetOffset(181.5,55.2472,112)
level01.colliders.AutoGenParent483ID41.collider:SetZAxis(-0.287348,0,-0.957826)
level01.colliders.AutoGenParent483ID41.collider:SetHalfLengths(0.3,6.55966,15.6605)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID41.collider)
level01.colliders.AutoGenParent483ID42 = {}
level01.colliders.AutoGenParent483ID42.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID42.collider:SetOffset(202.5,52.9077,36)
level01.colliders.AutoGenParent483ID42.collider:SetZAxis(0.868243,0,-0.496139)
level01.colliders.AutoGenParent483ID42.collider:SetHalfLengths(0.3,5.89124,4.03113)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID42.collider)
level01.colliders.AutoGenParent483ID43 = {}
level01.colliders.AutoGenParent483ID43.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID43.collider:SetOffset(204.5,52.2393,52)
level01.colliders.AutoGenParent483ID43.collider:SetZAxis(-0.83205,0,0.5547)
level01.colliders.AutoGenParent483ID43.collider:SetHalfLengths(0.3,6.44826,5.40833)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID43.collider)
level01.colliders.AutoGenParent483ID44 = {}
level01.colliders.AutoGenParent483ID44.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID44.collider:SetOffset(197,53.6875,59.5)
level01.colliders.AutoGenParent483ID44.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.AutoGenParent483ID44.collider:SetHalfLengths(0.3,5.89124,5.40833)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID44.collider)
level01.colliders.AutoGenParent483ID45 = {}
level01.colliders.AutoGenParent483ID45.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID45.collider:SetOffset(193.5,54.5788,70.5)
level01.colliders.AutoGenParent483ID45.collider:SetZAxis(-0.0766965,0,0.997055)
level01.colliders.AutoGenParent483ID45.collider:SetHalfLengths(0.3,6.00264,6.5192)
level01.colliders.AutoGenParent483ID35.collider:AddChild(level01.colliders.AutoGenParent483ID45.collider)
level01.colliders.AutoGenParent483ID46 = {}
level01.colliders.AutoGenParent483ID46.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID46.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID46.collider:SetMinPos(36.8512,2.71863,33.7004)
level01.colliders.AutoGenParent483ID46.collider:SetMaxPos(225.016,61.584,215.26)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID46.collider)
level01.colliders.AutoGenParent483ID47 = {}
level01.colliders.AutoGenParent483ID47.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID47.collider:SetOffset(55,10.3699,207.5)
level01.colliders.AutoGenParent483ID47.collider:SetZAxis(0.8,0,0.6)
level01.colliders.AutoGenParent483ID47.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID47.collider)
level01.colliders.AutoGenParent483ID48 = {}
level01.colliders.AutoGenParent483ID48.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID48.collider:SetOffset(62,11.4009,208)
level01.colliders.AutoGenParent483ID48.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID48.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID48.collider)
level01.colliders.AutoGenParent483ID49 = {}
level01.colliders.AutoGenParent483ID49.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID49.collider:SetOffset(71.5,15.0832,205.5)
level01.colliders.AutoGenParent483ID49.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.AutoGenParent483ID49.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID49.collider)
level01.colliders.AutoGenParent483ID50 = {}
level01.colliders.AutoGenParent483ID50.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID50.collider:SetOffset(79,18.3236,202.5)
level01.colliders.AutoGenParent483ID50.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.AutoGenParent483ID50.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID50.collider)
level01.colliders.AutoGenParent483ID51 = {}
level01.colliders.AutoGenParent483ID51.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID51.collider:SetOffset(85.5,20.091,198)
level01.colliders.AutoGenParent483ID51.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.AutoGenParent483ID51.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID51.collider)
level01.colliders.AutoGenParent483ID52 = {}
level01.colliders.AutoGenParent483ID52.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID52.collider:SetOffset(40.5,8.60238,213)
level01.colliders.AutoGenParent483ID52.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.AutoGenParent483ID52.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID52.collider)
level01.colliders.AutoGenParent483ID53 = {}
level01.colliders.AutoGenParent483ID53.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID53.collider:SetOffset(139,44.2181,162.5)
level01.colliders.AutoGenParent483ID53.collider:SetZAxis(-0.178885,0,-0.98387)
level01.colliders.AutoGenParent483ID53.collider:SetHalfLengths(0.3,9.56758,5.59017)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID53.collider)
level01.colliders.AutoGenParent483ID54 = {}
level01.colliders.AutoGenParent483ID54.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID54.collider:SetOffset(152,50.4568,146.5)
level01.colliders.AutoGenParent483ID54.collider:SetZAxis(0.992278,0,0.124035)
level01.colliders.AutoGenParent483ID54.collider:SetHalfLengths(0.3,5.22281,4.03113)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID54.collider)
level01.colliders.AutoGenParent483ID55 = {}
level01.colliders.AutoGenParent483ID55.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID55.collider:SetOffset(215.5,52.0165,34.5)
level01.colliders.AutoGenParent483ID55.collider:SetZAxis(0.998618,0,0.0525588)
level01.colliders.AutoGenParent483ID55.collider:SetHalfLengths(0.3,9.01056,9.51315)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID55.collider)
level01.colliders.AutoGenParent483ID56 = {}
level01.colliders.AutoGenParent483ID56.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID56.collider:SetOffset(194,55.5814,84)
level01.colliders.AutoGenParent483ID56.collider:SetZAxis(0.141421,0,0.98995)
level01.colliders.AutoGenParent483ID56.collider:SetHalfLengths(0.3,6.00264,7.07107)
level01.colliders.AutoGenParent483ID46.collider:AddChild(level01.colliders.AutoGenParent483ID56.collider)
level01.colliders.AutoGenParent483ID57 = {}
level01.colliders.AutoGenParent483ID57.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID57.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID57.collider:SetMinPos(43.9576,-1.70009,47.7023)
level01.colliders.AutoGenParent483ID57.collider:SetMaxPos(217.037,62.1411,217.3)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID57.collider)
level01.colliders.AutoGenParent483ID58 = {}
level01.colliders.AutoGenParent483ID58.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID58.collider:SetOffset(105,27.0137,192.5)
level01.colliders.AutoGenParent483ID58.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.AutoGenParent483ID58.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID58.collider)
level01.colliders.AutoGenParent483ID59 = {}
level01.colliders.AutoGenParent483ID59.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID59.collider:SetOffset(101,28.6339,199)
level01.colliders.AutoGenParent483ID59.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID59.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID59.collider)
level01.colliders.AutoGenParent483ID60 = {}
level01.colliders.AutoGenParent483ID60.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID60.collider:SetOffset(95,27.3083,202.5)
level01.colliders.AutoGenParent483ID60.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.AutoGenParent483ID60.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID60.collider)
level01.colliders.AutoGenParent483ID61 = {}
level01.colliders.AutoGenParent483ID61.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID61.collider:SetOffset(51,9.33883,216)
level01.colliders.AutoGenParent483ID61.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.AutoGenParent483ID61.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID61.collider)
level01.colliders.AutoGenParent483ID62 = {}
level01.colliders.AutoGenParent483ID62.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID62.collider:SetOffset(63,8.74967,217)
level01.colliders.AutoGenParent483ID62.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID62.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID62.collider)
level01.colliders.AutoGenParent483ID63 = {}
level01.colliders.AutoGenParent483ID63.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID63.collider:SetOffset(141,40.5418,173)
level01.colliders.AutoGenParent483ID63.collider:SetZAxis(-0.196116,0,-0.980581)
level01.colliders.AutoGenParent483ID63.collider:SetHalfLengths(0.3,8.67635,5.09902)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID63.collider)
level01.colliders.AutoGenParent483ID64 = {}
level01.colliders.AutoGenParent483ID64.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID64.collider:SetOffset(161.5,50.234,149)
level01.colliders.AutoGenParent483ID64.collider:SetZAxis(0.939793,0,0.341743)
level01.colliders.AutoGenParent483ID64.collider:SetHalfLengths(0.3,6.89388,5.85235)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID64.collider)
level01.colliders.AutoGenParent483ID65 = {}
level01.colliders.AutoGenParent483ID65.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID65.collider:SetOffset(213,50.4568,48.5)
level01.colliders.AutoGenParent483ID65.collider:SetZAxis(-0.992278,0,0.124035)
level01.colliders.AutoGenParent483ID65.collider:SetHalfLengths(0.3,6.78247,4.03113)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID65.collider)
level01.colliders.AutoGenParent483ID66 = {}
level01.colliders.AutoGenParent483ID66.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID66.collider:SetOffset(197.5,56.584,98.5)
level01.colliders.AutoGenParent483ID66.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.AutoGenParent483ID66.collider:SetHalfLengths(0.3,5.55702,7.90569)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID66.collider)
level01.colliders.AutoGenParent483ID67 = {}
level01.colliders.AutoGenParent483ID67.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID67.collider:SetOffset(153.5,50.5682,161.5)
level01.colliders.AutoGenParent483ID67.collider:SetZAxis(-0.393919,0,0.919145)
level01.colliders.AutoGenParent483ID67.collider:SetHalfLengths(0.3,6.67107,3.80789)
level01.colliders.AutoGenParent483ID57.collider:AddChild(level01.colliders.AutoGenParent483ID67.collider)
level01.colliders.AutoGenParent483ID68 = {}
level01.colliders.AutoGenParent483ID68.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID68.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID68.collider:SetMinPos(67.8529,7.72652,47.7018)
level01.colliders.AutoGenParent483ID68.collider:SetMaxPos(226.033,62.6981,226.261)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID68.collider)
level01.colliders.AutoGenParent483ID69 = {}
level01.colliders.AutoGenParent483ID69.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID69.collider:SetOffset(111,30.696,195.5)
level01.colliders.AutoGenParent483ID69.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.AutoGenParent483ID69.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID69.collider)
level01.colliders.AutoGenParent483ID70 = {}
level01.colliders.AutoGenParent483ID70.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID70.collider:SetOffset(115.5,31.8743,198)
level01.colliders.AutoGenParent483ID70.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.AutoGenParent483ID70.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID70.collider)
level01.colliders.AutoGenParent483ID71 = {}
level01.colliders.AutoGenParent483ID71.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID71.collider:SetOffset(90,21.5639,213.5)
level01.colliders.AutoGenParent483ID71.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.AutoGenParent483ID71.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID71.collider)
level01.colliders.AutoGenParent483ID72 = {}
level01.colliders.AutoGenParent483ID72.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID72.collider:SetOffset(107,34.6728,203)
level01.colliders.AutoGenParent483ID72.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.AutoGenParent483ID72.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID72.collider)
level01.colliders.AutoGenParent483ID73 = {}
level01.colliders.AutoGenParent483ID73.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID73.collider:SetOffset(89,22.595,207.5)
level01.colliders.AutoGenParent483ID73.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.AutoGenParent483ID73.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID73.collider)
level01.colliders.AutoGenParent483ID74 = {}
level01.colliders.AutoGenParent483ID74.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID74.collider:SetOffset(76,14.1994,221.5)
level01.colliders.AutoGenParent483ID74.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.AutoGenParent483ID74.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID74.collider)
level01.colliders.AutoGenParent483ID75 = {}
level01.colliders.AutoGenParent483ID75.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID75.collider:SetOffset(170,52.1279,152)
level01.colliders.AutoGenParent483ID75.collider:SetZAxis(0.948683,0,0.316228)
level01.colliders.AutoGenParent483ID75.collider:SetHalfLengths(0.3,5.66843,3.16228)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID75.collider)
level01.colliders.AutoGenParent483ID76 = {}
level01.colliders.AutoGenParent483ID76.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID76.collider:SetOffset(221.5,48.4515,48.5)
level01.colliders.AutoGenParent483ID76.collider:SetZAxis(-0.993884,0,-0.110432)
level01.colliders.AutoGenParent483ID76.collider:SetHalfLengths(0.3,7.00528,4.52769)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID76.collider)
level01.colliders.AutoGenParent483ID77 = {}
level01.colliders.AutoGenParent483ID77.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID77.collider:SetOffset(160.5,54.1331,160.5)
level01.colliders.AutoGenParent483ID77.collider:SetZAxis(-0.910366,0,-0.413803)
level01.colliders.AutoGenParent483ID77.collider:SetHalfLengths(0.3,8.56494,6.04152)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID77.collider)
level01.colliders.AutoGenParent483ID78 = {}
level01.colliders.AutoGenParent483ID78.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID78.collider:SetOffset(155.5,48.8971,169)
level01.colliders.AutoGenParent483ID78.collider:SetZAxis(0.658505,0,0.752577)
level01.colliders.AutoGenParent483ID78.collider:SetHalfLengths(0.3,5.44561,5.31507)
level01.colliders.AutoGenParent483ID68.collider:AddChild(level01.colliders.AutoGenParent483ID78.collider)
level01.colliders.AutoGenParent483ID79 = {}
level01.colliders.AutoGenParent483ID79.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID79.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID79.collider:SetMinPos(91.9272,13.029,34.7033)
level01.colliders.AutoGenParent483ID79.collider:SetMaxPos(245.044,61.9183,221.291)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID79.collider)
level01.colliders.AutoGenParent483ID80 = {}
level01.colliders.AutoGenParent483ID80.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID80.collider:SetOffset(121,34.6728,206)
level01.colliders.AutoGenParent483ID80.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID80.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID80.collider)
level01.colliders.AutoGenParent483ID81 = {}
level01.colliders.AutoGenParent483ID81.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID81.collider:SetOffset(98,22.4477,219.5)
level01.colliders.AutoGenParent483ID81.collider:SetZAxis(0.970142,0,0.242536)
level01.colliders.AutoGenParent483ID81.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID81.collider)
level01.colliders.AutoGenParent483ID82 = {}
level01.colliders.AutoGenParent483ID82.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID82.collider:SetOffset(143,38.8707,185)
level01.colliders.AutoGenParent483ID82.collider:SetZAxis(-0.141421,0,-0.98995)
level01.colliders.AutoGenParent483ID82.collider:SetHalfLengths(0.3,6.67107,7.07107)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID82.collider)
level01.colliders.AutoGenParent483ID83 = {}
level01.colliders.AutoGenParent483ID83.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID83.collider:SetOffset(176.5,52.7963,152.5)
level01.colliders.AutoGenParent483ID83.collider:SetZAxis(0.98995,0,-0.141421)
level01.colliders.AutoGenParent483ID83.collider:SetHalfLengths(0.3,6.33685,3.53553)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID83.collider)
level01.colliders.AutoGenParent483ID84 = {}
level01.colliders.AutoGenParent483ID84.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID84.collider:SetOffset(187.5,55.2472,138)
level01.colliders.AutoGenParent483ID84.collider:SetZAxis(0.164399,0,-0.986394)
level01.colliders.AutoGenParent483ID84.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID84.collider)
level01.colliders.AutoGenParent483ID85 = {}
level01.colliders.AutoGenParent483ID85.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID85.collider:SetOffset(187.5,55.2472,133)
level01.colliders.AutoGenParent483ID85.collider:SetZAxis(-0.242536,0,-0.970143)
level01.colliders.AutoGenParent483ID85.collider:SetHalfLengths(0.3,5.1114,2.06155)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID85.collider)
level01.colliders.AutoGenParent483ID86 = {}
level01.colliders.AutoGenParent483ID86.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID86.collider:SetOffset(186.5,55.3586,129)
level01.colliders.AutoGenParent483ID86.collider:SetZAxis(-0.242536,0,-0.970143)
level01.colliders.AutoGenParent483ID86.collider:SetHalfLengths(0.3,5.1114,2.06155)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID86.collider)
level01.colliders.AutoGenParent483ID87 = {}
level01.colliders.AutoGenParent483ID87.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID87.collider:SetOffset(235,48.0059,36.5)
level01.colliders.AutoGenParent483ID87.collider:SetZAxis(0.988936,0,0.14834)
level01.colliders.AutoGenParent483ID87.collider:SetHalfLengths(0.3,7.78511,10.1119)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID87.collider)
level01.colliders.AutoGenParent483ID88 = {}
level01.colliders.AutoGenParent483ID88.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID88.collider:SetOffset(233.5,44.998,51.5)
level01.colliders.AutoGenParent483ID88.collider:SetZAxis(-0.948683,0,-0.316228)
level01.colliders.AutoGenParent483ID88.collider:SetHalfLengths(0.3,8.45354,7.90569)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID88.collider)
level01.colliders.AutoGenParent483ID89 = {}
level01.colliders.AutoGenParent483ID89.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID89.collider:SetOffset(202.5,56.027,116.5)
level01.colliders.AutoGenParent483ID89.collider:SetZAxis(0.231621,0,0.972806)
level01.colliders.AutoGenParent483ID89.collider:SetHalfLengths(0.3,5.89124,10.7935)
level01.colliders.AutoGenParent483ID79.collider:AddChild(level01.colliders.AutoGenParent483ID89.collider)
level01.colliders.AutoGenParent483ID90 = {}
level01.colliders.AutoGenParent483ID90.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID90.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID90.collider:SetMinPos(103.788,20.3935,37.73)
level01.colliders.AutoGenParent483ID90.collider:SetMaxPos(276.131,61.4726,224.274)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID90.collider)
level01.colliders.AutoGenParent483ID91 = {}
level01.colliders.AutoGenParent483ID91.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID91.collider:SetOffset(126,32.9053,211.5)
level01.colliders.AutoGenParent483ID91.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.AutoGenParent483ID91.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID91.collider)
level01.colliders.AutoGenParent483ID92 = {}
level01.colliders.AutoGenParent483ID92.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID92.collider:SetOffset(105.5,26.8664,222.5)
level01.colliders.AutoGenParent483ID92.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID92.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID92.collider)
level01.colliders.AutoGenParent483ID93 = {}
level01.colliders.AutoGenParent483ID93.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID93.collider:SetOffset(111.5,28.3393,222)
level01.colliders.AutoGenParent483ID93.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.AutoGenParent483ID93.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID93.collider)
level01.colliders.AutoGenParent483ID94 = {}
level01.colliders.AutoGenParent483ID94.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID94.collider:SetOffset(116,30.9905,217)
level01.colliders.AutoGenParent483ID94.collider:SetZAxis(0,0,-1)
level01.colliders.AutoGenParent483ID94.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID94.collider)
level01.colliders.AutoGenParent483ID95 = {}
level01.colliders.AutoGenParent483ID95.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID95.collider:SetOffset(260.5,45.2208,45.5)
level01.colliders.AutoGenParent483ID95.collider:SetZAxis(0.900159,0,0.435561)
level01.colliders.AutoGenParent483ID95.collider:SetHalfLengths(0.3,9.23337,17.2192)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID95.collider)
level01.colliders.AutoGenParent483ID96 = {}
level01.colliders.AutoGenParent483ID96.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID96.collider:SetOffset(248,40.9874,57)
level01.colliders.AutoGenParent483ID96.collider:SetZAxis(-0.919145,0,-0.393919)
level01.colliders.AutoGenParent483ID96.collider:SetHalfLengths(0.3,9.01056,7.61577)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID96.collider)
level01.colliders.AutoGenParent483ID97 = {}
level01.colliders.AutoGenParent483ID97.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID97.collider:SetOffset(205.5,55.1358,132.5)
level01.colliders.AutoGenParent483ID97.collider:SetZAxis(0.0905358,0,0.995893)
level01.colliders.AutoGenParent483ID97.collider:SetHalfLengths(0.3,5.33421,5.52268)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID97.collider)
level01.colliders.AutoGenParent483ID98 = {}
level01.colliders.AutoGenParent483ID98.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID98.collider:SetOffset(180,56.027,169)
level01.colliders.AutoGenParent483ID98.collider:SetZAxis(-0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID98.collider:SetHalfLengths(0.3,5.44562,5.09902)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID98.collider)
level01.colliders.AutoGenParent483ID99 = {}
level01.colliders.AutoGenParent483ID99.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID99.collider:SetOffset(163,43.6611,194.5)
level01.colliders.AutoGenParent483ID99.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID99.collider:SetHalfLengths(0.3,8.34213,9.5)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID99.collider)
level01.colliders.AutoGenParent483ID100 = {}
level01.colliders.AutoGenParent483ID100.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID100.collider:SetOffset(221.5,41.3216,126)
level01.colliders.AutoGenParent483ID100.collider:SetZAxis(0.83205,0,-0.5547)
level01.colliders.AutoGenParent483ID100.collider:SetHalfLengths(0.3,5.89124,5.40833)
level01.colliders.AutoGenParent483ID90.collider:AddChild(level01.colliders.AutoGenParent483ID100.collider)
level01.colliders.AutoGenParent483ID101 = {}
level01.colliders.AutoGenParent483ID101.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID101.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID101.collider:SetMinPos(110.866,21.5718,59.7622)
level01.colliders.AutoGenParent483ID101.collider:SetMaxPos(268.183,49.3295,237.268)
level01.colliders.AutoGenParent483ID1.collider:AddChild(level01.colliders.AutoGenParent483ID101.collider)
level01.colliders.AutoGenParent483ID102 = {}
level01.colliders.AutoGenParent483ID102.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID102.collider:SetOffset(115,28.4866,235)
level01.colliders.AutoGenParent483ID102.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.AutoGenParent483ID102.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID102.collider)
level01.colliders.AutoGenParent483ID103 = {}
level01.colliders.AutoGenParent483ID103.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID103.collider:SetOffset(122,30.4014,233.5)
level01.colliders.AutoGenParent483ID103.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.AutoGenParent483ID103.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID103.collider)
level01.colliders.AutoGenParent483ID104 = {}
level01.colliders.AutoGenParent483ID104.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID104.collider:SetOffset(132,33.8575,223.5)
level01.colliders.AutoGenParent483ID104.collider:SetZAxis(0.992278,0,-0.124035)
level01.colliders.AutoGenParent483ID104.collider:SetHalfLengths(0.3,6.67107,4.03113)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID104.collider)
level01.colliders.AutoGenParent483ID105 = {}
level01.colliders.AutoGenParent483ID105.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID105.collider:SetOffset(138.5,35.5286,222)
level01.colliders.AutoGenParent483ID105.collider:SetZAxis(0.928477,0,-0.371391)
level01.colliders.AutoGenParent483ID105.collider:SetHalfLengths(0.3,5.33422,2.69258)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID105.collider)
level01.colliders.AutoGenParent483ID106 = {}
level01.colliders.AutoGenParent483ID106.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID106.collider:SetOffset(143,35.1944,220.5)
level01.colliders.AutoGenParent483ID106.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.AutoGenParent483ID106.collider:SetHalfLengths(0.3,5,2.06155)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID106.collider)
level01.colliders.AutoGenParent483ID107 = {}
level01.colliders.AutoGenParent483ID107.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID107.collider:SetOffset(261.5,38.7593,65)
level01.colliders.AutoGenParent483ID107.collider:SetZAxis(-0.792624,0,-0.609711)
level01.colliders.AutoGenParent483ID107.collider:SetHalfLengths(0.3,7.22809,8.20061)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID107.collider)
level01.colliders.AutoGenParent483ID108 = {}
level01.colliders.AutoGenParent483ID108.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID108.collider:SetOffset(184,42.8813,193)
level01.colliders.AutoGenParent483ID108.collider:SetZAxis(0.919145,0,-0.393919)
level01.colliders.AutoGenParent483ID108.collider:SetHalfLengths(0.3,5.22281,7.61577)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID108.collider)
level01.colliders.AutoGenParent483ID109 = {}
level01.colliders.AutoGenParent483ID109.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID109.collider:SetOffset(201,40.319,176.5)
level01.colliders.AutoGenParent483ID109.collider:SetZAxis(0.841179,0,-0.540758)
level01.colliders.AutoGenParent483ID109.collider:SetHalfLengths(0.3,6.00264,8.32166)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID109.collider)
level01.colliders.AutoGenParent483ID110 = {}
level01.colliders.AutoGenParent483ID110.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID110.collider:SetOffset(221,36.6426,148)
level01.colliders.AutoGenParent483ID110.collider:SetZAxis(-0.196116,0,-0.980581)
level01.colliders.AutoGenParent483ID110.collider:SetHalfLengths(0.3,7.33949,5.09902)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID110.collider)
level01.colliders.AutoGenParent483ID111 = {}
level01.colliders.AutoGenParent483ID111.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID111.collider:SetOffset(231,42.2129,122)
level01.colliders.AutoGenParent483ID111.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID111.collider:SetHalfLengths(0.3,7.11668,5.09902)
level01.colliders.AutoGenParent483ID101.collider:AddChild(level01.colliders.AutoGenParent483ID111.collider)
level01.colliders.AutoGenParent483ID112 = {}
level01.colliders.AutoGenParent483ID112.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID112.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID112.collider:SetMinPos(1.70104,-2.14196,52.7879)
level01.colliders.AutoGenParent483ID112.collider:SetMaxPos(309.235,62.0297,252.296)
level01.colliders.AutoGenParent483ID.collider:AddChild(level01.colliders.AutoGenParent483ID112.collider)
level01.colliders.AutoGenParent483ID113 = {}
level01.colliders.AutoGenParent483ID113.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID113.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID113.collider:SetMinPos(3.70232,1.24573,142.941)
level01.colliders.AutoGenParent483ID113.collider:SetMaxPos(56.2942,18.8731,171.18)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID113.collider)
level01.colliders.AutoGenParent483ID114 = {}
level01.colliders.AutoGenParent483ID114.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID114.collider:SetOffset(55.5,9.33883,145.5)
level01.colliders.AutoGenParent483ID114.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.AutoGenParent483ID114.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID114.collider)
level01.colliders.AutoGenParent483ID115 = {}
level01.colliders.AutoGenParent483ID115.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID115.collider:SetOffset(52.5,9.33883,152)
level01.colliders.AutoGenParent483ID115.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.AutoGenParent483ID115.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID115.collider)
level01.colliders.AutoGenParent483ID116 = {}
level01.colliders.AutoGenParent483ID116.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID116.collider:SetOffset(44,9.48612,157)
level01.colliders.AutoGenParent483ID116.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.AutoGenParent483ID116.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID116.collider)
level01.colliders.AutoGenParent483ID117 = {}
level01.colliders.AutoGenParent483ID117.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID117.collider:SetOffset(35,7.12947,155)
level01.colliders.AutoGenParent483ID117.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.AutoGenParent483ID117.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID117.collider)
level01.colliders.AutoGenParent483ID118 = {}
level01.colliders.AutoGenParent483ID118.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID118.collider:SetOffset(37,7.27676,160)
level01.colliders.AutoGenParent483ID118.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID118.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID118.collider)
level01.colliders.AutoGenParent483ID119 = {}
level01.colliders.AutoGenParent483ID119.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID119.collider:SetOffset(39.5,6.98218,163)
level01.colliders.AutoGenParent483ID119.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.AutoGenParent483ID119.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID119.collider)
level01.colliders.AutoGenParent483ID120 = {}
level01.colliders.AutoGenParent483ID120.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID120.collider:SetOffset(5,6.98218,151.5)
level01.colliders.AutoGenParent483ID120.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID120.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID120.collider)
level01.colliders.AutoGenParent483ID121 = {}
level01.colliders.AutoGenParent483ID121.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID121.collider:SetOffset(4.5,7.42405,159)
level01.colliders.AutoGenParent483ID121.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.AutoGenParent483ID121.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID121.collider)
level01.colliders.AutoGenParent483ID122 = {}
level01.colliders.AutoGenParent483ID122.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID122.collider:SetOffset(7,6.54031,167)
level01.colliders.AutoGenParent483ID122.collider:SetZAxis(0.6,0,0.8)
level01.colliders.AutoGenParent483ID122.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID122.collider)
level01.colliders.AutoGenParent483ID123 = {}
level01.colliders.AutoGenParent483ID123.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID123.collider:SetOffset(39.8641,12.8281,155.087)
level01.colliders.AutoGenParent483ID123.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.colliders.AutoGenParent483ID123.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.colliders.AutoGenParent483ID113.collider:AddChild(level01.colliders.AutoGenParent483ID123.collider)
level01.colliders.AutoGenParent483ID124 = {}
level01.colliders.AutoGenParent483ID124.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID124.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID124.collider:SetMinPos(2.80476,0.361984,163.721)
level01.colliders.AutoGenParent483ID124.collider:SetMaxPos(57.1664,13.0132,182.228)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID124.collider)
level01.colliders.AutoGenParent483ID125 = {}
level01.colliders.AutoGenParent483ID125.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID125.collider:SetOffset(43.5,7.12947,165)
level01.colliders.AutoGenParent483ID125.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.AutoGenParent483ID125.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID125.collider)
level01.colliders.AutoGenParent483ID126 = {}
level01.colliders.AutoGenParent483ID126.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID126.collider:SetOffset(48.5,7.57134,166)
level01.colliders.AutoGenParent483ID126.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID126.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID126.collider)
level01.colliders.AutoGenParent483ID127 = {}
level01.colliders.AutoGenParent483ID127.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID127.collider:SetOffset(54,8.01322,168)
level01.colliders.AutoGenParent483ID127.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.AutoGenParent483ID127.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID127.collider)
level01.colliders.AutoGenParent483ID128 = {}
level01.colliders.AutoGenParent483ID128.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID128.collider:SetOffset(35,7.12947,176.5)
level01.colliders.AutoGenParent483ID128.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.AutoGenParent483ID128.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID128.collider)
level01.colliders.AutoGenParent483ID129 = {}
level01.colliders.AutoGenParent483ID129.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID129.collider:SetOffset(32.5,6.54031,170.5)
level01.colliders.AutoGenParent483ID129.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.AutoGenParent483ID129.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID129.collider)
level01.colliders.AutoGenParent483ID130 = {}
level01.colliders.AutoGenParent483ID130.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID130.collider:SetOffset(29.5,6.54031,168)
level01.colliders.AutoGenParent483ID130.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID130.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID130.collider)
level01.colliders.AutoGenParent483ID131 = {}
level01.colliders.AutoGenParent483ID131.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID131.collider:SetOffset(25,6.09844,170.5)
level01.colliders.AutoGenParent483ID131.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.AutoGenParent483ID131.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID131.collider)
level01.colliders.AutoGenParent483ID132 = {}
level01.colliders.AutoGenParent483ID132.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID132.collider:SetOffset(22,5.80386,174.5)
level01.colliders.AutoGenParent483ID132.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID132.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID132.collider)
level01.colliders.AutoGenParent483ID133 = {}
level01.colliders.AutoGenParent483ID133.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID133.collider:SetOffset(10,6.24573,173.5)
level01.colliders.AutoGenParent483ID133.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID133.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID133.collider)
level01.colliders.AutoGenParent483ID134 = {}
level01.colliders.AutoGenParent483ID134.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID134.collider:SetOffset(6.5,5.65657,179)
level01.colliders.AutoGenParent483ID134.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.AutoGenParent483ID134.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.AutoGenParent483ID124.collider:AddChild(level01.colliders.AutoGenParent483ID134.collider)
level01.colliders.AutoGenParent483ID135 = {}
level01.colliders.AutoGenParent483ID135.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID135.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID135.collider:SetMinPos(1.70104,-2.14196,169.866)
level01.colliders.AutoGenParent483ID135.collider:SetMaxPos(58.2977,21.9153,196.22)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID135.collider)
level01.colliders.AutoGenParent483ID136 = {}
level01.colliders.AutoGenParent483ID136.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID136.collider:SetOffset(57.5,8.01322,171)
level01.colliders.AutoGenParent483ID136.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID136.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID136.collider)
level01.colliders.AutoGenParent483ID137 = {}
level01.colliders.AutoGenParent483ID137.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID137.collider:SetOffset(57.5,8.01322,176)
level01.colliders.AutoGenParent483ID137.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.AutoGenParent483ID137.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID137.collider)
level01.colliders.AutoGenParent483ID138 = {}
level01.colliders.AutoGenParent483ID138.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID138.collider:SetOffset(54.5,8.01322,183)
level01.colliders.AutoGenParent483ID138.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.AutoGenParent483ID138.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID138.collider)
level01.colliders.AutoGenParent483ID139 = {}
level01.colliders.AutoGenParent483ID139.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID139.collider:SetOffset(37,7.71863,182)
level01.colliders.AutoGenParent483ID139.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.AutoGenParent483ID139.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID139.collider)
level01.colliders.AutoGenParent483ID140 = {}
level01.colliders.AutoGenParent483ID140.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID140.collider:SetOffset(23.5,5.80386,179.5)
level01.colliders.AutoGenParent483ID140.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.AutoGenParent483ID140.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID140.collider)
level01.colliders.AutoGenParent483ID141 = {}
level01.colliders.AutoGenParent483ID141.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID141.collider:SetOffset(32,5.50927,189.5)
level01.colliders.AutoGenParent483ID141.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.AutoGenParent483ID141.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID141.collider)
level01.colliders.AutoGenParent483ID142 = {}
level01.colliders.AutoGenParent483ID142.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID142.collider:SetOffset(2.5,5.36198,188)
level01.colliders.AutoGenParent483ID142.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.AutoGenParent483ID142.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID142.collider)
level01.colliders.AutoGenParent483ID143 = {}
level01.colliders.AutoGenParent483ID143.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID143.collider:SetOffset(23,4.33095,190.5)
level01.colliders.AutoGenParent483ID143.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.AutoGenParent483ID143.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID143.collider)
level01.colliders.AutoGenParent483ID144 = {}
level01.colliders.AutoGenParent483ID144.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID144.collider:SetOffset(6.18867,8.53125,180.735)
level01.colliders.AutoGenParent483ID144.collider:SetZAxis(-0.891114,0,-0.453779)
level01.colliders.AutoGenParent483ID144.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID144.collider)
level01.colliders.AutoGenParent483ID145 = {}
level01.colliders.AutoGenParent483ID145.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID145.collider:SetOffset(37.7154,11.4688,182.582)
level01.colliders.AutoGenParent483ID145.collider:SetZAxis(-0.988898,0,0.148599)
level01.colliders.AutoGenParent483ID145.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.colliders.AutoGenParent483ID135.collider:AddChild(level01.colliders.AutoGenParent483ID145.collider)
level01.colliders.AutoGenParent483ID146 = {}
level01.colliders.AutoGenParent483ID146.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID146.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID146.collider:SetMinPos(83.8378,3.74966,140.889)
level01.colliders.AutoGenParent483ID146.collider:SetMaxPos(187.279,62.0297,235.252)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID146.collider)
level01.colliders.AutoGenParent483ID147 = {}
level01.colliders.AutoGenParent483ID147.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID147.collider:SetOffset(114,36.1457,210.5)
level01.colliders.AutoGenParent483ID147.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.AutoGenParent483ID147.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID147.collider)
level01.colliders.AutoGenParent483ID148 = {}
level01.colliders.AutoGenParent483ID148.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID148.collider:SetOffset(91,15.6723,230.5)
level01.colliders.AutoGenParent483ID148.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.AutoGenParent483ID148.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID148.collider)
level01.colliders.AutoGenParent483ID149 = {}
level01.colliders.AutoGenParent483ID149.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID149.collider:SetOffset(132.5,34.0803,208.5)
level01.colliders.AutoGenParent483ID149.collider:SetZAxis(0.874157,0,-0.485643)
level01.colliders.AutoGenParent483ID149.collider:SetHalfLengths(0.3,5.66843,5.14782)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID149.collider)
level01.colliders.AutoGenParent483ID150 = {}
level01.colliders.AutoGenParent483ID150.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID150.collider:SetOffset(139.5,34.7488,202.5)
level01.colliders.AutoGenParent483ID150.collider:SetZAxis(0.581238,0,-0.813733)
level01.colliders.AutoGenParent483ID150.collider:SetHalfLengths(0.3,7.22809,4.30116)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID150.collider)
level01.colliders.AutoGenParent483ID151 = {}
level01.colliders.AutoGenParent483ID151.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID151.collider:SetOffset(143,36.9769,195.5)
level01.colliders.AutoGenParent483ID151.collider:SetZAxis(0.274721,0,-0.961524)
level01.colliders.AutoGenParent483ID151.collider:SetHalfLengths(0.3,6.89388,3.64005)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID151.collider)
level01.colliders.AutoGenParent483ID152 = {}
level01.colliders.AutoGenParent483ID152.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID152.collider:SetOffset(182,54.1331,150.5)
level01.colliders.AutoGenParent483ID152.collider:SetZAxis(0.8,0,-0.6)
level01.colliders.AutoGenParent483ID152.collider:SetHalfLengths(0.3,5.66843,2.5)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID152.collider)
level01.colliders.AutoGenParent483ID153 = {}
level01.colliders.AutoGenParent483ID153.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID153.collider:SetOffset(184.5,54.8016,147.5)
level01.colliders.AutoGenParent483ID153.collider:SetZAxis(0.316228,0,-0.948683)
level01.colliders.AutoGenParent483ID153.collider:SetHalfLengths(0.3,5.77983,1.58114)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID153.collider)
level01.colliders.AutoGenParent483ID154 = {}
level01.colliders.AutoGenParent483ID154.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID154.collider:SetOffset(186,55.5814,143.5)
level01.colliders.AutoGenParent483ID154.collider:SetZAxis(0.371391,0,-0.928477)
level01.colliders.AutoGenParent483ID154.collider:SetHalfLengths(0.3,5.33421,2.69258)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID154.collider)
level01.colliders.AutoGenParent483ID155 = {}
level01.colliders.AutoGenParent483ID155.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID155.collider:SetOffset(170.5,55.5814,165.5)
level01.colliders.AutoGenParent483ID155.collider:SetZAxis(-0.874157,0,-0.485643)
level01.colliders.AutoGenParent483ID155.collider:SetHalfLengths(0.3,6.44826,5.14782)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID155.collider)
level01.colliders.AutoGenParent483ID156 = {}
level01.colliders.AutoGenParent483ID156.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID156.collider:SetOffset(161,48.4515,179)
level01.colliders.AutoGenParent483ID156.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.AutoGenParent483ID156.collider:SetHalfLengths(0.3,9.7904,6.32456)
level01.colliders.AutoGenParent483ID146.collider:AddChild(level01.colliders.AutoGenParent483ID156.collider)
level01.colliders.AutoGenParent483ID157 = {}
level01.colliders.AutoGenParent483ID157.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID157.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID157.collider:SetMinPos(97.9544,11.7034,128.937)
level01.colliders.AutoGenParent483ID157.collider:SetMaxPos(220.293,61.027,237.297)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID157.collider)
level01.colliders.AutoGenParent483ID158 = {}
level01.colliders.AutoGenParent483ID158.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID158.collider:SetOffset(104.5,22.595,236)
level01.colliders.AutoGenParent483ID158.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.AutoGenParent483ID158.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID158.collider)
level01.colliders.AutoGenParent483ID159 = {}
level01.colliders.AutoGenParent483ID159.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID159.collider:SetOffset(125.5,32.1689,229)
level01.colliders.AutoGenParent483ID159.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.AutoGenParent483ID159.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID159.collider)
level01.colliders.AutoGenParent483ID160 = {}
level01.colliders.AutoGenParent483ID160.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID160.collider:SetOffset(127,32.758,224)
level01.colliders.AutoGenParent483ID160.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID160.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID160.collider)
level01.colliders.AutoGenParent483ID161 = {}
level01.colliders.AutoGenParent483ID161.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID161.collider:SetOffset(206.5,55.47,143.5)
level01.colliders.AutoGenParent483ID161.collider:SetZAxis(0.0905358,0,0.995893)
level01.colliders.AutoGenParent483ID161.collider:SetHalfLengths(0.3,5.22281,5.52268)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID161.collider)
level01.colliders.AutoGenParent483ID162 = {}
level01.colliders.AutoGenParent483ID162.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID162.collider:SetOffset(205,55.2472,154)
level01.colliders.AutoGenParent483ID162.collider:SetZAxis(-0.371391,0,0.928477)
level01.colliders.AutoGenParent483ID162.collider:SetHalfLengths(0.3,5.22281,5.38516)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID162.collider)
level01.colliders.AutoGenParent483ID163 = {}
level01.colliders.AutoGenParent483ID163.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID163.collider:SetOffset(198.5,55.0244,163.5)
level01.colliders.AutoGenParent483ID163.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID163.collider:SetHalfLengths(0.3,5.77983,6.36396)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID163.collider)
level01.colliders.AutoGenParent483ID164 = {}
level01.colliders.AutoGenParent483ID164.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID164.collider:SetOffset(189.5,55.8042,169)
level01.colliders.AutoGenParent483ID164.collider:SetZAxis(-0.976187,0,0.21693)
level01.colliders.AutoGenParent483ID164.collider:SetHalfLengths(0.3,5.22281,4.60977)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID164.collider)
level01.colliders.AutoGenParent483ID165 = {}
level01.colliders.AutoGenParent483ID165.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID165.collider:SetOffset(170,40.319,200)
level01.colliders.AutoGenParent483ID165.collider:SetZAxis(0.868243,0,-0.496139)
level01.colliders.AutoGenParent483ID165.collider:SetHalfLengths(0.3,7.5623,8.06226)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID165.collider)
level01.colliders.AutoGenParent483ID166 = {}
level01.colliders.AutoGenParent483ID166.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID166.collider:SetOffset(218.5,38.9821,136)
level01.colliders.AutoGenParent483ID166.collider:SetZAxis(-0.209529,0,-0.977802)
level01.colliders.AutoGenParent483ID166.collider:SetHalfLengths(0.3,7.33949,7.15891)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID166.collider)
level01.colliders.AutoGenParent483ID167 = {}
level01.colliders.AutoGenParent483ID167.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID167.collider:SetOffset(163.885,45.0938,193.24)
level01.colliders.AutoGenParent483ID167.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID167.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level01.colliders.AutoGenParent483ID157.collider:AddChild(level01.colliders.AutoGenParent483ID167.collider)
level01.colliders.AutoGenParent483ID168 = {}
level01.colliders.AutoGenParent483ID168.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID168.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID168.collider:SetMinPos(144.788,29.3031,120.741)
level01.colliders.AutoGenParent483ID168.collider:SetMaxPos(248.151,49.998,233.03)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID168.collider)
level01.colliders.AutoGenParent483ID169 = {}
level01.colliders.AutoGenParent483ID169.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID169.collider:SetOffset(146.5,35.1944,221.5)
level01.colliders.AutoGenParent483ID169.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID169.collider:SetHalfLengths(0.3,5.89124,2.12132)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID169.collider)
level01.colliders.AutoGenParent483ID170 = {}
level01.colliders.AutoGenParent483ID170.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID170.collider:SetOffset(148.5,36.0856,228)
level01.colliders.AutoGenParent483ID170.collider:SetZAxis(0.0995037,0,0.995037)
level01.colliders.AutoGenParent483ID170.collider:SetHalfLengths(0.3,6.00264,5.02494)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID170.collider)
level01.colliders.AutoGenParent483ID171 = {}
level01.colliders.AutoGenParent483ID171.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID171.collider:SetOffset(192.5,42.6585,185.5)
level01.colliders.AutoGenParent483ID171.collider:SetZAxis(0.316228,0,-0.948683)
level01.colliders.AutoGenParent483ID171.collider:SetHalfLengths(0.3,7.33949,4.74342)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID171.collider)
level01.colliders.AutoGenParent483ID172 = {}
level01.colliders.AutoGenParent483ID172.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID172.collider:SetOffset(213,39.3163,166.5)
level01.colliders.AutoGenParent483ID172.collider:SetZAxis(0.672673,0,-0.73994)
level01.colliders.AutoGenParent483ID172.collider:SetHalfLengths(0.3,7.89651,7.43303)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID172.collider)
level01.colliders.AutoGenParent483ID173 = {}
level01.colliders.AutoGenParent483ID173.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID173.collider:SetOffset(219,36.4198,158)
level01.colliders.AutoGenParent483ID173.collider:SetZAxis(0.316228,0,-0.948683)
level01.colliders.AutoGenParent483ID173.collider:SetHalfLengths(0.3,5.1114,3.16228)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID173.collider)
level01.colliders.AutoGenParent483ID174 = {}
level01.colliders.AutoGenParent483ID174.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID174.collider:SetOffset(222,36.5312,153.5)
level01.colliders.AutoGenParent483ID174.collider:SetZAxis(0.8,0,-0.6)
level01.colliders.AutoGenParent483ID174.collider:SetHalfLengths(0.3,5.1114,2.5)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID174.collider)
level01.colliders.AutoGenParent483ID175 = {}
level01.colliders.AutoGenParent483ID175.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID175.collider:SetOffset(228.5,36.6426,150.5)
level01.colliders.AutoGenParent483ID175.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.AutoGenParent483ID175.collider:SetHalfLengths(0.3,5.1114,4.74342)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID175.collider)
level01.colliders.AutoGenParent483ID176 = {}
level01.colliders.AutoGenParent483ID176.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID176.collider:SetOffset(238,37.3111,135)
level01.colliders.AutoGenParent483ID176.collider:SetZAxis(-0.707107,0,-0.707107)
level01.colliders.AutoGenParent483ID176.collider:SetHalfLengths(0.3,6.00264,2.82843)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID176.collider)
level01.colliders.AutoGenParent483ID177 = {}
level01.colliders.AutoGenParent483ID177.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID177.collider:SetOffset(242,40.0962,124.5)
level01.colliders.AutoGenParent483ID177.collider:SetZAxis(0.863779,0,0.503871)
level01.colliders.AutoGenParent483ID177.collider:SetHalfLengths(0.3,7.11668,6.94622)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID177.collider)
level01.colliders.AutoGenParent483ID178 = {}
level01.colliders.AutoGenParent483ID178.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID178.collider:SetOffset(235,42.375,133.125)
level01.colliders.AutoGenParent483ID178.collider:SetZAxis(-0.485958,0,-0.873982)
level01.colliders.AutoGenParent483ID178.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level01.colliders.AutoGenParent483ID168.collider:AddChild(level01.colliders.AutoGenParent483ID178.collider)
level01.colliders.AutoGenParent483ID179 = {}
level01.colliders.AutoGenParent483ID179.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID179.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID179.collider:SetMinPos(148.703,30.64,69.8112)
level01.colliders.AutoGenParent483ID179.collider:SetMaxPos(285.233,51.2525,240.042)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID179.collider)
level01.colliders.AutoGenParent483ID180 = {}
level01.colliders.AutoGenParent483ID180.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID180.collider:SetOffset(149.5,37.0883,236.5)
level01.colliders.AutoGenParent483ID180.collider:SetZAxis(0.141421,0,0.98995)
level01.colliders.AutoGenParent483ID180.collider:SetHalfLengths(0.3,5.1114,3.53553)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID180.collider)
level01.colliders.AutoGenParent483ID181 = {}
level01.colliders.AutoGenParent483ID181.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID181.collider:SetOffset(177,41.433,212)
level01.colliders.AutoGenParent483ID181.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.AutoGenParent483ID181.collider:SetHalfLengths(0.3,5.22281,2.23607)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID181.collider)
level01.colliders.AutoGenParent483ID182 = {}
level01.colliders.AutoGenParent483ID182.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID182.collider:SetOffset(180.5,41.6558,208.5)
level01.colliders.AutoGenParent483ID182.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.AutoGenParent483ID182.collider:SetHalfLengths(0.3,5.22281,2.91548)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID182.collider)
level01.colliders.AutoGenParent483ID183 = {}
level01.colliders.AutoGenParent483ID183.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID183.collider:SetOffset(185.5,41.8786,206.5)
level01.colliders.AutoGenParent483ID183.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID183.collider:SetHalfLengths(0.3,5.55702,2.54951)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID183.collider)
level01.colliders.AutoGenParent483ID184 = {}
level01.colliders.AutoGenParent483ID184.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID184.collider:SetOffset(220.5,36.0856,175)
level01.colliders.AutoGenParent483ID184.collider:SetZAxis(0.573462,0,-0.819232)
level01.colliders.AutoGenParent483ID184.collider:SetHalfLengths(0.3,5.44562,6.10328)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID184.collider)
level01.colliders.AutoGenParent483ID185 = {}
level01.colliders.AutoGenParent483ID185.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID185.collider:SetOffset(276.5,39.5392,80.5)
level01.colliders.AutoGenParent483ID185.collider:SetZAxis(-0.629198,0,-0.777245)
level01.colliders.AutoGenParent483ID185.collider:SetHalfLengths(0.3,5.77983,13.5093)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID185.collider)
level01.colliders.AutoGenParent483ID186 = {}
level01.colliders.AutoGenParent483ID186.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID186.collider:SetOffset(236.5,36.5312,145)
level01.colliders.AutoGenParent483ID186.collider:SetZAxis(0.658505,0,-0.752577)
level01.colliders.AutoGenParent483ID186.collider:SetHalfLengths(0.3,5.22281,5.31507)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID186.collider)
level01.colliders.AutoGenParent483ID187 = {}
level01.colliders.AutoGenParent483ID187.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID187.collider:SetOffset(240,36.754,139)
level01.colliders.AutoGenParent483ID187.collider:SetZAxis(0,0,-1)
level01.colliders.AutoGenParent483ID187.collider:SetHalfLengths(0.3,5.55702,2)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID187.collider)
level01.colliders.AutoGenParent483ID188 = {}
level01.colliders.AutoGenParent483ID188.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID188.collider:SetOffset(253,37.9795,123)
level01.colliders.AutoGenParent483ID188.collider:SetZAxis(0.707107,0,-0.707107)
level01.colliders.AutoGenParent483ID188.collider:SetHalfLengths(0.3,5.55702,7.07107)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID188.collider)
level01.colliders.AutoGenParent483ID189 = {}
level01.colliders.AutoGenParent483ID189.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID189.collider:SetOffset(176.796,45.2188,214.625)
level01.colliders.AutoGenParent483ID189.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level01.colliders.AutoGenParent483ID189.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level01.colliders.AutoGenParent483ID179.collider:AddChild(level01.colliders.AutoGenParent483ID189.collider)
level01.colliders.AutoGenParent483ID190 = {}
level01.colliders.AutoGenParent483ID190.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID190.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID190.collider:SetMinPos(175.706,30.1944,52.7879)
level01.colliders.AutoGenParent483ID190.collider:SetMaxPos(290.212,47.5471,219.059)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID190.collider)
level01.colliders.AutoGenParent483ID191 = {}
level01.colliders.AutoGenParent483ID191.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID191.collider:SetOffset(283,40.9874,60)
level01.colliders.AutoGenParent483ID191.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID191.collider:SetHalfLengths(0.3,5.33421,9.8995)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID191.collider)
level01.colliders.AutoGenParent483ID192 = {}
level01.colliders.AutoGenParent483ID192.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID192.collider:SetOffset(176.5,41.9901,216.5)
level01.colliders.AutoGenParent483ID192.collider:SetZAxis(-0.196116,0,-0.980581)
level01.colliders.AutoGenParent483ID192.collider:SetHalfLengths(0.3,5.55702,2.54951)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID192.collider)
level01.colliders.AutoGenParent483ID193 = {}
level01.colliders.AutoGenParent483ID193.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID193.collider:SetOffset(190.5,41.3216,205.5)
level01.colliders.AutoGenParent483ID193.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID193.collider:SetHalfLengths(0.3,5.66843,2.54951)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID193.collider)
level01.colliders.AutoGenParent483ID194 = {}
level01.colliders.AutoGenParent483ID194.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID194.collider:SetOffset(198,40.6532,203)
level01.colliders.AutoGenParent483ID194.collider:SetZAxis(0.928477,0,-0.371391)
level01.colliders.AutoGenParent483ID194.collider:SetHalfLengths(0.3,6.00264,5.38516)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID194.collider)
level01.colliders.AutoGenParent483ID195 = {}
level01.colliders.AutoGenParent483ID195.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID195.collider:SetOffset(207.5,38.9821,191)
level01.colliders.AutoGenParent483ID195.collider:SetZAxis(0.287348,0,-0.957826)
level01.colliders.AutoGenParent483ID195.collider:SetHalfLengths(0.3,6.22545,5.22015)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID195.collider)
level01.colliders.AutoGenParent483ID196 = {}
level01.colliders.AutoGenParent483ID196.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID196.collider:SetOffset(211,37.7567,184.5)
level01.colliders.AutoGenParent483ID196.collider:SetZAxis(0.8,0,-0.6)
level01.colliders.AutoGenParent483ID196.collider:SetHalfLengths(0.3,5.77983,2.5)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID196.collider)
level01.colliders.AutoGenParent483ID197 = {}
level01.colliders.AutoGenParent483ID197.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID197.collider:SetOffset(215,36.9769,181.5)
level01.colliders.AutoGenParent483ID197.collider:SetZAxis(0.8,0,-0.6)
level01.colliders.AutoGenParent483ID197.collider:SetHalfLengths(0.3,5.89124,2.5)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID197.collider)
level01.colliders.AutoGenParent483ID198 = {}
level01.colliders.AutoGenParent483ID198.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID198.collider:SetOffset(227.5,35.64,167.5)
level01.colliders.AutoGenParent483ID198.collider:SetZAxis(0.813733,0,-0.581238)
level01.colliders.AutoGenParent483ID198.collider:SetHalfLengths(0.3,5,4.30116)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID198.collider)
level01.colliders.AutoGenParent483ID199 = {}
level01.colliders.AutoGenParent483ID199.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID199.collider:SetOffset(237.5,35.64,159.5)
level01.colliders.AutoGenParent483ID199.collider:SetZAxis(0.763386,0,-0.645942)
level01.colliders.AutoGenParent483ID199.collider:SetHalfLengths(0.3,5.44562,8.51469)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID199.collider)
level01.colliders.AutoGenParent483ID200 = {}
level01.colliders.AutoGenParent483ID200.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID200.collider:SetOffset(263.5,37.4225,113.5)
level01.colliders.AutoGenParent483ID200.collider:SetZAxis(0.773957,0,-0.633238)
level01.colliders.AutoGenParent483ID200.collider:SetHalfLengths(0.3,5.44562,7.10634)
level01.colliders.AutoGenParent483ID190.collider:AddChild(level01.colliders.AutoGenParent483ID200.collider)
level01.colliders.AutoGenParent483ID201 = {}
level01.colliders.AutoGenParent483ID201.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID201.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID201.collider:SetMinPos(149.7,26.2952,105.702)
level01.colliders.AutoGenParent483ID201.collider:SetMaxPos(298.031,56.0138,250.277)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID201.collider)
level01.colliders.AutoGenParent483ID202 = {}
level01.colliders.AutoGenParent483ID202.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID202.collider:SetOffset(150,37.1997,241.5)
level01.colliders.AutoGenParent483ID202.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID202.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID202.collider)
level01.colliders.AutoGenParent483ID203 = {}
level01.colliders.AutoGenParent483ID203.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID203.collider:SetOffset(158.5,37.1997,246.5)
level01.colliders.AutoGenParent483ID203.collider:SetZAxis(0.924678,0,0.38075)
level01.colliders.AutoGenParent483ID203.collider:SetHalfLengths(0.3,10.9044,9.19239)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID203.collider)
level01.colliders.AutoGenParent483ID204 = {}
level01.colliders.AutoGenParent483ID204.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID204.collider:SetOffset(191.5,48.3401,228)
level01.colliders.AutoGenParent483ID204.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID204.collider:SetHalfLengths(0.3,6.44826,3.5)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID204.collider)
level01.colliders.AutoGenParent483ID205 = {}
level01.colliders.AutoGenParent483ID205.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID205.collider:SetOffset(183.5,46.8918,226)
level01.colliders.AutoGenParent483ID205.collider:SetZAxis(-0.913812,0,-0.406139)
level01.colliders.AutoGenParent483ID205.collider:SetHalfLengths(0.3,9.12197,4.92443)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID205.collider)
level01.colliders.AutoGenParent483ID206 = {}
level01.colliders.AutoGenParent483ID206.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID206.collider:SetOffset(178,42.7699,221.5)
level01.colliders.AutoGenParent483ID206.collider:SetZAxis(-0.371391,0,-0.928477)
level01.colliders.AutoGenParent483ID206.collider:SetHalfLengths(0.3,5.77983,2.69258)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID206.collider)
level01.colliders.AutoGenParent483ID207 = {}
level01.colliders.AutoGenParent483ID207.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID207.collider:SetOffset(204.5,39.6506,198.5)
level01.colliders.AutoGenParent483ID207.collider:SetZAxis(0.514496,0,-0.857493)
level01.colliders.AutoGenParent483ID207.collider:SetHalfLengths(0.3,5.66843,2.91548)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID207.collider)
level01.colliders.AutoGenParent483ID208 = {}
level01.colliders.AutoGenParent483ID208.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID208.collider:SetOffset(249.5,36.0856,148.5)
level01.colliders.AutoGenParent483ID208.collider:SetZAxis(0.707107,0,-0.707107)
level01.colliders.AutoGenParent483ID208.collider:SetHalfLengths(0.3,5.77983,7.77817)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID208.collider)
level01.colliders.AutoGenParent483ID209 = {}
level01.colliders.AutoGenParent483ID209.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID209.collider:SetOffset(258,36.8654,140)
level01.colliders.AutoGenParent483ID209.collider:SetZAxis(0.707107,0,-0.707107)
level01.colliders.AutoGenParent483ID209.collider:SetHalfLengths(0.3,5.44562,4.24264)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID209.collider)
level01.colliders.AutoGenParent483ID210 = {}
level01.colliders.AutoGenParent483ID210.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID210.collider:SetOffset(264,37.3111,134.5)
level01.colliders.AutoGenParent483ID210.collider:SetZAxis(0.768221,0,-0.640184)
level01.colliders.AutoGenParent483ID210.collider:SetHalfLengths(0.3,5.1114,3.90512)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID210.collider)
level01.colliders.AutoGenParent483ID211 = {}
level01.colliders.AutoGenParent483ID211.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID211.collider:SetOffset(283.5,36.9769,107.5)
level01.colliders.AutoGenParent483ID211.collider:SetZAxis(0.994692,0,-0.102899)
level01.colliders.AutoGenParent483ID211.collider:SetHalfLengths(0.3,6.22545,14.5774)
level01.colliders.AutoGenParent483ID201.collider:AddChild(level01.colliders.AutoGenParent483ID211.collider)
level01.colliders.AutoGenParent483ID212 = {}
level01.colliders.AutoGenParent483ID212.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID212.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID212.collider:SetMinPos(166.951,31.8654,66.8138)
level01.colliders.AutoGenParent483ID212.collider:SetMaxPos(309.235,57.4621,252.296)
level01.colliders.AutoGenParent483ID112.collider:AddChild(level01.colliders.AutoGenParent483ID212.collider)
level01.colliders.AutoGenParent483ID213 = {}
level01.colliders.AutoGenParent483ID213.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID213.collider:SetOffset(299.5,41.3216,79)
level01.colliders.AutoGenParent483ID213.collider:SetZAxis(0.620703,0,0.784046)
level01.colliders.AutoGenParent483ID213.collider:SetHalfLengths(0.3,6.33685,15.3052)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID213.collider)
level01.colliders.AutoGenParent483ID214 = {}
level01.colliders.AutoGenParent483ID214.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID214.collider:SetOffset(173,43.1041,251)
level01.colliders.AutoGenParent483ID214.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.AutoGenParent483ID214.collider:SetHalfLengths(0.3,9.01056,6.08276)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID214.collider)
level01.colliders.AutoGenParent483ID215 = {}
level01.colliders.AutoGenParent483ID215.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID215.collider:SetOffset(212.5,51.5708,223.5)
level01.colliders.AutoGenParent483ID215.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.AutoGenParent483ID215.collider:SetHalfLengths(0.3,5.89124,4.74342)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID215.collider)
level01.colliders.AutoGenParent483ID216 = {}
level01.colliders.AutoGenParent483ID216.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID216.collider:SetOffset(205,50.6796,226)
level01.colliders.AutoGenParent483ID216.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.AutoGenParent483ID216.collider:SetHalfLengths(0.3,6.11405,3.16228)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID216.collider)
level01.colliders.AutoGenParent483ID217 = {}
level01.colliders.AutoGenParent483ID217.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID217.collider:SetOffset(198.5,49.5656,227.5)
level01.colliders.AutoGenParent483ID217.collider:SetZAxis(-0.98995,0,0.141421)
level01.colliders.AutoGenParent483ID217.collider:SetHalfLengths(0.3,6.22544,3.53553)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID217.collider)
level01.colliders.AutoGenParent483ID218 = {}
level01.colliders.AutoGenParent483ID218.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID218.collider:SetOffset(269,37.4225,131)
level01.colliders.AutoGenParent483ID218.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.AutoGenParent483ID218.collider:SetHalfLengths(0.3,5.1114,2.23607)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID218.collider)
level01.colliders.AutoGenParent483ID219 = {}
level01.colliders.AutoGenParent483ID219.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID219.collider:SetOffset(273.5,37.3111,129.5)
level01.colliders.AutoGenParent483ID219.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.AutoGenParent483ID219.collider:SetHalfLengths(0.3,5.22281,2.54951)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID219.collider)
level01.colliders.AutoGenParent483ID220 = {}
level01.colliders.AutoGenParent483ID220.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID220.collider:SetOffset(281.5,37.5339,128.5)
level01.colliders.AutoGenParent483ID220.collider:SetZAxis(0.995893,0,-0.0905358)
level01.colliders.AutoGenParent483ID220.collider:SetHalfLengths(0.3,5.33421,5.52268)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID220.collider)
level01.colliders.AutoGenParent483ID221 = {}
level01.colliders.AutoGenParent483ID221.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID221.collider:SetOffset(291.5,38.2023,98.5)
level01.colliders.AutoGenParent483ID221.collider:SetZAxis(-0.654931,0,-0.755689)
level01.colliders.AutoGenParent483ID221.collider:SetHalfLengths(0.3,6.33685,9.92472)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID221.collider)
level01.colliders.AutoGenParent483ID222 = {}
level01.colliders.AutoGenParent483ID222.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID222.collider:SetOffset(183.5,51.8438,240)
level01.colliders.AutoGenParent483ID222.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID222.collider:SetHalfLengths(2.5,4,2.5)
level01.colliders.AutoGenParent483ID212.collider:AddChild(level01.colliders.AutoGenParent483ID222.collider)
level01.colliders.AutoGenParent483ID223 = {}
level01.colliders.AutoGenParent483ID223.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID223.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID223.collider:SetMinPos(178.882,23.9934,90.7879)
level01.colliders.AutoGenParent483ID223.collider:SetMaxPos(512.3,68.8781,350.111)
level01.colliders.AutoGenParent483ID.collider:AddChild(level01.colliders.AutoGenParent483ID223.collider)
level01.colliders.AutoGenParent483ID224 = {}
level01.colliders.AutoGenParent483ID224.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID224.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID224.collider:SetMinPos(178.882,31.3084,90.7879)
level01.colliders.AutoGenParent483ID224.collider:SetMaxPos(315.212,66.1516,252.276)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID224.collider)
level01.colliders.AutoGenParent483ID225 = {}
level01.colliders.AutoGenParent483ID225.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID225.collider:SetOffset(312,42.6585,94)
level01.colliders.AutoGenParent483ID225.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID225.collider:SetHalfLengths(0.3,6.33685,4.24264)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID225.collider)
level01.colliders.AutoGenParent483ID226 = {}
level01.colliders.AutoGenParent483ID226.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID226.collider:SetOffset(182.5,47.1147,250.5)
level01.colliders.AutoGenParent483ID226.collider:SetZAxis(0.919145,0,-0.393919)
level01.colliders.AutoGenParent483ID226.collider:SetHalfLengths(0.3,8.45354,3.80789)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID226.collider)
level01.colliders.AutoGenParent483ID227 = {}
level01.colliders.AutoGenParent483ID227.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID227.collider:SetOffset(189,50.5682,246.5)
level01.colliders.AutoGenParent483ID227.collider:SetZAxis(0.768221,0,-0.640184)
level01.colliders.AutoGenParent483ID227.collider:SetHalfLengths(0.3,5.89124,3.90512)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID227.collider)
level01.colliders.AutoGenParent483ID228 = {}
level01.colliders.AutoGenParent483ID228.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID228.collider:SetOffset(194.5,51.4594,244)
level01.colliders.AutoGenParent483ID228.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID228.collider:SetHalfLengths(0.3,6.78247,2.5)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID228.collider)
level01.colliders.AutoGenParent483ID229 = {}
level01.colliders.AutoGenParent483ID229.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID229.collider:SetOffset(200.5,53.2419,244.5)
level01.colliders.AutoGenParent483ID229.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.AutoGenParent483ID229.collider:SetHalfLengths(0.3,7.00528,3.53553)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID229.collider)
level01.colliders.AutoGenParent483ID230 = {}
level01.colliders.AutoGenParent483ID230.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID230.collider:SetOffset(207,55.2472,245.5)
level01.colliders.AutoGenParent483ID230.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.AutoGenParent483ID230.collider:SetHalfLengths(0.3,6.44826,3.04138)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID230.collider)
level01.colliders.AutoGenParent483ID231 = {}
level01.colliders.AutoGenParent483ID231.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID231.collider:SetOffset(212.5,56.6954,247)
level01.colliders.AutoGenParent483ID231.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.AutoGenParent483ID231.collider:SetHalfLengths(0.3,7.22809,2.69258)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID231.collider)
level01.colliders.AutoGenParent483ID232 = {}
level01.colliders.AutoGenParent483ID232.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID232.collider:SetOffset(220.5,56.3612,226)
level01.colliders.AutoGenParent483ID232.collider:SetZAxis(-0.658505,0,-0.752577)
level01.colliders.AutoGenParent483ID232.collider:SetHalfLengths(0.3,9.79039,5.31507)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID232.collider)
level01.colliders.AutoGenParent483ID233 = {}
level01.colliders.AutoGenParent483ID233.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID233.collider:SetOffset(293,37.1997,129)
level01.colliders.AutoGenParent483ID233.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.AutoGenParent483ID233.collider:SetHalfLengths(0.3,5.89124,6.08276)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID233.collider)
level01.colliders.AutoGenParent483ID234 = {}
level01.colliders.AutoGenParent483ID234.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID234.collider:SetOffset(227.5,56.3612,232)
level01.colliders.AutoGenParent483ID234.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.AutoGenParent483ID234.collider:SetHalfLengths(0.3,5.77983,4.03113)
level01.colliders.AutoGenParent483ID224.collider:AddChild(level01.colliders.AutoGenParent483ID234.collider)
level01.colliders.AutoGenParent483ID235 = {}
level01.colliders.AutoGenParent483ID235.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID235.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID235.collider:SetMinPos(214.846,29.1917,96.8126)
level01.colliders.AutoGenParent483ID235.collider:SetMaxPos(336.204,65.3718,254.298)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID235.collider)
level01.colliders.AutoGenParent483ID236 = {}
level01.colliders.AutoGenParent483ID236.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID236.collider:SetOffset(318,42.1015,102)
level01.colliders.AutoGenParent483ID236.collider:SetZAxis(0.624695,0,0.780869)
level01.colliders.AutoGenParent483ID236.collider:SetHalfLengths(0.3,9.67899,6.40312)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID236.collider)
level01.colliders.AutoGenParent483ID237 = {}
level01.colliders.AutoGenParent483ID237.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID237.collider:SetOffset(329,37.4225,113.5)
level01.colliders.AutoGenParent483ID237.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.AutoGenParent483ID237.collider:SetHalfLengths(0.3,5.33421,9.55249)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID237.collider)
level01.colliders.AutoGenParent483ID238 = {}
level01.colliders.AutoGenParent483ID238.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID238.collider:SetOffset(217.5,58.9235,249.5)
level01.colliders.AutoGenParent483ID238.collider:SetZAxis(0.857493,0,0.514496)
level01.colliders.AutoGenParent483ID238.collider:SetHalfLengths(0.3,5.77983,2.91548)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID238.collider)
level01.colliders.AutoGenParent483ID239 = {}
level01.colliders.AutoGenParent483ID239.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID239.collider:SetOffset(221.5,59.7034,252.5)
level01.colliders.AutoGenParent483ID239.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID239.collider:SetHalfLengths(0.3,5.55702,2.12132)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID239.collider)
level01.colliders.AutoGenParent483ID240 = {}
level01.colliders.AutoGenParent483ID240.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID240.collider:SetOffset(227.5,60.2604,253.5)
level01.colliders.AutoGenParent483ID240.collider:SetZAxis(0.993884,0,-0.110432)
level01.colliders.AutoGenParent483ID240.collider:SetHalfLengths(0.3,5.1114,4.52769)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID240.collider)
level01.colliders.AutoGenParent483ID241 = {}
level01.colliders.AutoGenParent483ID241.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID241.collider:SetOffset(234.5,57.1411,234.5)
level01.colliders.AutoGenParent483ID241.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.AutoGenParent483ID241.collider:SetHalfLengths(0.3,5.66843,3.53553)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID241.collider)
level01.colliders.AutoGenParent483ID242 = {}
level01.colliders.AutoGenParent483ID242.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID242.collider:SetOffset(241,57.8095,233.5)
level01.colliders.AutoGenParent483ID242.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.AutoGenParent483ID242.collider:SetHalfLengths(0.3,5.22281,3.3541)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID242.collider)
level01.colliders.AutoGenParent483ID243 = {}
level01.colliders.AutoGenParent483ID243.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID243.collider:SetOffset(247.5,57.5867,231.5)
level01.colliders.AutoGenParent483ID243.collider:SetZAxis(0.98995,0,-0.141421)
level01.colliders.AutoGenParent483ID243.collider:SetHalfLengths(0.3,5.22281,3.53553)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID243.collider)
level01.colliders.AutoGenParent483ID244 = {}
level01.colliders.AutoGenParent483ID244.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID244.collider:SetOffset(306,36.3084,132)
level01.colliders.AutoGenParent483ID244.collider:SetZAxis(0.961524,0,0.274721)
level01.colliders.AutoGenParent483ID244.collider:SetHalfLengths(0.3,6.00264,7.28011)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID244.collider)
level01.colliders.AutoGenParent483ID245 = {}
level01.colliders.AutoGenParent483ID245.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID245.collider:SetOffset(319.5,34.7488,138.5)
level01.colliders.AutoGenParent483ID245.collider:SetZAxis(-0.822192,0,-0.56921)
level01.colliders.AutoGenParent483ID245.collider:SetHalfLengths(0.3,5.55702,7.90569)
level01.colliders.AutoGenParent483ID235.collider:AddChild(level01.colliders.AutoGenParent483ID245.collider)
level01.colliders.AutoGenParent483ID246 = {}
level01.colliders.AutoGenParent483ID246.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID246.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID246.collider:SetMinPos(231.935,29.7488,111.26)
level01.colliders.AutoGenParent483ID246.collider:SetMaxPos(350.246,65.8174,253.293)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID246.collider)
level01.colliders.AutoGenParent483ID247 = {}
level01.colliders.AutoGenParent483ID247.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID247.collider:SetOffset(343,37.0883,130)
level01.colliders.AutoGenParent483ID247.collider:SetZAxis(0.573462,0,0.819232)
level01.colliders.AutoGenParent483ID247.collider:SetHalfLengths(0.3,6.78247,12.2066)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID247.collider)
level01.colliders.AutoGenParent483ID248 = {}
level01.colliders.AutoGenParent483ID248.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID248.collider:SetOffset(236.5,60.149,252)
level01.colliders.AutoGenParent483ID248.collider:SetZAxis(0.976187,0,-0.21693)
level01.colliders.AutoGenParent483ID248.collider:SetHalfLengths(0.3,5.22281,4.60977)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID248.collider)
level01.colliders.AutoGenParent483ID249 = {}
level01.colliders.AutoGenParent483ID249.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID249.collider:SetOffset(246.5,60.3718,250)
level01.colliders.AutoGenParent483ID249.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.AutoGenParent483ID249.collider:SetHalfLengths(0.3,5.44562,5.59017)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID249.collider)
level01.colliders.AutoGenParent483ID250 = {}
level01.colliders.AutoGenParent483ID250.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID250.collider:SetOffset(259.5,59.9262,249.5)
level01.colliders.AutoGenParent483ID250.collider:SetZAxis(0.997785,0,0.066519)
level01.colliders.AutoGenParent483ID250.collider:SetHalfLengths(0.3,5.1114,7.51665)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID250.collider)
level01.colliders.AutoGenParent483ID251 = {}
level01.colliders.AutoGenParent483ID251.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID251.collider:SetOffset(274,60.0376,251)
level01.colliders.AutoGenParent483ID251.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.AutoGenParent483ID251.collider:SetHalfLengths(0.3,5.33421,7.07107)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID251.collider)
level01.colliders.AutoGenParent483ID252 = {}
level01.colliders.AutoGenParent483ID252.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID252.collider:SetOffset(259,57.8095,232)
level01.colliders.AutoGenParent483ID252.collider:SetZAxis(0.992278,0,0.124035)
level01.colliders.AutoGenParent483ID252.collider:SetHalfLengths(0.3,6.00264,8.06226)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID252.collider)
level01.colliders.AutoGenParent483ID253 = {}
level01.colliders.AutoGenParent483ID253.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID253.collider:SetOffset(277,56.8068,233.5)
level01.colliders.AutoGenParent483ID253.collider:SetZAxis(0.998752,0,0.0499376)
level01.colliders.AutoGenParent483ID253.collider:SetHalfLengths(0.3,5.77983,10.0125)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID253.collider)
level01.colliders.AutoGenParent483ID254 = {}
level01.colliders.AutoGenParent483ID254.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID254.collider:SetOffset(340.5,36.197,162)
level01.colliders.AutoGenParent483ID254.collider:SetZAxis(-0.734803,0,-0.67828)
level01.colliders.AutoGenParent483ID254.collider:SetHalfLengths(0.3,5.55702,8.8459)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID254.collider)
level01.colliders.AutoGenParent483ID255 = {}
level01.colliders.AutoGenParent483ID255.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID255.collider:SetOffset(330,35.64,149.5)
level01.colliders.AutoGenParent483ID255.collider:SetZAxis(-0.524097,0,-0.851658)
level01.colliders.AutoGenParent483ID255.collider:SetHalfLengths(0.3,5.89124,7.63217)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID255.collider)
level01.colliders.AutoGenParent483ID256 = {}
level01.colliders.AutoGenParent483ID256.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID256.collider:SetOffset(328.75,41.0313,113.313)
level01.colliders.AutoGenParent483ID256.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID256.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level01.colliders.AutoGenParent483ID246.collider:AddChild(level01.colliders.AutoGenParent483ID256.collider)
level01.colliders.AutoGenParent483ID257 = {}
level01.colliders.AutoGenParent483ID257.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID257.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID257.collider:SetMinPos(281,31.197,139.746)
level01.colliders.AutoGenParent483ID257.collider:SetMaxPos(368.059,67.2657,253.291)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID257.collider)
level01.colliders.AutoGenParent483ID258 = {}
level01.colliders.AutoGenParent483ID258.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID258.collider:SetOffset(354,38.8707,142.5)
level01.colliders.AutoGenParent483ID258.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.AutoGenParent483ID258.collider:SetHalfLengths(0.3,5.22281,4.71699)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID258.collider)
level01.colliders.AutoGenParent483ID259 = {}
level01.colliders.AutoGenParent483ID259.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID259.collider:SetOffset(363,38.6479,146)
level01.colliders.AutoGenParent483ID259.collider:SetZAxis(0.980581,0,0.196116)
level01.colliders.AutoGenParent483ID259.collider:SetHalfLengths(0.3,5.33421,5.09902)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID259.collider)
level01.colliders.AutoGenParent483ID260 = {}
level01.colliders.AutoGenParent483ID260.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID260.collider:SetOffset(287.5,59.7034,252)
level01.colliders.AutoGenParent483ID260.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID260.collider:SetHalfLengths(0.3,6.11405,6.5)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID260.collider)
level01.colliders.AutoGenParent483ID261 = {}
level01.colliders.AutoGenParent483ID261.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID261.collider:SetOffset(296,58.5893,252.5)
level01.colliders.AutoGenParent483ID261.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.AutoGenParent483ID261.collider:SetHalfLengths(0.3,8.45354,2.06155)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID261.collider)
level01.colliders.AutoGenParent483ID262 = {}
level01.colliders.AutoGenParent483ID262.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID262.collider:SetOffset(295,56.027,232)
level01.colliders.AutoGenParent483ID262.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.AutoGenParent483ID262.collider:SetHalfLengths(0.3,11.2386,8.24621)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID262.collider)
level01.colliders.AutoGenParent483ID263 = {}
level01.colliders.AutoGenParent483ID263.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID263.collider:SetOffset(306,49.7884,231.5)
level01.colliders.AutoGenParent483ID263.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.AutoGenParent483ID263.collider:SetHalfLengths(0.3,6.11404,3.3541)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID263.collider)
level01.colliders.AutoGenParent483ID264 = {}
level01.colliders.AutoGenParent483ID264.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID264.collider:SetOffset(339,48.1173,215.5)
level01.colliders.AutoGenParent483ID264.collider:SetZAxis(0.682318,0,-0.731055)
level01.colliders.AutoGenParent483ID264.collider:SetHalfLengths(0.3,12.0185,10.2591)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID264.collider)
level01.colliders.AutoGenParent483ID265 = {}
level01.colliders.AutoGenParent483ID265.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID265.collider:SetOffset(350,37.0883,173)
level01.colliders.AutoGenParent483ID265.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.AutoGenParent483ID265.collider:SetHalfLengths(0.3,5.89124,5.83095)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID265.collider)
level01.colliders.AutoGenParent483ID266 = {}
level01.colliders.AutoGenParent483ID266.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID266.collider:SetOffset(320.5,48.1173,228)
level01.colliders.AutoGenParent483ID266.collider:SetZAxis(-0.91707,0,0.398726)
level01.colliders.AutoGenParent483ID266.collider:SetHalfLengths(0.3,5.55703,12.5399)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID266.collider)
level01.colliders.AutoGenParent483ID267 = {}
level01.colliders.AutoGenParent483ID267.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID267.collider:SetOffset(339.5,40.3125,156.5)
level01.colliders.AutoGenParent483ID267.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID267.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level01.colliders.AutoGenParent483ID257.collider:AddChild(level01.colliders.AutoGenParent483ID267.collider)
level01.colliders.AutoGenParent483ID268 = {}
level01.colliders.AutoGenParent483ID268.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID268.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID268.collider:SetMinPos(297.788,31.0856,146.7)
level01.colliders.AutoGenParent483ID268.collider:SetMaxPos(384,64.2577,255.3)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID268.collider)
level01.colliders.AutoGenParent483ID269 = {}
level01.colliders.AutoGenParent483ID269.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID269.collider:SetOffset(372,38.3137,147)
level01.colliders.AutoGenParent483ID269.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID269.collider:SetHalfLengths(0.3,6.11404,4)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID269.collider)
level01.colliders.AutoGenParent483ID270 = {}
level01.colliders.AutoGenParent483ID270.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID270.collider:SetOffset(380,37.1997,147)
level01.colliders.AutoGenParent483ID270.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID270.collider:SetHalfLengths(0.3,6.11404,4)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID270.collider)
level01.colliders.AutoGenParent483ID271 = {}
level01.colliders.AutoGenParent483ID271.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID271.collider:SetOffset(299,55.1358,254)
level01.colliders.AutoGenParent483ID271.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID271.collider:SetHalfLengths(0.3,5.1114,1.41421)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID271.collider)
level01.colliders.AutoGenParent483ID272 = {}
level01.colliders.AutoGenParent483ID272.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID272.collider:SetOffset(307,55.2472,255)
level01.colliders.AutoGenParent483ID272.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID272.collider:SetHalfLengths(0.3,9.01056,7)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID272.collider)
level01.colliders.AutoGenParent483ID273 = {}
level01.colliders.AutoGenParent483ID273.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID273.collider:SetOffset(314,51.2366,252.5)
level01.colliders.AutoGenParent483ID273.collider:SetZAxis(0,0,-1)
level01.colliders.AutoGenParent483ID273.collider:SetHalfLengths(0.3,5.66843,2.5)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID273.collider)
level01.colliders.AutoGenParent483ID274 = {}
level01.colliders.AutoGenParent483ID274.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID274.collider:SetOffset(313.5,50.5682,248)
level01.colliders.AutoGenParent483ID274.collider:SetZAxis(-0.242536,0,-0.970143)
level01.colliders.AutoGenParent483ID274.collider:SetHalfLengths(0.3,5.44562,2.06155)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID274.collider)
level01.colliders.AutoGenParent483ID275 = {}
level01.colliders.AutoGenParent483ID275.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID275.collider:SetOffset(348,41.0988,203.5)
level01.colliders.AutoGenParent483ID275.collider:SetZAxis(0.406139,0,-0.913812)
level01.colliders.AutoGenParent483ID275.collider:SetHalfLengths(0.3,6.67107,4.92443)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID275.collider)
level01.colliders.AutoGenParent483ID276 = {}
level01.colliders.AutoGenParent483ID276.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID276.collider:SetOffset(350,39.4277,194)
level01.colliders.AutoGenParent483ID276.collider:SetZAxis(0,0,-1)
level01.colliders.AutoGenParent483ID276.collider:SetHalfLengths(0.3,6.11404,5)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID276.collider)
level01.colliders.AutoGenParent483ID277 = {}
level01.colliders.AutoGenParent483ID277.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID277.collider:SetOffset(351.5,38.3137,183.5)
level01.colliders.AutoGenParent483ID277.collider:SetZAxis(0.263117,0,-0.964764)
level01.colliders.AutoGenParent483ID277.collider:SetHalfLengths(0.3,6.22545,5.70088)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID277.collider)
level01.colliders.AutoGenParent483ID278 = {}
level01.colliders.AutoGenParent483ID278.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID278.collider:SetOffset(324.5,50.1226,244)
level01.colliders.AutoGenParent483ID278.collider:SetZAxis(0.985212,0,-0.171341)
level01.colliders.AutoGenParent483ID278.collider:SetHalfLengths(0.3,6.22545,11.6726)
level01.colliders.AutoGenParent483ID268.collider:AddChild(level01.colliders.AutoGenParent483ID278.collider)
level01.colliders.AutoGenParent483ID279 = {}
level01.colliders.AutoGenParent483ID279.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID279.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID279.collider:SetMinPos(335.753,30.1951,144.7)
level01.colliders.AutoGenParent483ID279.collider:SetMaxPos(400,64.592,255.171)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID279.collider)
level01.colliders.AutoGenParent483ID280 = {}
level01.colliders.AutoGenParent483ID280.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID280.collider:SetOffset(340.5,55.47,248.5)
level01.colliders.AutoGenParent483ID280.collider:SetZAxis(-0.56921,0,-0.822192)
level01.colliders.AutoGenParent483ID280.collider:SetHalfLengths(0.3,9.12196,7.90569)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID280.collider)
level01.colliders.AutoGenParent483ID281 = {}
level01.colliders.AutoGenParent483ID281.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID281.collider:SetOffset(363,53.5761,226.5)
level01.colliders.AutoGenParent483ID281.collider:SetZAxis(0.50702,0,-0.861934)
level01.colliders.AutoGenParent483ID281.collider:SetHalfLengths(0.3,9.67899,9.86154)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID281.collider)
level01.colliders.AutoGenParent483ID282 = {}
level01.colliders.AutoGenParent483ID282.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID282.collider:SetOffset(373.5,46.4462,189)
level01.colliders.AutoGenParent483ID282.collider:SetZAxis(-0.0333148,0,-0.999445)
level01.colliders.AutoGenParent483ID282.collider:SetHalfLengths(0.3,12.0185,15.0083)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID282.collider)
level01.colliders.AutoGenParent483ID283 = {}
level01.colliders.AutoGenParent483ID283.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID283.collider:SetOffset(374,39.4277,170.5)
level01.colliders.AutoGenParent483ID283.collider:SetZAxis(0.274721,0,-0.961524)
level01.colliders.AutoGenParent483ID283.collider:SetHalfLengths(0.3,5.55702,3.64005)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID283.collider)
level01.colliders.AutoGenParent483ID284 = {}
level01.colliders.AutoGenParent483ID284.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID284.collider:SetOffset(377.5,39.9848,162.5)
level01.colliders.AutoGenParent483ID284.collider:SetZAxis(0.485643,0,-0.874157)
level01.colliders.AutoGenParent483ID284.collider:SetHalfLengths(0.3,7.89651,5.14782)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID284.collider)
level01.colliders.AutoGenParent483ID285 = {}
level01.colliders.AutoGenParent483ID285.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID285.collider:SetOffset(382,37.0883,157.5)
level01.colliders.AutoGenParent483ID285.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.AutoGenParent483ID285.collider:SetHalfLengths(0.3,5.1114,2.06155)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID285.collider)
level01.colliders.AutoGenParent483ID286 = {}
level01.colliders.AutoGenParent483ID286.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID286.collider:SetOffset(388.5,36.4629,157)
level01.colliders.AutoGenParent483ID286.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID286.collider:SetHalfLengths(0.3,5.15847,4.5)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID286.collider)
level01.colliders.AutoGenParent483ID287 = {}
level01.colliders.AutoGenParent483ID287.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID287.collider:SetOffset(392,35.3536,145)
level01.colliders.AutoGenParent483ID287.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID287.collider:SetHalfLengths(0.3,5.15847,8)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID287.collider)
level01.colliders.AutoGenParent483ID288 = {}
level01.colliders.AutoGenParent483ID288.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID288.collider:SetOffset(384,35.1951,146)
level01.colliders.AutoGenParent483ID288.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID288.collider:SetHalfLengths(0.3,5,1)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID288.collider)
level01.colliders.AutoGenParent483ID289 = {}
level01.colliders.AutoGenParent483ID289.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID289.collider:SetOffset(370.079,42.4331,185.415)
level01.colliders.AutoGenParent483ID289.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID289.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level01.colliders.AutoGenParent483ID279.collider:AddChild(level01.colliders.AutoGenParent483ID289.collider)
level01.colliders.AutoGenParent483ID290 = {}
level01.colliders.AutoGenParent483ID290.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID290.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID290.collider:SetMinPos(344.715,30.3536,134.729)
level01.colliders.AutoGenParent483ID290.collider:SetMaxPos(422.128,65.4832,255.095)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID290.collider)
level01.colliders.AutoGenParent483ID291 = {}
level01.colliders.AutoGenParent483ID291.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID291.collider:SetOffset(346.5,55.47,250.5)
level01.colliders.AutoGenParent483ID291.collider:SetZAxis(0.316228,0,-0.948683)
level01.colliders.AutoGenParent483ID291.collider:SetHalfLengths(0.3,6.55966,4.74342)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID291.collider)
level01.colliders.AutoGenParent483ID292 = {}
level01.colliders.AutoGenParent483ID292.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID292.collider:SetOffset(353,57.0297,240.5)
level01.colliders.AutoGenParent483ID292.collider:SetZAxis(0.672673,0,-0.73994)
level01.colliders.AutoGenParent483ID292.collider:SetHalfLengths(0.3,8.45354,7.43303)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID292.collider)
level01.colliders.AutoGenParent483ID293 = {}
level01.colliders.AutoGenParent483ID293.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID293.collider:SetOffset(371,48.8971,211)
level01.colliders.AutoGenParent483ID293.collider:SetZAxis(0.393919,0,-0.919145)
level01.colliders.AutoGenParent483ID293.collider:SetHalfLengths(0.3,7.4509,7.61577)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID293.collider)
level01.colliders.AutoGenParent483ID294 = {}
level01.colliders.AutoGenParent483ID294.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID294.collider:SetOffset(398,36.3044,158)
level01.colliders.AutoGenParent483ID294.collider:SetZAxis(0.980581,0,0.196116)
level01.colliders.AutoGenParent483ID294.collider:SetHalfLengths(0.3,5.15847,5.09902)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID294.collider)
level01.colliders.AutoGenParent483ID295 = {}
level01.colliders.AutoGenParent483ID295.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID295.collider:SetOffset(404,36.146,160)
level01.colliders.AutoGenParent483ID295.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.AutoGenParent483ID295.collider:SetHalfLengths(0.3,5.15847,1.41421)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID295.collider)
level01.colliders.AutoGenParent483ID296 = {}
level01.colliders.AutoGenParent483ID296.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID296.collider:SetOffset(412.5,35.5121,139.5)
level01.colliders.AutoGenParent483ID296.collider:SetZAxis(-0.903738,0,0.428086)
level01.colliders.AutoGenParent483ID296.collider:SetHalfLengths(0.3,5.15847,10.5119)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID296.collider)
level01.colliders.AutoGenParent483ID297 = {}
level01.colliders.AutoGenParent483ID297.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID297.collider:SetOffset(401.5,35.3536,144.5)
level01.colliders.AutoGenParent483ID297.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.AutoGenParent483ID297.collider:SetHalfLengths(0.3,5,1.58114)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID297.collider)
level01.colliders.AutoGenParent483ID298 = {}
level01.colliders.AutoGenParent483ID298.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID298.collider:SetOffset(365.671,47.676,214.229)
level01.colliders.AutoGenParent483ID298.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID298.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID298.collider)
level01.colliders.AutoGenParent483ID299 = {}
level01.colliders.AutoGenParent483ID299.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID299.collider:SetOffset(354.858,50.9688,226.742)
level01.colliders.AutoGenParent483ID299.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID299.collider:SetHalfLengths(1.75,4,1.75)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID299.collider)
level01.colliders.AutoGenParent483ID300 = {}
level01.colliders.AutoGenParent483ID300.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID300.collider:SetOffset(347.526,56,240.375)
level01.colliders.AutoGenParent483ID300.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID300.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level01.colliders.AutoGenParent483ID290.collider:AddChild(level01.colliders.AutoGenParent483ID300.collider)
level01.colliders.AutoGenParent483ID301 = {}
level01.colliders.AutoGenParent483ID301.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID301.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID301.collider:SetMinPos(404.75,30.5121,127.711)
level01.colliders.AutoGenParent483ID301.collider:SetMaxPos(475.148,53.3481,231.059)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID301.collider)
level01.colliders.AutoGenParent483ID302 = {}
level01.colliders.AutoGenParent483ID302.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID302.collider:SetOffset(406,36.3044,162.5)
level01.colliders.AutoGenParent483ID302.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.AutoGenParent483ID302.collider:SetHalfLengths(0.3,5.15847,1.80278)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID302.collider)
level01.colliders.AutoGenParent483ID303 = {}
level01.colliders.AutoGenParent483ID303.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID303.collider:SetOffset(409,36.4629,168)
level01.colliders.AutoGenParent483ID303.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.AutoGenParent483ID303.collider:SetHalfLengths(0.3,5.31694,4.47214)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID303.collider)
level01.colliders.AutoGenParent483ID304 = {}
level01.colliders.AutoGenParent483ID304.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID304.collider:SetOffset(412.5,36.7798,176)
level01.colliders.AutoGenParent483ID304.collider:SetZAxis(0.351123,0,0.936329)
level01.colliders.AutoGenParent483ID304.collider:SetHalfLengths(0.3,5.79235,4.272)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID304.collider)
level01.colliders.AutoGenParent483ID305 = {}
level01.colliders.AutoGenParent483ID305.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID305.collider:SetOffset(415.5,37.5722,185)
level01.colliders.AutoGenParent483ID305.collider:SetZAxis(0.287348,0,0.957826)
level01.colliders.AutoGenParent483ID305.collider:SetHalfLengths(0.3,5.63388,5.22015)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID305.collider)
level01.colliders.AutoGenParent483ID306 = {}
level01.colliders.AutoGenParent483ID306.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID306.collider:SetOffset(418,38.2061,195.5)
level01.colliders.AutoGenParent483ID306.collider:SetZAxis(0.178885,0,0.98387)
level01.colliders.AutoGenParent483ID306.collider:SetHalfLengths(0.3,7.0601,5.59017)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID306.collider)
level01.colliders.AutoGenParent483ID307 = {}
level01.colliders.AutoGenParent483ID307.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID307.collider:SetOffset(419.5,40.2662,208.5)
level01.colliders.AutoGenParent483ID307.collider:SetZAxis(0.066519,0,0.997785)
level01.colliders.AutoGenParent483ID307.collider:SetHalfLengths(0.3,9.27867,7.51665)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID307.collider)
level01.colliders.AutoGenParent483ID308 = {}
level01.colliders.AutoGenParent483ID308.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID308.collider:SetOffset(418.5,44.5448,223.5)
level01.colliders.AutoGenParent483ID308.collider:SetZAxis(-0.196116,0,0.980581)
level01.colliders.AutoGenParent483ID308.collider:SetHalfLengths(0.3,8.80326,7.64853)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID308.collider)
level01.colliders.AutoGenParent483ID309 = {}
level01.colliders.AutoGenParent483ID309.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID309.collider:SetOffset(463.5,38.2061,139.5)
level01.colliders.AutoGenParent483ID309.collider:SetZAxis(-0.870563,0,-0.492057)
level01.colliders.AutoGenParent483ID309.collider:SetHalfLengths(0.3,6.42622,13.2098)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID309.collider)
level01.colliders.AutoGenParent483ID310 = {}
level01.colliders.AutoGenParent483ID310.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID310.collider:SetOffset(443,36.7798,130.5)
level01.colliders.AutoGenParent483ID310.collider:SetZAxis(-0.963518,0,-0.267644)
level01.colliders.AutoGenParent483ID310.collider:SetHalfLengths(0.3,5.95082,9.34077)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID310.collider)
level01.colliders.AutoGenParent483ID311 = {}
level01.colliders.AutoGenParent483ID311.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID311.collider:SetOffset(428,35.829,131.5)
level01.colliders.AutoGenParent483ID311.collider:SetZAxis(-0.863779,0,0.503871)
level01.colliders.AutoGenParent483ID311.collider:SetHalfLengths(0.3,5.31694,6.94622)
level01.colliders.AutoGenParent483ID301.collider:AddChild(level01.colliders.AutoGenParent483ID311.collider)
level01.colliders.AutoGenParent483ID312 = {}
level01.colliders.AutoGenParent483ID312.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID312.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID312.collider:SetMinPos(414.709,23.9934,145.827)
level01.colliders.AutoGenParent483ID312.collider:SetMaxPos(504.28,68.8781,297.022)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID312.collider)
level01.colliders.AutoGenParent483ID313 = {}
level01.colliders.AutoGenParent483ID313.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID313.collider:SetOffset(416,48.3481,235)
level01.colliders.AutoGenParent483ID313.collider:SetZAxis(-0.242536,0,0.970143)
level01.colliders.AutoGenParent483ID313.collider:SetHalfLengths(0.3,7.37704,4.12311)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID313.collider)
level01.colliders.AutoGenParent483ID314 = {}
level01.colliders.AutoGenParent483ID314.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID314.collider:SetOffset(422,50.7251,242)
level01.colliders.AutoGenParent483ID314.collider:SetZAxis(0.919145,0,0.393919)
level01.colliders.AutoGenParent483ID314.collider:SetHalfLengths(0.3,5.79234,7.61577)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID314.collider)
level01.colliders.AutoGenParent483ID315 = {}
level01.colliders.AutoGenParent483ID315.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID315.collider:SetOffset(432.5,51.5175,250)
level01.colliders.AutoGenParent483ID315.collider:SetZAxis(0.573462,0,0.819232)
level01.colliders.AutoGenParent483ID315.collider:SetHalfLengths(0.3,5.79235,6.10328)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID315.collider)
level01.colliders.AutoGenParent483ID316 = {}
level01.colliders.AutoGenParent483ID316.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID316.collider:SetOffset(453.5,52.3098,255)
level01.colliders.AutoGenParent483ID316.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID316.collider:SetHalfLengths(0.3,16.5682,17.5)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID316.collider)
level01.colliders.AutoGenParent483ID317 = {}
level01.colliders.AutoGenParent483ID317.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID317.collider:SetOffset(500.5,41.8508,190)
level01.colliders.AutoGenParent483ID317.collider:SetZAxis(-0.362446,0,-0.932005)
level01.colliders.AutoGenParent483ID317.collider:SetHalfLengths(0.3,5.63388,9.6566)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID317.collider)
level01.colliders.AutoGenParent483ID318 = {}
level01.colliders.AutoGenParent483ID318.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID318.collider:SetOffset(492,41.217,172)
level01.colliders.AutoGenParent483ID318.collider:SetZAxis(-0.485643,0,-0.874157)
level01.colliders.AutoGenParent483ID318.collider:SetHalfLengths(0.3,6.42622,10.2956)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID318.collider)
level01.colliders.AutoGenParent483ID319 = {}
level01.colliders.AutoGenParent483ID319.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID319.collider:SetOffset(481,39.7907,154.5)
level01.colliders.AutoGenParent483ID319.collider:SetZAxis(-0.576683,0,-0.816968)
level01.colliders.AutoGenParent483ID319.collider:SetHalfLengths(0.3,6.58469,10.4043)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID319.collider)
level01.colliders.AutoGenParent483ID320 = {}
level01.colliders.AutoGenParent483ID320.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID320.collider:SetOffset(453,40.9141,256)
level01.colliders.AutoGenParent483ID320.collider:SetZAxis(-1,0,0)
level01.colliders.AutoGenParent483ID320.collider:SetHalfLengths(0.3,16.9207,18)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID320.collider)
level01.colliders.AutoGenParent483ID321 = {}
level01.colliders.AutoGenParent483ID321.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID321.collider:SetOffset(435,52.8348,263)
level01.colliders.AutoGenParent483ID321.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID321.collider:SetHalfLengths(0.3,6.1353,7)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID321.collider)
level01.colliders.AutoGenParent483ID322 = {}
level01.colliders.AutoGenParent483ID322.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID322.collider:SetOffset(436,53.9701,283.5)
level01.colliders.AutoGenParent483ID322.collider:SetZAxis(0.0738717,0,0.997268)
level01.colliders.AutoGenParent483ID322.collider:SetHalfLengths(0.3,6.81649,13.537)
level01.colliders.AutoGenParent483ID312.collider:AddChild(level01.colliders.AutoGenParent483ID322.collider)
level01.colliders.AutoGenParent483ID323 = {}
level01.colliders.AutoGenParent483ID323.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID323.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID323.collider:SetMinPos(436.704,24.9016,198.905)
level01.colliders.AutoGenParent483ID323.collider:SetMaxPos(512.3,65.2143,350.111)
level01.colliders.AutoGenParent483ID223.collider:AddChild(level01.colliders.AutoGenParent483ID323.collider)
level01.colliders.AutoGenParent483ID324 = {}
level01.colliders.AutoGenParent483ID324.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID324.collider:SetOffset(511.5,41.5339,241.5)
level01.colliders.AutoGenParent483ID324.collider:SetZAxis(-0.0370117,0,-0.999315)
level01.colliders.AutoGenParent483ID324.collider:SetHalfLengths(0.3,5.31694,13.5093)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID324.collider)
level01.colliders.AutoGenParent483ID325 = {}
level01.colliders.AutoGenParent483ID325.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID325.collider:SetOffset(510,41.8508,221)
level01.colliders.AutoGenParent483ID325.collider:SetZAxis(-0.141421,0,-0.98995)
level01.colliders.AutoGenParent483ID325.collider:SetHalfLengths(0.3,5.31694,7.07107)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID325.collider)
level01.colliders.AutoGenParent483ID326 = {}
level01.colliders.AutoGenParent483ID326.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID326.collider:SetOffset(506.5,42.1678,206.5)
level01.colliders.AutoGenParent483ID326.collider:SetZAxis(-0.316228,0,-0.948683)
level01.colliders.AutoGenParent483ID326.collider:SetHalfLengths(0.3,5.31694,7.90569)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID326.collider)
level01.colliders.AutoGenParent483ID327 = {}
level01.colliders.AutoGenParent483ID327.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID327.collider:SetOffset(474,40.2329,303.5)
level01.colliders.AutoGenParent483ID327.collider:SetZAxis(0.178885,0,0.98387)
level01.colliders.AutoGenParent483ID327.collider:SetHalfLengths(0.3,7.15708,16.7705)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID327.collider)
level01.colliders.AutoGenParent483ID328 = {}
level01.colliders.AutoGenParent483ID328.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID328.collider:SetOffset(467.5,40.2329,291.5)
level01.colliders.AutoGenParent483ID328.collider:SetZAxis(-0.613941,0,0.789352)
level01.colliders.AutoGenParent483ID328.collider:SetHalfLengths(0.3,15.3313,5.70088)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID328.collider)
level01.colliders.AutoGenParent483ID329 = {}
level01.colliders.AutoGenParent483ID329.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID329.collider:SetOffset(466,50.5642,306)
level01.colliders.AutoGenParent483ID329.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.AutoGenParent483ID329.collider:SetHalfLengths(0.3,5.68119,10.198)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID329.collider)
level01.colliders.AutoGenParent483ID330 = {}
level01.colliders.AutoGenParent483ID330.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID330.collider:SetOffset(468.5,51.2454,325.5)
level01.colliders.AutoGenParent483ID330.collider:SetZAxis(0.0525588,0,0.998618)
level01.colliders.AutoGenParent483ID330.collider:SetHalfLengths(0.3,8.29239,9.51315)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID330.collider)
level01.colliders.AutoGenParent483ID331 = {}
level01.colliders.AutoGenParent483ID331.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID331.collider:SetOffset(439,55.7866,309.5)
level01.colliders.AutoGenParent483ID331.collider:SetZAxis(0.157991,0,0.987441)
level01.colliders.AutoGenParent483ID331.collider:SetHalfLengths(0.3,5.3406,12.659)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID331.collider)
level01.colliders.AutoGenParent483ID332 = {}
level01.colliders.AutoGenParent483ID332.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID332.collider:SetOffset(442.5,56.1272,328.5)
level01.colliders.AutoGenParent483ID332.collider:SetZAxis(0.22486,0,0.974391)
level01.colliders.AutoGenParent483ID332.collider:SetHalfLengths(0.3,6.13531,6.67083)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID332.collider)
level01.colliders.AutoGenParent483ID333 = {}
level01.colliders.AutoGenParent483ID333.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID333.collider:SetOffset(447,57.2625,342.5)
level01.colliders.AutoGenParent483ID333.collider:SetZAxis(0.371391,0,0.928477)
level01.colliders.AutoGenParent483ID333.collider:SetHalfLengths(0.3,7.95179,8.07775)
level01.colliders.AutoGenParent483ID323.collider:AddChild(level01.colliders.AutoGenParent483ID333.collider)
level01.colliders.AutoGenParent483ID334 = {}
level01.colliders.AutoGenParent483ID334.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID334.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID334.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
level01.colliders.AutoGenParent483ID334.collider:SetMaxPos(512.3,78.3839,383.3)
level01.colliders.AutoGenParent483ID.collider:AddChild(level01.colliders.AutoGenParent483ID334.collider)
level01.colliders.AutoGenParent483ID335 = {}
level01.colliders.AutoGenParent483ID335.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID335.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID335.collider:SetMinPos(449.701,28.7617,256)
level01.colliders.AutoGenParent483ID335.collider:SetMaxPos(512.3,78.3839,383.3)
level01.colliders.AutoGenParent483ID334.collider:AddChild(level01.colliders.AutoGenParent483ID335.collider)
level01.colliders.AutoGenParent483ID336 = {}
level01.colliders.AutoGenParent483ID336.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID336.collider:SetOffset(512,41.5953,300.5)
level01.colliders.AutoGenParent483ID336.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID336.collider:SetHalfLengths(0.3,11.8118,44.5)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID336.collider)
level01.colliders.AutoGenParent483ID337 = {}
level01.colliders.AutoGenParent483ID337.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID337.collider:SetOffset(508,34.7835,352.5)
level01.colliders.AutoGenParent483ID337.collider:SetZAxis(-0.470588,0,0.882353)
level01.colliders.AutoGenParent483ID337.collider:SetHalfLengths(0.3,6.02178,8.5)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID337.collider)
level01.colliders.AutoGenParent483ID338 = {}
level01.colliders.AutoGenParent483ID338.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID338.collider:SetOffset(502.5,35.8052,364.5)
level01.colliders.AutoGenParent483ID338.collider:SetZAxis(-0.316228,0,0.948683)
level01.colliders.AutoGenParent483ID338.collider:SetHalfLengths(0.3,6.24884,4.74342)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID338.collider)
level01.colliders.AutoGenParent483ID339 = {}
level01.colliders.AutoGenParent483ID339.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID339.collider:SetOffset(475.5,42.39,334)
level01.colliders.AutoGenParent483ID339.collider:SetZAxis(-0.106533,0,0.994309)
level01.colliders.AutoGenParent483ID339.collider:SetHalfLengths(0.3,6.58943,14.0801)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID339.collider)
level01.colliders.AutoGenParent483ID340 = {}
level01.colliders.AutoGenParent483ID340.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID340.collider:SetOffset(475.5,43.9794,365.5)
level01.colliders.AutoGenParent483ID340.collider:SetZAxis(0.0854011,0,0.996347)
level01.colliders.AutoGenParent483ID340.collider:SetHalfLengths(0.3,5.34059,17.5642)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID340.collider)
level01.colliders.AutoGenParent483ID341 = {}
level01.colliders.AutoGenParent483ID341.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID341.collider:SetOffset(469.5,54.5378,347.5)
level01.colliders.AutoGenParent483ID341.collider:SetZAxis(0.039968,0,0.999201)
level01.colliders.AutoGenParent483ID341.collider:SetHalfLengths(0.3,6.81649,12.51)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID341.collider)
level01.colliders.AutoGenParent483ID342 = {}
level01.colliders.AutoGenParent483ID342.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID342.collider:SetOffset(470,56.3543,371.5)
level01.colliders.AutoGenParent483ID342.collider:SetZAxis(0,0,1)
level01.colliders.AutoGenParent483ID342.collider:SetHalfLengths(0.3,7.49767,11.5)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID342.collider)
level01.colliders.AutoGenParent483ID343 = {}
level01.colliders.AutoGenParent483ID343.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID343.collider:SetOffset(450.5,60.2143,356.5)
level01.colliders.AutoGenParent483ID343.collider:SetZAxis(0.0766965,0,0.997055)
level01.colliders.AutoGenParent483ID343.collider:SetHalfLengths(0.3,5.90825,6.5192)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID343.collider)
level01.colliders.AutoGenParent483ID344 = {}
level01.colliders.AutoGenParent483ID344.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID344.collider:SetOffset(452,61.1226,373)
level01.colliders.AutoGenParent483ID344.collider:SetZAxis(0.0995037,0,0.995037)
level01.colliders.AutoGenParent483ID344.collider:SetHalfLengths(0.3,7.38414,10.0499)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID344.collider)
level01.colliders.AutoGenParent483ID345 = {}
level01.colliders.AutoGenParent483ID345.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID345.collider:SetOffset(473.5,58.852,383)
level01.colliders.AutoGenParent483ID345.collider:SetZAxis(1,0,0)
level01.colliders.AutoGenParent483ID345.collider:SetHalfLengths(0.3,19.5319,3.5)
level01.colliders.AutoGenParent483ID335.collider:AddChild(level01.colliders.AutoGenParent483ID345.collider)
level01.colliders.AutoGenParent483ID346 = {}
level01.colliders.AutoGenParent483ID346.collider = AABBCollider.Create(-1)
level01.colliders.AutoGenParent483ID346.collider:SetOffset(0,0,0)
level01.colliders.AutoGenParent483ID346.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
level01.colliders.AutoGenParent483ID346.collider:SetMaxPos(508.26,43.6435,383.149)
level01.colliders.AutoGenParent483ID334.collider:AddChild(level01.colliders.AutoGenParent483ID346.collider)
level01.colliders.AutoGenParent483ID347 = {}
level01.colliders.AutoGenParent483ID347.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID347.collider:SetOffset(-1.07374e+08,-1.07374e+08,-1.07374e+08)
level01.colliders.AutoGenParent483ID347.collider:SetZAxis(-0.582718,0,0.812674)
level01.colliders.AutoGenParent483ID347.collider:SetHalfLengths(0.5,0.5,0.5)
level01.colliders.AutoGenParent483ID346.collider:AddChild(level01.colliders.AutoGenParent483ID347.collider)
level01.colliders.AutoGenParent483ID348 = {}
level01.colliders.AutoGenParent483ID348.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID348.collider:SetOffset(502.5,37.0541,372.5)
level01.colliders.AutoGenParent483ID348.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.AutoGenParent483ID348.collider:SetHalfLengths(0.3,5.68118,3.80789)
level01.colliders.AutoGenParent483ID346.collider:AddChild(level01.colliders.AutoGenParent483ID348.collider)
level01.colliders.AutoGenParent483ID349 = {}
level01.colliders.AutoGenParent483ID349.collider = OBBCollider.Create(-1)
level01.colliders.AutoGenParent483ID349.collider:SetOffset(506,37.7352,379.5)
level01.colliders.AutoGenParent483ID349.collider:SetZAxis(0.496139,0,0.868243)
level01.colliders.AutoGenParent483ID349.collider:SetHalfLengths(0.3,5.90825,4.03113)
level01.colliders.AutoGenParent483ID346.collider:AddChild(level01.colliders.AutoGenParent483ID349.collider)
CollisionHandler.AddAABB(level01.colliders.AutoGenParent483ID.collider, 3)
level01.colliders.AutoGenParent483ID1 = nil
level01.colliders.AutoGenParent483ID2 = nil
level01.colliders.AutoGenParent483ID3 = nil
level01.colliders.AutoGenParent483ID4 = nil
level01.colliders.AutoGenParent483ID5 = nil
level01.colliders.AutoGenParent483ID6 = nil
level01.colliders.AutoGenParent483ID7 = nil
level01.colliders.AutoGenParent483ID8 = nil
level01.colliders.AutoGenParent483ID9 = nil
level01.colliders.AutoGenParent483ID10 = nil
level01.colliders.AutoGenParent483ID11 = nil
level01.colliders.AutoGenParent483ID12 = nil
level01.colliders.AutoGenParent483ID13 = nil
level01.colliders.AutoGenParent483ID14 = nil
level01.colliders.AutoGenParent483ID15 = nil
level01.colliders.AutoGenParent483ID16 = nil
level01.colliders.AutoGenParent483ID17 = nil
level01.colliders.AutoGenParent483ID18 = nil
level01.colliders.AutoGenParent483ID19 = nil
level01.colliders.AutoGenParent483ID20 = nil
level01.colliders.AutoGenParent483ID21 = nil
level01.colliders.AutoGenParent483ID22 = nil
level01.colliders.AutoGenParent483ID23 = nil
level01.colliders.AutoGenParent483ID24 = nil
level01.colliders.AutoGenParent483ID25 = nil
level01.colliders.AutoGenParent483ID26 = nil
level01.colliders.AutoGenParent483ID27 = nil
level01.colliders.AutoGenParent483ID28 = nil
level01.colliders.AutoGenParent483ID29 = nil
level01.colliders.AutoGenParent483ID30 = nil
level01.colliders.AutoGenParent483ID31 = nil
level01.colliders.AutoGenParent483ID32 = nil
level01.colliders.AutoGenParent483ID33 = nil
level01.colliders.AutoGenParent483ID34 = nil
level01.colliders.AutoGenParent483ID35 = nil
level01.colliders.AutoGenParent483ID36 = nil
level01.colliders.AutoGenParent483ID37 = nil
level01.colliders.AutoGenParent483ID38 = nil
level01.colliders.AutoGenParent483ID39 = nil
level01.colliders.AutoGenParent483ID40 = nil
level01.colliders.AutoGenParent483ID41 = nil
level01.colliders.AutoGenParent483ID42 = nil
level01.colliders.AutoGenParent483ID43 = nil
level01.colliders.AutoGenParent483ID44 = nil
level01.colliders.AutoGenParent483ID45 = nil
level01.colliders.AutoGenParent483ID46 = nil
level01.colliders.AutoGenParent483ID47 = nil
level01.colliders.AutoGenParent483ID48 = nil
level01.colliders.AutoGenParent483ID49 = nil
level01.colliders.AutoGenParent483ID50 = nil
level01.colliders.AutoGenParent483ID51 = nil
level01.colliders.AutoGenParent483ID52 = nil
level01.colliders.AutoGenParent483ID53 = nil
level01.colliders.AutoGenParent483ID54 = nil
level01.colliders.AutoGenParent483ID55 = nil
level01.colliders.AutoGenParent483ID56 = nil
level01.colliders.AutoGenParent483ID57 = nil
level01.colliders.AutoGenParent483ID58 = nil
level01.colliders.AutoGenParent483ID59 = nil
level01.colliders.AutoGenParent483ID60 = nil
level01.colliders.AutoGenParent483ID61 = nil
level01.colliders.AutoGenParent483ID62 = nil
level01.colliders.AutoGenParent483ID63 = nil
level01.colliders.AutoGenParent483ID64 = nil
level01.colliders.AutoGenParent483ID65 = nil
level01.colliders.AutoGenParent483ID66 = nil
level01.colliders.AutoGenParent483ID67 = nil
level01.colliders.AutoGenParent483ID68 = nil
level01.colliders.AutoGenParent483ID69 = nil
level01.colliders.AutoGenParent483ID70 = nil
level01.colliders.AutoGenParent483ID71 = nil
level01.colliders.AutoGenParent483ID72 = nil
level01.colliders.AutoGenParent483ID73 = nil
level01.colliders.AutoGenParent483ID74 = nil
level01.colliders.AutoGenParent483ID75 = nil
level01.colliders.AutoGenParent483ID76 = nil
level01.colliders.AutoGenParent483ID77 = nil
level01.colliders.AutoGenParent483ID78 = nil
level01.colliders.AutoGenParent483ID79 = nil
level01.colliders.AutoGenParent483ID80 = nil
level01.colliders.AutoGenParent483ID81 = nil
level01.colliders.AutoGenParent483ID82 = nil
level01.colliders.AutoGenParent483ID83 = nil
level01.colliders.AutoGenParent483ID84 = nil
level01.colliders.AutoGenParent483ID85 = nil
level01.colliders.AutoGenParent483ID86 = nil
level01.colliders.AutoGenParent483ID87 = nil
level01.colliders.AutoGenParent483ID88 = nil
level01.colliders.AutoGenParent483ID89 = nil
level01.colliders.AutoGenParent483ID90 = nil
level01.colliders.AutoGenParent483ID91 = nil
level01.colliders.AutoGenParent483ID92 = nil
level01.colliders.AutoGenParent483ID93 = nil
level01.colliders.AutoGenParent483ID94 = nil
level01.colliders.AutoGenParent483ID95 = nil
level01.colliders.AutoGenParent483ID96 = nil
level01.colliders.AutoGenParent483ID97 = nil
level01.colliders.AutoGenParent483ID98 = nil
level01.colliders.AutoGenParent483ID99 = nil
level01.colliders.AutoGenParent483ID100 = nil
level01.colliders.AutoGenParent483ID101 = nil
level01.colliders.AutoGenParent483ID102 = nil
level01.colliders.AutoGenParent483ID103 = nil
level01.colliders.AutoGenParent483ID104 = nil
level01.colliders.AutoGenParent483ID105 = nil
level01.colliders.AutoGenParent483ID106 = nil
level01.colliders.AutoGenParent483ID107 = nil
level01.colliders.AutoGenParent483ID108 = nil
level01.colliders.AutoGenParent483ID109 = nil
level01.colliders.AutoGenParent483ID110 = nil
level01.colliders.AutoGenParent483ID111 = nil
level01.colliders.AutoGenParent483ID112 = nil
level01.colliders.AutoGenParent483ID113 = nil
level01.colliders.AutoGenParent483ID114 = nil
level01.colliders.AutoGenParent483ID115 = nil
level01.colliders.AutoGenParent483ID116 = nil
level01.colliders.AutoGenParent483ID117 = nil
level01.colliders.AutoGenParent483ID118 = nil
level01.colliders.AutoGenParent483ID119 = nil
level01.colliders.AutoGenParent483ID120 = nil
level01.colliders.AutoGenParent483ID121 = nil
level01.colliders.AutoGenParent483ID122 = nil
level01.colliders.AutoGenParent483ID123 = nil
level01.colliders.AutoGenParent483ID124 = nil
level01.colliders.AutoGenParent483ID125 = nil
level01.colliders.AutoGenParent483ID126 = nil
level01.colliders.AutoGenParent483ID127 = nil
level01.colliders.AutoGenParent483ID128 = nil
level01.colliders.AutoGenParent483ID129 = nil
level01.colliders.AutoGenParent483ID130 = nil
level01.colliders.AutoGenParent483ID131 = nil
level01.colliders.AutoGenParent483ID132 = nil
level01.colliders.AutoGenParent483ID133 = nil
level01.colliders.AutoGenParent483ID134 = nil
level01.colliders.AutoGenParent483ID135 = nil
level01.colliders.AutoGenParent483ID136 = nil
level01.colliders.AutoGenParent483ID137 = nil
level01.colliders.AutoGenParent483ID138 = nil
level01.colliders.AutoGenParent483ID139 = nil
level01.colliders.AutoGenParent483ID140 = nil
level01.colliders.AutoGenParent483ID141 = nil
level01.colliders.AutoGenParent483ID142 = nil
level01.colliders.AutoGenParent483ID143 = nil
level01.colliders.AutoGenParent483ID144 = nil
level01.colliders.AutoGenParent483ID145 = nil
level01.colliders.AutoGenParent483ID146 = nil
level01.colliders.AutoGenParent483ID147 = nil
level01.colliders.AutoGenParent483ID148 = nil
level01.colliders.AutoGenParent483ID149 = nil
level01.colliders.AutoGenParent483ID150 = nil
level01.colliders.AutoGenParent483ID151 = nil
level01.colliders.AutoGenParent483ID152 = nil
level01.colliders.AutoGenParent483ID153 = nil
level01.colliders.AutoGenParent483ID154 = nil
level01.colliders.AutoGenParent483ID155 = nil
level01.colliders.AutoGenParent483ID156 = nil
level01.colliders.AutoGenParent483ID157 = nil
level01.colliders.AutoGenParent483ID158 = nil
level01.colliders.AutoGenParent483ID159 = nil
level01.colliders.AutoGenParent483ID160 = nil
level01.colliders.AutoGenParent483ID161 = nil
level01.colliders.AutoGenParent483ID162 = nil
level01.colliders.AutoGenParent483ID163 = nil
level01.colliders.AutoGenParent483ID164 = nil
level01.colliders.AutoGenParent483ID165 = nil
level01.colliders.AutoGenParent483ID166 = nil
level01.colliders.AutoGenParent483ID167 = nil
level01.colliders.AutoGenParent483ID168 = nil
level01.colliders.AutoGenParent483ID169 = nil
level01.colliders.AutoGenParent483ID170 = nil
level01.colliders.AutoGenParent483ID171 = nil
level01.colliders.AutoGenParent483ID172 = nil
level01.colliders.AutoGenParent483ID173 = nil
level01.colliders.AutoGenParent483ID174 = nil
level01.colliders.AutoGenParent483ID175 = nil
level01.colliders.AutoGenParent483ID176 = nil
level01.colliders.AutoGenParent483ID177 = nil
level01.colliders.AutoGenParent483ID178 = nil
level01.colliders.AutoGenParent483ID179 = nil
level01.colliders.AutoGenParent483ID180 = nil
level01.colliders.AutoGenParent483ID181 = nil
level01.colliders.AutoGenParent483ID182 = nil
level01.colliders.AutoGenParent483ID183 = nil
level01.colliders.AutoGenParent483ID184 = nil
level01.colliders.AutoGenParent483ID185 = nil
level01.colliders.AutoGenParent483ID186 = nil
level01.colliders.AutoGenParent483ID187 = nil
level01.colliders.AutoGenParent483ID188 = nil
level01.colliders.AutoGenParent483ID189 = nil
level01.colliders.AutoGenParent483ID190 = nil
level01.colliders.AutoGenParent483ID191 = nil
level01.colliders.AutoGenParent483ID192 = nil
level01.colliders.AutoGenParent483ID193 = nil
level01.colliders.AutoGenParent483ID194 = nil
level01.colliders.AutoGenParent483ID195 = nil
level01.colliders.AutoGenParent483ID196 = nil
level01.colliders.AutoGenParent483ID197 = nil
level01.colliders.AutoGenParent483ID198 = nil
level01.colliders.AutoGenParent483ID199 = nil
level01.colliders.AutoGenParent483ID200 = nil
level01.colliders.AutoGenParent483ID201 = nil
level01.colliders.AutoGenParent483ID202 = nil
level01.colliders.AutoGenParent483ID203 = nil
level01.colliders.AutoGenParent483ID204 = nil
level01.colliders.AutoGenParent483ID205 = nil
level01.colliders.AutoGenParent483ID206 = nil
level01.colliders.AutoGenParent483ID207 = nil
level01.colliders.AutoGenParent483ID208 = nil
level01.colliders.AutoGenParent483ID209 = nil
level01.colliders.AutoGenParent483ID210 = nil
level01.colliders.AutoGenParent483ID211 = nil
level01.colliders.AutoGenParent483ID212 = nil
level01.colliders.AutoGenParent483ID213 = nil
level01.colliders.AutoGenParent483ID214 = nil
level01.colliders.AutoGenParent483ID215 = nil
level01.colliders.AutoGenParent483ID216 = nil
level01.colliders.AutoGenParent483ID217 = nil
level01.colliders.AutoGenParent483ID218 = nil
level01.colliders.AutoGenParent483ID219 = nil
level01.colliders.AutoGenParent483ID220 = nil
level01.colliders.AutoGenParent483ID221 = nil
level01.colliders.AutoGenParent483ID222 = nil
level01.colliders.AutoGenParent483ID223 = nil
level01.colliders.AutoGenParent483ID224 = nil
level01.colliders.AutoGenParent483ID225 = nil
level01.colliders.AutoGenParent483ID226 = nil
level01.colliders.AutoGenParent483ID227 = nil
level01.colliders.AutoGenParent483ID228 = nil
level01.colliders.AutoGenParent483ID229 = nil
level01.colliders.AutoGenParent483ID230 = nil
level01.colliders.AutoGenParent483ID231 = nil
level01.colliders.AutoGenParent483ID232 = nil
level01.colliders.AutoGenParent483ID233 = nil
level01.colliders.AutoGenParent483ID234 = nil
level01.colliders.AutoGenParent483ID235 = nil
level01.colliders.AutoGenParent483ID236 = nil
level01.colliders.AutoGenParent483ID237 = nil
level01.colliders.AutoGenParent483ID238 = nil
level01.colliders.AutoGenParent483ID239 = nil
level01.colliders.AutoGenParent483ID240 = nil
level01.colliders.AutoGenParent483ID241 = nil
level01.colliders.AutoGenParent483ID242 = nil
level01.colliders.AutoGenParent483ID243 = nil
level01.colliders.AutoGenParent483ID244 = nil
level01.colliders.AutoGenParent483ID245 = nil
level01.colliders.AutoGenParent483ID246 = nil
level01.colliders.AutoGenParent483ID247 = nil
level01.colliders.AutoGenParent483ID248 = nil
level01.colliders.AutoGenParent483ID249 = nil
level01.colliders.AutoGenParent483ID250 = nil
level01.colliders.AutoGenParent483ID251 = nil
level01.colliders.AutoGenParent483ID252 = nil
level01.colliders.AutoGenParent483ID253 = nil
level01.colliders.AutoGenParent483ID254 = nil
level01.colliders.AutoGenParent483ID255 = nil
level01.colliders.AutoGenParent483ID256 = nil
level01.colliders.AutoGenParent483ID257 = nil
level01.colliders.AutoGenParent483ID258 = nil
level01.colliders.AutoGenParent483ID259 = nil
level01.colliders.AutoGenParent483ID260 = nil
level01.colliders.AutoGenParent483ID261 = nil
level01.colliders.AutoGenParent483ID262 = nil
level01.colliders.AutoGenParent483ID263 = nil
level01.colliders.AutoGenParent483ID264 = nil
level01.colliders.AutoGenParent483ID265 = nil
level01.colliders.AutoGenParent483ID266 = nil
level01.colliders.AutoGenParent483ID267 = nil
level01.colliders.AutoGenParent483ID268 = nil
level01.colliders.AutoGenParent483ID269 = nil
level01.colliders.AutoGenParent483ID270 = nil
level01.colliders.AutoGenParent483ID271 = nil
level01.colliders.AutoGenParent483ID272 = nil
level01.colliders.AutoGenParent483ID273 = nil
level01.colliders.AutoGenParent483ID274 = nil
level01.colliders.AutoGenParent483ID275 = nil
level01.colliders.AutoGenParent483ID276 = nil
level01.colliders.AutoGenParent483ID277 = nil
level01.colliders.AutoGenParent483ID278 = nil
level01.colliders.AutoGenParent483ID279 = nil
level01.colliders.AutoGenParent483ID280 = nil
level01.colliders.AutoGenParent483ID281 = nil
level01.colliders.AutoGenParent483ID282 = nil
level01.colliders.AutoGenParent483ID283 = nil
level01.colliders.AutoGenParent483ID284 = nil
level01.colliders.AutoGenParent483ID285 = nil
level01.colliders.AutoGenParent483ID286 = nil
level01.colliders.AutoGenParent483ID287 = nil
level01.colliders.AutoGenParent483ID288 = nil
level01.colliders.AutoGenParent483ID289 = nil
level01.colliders.AutoGenParent483ID290 = nil
level01.colliders.AutoGenParent483ID291 = nil
level01.colliders.AutoGenParent483ID292 = nil
level01.colliders.AutoGenParent483ID293 = nil
level01.colliders.AutoGenParent483ID294 = nil
level01.colliders.AutoGenParent483ID295 = nil
level01.colliders.AutoGenParent483ID296 = nil
level01.colliders.AutoGenParent483ID297 = nil
level01.colliders.AutoGenParent483ID298 = nil
level01.colliders.AutoGenParent483ID299 = nil
level01.colliders.AutoGenParent483ID300 = nil
level01.colliders.AutoGenParent483ID301 = nil
level01.colliders.AutoGenParent483ID302 = nil
level01.colliders.AutoGenParent483ID303 = nil
level01.colliders.AutoGenParent483ID304 = nil
level01.colliders.AutoGenParent483ID305 = nil
level01.colliders.AutoGenParent483ID306 = nil
level01.colliders.AutoGenParent483ID307 = nil
level01.colliders.AutoGenParent483ID308 = nil
level01.colliders.AutoGenParent483ID309 = nil
level01.colliders.AutoGenParent483ID310 = nil
level01.colliders.AutoGenParent483ID311 = nil
level01.colliders.AutoGenParent483ID312 = nil
level01.colliders.AutoGenParent483ID313 = nil
level01.colliders.AutoGenParent483ID314 = nil
level01.colliders.AutoGenParent483ID315 = nil
level01.colliders.AutoGenParent483ID316 = nil
level01.colliders.AutoGenParent483ID317 = nil
level01.colliders.AutoGenParent483ID318 = nil
level01.colliders.AutoGenParent483ID319 = nil
level01.colliders.AutoGenParent483ID320 = nil
level01.colliders.AutoGenParent483ID321 = nil
level01.colliders.AutoGenParent483ID322 = nil
level01.colliders.AutoGenParent483ID323 = nil
level01.colliders.AutoGenParent483ID324 = nil
level01.colliders.AutoGenParent483ID325 = nil
level01.colliders.AutoGenParent483ID326 = nil
level01.colliders.AutoGenParent483ID327 = nil
level01.colliders.AutoGenParent483ID328 = nil
level01.colliders.AutoGenParent483ID329 = nil
level01.colliders.AutoGenParent483ID330 = nil
level01.colliders.AutoGenParent483ID331 = nil
level01.colliders.AutoGenParent483ID332 = nil
level01.colliders.AutoGenParent483ID333 = nil
level01.colliders.AutoGenParent483ID334 = nil
level01.colliders.AutoGenParent483ID335 = nil
level01.colliders.AutoGenParent483ID336 = nil
level01.colliders.AutoGenParent483ID337 = nil
level01.colliders.AutoGenParent483ID338 = nil
level01.colliders.AutoGenParent483ID339 = nil
level01.colliders.AutoGenParent483ID340 = nil
level01.colliders.AutoGenParent483ID341 = nil
level01.colliders.AutoGenParent483ID342 = nil
level01.colliders.AutoGenParent483ID343 = nil
level01.colliders.AutoGenParent483ID344 = nil
level01.colliders.AutoGenParent483ID345 = nil
level01.colliders.AutoGenParent483ID346 = nil
level01.colliders.AutoGenParent483ID347 = nil
level01.colliders.AutoGenParent483ID348 = nil
level01.colliders.AutoGenParent483ID349 = nil

local New221247ID = CreateEnemy(ENEMY_MELEE, {x=20.7969, y=6.44531, z=147.75})

New221247ID.moveSpeed = 9
New221247ID.health = 50
New221247ID.visionRange = 30

New221247ID.SetState(New221247ID,"DoNothingState")



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

end
level01.unload = function()
Gear.UnbindInstance(level01.props.TilePlaceholder2ID.transformID)
level01.props.TilePlaceholder2ID = nil
level01.props.tile13ID = nil
level01.props.TileSettings4ID = nil
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
--[[level01.colliders.Obb3835ID = nil
level01.colliders.OpWall78ID = nil
level01.colliders.OpWall179ID = nil
level01.colliders.OpWall280ID = nil
level01.colliders.OpWall381ID = nil
level01.colliders.OpWall482ID = nil
level01.colliders.OpWall583ID = nil
level01.colliders.OpWall684ID = nil
level01.colliders.OpWall785ID = nil
level01.colliders.OpWall886ID = nil
level01.colliders.OpWall987ID = nil
level01.colliders.OpWall1088ID = nil
level01.colliders.OpWall1189ID = nil
level01.colliders.OpWall1290ID = nil
level01.colliders.OpWall1391ID = nil
level01.colliders.OpWall1492ID = nil
level01.colliders.OpWall1593ID = nil
level01.colliders.OpWall1694ID = nil
level01.colliders.OpWall1795ID = nil
level01.colliders.OpWall1896ID = nil
level01.colliders.OpWall1997ID = nil
level01.colliders.OpWall2098ID = nil
level01.colliders.OpWall2199ID = nil
level01.colliders.OpWall22100ID = nil
level01.colliders.OpWall23101ID = nil
level01.colliders.OpWall24102ID = nil
level01.colliders.OpWall25103ID = nil
level01.colliders.OpWall26104ID = nil
level01.colliders.OpWall27105ID = nil
level01.colliders.OpWall28106ID = nil
level01.colliders.OpWall29107ID = nil
level01.colliders.OpWall30108ID = nil
level01.colliders.OpWall31109ID = nil
level01.colliders.OpWall32110ID = nil
level01.colliders.OpWall33111ID = nil
level01.colliders.OpWall34112ID = nil
level01.colliders.OpWall35113ID = nil
level01.colliders.OpWall36114ID = nil
level01.colliders.OpWall37115ID = nil
level01.colliders.OpWall38116ID = nil
level01.colliders.OpWall39117ID = nil
level01.colliders.OpWall40118ID = nil
level01.colliders.OpWall41119ID = nil
level01.colliders.OpWall42120ID = nil
level01.colliders.OpWall43121ID = nil
level01.colliders.OpWall44122ID = nil
level01.colliders.OpWall45123ID = nil
level01.colliders.OpWall46124ID = nil
level01.colliders.OpWall47125ID = nil
level01.colliders.OpWall48126ID = nil
level01.colliders.OpWall49127ID = nil
level01.colliders.OpWall50128ID = nil
level01.colliders.OpWall51129ID = nil
level01.colliders.OpWall52130ID = nil
level01.colliders.OpWall53131ID = nil
level01.colliders.OpWall54132ID = nil
level01.colliders.OpWall55133ID = nil
level01.colliders.OpWall56134ID = nil
level01.colliders.OpWall57135ID = nil
level01.colliders.OpWall58136ID = nil
level01.colliders.OpWall59137ID = nil
level01.colliders.OpWall60138ID = nil
level01.colliders.OpWall61139ID = nil
level01.colliders.OpWall62140ID = nil
level01.colliders.OpWall63141ID = nil
level01.colliders.OpWall64142ID = nil
level01.colliders.OpWall65143ID = nil
level01.colliders.OpWall66144ID = nil
level01.colliders.OpWall67145ID = nil
level01.colliders.OpWall68146ID = nil
level01.colliders.OpWall69147ID = nil
level01.colliders.OpWall70148ID = nil
level01.colliders.OpWall71149ID = nil
level01.colliders.OpWall72150ID = nil
level01.colliders.OpWall73151ID = nil
level01.colliders.OpWall74152ID = nil
level01.colliders.OpWall75153ID = nil
level01.colliders.OpWall76154ID = nil
level01.colliders.OpWall77155ID = nil
level01.colliders.OpWall78156ID = nil
level01.colliders.OpWall79157ID = nil
level01.colliders.OpWall80158ID = nil--]]
Gear.UnbindInstance(level01.props.Bridge373ID.transformID)
level01.props.Bridge373ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11374ID.transformID)
level01.props.OakTree_NoCollider11374ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12375ID.transformID)
level01.props.OakTree_NoCollider12375ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13376ID.transformID)
level01.props.OakTree_NoCollider13376ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14377ID.transformID)
level01.props.OakTree_NoCollider14377ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151378ID.transformID)
level01.props.OakTree_NoCollider151378ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16379ID.transformID)
level01.props.OakTree_NoCollider16379ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17380ID.transformID)
level01.props.OakTree_NoCollider17380ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18381ID.transformID)
level01.props.OakTree_NoCollider18381ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19382ID.transformID)
level01.props.OakTree_NoCollider19382ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider110383ID.transformID)
level01.props.OakTree_NoCollider110383ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider384ID.transformID)
level01.props.OakTree_Collider384ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1385ID.transformID)
level01.props.OakTree_Collider1385ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2386ID.transformID)
level01.props.OakTree_Collider2386ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3387ID.transformID)
level01.props.OakTree_Collider3387ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider388ID.transformID)
level01.props.PineTree_NoCollider388ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2426ID.transformID)
level01.props.PineTree_NoCollider2426ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3427ID.transformID)
level01.props.PineTree_NoCollider3427ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4428ID.transformID)
level01.props.PineTree_NoCollider4428ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5429ID.transformID)
level01.props.PineTree_NoCollider5429ID = nil
--level01.colliders.Tile1_wallNr440ID = nil
--level01.colliders.Tile1_wallNr1441ID = nil
--level01.colliders.Tile1_wallNr2442ID = nil
level01.triggers.New443ID = nil

--[[level01.colliders.AutoGenParent1447ID = nil
level01.colliders.AutoGenParent2448ID = nil
level01.colliders.AutoGenParent3449ID = nil
level01.colliders.AutoGenParent4450ID = nil
level01.colliders.AutoGenParent5451ID = nil
level01.colliders.AutoGenParent6452ID = nil
level01.colliders.AutoGenParent7453ID = nil
level01.colliders.AutoGenParent8454ID = nil
level01.colliders.AutoGenParent9455ID = nil
level01.colliders.AutoGenParent10456ID = nil
level01.colliders.AutoGenParent11457ID = nil
level01.colliders.AutoGenParent12458ID = nil
level01.colliders.AutoGenParent13459ID = nil
level01.colliders.AutoGenParent14460ID = nil
level01.colliders.AutoGenParent15461ID = nil
level01.colliders.AutoGenParent16462ID = nil
level01.colliders.AutoGenParent17463ID = nil
level01.colliders.AutoGenParent18464ID = nil
level01.colliders.AutoGenParent19465ID = nil
level01.colliders.AutoGenParent20466ID = nil
level01.colliders.AutoGenParent21467ID = nil
level01.colliders.AutoGenParent22468ID = nil
level01.colliders.AutoGenParent23469ID = nil
level01.colliders.AutoGenParent24470ID = nil
level01.colliders.AutoGenParent25471ID = nil
level01.colliders.AutoGenParent26472ID = nil
level01.colliders.AutoGenParent27473ID = nil
level01.colliders.AutoGenParent28474ID = nil
level01.colliders.AutoGenParent29475ID = nil
level01.colliders.AutoGenParent30476ID = nil
level01.colliders.AutoGenParent31477ID = nil
level01.colliders.AutoGenParent32478ID = nil
level01.colliders.AutoGenParent33479ID = nil
level01.colliders.AutoGenParent34480ID = nil
level01.colliders.AutoGenParent35481ID = nil
level01.colliders.AutoGenParent36482ID = nil
level01.colliders.AutoGenParent483ID = nil--]]
level01.props = nil
--level01.colliders = nil
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
level02.props.PineTree_Collider389ID = {}
level02.props.PineTree_Collider389ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider389ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider389ID.model)
Transform.SetPosition(level02.props.PineTree_Collider389ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider389ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_Collider389ID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider1390ID = {}
level02.props.PineTree_Collider1390ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1390ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1390ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1390ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1390ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1390ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2391ID = {}
level02.props.PineTree_Collider2391ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2391ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2391ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2391ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2391ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2391ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider1392ID = {}
level02.props.PineTree_NoCollider1392ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1392ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1392ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1392ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1392ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1392ID.transformID, {x=0, y=2.74772, z=0})
level02.props.PineTree_NoCollider11393ID = {}
level02.props.PineTree_NoCollider11393ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11393ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11393ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11393ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11393ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11393ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider12394ID = {}
level02.props.PineTree_NoCollider12394ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12394ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12394ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12394ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12394ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12394ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider13395ID = {}
level02.props.PineTree_NoCollider13395ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13395ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13395ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13395ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13395ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13395ID.transformID, {x=0, y=0.550171, z=0})
level02.props.PineTree_NoCollider14396ID = {}
level02.props.PineTree_NoCollider14396ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14396ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14396ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14396ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14396ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14396ID.transformID, {x=0, y=2.98311, z=0})
level02.props.PineTree_NoCollider15397ID = {}
level02.props.PineTree_NoCollider15397ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15397ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15397ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15397ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15397ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15397ID.transformID, {x=0, y=-7.32886, z=0})
level02.props.PineTree_NoCollider16398ID = {}
level02.props.PineTree_NoCollider16398ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16398ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16398ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16398ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16398ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16398ID.transformID, {x=0, y=-2.98524, z=0})
level02.props.PineTree_NoCollider17399ID = {}
level02.props.PineTree_NoCollider17399ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17399ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17399ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17399ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17399ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17399ID.transformID, {x=0, y=-2.76387, z=0})
level02.props.PineTree_NoCollider18400ID = {}
level02.props.PineTree_NoCollider18400ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18400ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18400ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18400ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18400ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18400ID.transformID, {x=0, y=1.82048, z=0})
level02.props.PineTree_NoCollider19401ID = {}
level02.props.PineTree_NoCollider19401ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19401ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19401ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19401ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19401ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19401ID.transformID, {x=0, y=-2.19759, z=0})
level02.props.OakTree_Collider4402ID = {}
level02.props.OakTree_Collider4402ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4402ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4402ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4402ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4402ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4402ID.transformID, {x=0, y=3.64905, z=0})
level02.props.OakTree_Collider41403ID = {}
level02.props.OakTree_Collider41403ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41403ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41403ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41403ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41403ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41403ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42404ID = {}
level02.props.OakTree_Collider42404ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42404ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42404ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42404ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42404ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42404ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43405ID = {}
level02.props.OakTree_Collider43405ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43405ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43405ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43405ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43405ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43405ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44406ID = {}
level02.props.OakTree_Collider44406ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44406ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44406ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44406ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44406ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44406ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45407ID = {}
level02.props.OakTree_Collider45407ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45407ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45407ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45407ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45407ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45407ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46408ID = {}
level02.props.OakTree_Collider46408ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46408ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46408ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46408ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46408ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46408ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider1409ID = {}
level02.props.OakTree_NoCollider1409ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1409ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1409ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1409ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1409ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1409ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider15410ID = {}
level02.props.OakTree_NoCollider15410ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15410ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15410ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15410ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15410ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15410ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider111411ID = {}
level02.props.OakTree_NoCollider111411ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111411ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111411ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111411ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111411ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111411ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider112412ID = {}
level02.props.OakTree_NoCollider112412ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112412ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112412ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112412ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112412ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112412ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider113413ID = {}
level02.props.OakTree_NoCollider113413ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113413ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113413ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113413ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113413ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113413ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider114414ID = {}
level02.props.OakTree_NoCollider114414ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114414ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114414ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114414ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114414ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114414ID.transformID, {x=0, y=-5.86132, z=0})
level02.props.OakTree_NoCollider115415ID = {}
level02.props.OakTree_NoCollider115415ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115415ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115415ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115415ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115415ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115415ID.transformID, {x=0, y=1.59683, z=0})
level02.props.OakTree_NoCollider116416ID = {}
level02.props.OakTree_NoCollider116416ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116416ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116416ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116416ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116416ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116416ID.transformID, {x=0, y=-1.86515, z=0})
level02.props.OakTree_NoCollider117417ID = {}
level02.props.OakTree_NoCollider117417ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117417ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117417ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117417ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117417ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117417ID.transformID, {x=0, y=-1.52942, z=0})
level02.props.OakTree_NoCollider118418ID = {}
level02.props.OakTree_NoCollider118418ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118418ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118418ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118418ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118418ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118418ID.transformID, {x=0, y=3.43332, z=0})
level02.props.OakTree_NoCollider119419ID = {}
level02.props.OakTree_NoCollider119419ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119419ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119419ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119419ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119419ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119419ID.transformID, {x=0, y=1.121, z=0})
level02.props.OakTree_NoCollider120420ID = {}
level02.props.OakTree_NoCollider120420ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120420ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120420ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120420ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120420ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120420ID.transformID, {x=0, y=1.69246, z=0})
level02.props.OakTree_NoCollider121421ID = {}
level02.props.OakTree_NoCollider121421ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121421ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121421ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121421ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121421ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121421ID.transformID, {x=0, y=1.70454, z=0})
level02.props.OakTree_NoCollider122422ID = {}
level02.props.OakTree_NoCollider122422ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122422ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122422ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122422ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122422ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122422ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider123423ID = {}
level02.props.OakTree_NoCollider123423ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123423ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123423ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123423ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123423ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123423ID.transformID, {x=0, y=2.28254, z=0})
level02.props.OakTree_NoCollider124424ID = {}
level02.props.OakTree_NoCollider124424ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124424ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124424ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124424ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124424ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124424ID.transformID, {x=0, y=-7.63234, z=0})
level02.props.OakTree_NoCollider125425ID = {}
level02.props.OakTree_NoCollider125425ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125425ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125425ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125425ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125425ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125425ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider126430ID = {}
level02.props.OakTree_NoCollider126430ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126430ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126430ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126430ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126430ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126430ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider127431ID = {}
level02.props.OakTree_NoCollider127431ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127431ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127431ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127431ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127431ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127431ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider128432ID = {}
level02.props.OakTree_NoCollider128432ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128432ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128432ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128432ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128432ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128432ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider129433ID = {}
level02.props.OakTree_NoCollider129433ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129433ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129433ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129433ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129433ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129433ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider130434ID = {}
level02.props.OakTree_NoCollider130434ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130434ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130434ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130434ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130434ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130434ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider131435ID = {}
level02.props.OakTree_NoCollider131435ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131435ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131435ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131435ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131435ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131435ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider132436ID = {}
level02.props.OakTree_NoCollider132436ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132436ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132436ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132436ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132436ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132436ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider133437ID = {}
level02.props.OakTree_NoCollider133437ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133437ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133437ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133437ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133437ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133437ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider134438ID = {}
level02.props.OakTree_NoCollider134438ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134438ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134438ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134438ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134438ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134438ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider135439ID = {}
level02.props.OakTree_NoCollider135439ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135439ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135439ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135439ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135439ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135439ID.transformID, {x=0, y=0, z=0})

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
level02.colliders.Tile2_wallNr159ID = nil
level02.colliders.Tile2_wallNr1160ID = nil
level02.colliders.Tile2_wallNr2161ID = nil
level02.colliders.Tile2_wallNr3162ID = nil
level02.colliders.Tile2_wallNr4163ID = nil
level02.colliders.Tile2_wallNr5164ID = nil
level02.colliders.Tile2_wallNr6165ID = nil
level02.colliders.Tile2_wallNr7166ID = nil
level02.colliders.Tile2_wallNr8167ID = nil
level02.colliders.Tile2_wallNr9168ID = nil
level02.colliders.Tile2_wallNr10169ID = nil
level02.colliders.Tile2_wallNr11170ID = nil
level02.colliders.Tile2_wallNr12171ID = nil
level02.colliders.Tile2_wallNr13172ID = nil
level02.colliders.Tile2_wallNr14173ID = nil
level02.colliders.Tile2_wallNr15174ID = nil
level02.colliders.Tile2_wallNr16175ID = nil
level02.colliders.Tile2_wallNr17176ID = nil
level02.colliders.Tile2_wallNr18177ID = nil
level02.colliders.Tile2_wallNr19178ID = nil
level02.colliders.Tile2_wallNr20179ID = nil
level02.colliders.Tile2_wallNr21180ID = nil
level02.colliders.Tile2_wallNr22181ID = nil
level02.colliders.Tile2_wallNr23182ID = nil
level02.colliders.Tile2_wallNr24183ID = nil
level02.colliders.Tile2_wallNr25184ID = nil
level02.colliders.Tile2_wallNr26185ID = nil
level02.colliders.Tile2_wallNr27186ID = nil
level02.colliders.Tile2_wallNr28187ID = nil
level02.colliders.Tile2_wallNr29188ID = nil
level02.colliders.Tile2_wallNr30189ID = nil
level02.colliders.Tile2_wallNr31190ID = nil
level02.colliders.Tile2_wallNr32191ID = nil
level02.colliders.Tile2_wallNr33192ID = nil
level02.colliders.Tile2_wallNr34193ID = nil
level02.colliders.Tile2_wallNr35194ID = nil
level02.colliders.Tile2_wallNr36195ID = nil
level02.colliders.Tile2_wallNr37196ID = nil
level02.colliders.Tile2_wallNr38197ID = nil
level02.colliders.Tile2_wallNr39198ID = nil
level02.colliders.Tile2_wallNr40199ID = nil
level02.colliders.Tile2_wallNr41200ID = nil
level02.colliders.Tile2_wallNr42201ID = nil
level02.colliders.Tile2_wallNr43202ID = nil
level02.colliders.Tile2_wallNr44203ID = nil
level02.colliders.Tile2_wallNr45204ID = nil
level02.colliders.Tile2_wallNr46205ID = nil
level02.colliders.Tile2_wallNr47206ID = nil
level02.colliders.Tile2_wallNr48207ID = nil
level02.colliders.Tile2_wallNr49208ID = nil
level02.colliders.Tile2_wallNr50209ID = nil
level02.colliders.Tile2_wallNr51210ID = nil
level02.colliders.Tile2_wallNr52211ID = nil
level02.colliders.Tile2_wallNr53212ID = nil
level02.colliders.Tile2_wallNr54213ID = nil
level02.colliders.Tile2_wallNr55214ID = nil
level02.colliders.Tile2_wallNr56215ID = nil
level02.colliders.Tile2_wallNr57216ID = nil
level02.colliders.Tile2_wallNr58217ID = nil
level02.colliders.Tile2_wallNr59218ID = nil
level02.colliders.Tile2_wallNr60219ID = nil
level02.colliders.Tile2_wallNr61220ID = nil
level02.colliders.Tile2_wallNr62221ID = nil
level02.colliders.Tile2_wallNr63222ID = nil
level02.colliders.Tile2_wallNr64223ID = nil
level02.colliders.Tile2_wallNr65224ID = nil
level02.colliders.Tile2_wallNr87225ID = nil
level02.colliders.Tile2_wallNr88226ID = nil
level02.colliders.Tile2_wallNr89227ID = nil
level02.colliders.Tile2_wallNr90228ID = nil
level02.colliders.Tile2_wallNr91229ID = nil
level02.colliders.Tile2_wallNr92230ID = nil
level02.colliders.Tile2_wallNr93231ID = nil
level02.colliders.Tile2_wallNr94232ID = nil
level02.colliders.Tile2_wallNr95233ID = nil
level02.colliders.Tile2_wallNr96234ID = nil
level02.colliders.Tile2_wallNr97235ID = nil
level02.colliders.Tile2_wallNr98236ID = nil
level02.colliders.Tile2_wallNr99237ID = nil
level02.colliders.Tile2_wallNr100238ID = nil
level02.colliders.Tile2_wallNr101239ID = nil
level02.colliders.Tile2_wallNr102240ID = nil
level02.colliders.Tile2_wallNr66241ID = nil
level02.colliders.Tile2_wallNr67242ID = nil
level02.colliders.Tile2_wallNr68243ID = nil
level02.colliders.Tile2_wallNr69244ID = nil
level02.colliders.Tile2_wallNr70245ID = nil
level02.colliders.Tile2_wallNr71246ID = nil
level02.colliders.Tile2_wallNr72247ID = nil
level02.colliders.Tile2_wallNr73248ID = nil
level02.colliders.Tile2_wallNr74249ID = nil
level02.colliders.Tile2_wallNr75250ID = nil
level02.colliders.Tile2_wallNr76251ID = nil
level02.colliders.Tile2_wallNr77252ID = nil
level02.colliders.Tile2_wallNr78253ID = nil
level02.colliders.Tile2_wallNr79254ID = nil
level02.colliders.Tile2_wallNr80255ID = nil
level02.colliders.Tile2_wallNr81256ID = nil
level02.colliders.Tile2_wallNr82257ID = nil
level02.colliders.Tile2_wallNr83258ID = nil
level02.colliders.Tile2_wallNr84259ID = nil
level02.colliders.Tile2_wallNr85260ID = nil
level02.colliders.Tile2_wallNr86261ID = nil
level02.colliders.Tile2_wallNr103262ID = nil
level02.colliders.Tile2_wallNr104263ID = nil
level02.colliders.Tile2_wallNr105264ID = nil
level02.colliders.Tile2_wallNr106265ID = nil
level02.colliders.Tile2_wallNr107266ID = nil
level02.colliders.Tile2_wallNr108267ID = nil
level02.colliders.Tile2_wallNr109268ID = nil
level02.colliders.Tile2_wallNr110269ID = nil
level02.colliders.Tile2_wallNr111270ID = nil
level02.colliders.Tile2_wallNr112271ID = nil
level02.colliders.Tile2_wallNr113272ID = nil
level02.colliders.Tile2_wallNr114273ID = nil
level02.colliders.Tile2_wallNr115274ID = nil
level02.colliders.Tile2_wallNr116275ID = nil
level02.colliders.Tile2_wallNr117276ID = nil
level02.colliders.Tile2_wallNr118277ID = nil
level02.colliders.Tile2_wallNr119278ID = nil
level02.colliders.Tile2_wallNr120279ID = nil
level02.colliders.Tile2_wallNr121280ID = nil
level02.colliders.Tile2_wallNr122281ID = nil
level02.colliders.Tile2_wallNr123282ID = nil
level02.colliders.Tile2_wallNr124283ID = nil
level02.colliders.Tile2_wallNr125284ID = nil
level02.colliders.Tile2_wallNr126285ID = nil
level02.colliders.Tile2_wallNr127286ID = nil
level02.colliders.Tile2_wallNr128287ID = nil
level02.colliders.Tile2_wallNr129288ID = nil
level02.colliders.Tile2_wallNr130289ID = nil
level02.colliders.Tile2_wallNr131290ID = nil
level02.colliders.Tile2_wallNr132291ID = nil
level02.colliders.Tile2_wallNr133292ID = nil
level02.colliders.Tile2_wallNr134293ID = nil
level02.colliders.Tile2_wallNr135294ID = nil
level02.colliders.Tile2_wallNr136295ID = nil
level02.colliders.Tile2_wallNr137296ID = nil
level02.colliders.Tile2_wallNr138297ID = nil
level02.colliders.Tile2_wallNr139298ID = nil
level02.colliders.Tile2_wallNr140299ID = nil
level02.colliders.Tile2_wallNr141300ID = nil
level02.colliders.Tile2_wallNr142301ID = nil
level02.colliders.Tile2_wallNr143302ID = nil
level02.colliders.Tile2_wallNr144303ID = nil
level02.colliders.Tile2_wallNr145304ID = nil
level02.colliders.Tile2_wallNr146305ID = nil
level02.colliders.Tile2_wallNr147306ID = nil
level02.colliders.Tile2_wallNr148307ID = nil
level02.colliders.Tile2_wallNr149308ID = nil
level02.colliders.Tile2_wallNr150309ID = nil
level02.colliders.Tile2_wallNr151310ID = nil
level02.colliders.Tile2_wallNr152311ID = nil
level02.colliders.Tile2_wallNr153312ID = nil
level02.colliders.Tile2_wallNr154313ID = nil
level02.colliders.Tile2_wallNr155314ID = nil
level02.colliders.Tile2_wallNr156315ID = nil
level02.colliders.Tile2_wallNr157316ID = nil
level02.colliders.Tile2_wallNr158317ID = nil
level02.colliders.Tile2_wallNr159318ID = nil
level02.colliders.Tile2_wallNr160319ID = nil
level02.colliders.Tile2_wallNr161320ID = nil
level02.colliders.Tile2_wallNr162321ID = nil
level02.colliders.Tile2_wallNr163322ID = nil
level02.colliders.Tile2_wallNr164323ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider389ID.transformID)
level02.props.PineTree_Collider389ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1390ID.transformID)
level02.props.PineTree_Collider1390ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2391ID.transformID)
level02.props.PineTree_Collider2391ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1392ID.transformID)
level02.props.PineTree_NoCollider1392ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11393ID.transformID)
level02.props.PineTree_NoCollider11393ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12394ID.transformID)
level02.props.PineTree_NoCollider12394ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13395ID.transformID)
level02.props.PineTree_NoCollider13395ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14396ID.transformID)
level02.props.PineTree_NoCollider14396ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15397ID.transformID)
level02.props.PineTree_NoCollider15397ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16398ID.transformID)
level02.props.PineTree_NoCollider16398ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17399ID.transformID)
level02.props.PineTree_NoCollider17399ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18400ID.transformID)
level02.props.PineTree_NoCollider18400ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19401ID.transformID)
level02.props.PineTree_NoCollider19401ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4402ID.transformID)
level02.props.OakTree_Collider4402ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41403ID.transformID)
level02.props.OakTree_Collider41403ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42404ID.transformID)
level02.props.OakTree_Collider42404ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43405ID.transformID)
level02.props.OakTree_Collider43405ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44406ID.transformID)
level02.props.OakTree_Collider44406ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45407ID.transformID)
level02.props.OakTree_Collider45407ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46408ID.transformID)
level02.props.OakTree_Collider46408ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1409ID.transformID)
level02.props.OakTree_NoCollider1409ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15410ID.transformID)
level02.props.OakTree_NoCollider15410ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111411ID.transformID)
level02.props.OakTree_NoCollider111411ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112412ID.transformID)
level02.props.OakTree_NoCollider112412ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113413ID.transformID)
level02.props.OakTree_NoCollider113413ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114414ID.transformID)
level02.props.OakTree_NoCollider114414ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115415ID.transformID)
level02.props.OakTree_NoCollider115415ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116416ID.transformID)
level02.props.OakTree_NoCollider116416ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117417ID.transformID)
level02.props.OakTree_NoCollider117417ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118418ID.transformID)
level02.props.OakTree_NoCollider118418ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119419ID.transformID)
level02.props.OakTree_NoCollider119419ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120420ID.transformID)
level02.props.OakTree_NoCollider120420ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121421ID.transformID)
level02.props.OakTree_NoCollider121421ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122422ID.transformID)
level02.props.OakTree_NoCollider122422ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123423ID.transformID)
level02.props.OakTree_NoCollider123423ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124424ID.transformID)
level02.props.OakTree_NoCollider124424ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125425ID.transformID)
level02.props.OakTree_NoCollider125425ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126430ID.transformID)
level02.props.OakTree_NoCollider126430ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127431ID.transformID)
level02.props.OakTree_NoCollider127431ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128432ID.transformID)
level02.props.OakTree_NoCollider128432ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129433ID.transformID)
level02.props.OakTree_NoCollider129433ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130434ID.transformID)
level02.props.OakTree_NoCollider130434ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131435ID.transformID)
level02.props.OakTree_NoCollider131435ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132436ID.transformID)
level02.props.OakTree_NoCollider132436ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133437ID.transformID)
level02.props.OakTree_NoCollider133437ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134438ID.transformID)
level02.props.OakTree_NoCollider134438ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135439ID.transformID)
level02.props.OakTree_NoCollider135439ID = nil

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
level03.props.t3s136ID = {}
level03.props.t3s136ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s136ID.transformID = Gear.BindStaticInstance(level03.props.t3s136ID.model)
Transform.SetPosition(level03.props.t3s136ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s136ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s136ID.transformID, {x=0, y=0, z=0})
level03.props.tile337ID = {}
level03.props.t3s243ID = {}
level03.props.t3s243ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s243ID.transformID = Gear.BindStaticInstance(level03.props.t3s243ID.model)
Transform.SetPosition(level03.props.t3s243ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s243ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s243ID.transformID, {x=0, y=0, z=0})
level03.props.t3s344ID = {}
level03.props.t3s344ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s344ID.transformID = Gear.BindStaticInstance(level03.props.t3s344ID.model)
Transform.SetPosition(level03.props.t3s344ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s344ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s344ID.transformID, {x=0, y=0, z=0})
level03.props.t3s445ID = {}
level03.props.t3s445ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s445ID.transformID = Gear.BindStaticInstance(level03.props.t3s445ID.model)
Transform.SetPosition(level03.props.t3s445ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s445ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s445ID.transformID, {x=0, y=0, z=0})

end
level03.unload = function()
Gear.UnbindInstance(level03.props.t3s136ID.transformID)
level03.props.t3s136ID = nil
level03.props.tile337ID = nil
Gear.UnbindInstance(level03.props.t3s243ID.transformID)
level03.props.t3s243ID = nil
Gear.UnbindInstance(level03.props.t3s344ID.transformID)
level03.props.t3s344ID = nil
Gear.UnbindInstance(level03.props.t3s445ID.transformID)
level03.props.t3s445ID = nil
level03.colliders.Tile3_wallNr324ID = nil
level03.colliders.Tile3_wallNr1325ID = nil
level03.colliders.Tile3_wallNr2326ID = nil
level03.colliders.Tile3_wallNr3327ID = nil
level03.colliders.Tile3_wallNr4328ID = nil
level03.colliders.Tile3_wallNr5329ID = nil
level03.colliders.Tile3_wallNr6330ID = nil
level03.colliders.Tile3_wallNr7331ID = nil
level03.colliders.Tile3_wallNr8332ID = nil
level03.colliders.Tile3_wallNr9333ID = nil
level03.colliders.Tile3_wallNr10334ID = nil
level03.colliders.Tile3_wallNr11335ID = nil
level03.colliders.Tile3_wallNr12336ID = nil
level03.colliders.Tile3_wallNr13337ID = nil
level03.colliders.Tile3_wallNr14338ID = nil
level03.colliders.Tile3_wallNr15339ID = nil
level03.colliders.Tile3_wallNr16340ID = nil
level03.colliders.Tile3_wallNr17341ID = nil
level03.colliders.Tile3_wallNr18342ID = nil
level03.colliders.Tile3_wallNr19343ID = nil
level03.colliders.Tile3_wallNr20344ID = nil
level03.colliders.Tile3_wallNr21345ID = nil
level03.colliders.Tile3_wallNr22346ID = nil
level03.colliders.Tile3_wallNr23347ID = nil
level03.colliders.Tile3_wallNr24348ID = nil
level03.colliders.Tile3_wallNr25349ID = nil
level03.colliders.Tile3_wallNr26350ID = nil

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
level04.props.tile438ID = {}
level04.props.t4s146ID = {}
level04.props.t4s146ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s146ID.transformID = Gear.BindStaticInstance(level04.props.t4s146ID.model)
Transform.SetPosition(level04.props.t4s146ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s146ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s146ID.transformID, {x=0, y=0, z=0})
level04.props.t4s247ID = {}
level04.props.t4s247ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s247ID.transformID = Gear.BindStaticInstance(level04.props.t4s247ID.model)
Transform.SetPosition(level04.props.t4s247ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s247ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s247ID.transformID, {x=0, y=0, z=0})
level04.props.t4s348ID = {}
level04.props.t4s348ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s348ID.transformID = Gear.BindStaticInstance(level04.props.t4s348ID.model)
Transform.SetPosition(level04.props.t4s348ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s348ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s348ID.transformID, {x=0, y=0, z=0})
level04.props.t4s449ID = {}
level04.props.t4s449ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s449ID.transformID = Gear.BindStaticInstance(level04.props.t4s449ID.model)
Transform.SetPosition(level04.props.t4s449ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s449ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s449ID.transformID, {x=0, y=0, z=0})
end
level04.unload = function()
level04.props.tile438ID = nil
Gear.UnbindInstance(level04.props.t4s146ID.transformID)
level04.props.t4s146ID = nil
Gear.UnbindInstance(level04.props.t4s247ID.transformID)
level04.props.t4s247ID = nil
Gear.UnbindInstance(level04.props.t4s348ID.transformID)
level04.props.t4s348ID = nil
Gear.UnbindInstance(level04.props.t4s449ID.transformID)
level04.props.t4s449ID = nil
level04.colliders.Tile4_wallNr351ID = nil
level04.colliders.Tile4_wallNr1352ID = nil
level04.colliders.Tile4_wallNr2353ID = nil
level04.colliders.Tile4_wallNr3354ID = nil
level04.colliders.Tile4_wallNr4355ID = nil
level04.colliders.Tile4_wallNr5356ID = nil
level04.colliders.Tile4_wallNr6357ID = nil
level04.colliders.Tile4_wallNr7358ID = nil
level04.colliders.Tile4_wallNr8359ID = nil
level04.colliders.Tile4_wallNr9360ID = nil
level04.colliders.Tile4_wallNr10361ID = nil
level04.colliders.Tile4_wallNr11362ID = nil
level04.colliders.Tile4_wallNr12363ID = nil
level04.colliders.Tile4_wallNr13364ID = nil
level04.colliders.Tile4_wallNr14365ID = nil
level04.colliders.Tile4_wallNr15366ID = nil
level04.colliders.Tile4_wallNr16367ID = nil
level04.colliders.Tile4_wallNr17368ID = nil
level04.colliders.Tile4_wallNr18369ID = nil
level04.colliders.Tile4_wallNr19370ID = nil
level04.colliders.Tile4_wallNr20371ID = nil
level04.colliders.Tile4_wallNr21372ID = nil
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
level05.props.tile539ID = {}
level05.props.t5s150ID = {}
level05.props.t5s150ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s150ID.transformID = Gear.BindStaticInstance(level05.props.t5s150ID.model)
Transform.SetPosition(level05.props.t5s150ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s150ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s150ID.transformID, {x=0, y=0, z=0})
level05.props.t5s251ID = {}
level05.props.t5s251ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s251ID.transformID = Gear.BindStaticInstance(level05.props.t5s251ID.model)
Transform.SetPosition(level05.props.t5s251ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s251ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s251ID.transformID, {x=0, y=0, z=0})
level05.props.t5s352ID = {}
level05.props.t5s352ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s352ID.transformID = Gear.BindStaticInstance(level05.props.t5s352ID.model)
Transform.SetPosition(level05.props.t5s352ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s352ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s352ID.transformID, {x=0, y=0, z=0})
level05.props.t5s453ID = {}
level05.props.t5s453ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s453ID.transformID = Gear.BindStaticInstance(level05.props.t5s453ID.model)
Transform.SetPosition(level05.props.t5s453ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s453ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s453ID.transformID, {x=0, y=0, z=0})
level05.props.t5s554ID = {}
level05.props.t5s554ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s554ID.transformID = Gear.BindStaticInstance(level05.props.t5s554ID.model)
Transform.SetPosition(level05.props.t5s554ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s554ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s554ID.transformID, {x=0, y=0, z=0})
level05.props.t5s655ID = {}
level05.props.t5s655ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s655ID.transformID = Gear.BindStaticInstance(level05.props.t5s655ID.model)
Transform.SetPosition(level05.props.t5s655ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s655ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s655ID.transformID, {x=0, y=0, z=0})
level05.props.t6s459ID = {}
level05.props.t6s459ID.model = Assets.LoadModel('Models/tile6_s4.model')
level05.props.t6s459ID.transformID = Gear.BindStaticInstance(level05.props.t6s459ID.model)
Transform.SetPosition(level05.props.t6s459ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t6s459ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t6s459ID.transformID, {x=0, y=0, z=0})
end
level05.unload = function()
level05.props.tile539ID = nil
Gear.UnbindInstance(level05.props.t5s150ID.transformID)
level05.props.t5s150ID = nil
Gear.UnbindInstance(level05.props.t5s251ID.transformID)
level05.props.t5s251ID = nil
Gear.UnbindInstance(level05.props.t5s352ID.transformID)
level05.props.t5s352ID = nil
Gear.UnbindInstance(level05.props.t5s453ID.transformID)
level05.props.t5s453ID = nil
Gear.UnbindInstance(level05.props.t5s554ID.transformID)
level05.props.t5s554ID = nil
Gear.UnbindInstance(level05.props.t5s655ID.transformID)
level05.props.t5s655ID = nil
Gear.UnbindInstance(level05.props.t6s459ID.transformID)
level05.props.t6s459ID = nil
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
level06.props.tile640ID = {}
level06.props.t6s156ID = {}
level06.props.t6s156ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s156ID.transformID = Gear.BindStaticInstance(level06.props.t6s156ID.model)
Transform.SetPosition(level06.props.t6s156ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s156ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s156ID.transformID, {x=0, y=0, z=0})
level06.props.t6s257ID = {}
level06.props.t6s257ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s257ID.transformID = Gear.BindStaticInstance(level06.props.t6s257ID.model)
Transform.SetPosition(level06.props.t6s257ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s257ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s257ID.transformID, {x=0, y=0, z=0})
level06.props.t6s358ID = {}
level06.props.t6s358ID.model = Assets.LoadModel('Models/tile6_s3.model')
level06.props.t6s358ID.transformID = Gear.BindStaticInstance(level06.props.t6s358ID.model)
Transform.SetPosition(level06.props.t6s358ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s358ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s358ID.transformID, {x=0, y=0, z=0})
level06.props.t6s560ID = {}
level06.props.t6s560ID.model = Assets.LoadModel('Models/tile6_s5.model')
level06.props.t6s560ID.transformID = Gear.BindStaticInstance(level06.props.t6s560ID.model)
Transform.SetPosition(level06.props.t6s560ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s560ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s560ID.transformID, {x=0, y=0, z=0})
level06.props.t6s661ID = {}
level06.props.t6s661ID.model = Assets.LoadModel('Models/tile6_s6.model')
level06.props.t6s661ID.transformID = Gear.BindStaticInstance(level06.props.t6s661ID.model)
Transform.SetPosition(level06.props.t6s661ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s661ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s661ID.transformID, {x=0, y=0, z=0})
level06.props.t6s762ID = {}
level06.props.t6s762ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s762ID.transformID = Gear.BindStaticInstance(level06.props.t6s762ID.model)
Transform.SetPosition(level06.props.t6s762ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s762ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s762ID.transformID, {x=0, y=0, z=0})
level06.props.t6s863ID = {}
level06.props.t6s863ID.model = Assets.LoadModel('Models/tile6_s8.model')
level06.props.t6s863ID.transformID = Gear.BindStaticInstance(level06.props.t6s863ID.model)
Transform.SetPosition(level06.props.t6s863ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s863ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s863ID.transformID, {x=0, y=0, z=0})
level06.props.t6s964ID = {}
level06.props.t6s964ID.model = Assets.LoadModel('Models/tile6_s9.model')
level06.props.t6s964ID.transformID = Gear.BindStaticInstance(level06.props.t6s964ID.model)
Transform.SetPosition(level06.props.t6s964ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s964ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s964ID.transformID, {x=0, y=0, z=0})
level06.props.t6s1065ID = {}
level06.props.t6s1065ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s1065ID.transformID = Gear.BindStaticInstance(level06.props.t6s1065ID.model)
Transform.SetPosition(level06.props.t6s1065ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1065ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1065ID.transformID, {x=0, y=0, z=0})
end
level06.unload = function()
level06.props.tile640ID = nil
Gear.UnbindInstance(level06.props.t6s156ID.transformID)
level06.props.t6s156ID = nil
Gear.UnbindInstance(level06.props.t6s257ID.transformID)
level06.props.t6s257ID = nil
Gear.UnbindInstance(level06.props.t6s358ID.transformID)
level06.props.t6s358ID = nil
Gear.UnbindInstance(level06.props.t6s560ID.transformID)
level06.props.t6s560ID = nil
Gear.UnbindInstance(level06.props.t6s661ID.transformID)
level06.props.t6s661ID = nil
Gear.UnbindInstance(level06.props.t6s762ID.transformID)
level06.props.t6s762ID = nil
Gear.UnbindInstance(level06.props.t6s863ID.transformID)
level06.props.t6s863ID = nil
Gear.UnbindInstance(level06.props.t6s964ID.transformID)
level06.props.t6s964ID = nil
Gear.UnbindInstance(level06.props.t6s1065ID.transformID)
level06.props.t6s1065ID = nil
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
level07.props.tile741ID = {}
level07.props.t7s166ID = {}
level07.props.t7s166ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s166ID.transformID = Gear.BindStaticInstance(level07.props.t7s166ID.model)
Transform.SetPosition(level07.props.t7s166ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s166ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s166ID.transformID, {x=0, y=0, z=0})
level07.props.t7s267ID = {}
level07.props.t7s267ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s267ID.transformID = Gear.BindStaticInstance(level07.props.t7s267ID.model)
Transform.SetPosition(level07.props.t7s267ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s267ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s267ID.transformID, {x=0, y=0, z=0})
level07.props.t7s368ID = {}
level07.props.t7s368ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s368ID.transformID = Gear.BindStaticInstance(level07.props.t7s368ID.model)
Transform.SetPosition(level07.props.t7s368ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s368ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s368ID.transformID, {x=0, y=0, z=0})
level07.props.t7s469ID = {}
level07.props.t7s469ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s469ID.transformID = Gear.BindStaticInstance(level07.props.t7s469ID.model)
Transform.SetPosition(level07.props.t7s469ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s469ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s469ID.transformID, {x=0, y=0, z=0})
level07.props.t7s570ID = {}
level07.props.t7s570ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s570ID.transformID = Gear.BindStaticInstance(level07.props.t7s570ID.model)
Transform.SetPosition(level07.props.t7s570ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s570ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s570ID.transformID, {x=0, y=0, z=0})
level07.props.t7s671ID = {}
level07.props.t7s671ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s671ID.transformID = Gear.BindStaticInstance(level07.props.t7s671ID.model)
Transform.SetPosition(level07.props.t7s671ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s671ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s671ID.transformID, {x=0, y=0, z=0})
level07.props.t7s772ID = {}
level07.props.t7s772ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s772ID.transformID = Gear.BindStaticInstance(level07.props.t7s772ID.model)
Transform.SetPosition(level07.props.t7s772ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s772ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s772ID.transformID, {x=0, y=0, z=0})
level07.props.t7s873ID = {}
level07.props.t7s873ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s873ID.transformID = Gear.BindStaticInstance(level07.props.t7s873ID.model)
Transform.SetPosition(level07.props.t7s873ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s873ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s873ID.transformID, {x=0, y=0, z=0})
level07.props.t7s974ID = {}
level07.props.t7s974ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s974ID.transformID = Gear.BindStaticInstance(level07.props.t7s974ID.model)
Transform.SetPosition(level07.props.t7s974ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s974ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s974ID.transformID, {x=0, y=0, z=0})
end
level07.unload = function()
level07.props.tile741ID = nil
Gear.UnbindInstance(level07.props.t7s166ID.transformID)
level07.props.t7s166ID = nil
Gear.UnbindInstance(level07.props.t7s267ID.transformID)
level07.props.t7s267ID = nil
Gear.UnbindInstance(level07.props.t7s368ID.transformID)
level07.props.t7s368ID = nil
Gear.UnbindInstance(level07.props.t7s469ID.transformID)
level07.props.t7s469ID = nil
Gear.UnbindInstance(level07.props.t7s570ID.transformID)
level07.props.t7s570ID = nil
Gear.UnbindInstance(level07.props.t7s671ID.transformID)
level07.props.t7s671ID = nil
Gear.UnbindInstance(level07.props.t7s772ID.transformID)
level07.props.t7s772ID = nil
Gear.UnbindInstance(level07.props.t7s873ID.transformID)
level07.props.t7s873ID = nil
Gear.UnbindInstance(level07.props.t7s974ID.transformID)
level07.props.t7s974ID = nil
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
level08.props.tile842ID = {}
level08.props.t8s175ID = {}
level08.props.t8s175ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s175ID.transformID = Gear.BindStaticInstance(level08.props.t8s175ID.model)
Transform.SetPosition(level08.props.t8s175ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s175ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s175ID.transformID, {x=0, y=0, z=0})
level08.props.t8s276ID = {}
level08.props.t8s276ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s276ID.transformID = Gear.BindStaticInstance(level08.props.t8s276ID.model)
Transform.SetPosition(level08.props.t8s276ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s276ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s276ID.transformID, {x=0, y=0, z=0})
level08.props.t8s377ID = {}
level08.props.t8s377ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s377ID.transformID = Gear.BindStaticInstance(level08.props.t8s377ID.model)
Transform.SetPosition(level08.props.t8s377ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s377ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s377ID.transformID, {x=0, y=0, z=0})
end
level08.unload = function()
level08.props.tile842ID = nil
Gear.UnbindInstance(level08.props.t8s175ID.transformID)
level08.props.t8s175ID = nil
Gear.UnbindInstance(level08.props.t8s276ID.transformID)
level08.props.t8s276ID = nil
Gear.UnbindInstance(level08.props.t8s377ID.transformID)
level08.props.t8s377ID = nil
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
