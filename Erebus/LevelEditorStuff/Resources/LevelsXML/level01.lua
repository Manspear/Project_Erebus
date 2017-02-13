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
TileAssets2ID.model = Assets.LoadModel('Models/tile_assets.model')
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

Tile1Colider7ID = {}
Tile1Colider7ID.transformID = Transform.Bind()
Transform.SetPosition(Tile1Colider7ID.transformID, {x=64, y=0, z=180})
Transform.SetScaleNonUniform(Tile1Colider7ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile1Colider7ID.transformID, {x=0, y=0, z=0})
Tile1Colider7ID.collider = AABBCollider.Create(Tile1Colider7ID.transformID)
Tile1Colider7ID.collider:SetOffset(0,0,0)
Tile1Colider7ID.collider:SetMinPos(-64,-64,-64)
Tile1Colider7ID.collider:SetMaxPos(77,64,64)
Tile1Colider7ID1 = {}
Tile1Colider7ID1.collider = AABBCollider.Create(-1)
Tile1Colider7ID1.collider:SetOffset(-19.4748,23.8791,-27.9189)
Tile1Colider7ID1.collider:SetMinPos(-25,-25,-25)
Tile1Colider7ID1.collider:SetMaxPos(15,15,15)
Tile1Colider7ID.collider:AddChild(Tile1Colider7ID1.collider)
table.insert(colliders,Tile1Colider7ID1)
Tile1Colider7ID2 = {}
Tile1Colider7ID2.collider = OBBCollider.Create(-1)
Tile1Colider7ID2.collider:SetOffset(-5.30645,-12.7828,-25.5964)
Tile1Colider7ID2.collider:SetZAxis(0.0350067,0,0.999387)
Tile1Colider7ID2.collider:SetHalfLengths(2.66922,2.9525,0.443932)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID2.collider)
table.insert(colliders,Tile1Colider7ID2)
Tile1Colider7ID3 = {}
Tile1Colider7ID3.collider = OBBCollider.Create(-1)
Tile1Colider7ID3.collider:SetOffset(0.269505,-11.864,-23.012)
Tile1Colider7ID3.collider:SetZAxis(-0.583273,0,0.812276)
Tile1Colider7ID3.collider:SetHalfLengths(4.15336,3.60338,0.327835)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID3.collider)
table.insert(colliders,Tile1Colider7ID3)
Tile1Colider7ID4 = {}
Tile1Colider7ID4.collider = OBBCollider.Create(-1)
Tile1Colider7ID4.collider:SetOffset(7.74073,-9.64345,-15.0529)
Tile1Colider7ID4.collider:SetZAxis(-0.823142,0,0.567836)
Tile1Colider7ID4.collider:SetHalfLengths(6.73815,5.67209,0.5)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID4.collider)
table.insert(colliders,Tile1Colider7ID4)
Tile1Colider7ID5 = {}
Tile1Colider7ID5.collider = OBBCollider.Create(-1)
Tile1Colider7ID5.collider:SetOffset(12.0861,-8.70999,-6.58107)
Tile1Colider7ID5.collider:SetZAxis(-0.996929,0,0.0783057)
Tile1Colider7ID5.collider:SetHalfLengths(2.89062,6.34563,0.64592)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID5.collider)
table.insert(colliders,Tile1Colider7ID5)
Tile1Colider7ID6 = {}
Tile1Colider7ID6.collider = OBBCollider.Create(-1)
Tile1Colider7ID6.collider:SetOffset(8.25052,-10.5374,0.885361)
Tile1Colider7ID6.collider:SetZAxis(-0.732567,0,-0.680695)
Tile1Colider7ID6.collider:SetHalfLengths(6.10459,4.64871,0.5)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID6.collider)
table.insert(colliders,Tile1Colider7ID6)
Tile1Colider7ID7 = {}
Tile1Colider7ID7.collider = OBBCollider.Create(-1)
Tile1Colider7ID7.collider:SetOffset(-0.389645,-10.2704,5.64914)
Tile1Colider7ID7.collider:SetZAxis(-0.117519,0,-0.993071)
Tile1Colider7ID7.collider:SetHalfLengths(4.91498,4.58745,0.5)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID7.collider)
table.insert(colliders,Tile1Colider7ID7)
Tile1Colider7ID8 = {}
Tile1Colider7ID8.collider = OBBCollider.Create(-1)
Tile1Colider7ID8.collider:SetOffset(-20.2283,-9.36349,-12.0811)
Tile1Colider7ID8.collider:SetZAxis(0.130736,0,0.991417)
Tile1Colider7ID8.collider:SetHalfLengths(1.7,7,1.7)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID8.collider)
table.insert(colliders,Tile1Colider7ID8)
Tile1Colider7ID9 = {}
Tile1Colider7ID9.collider = OBBCollider.Create(-1)
Tile1Colider7ID9.collider:SetOffset(-6.36019,-7.71505,3.5616)
Tile1Colider7ID9.collider:SetZAxis(0.130736,0,0.991417)
Tile1Colider7ID9.collider:SetHalfLengths(1.7,7,1.7)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID9.collider)
table.insert(colliders,Tile1Colider7ID9)
Tile1Colider7ID10 = {}
Tile1Colider7ID10.collider = OBBCollider.Create(-1)
Tile1Colider7ID10.collider:SetOffset(-7.5252,-14.3458,5.86766)
Tile1Colider7ID10.collider:SetZAxis(-0.942602,0,0.33392)
Tile1Colider7ID10.collider:SetHalfLengths(4.67852,2.7548,0.5)
Tile1Colider7ID1.collider:AddChild(Tile1Colider7ID10.collider)
table.insert(colliders,Tile1Colider7ID10)
Tile1Colider7ID11 = {}
Tile1Colider7ID11.collider = AABBCollider.Create(-1)
Tile1Colider7ID11.collider:SetOffset(-18.1875,16.8656,-4.625)
Tile1Colider7ID11.collider:SetMinPos(-25,-15,-15)
Tile1Colider7ID11.collider:SetMaxPos(15,15,25)
Tile1Colider7ID.collider:AddChild(Tile1Colider7ID11.collider)
table.insert(colliders,Tile1Colider7ID11)
Tile1Colider7ID12 = {}
Tile1Colider7ID12.collider = OBBCollider.Create(-1)
Tile1Colider7ID12.collider:SetOffset(-3.60812,-6.53858,-11.7791)
Tile1Colider7ID12.collider:SetZAxis(-0.406524,0,0.91364)
Tile1Colider7ID12.collider:SetHalfLengths(4.07847,3.00121,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID12.collider)
table.insert(colliders,Tile1Colider7ID12)
Tile1Colider7ID13 = {}
Tile1Colider7ID13.collider = OBBCollider.Create(-1)
Tile1Colider7ID13.collider:SetOffset(3.16581,-5.9129,-10.7001)
Tile1Colider7ID13.collider:SetZAxis(0.0659963,0,0.99782)
Tile1Colider7ID13.collider:SetHalfLengths(3.48908,3.74589,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID13.collider)
table.insert(colliders,Tile1Colider7ID13)
Tile1Colider7ID14 = {}
Tile1Colider7ID14.collider = OBBCollider.Create(-1)
Tile1Colider7ID14.collider:SetOffset(9.54307,-5.74524,-6.92722)
Tile1Colider7ID14.collider:SetZAxis(-0.672089,0,0.74047)
Tile1Colider7ID14.collider:SetHalfLengths(5.42477,4.77056,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID14.collider)
table.insert(colliders,Tile1Colider7ID14)
Tile1Colider7ID15 = {}
Tile1Colider7ID15.collider = OBBCollider.Create(-1)
Tile1Colider7ID15.collider:SetOffset(12.8553,-4.74817,-0.417114)
Tile1Colider7ID15.collider:SetZAxis(-0.997282,0,-0.073685)
Tile1Colider7ID15.collider:SetHalfLengths(5.48378,4.82041,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID15.collider)
table.insert(colliders,Tile1Colider7ID15)
Tile1Colider7ID16 = {}
Tile1Colider7ID16.collider = OBBCollider.Create(-1)
Tile1Colider7ID16.collider:SetOffset(10.1338,-4.2155,7.43669)
Tile1Colider7ID16.collider:SetZAxis(-0.779628,0,-0.626243)
Tile1Colider7ID16.collider:SetHalfLengths(5.0544,4.691,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID16.collider)
table.insert(colliders,Tile1Colider7ID16)
Tile1Colider7ID17 = {}
Tile1Colider7ID17.collider = OBBCollider.Create(-1)
Tile1Colider7ID17.collider:SetOffset(2.86828,-4.36426,11.8078)
Tile1Colider7ID17.collider:SetZAxis(-0.227771,0,-0.973715)
Tile1Colider7ID17.collider:SetHalfLengths(6.85436,5.86228,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID17.collider)
table.insert(colliders,Tile1Colider7ID17)
Tile1Colider7ID18 = {}
Tile1Colider7ID18.collider = OBBCollider.Create(-1)
Tile1Colider7ID18.collider:SetOffset(-7.66114,-3.20991,10.5813)
Tile1Colider7ID18.collider:SetZAxis(0.622728,0,-0.782439)
Tile1Colider7ID18.collider:SetHalfLengths(5.69627,6.79964,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID18.collider)
table.insert(colliders,Tile1Colider7ID18)
Tile1Colider7ID19 = {}
Tile1Colider7ID19.collider = OBBCollider.Create(-1)
Tile1Colider7ID19.collider:SetOffset(-11.2354,-3.01145,4.93808)
Tile1Colider7ID19.collider:SetZAxis(0.971509,0,-0.237004)
Tile1Colider7ID19.collider:SetHalfLengths(6.46658,6.19767,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID19.collider)
table.insert(colliders,Tile1Colider7ID19)
Tile1Colider7ID20 = {}
Tile1Colider7ID20.collider = OBBCollider.Create(-1)
Tile1Colider7ID20.collider:SetOffset(-13.9437,-2.61453,-2.35374)
Tile1Colider7ID20.collider:SetZAxis(0.919696,0,-0.392632)
Tile1Colider7ID20.collider:SetHalfLengths(4.15316,6.87849,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID20.collider)
table.insert(colliders,Tile1Colider7ID20)
Tile1Colider7ID21 = {}
Tile1Colider7ID21.collider = OBBCollider.Create(-1)
Tile1Colider7ID21.collider:SetOffset(-18.6868,-8.16936,-4.55656)
Tile1Colider7ID21.collider:SetZAxis(-0.595609,0,-0.803275)
Tile1Colider7ID21.collider:SetHalfLengths(2.35612,3.02133,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID21.collider)
table.insert(colliders,Tile1Colider7ID21)
Tile1Colider7ID22 = {}
Tile1Colider7ID22.collider = OBBCollider.Create(-1)
Tile1Colider7ID22.collider:SetOffset(-21.2727,-8.47502,-2.52588)
Tile1Colider7ID22.collider:SetZAxis(-0.467568,0,-0.883957)
Tile1Colider7ID22.collider:SetHalfLengths(1.25731,3.9063,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID22.collider)
table.insert(colliders,Tile1Colider7ID22)
Tile1Colider7ID23 = {}
Tile1Colider7ID23.collider = OBBCollider.Create(-1)
Tile1Colider7ID23.collider:SetOffset(-22.7187,-8.30314,-2.20526)
Tile1Colider7ID23.collider:SetZAxis(-0.850097,0,-0.526626)
Tile1Colider7ID23.collider:SetHalfLengths(0.5,3.6555,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID23.collider)
table.insert(colliders,Tile1Colider7ID23)
Tile1Colider7ID24 = {}
Tile1Colider7ID24.collider = OBBCollider.Create(-1)
Tile1Colider7ID24.collider:SetOffset(-22.6635,-8.63127,-0.147339)
Tile1Colider7ID24.collider:SetZAxis(-0.997205,0,0.0747166)
Tile1Colider7ID24.collider:SetHalfLengths(2.02282,4.54201,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID24.collider)
table.insert(colliders,Tile1Colider7ID24)
Tile1Colider7ID25 = {}
Tile1Colider7ID25.collider = OBBCollider.Create(-1)
Tile1Colider7ID25.collider:SetOffset(-21.3516,-8.63908,3.65782)
Tile1Colider7ID25.collider:SetZAxis(-0.905241,0,0.424899)
Tile1Colider7ID25.collider:SetHalfLengths(2.4028,4.67843,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID25.collider)
table.insert(colliders,Tile1Colider7ID25)
Tile1Colider7ID26 = {}
Tile1Colider7ID26.collider = OBBCollider.Create(-1)
Tile1Colider7ID26.collider:SetOffset(-16.0202,-8.23283,10.8793)
Tile1Colider7ID26.collider:SetZAxis(-0.729108,0,0.684399)
Tile1Colider7ID26.collider:SetHalfLengths(6.45325,5.90734,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID26.collider)
table.insert(colliders,Tile1Colider7ID26)
Tile1Colider7ID27 = {}
Tile1Colider7ID27.collider = OBBCollider.Create(-1)
Tile1Colider7ID27.collider:SetOffset(-10.7289,-7.16252,17.067)
Tile1Colider7ID27.collider:SetZAxis(-0.765715,0,0.643181)
Tile1Colider7ID27.collider:SetHalfLengths(3.81128,5.78018,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID27.collider)
table.insert(colliders,Tile1Colider7ID27)
Tile1Colider7ID28 = {}
Tile1Colider7ID28.collider = OBBCollider.Create(-1)
Tile1Colider7ID28.collider:SetOffset(-15.7739,-8.44377,-5.79485)
Tile1Colider7ID28.collider:SetZAxis(-0.0377485,0,-0.999287)
Tile1Colider7ID28.collider:SetHalfLengths(1.41012,5.02185,0.5)
Tile1Colider7ID11.collider:AddChild(Tile1Colider7ID28.collider)
table.insert(colliders,Tile1Colider7ID28)
Tile1Colider7ID29 = {}
Tile1Colider7ID29.collider = AABBCollider.Create(-1)
Tile1Colider7ID29.collider:SetOffset(-49,12,-30)
Tile1Colider7ID29.collider:SetMinPos(-15,-15,-15)
Tile1Colider7ID29.collider:SetMaxPos(15,15,60)
Tile1Colider7ID.collider:AddChild(Tile1Colider7ID29.collider)
table.insert(colliders,Tile1Colider7ID29)
Tile1Colider7ID30 = {}
Tile1Colider7ID30.collider = OBBCollider.Create(-1)
Tile1Colider7ID30.collider:SetOffset(4.4379,-1.97812,-9.99207)
Tile1Colider7ID30.collider:SetZAxis(0.350855,0,0.93643)
Tile1Colider7ID30.collider:SetHalfLengths(1.39648,3.29177,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID30.collider)
table.insert(colliders,Tile1Colider7ID30)
Tile1Colider7ID31 = {}
Tile1Colider7ID31.collider = OBBCollider.Create(-1)
Tile1Colider7ID31.collider:SetOffset(1.06868,-0.619851,-9.55087)
Tile1Colider7ID31.collider:SetZAxis(-7.5809e-06,0,1)
Tile1Colider7ID31.collider:SetHalfLengths(2.08273,5.1216,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID31.collider)
table.insert(colliders,Tile1Colider7ID31)
Tile1Colider7ID32 = {}
Tile1Colider7ID32.collider = OBBCollider.Create(-1)
Tile1Colider7ID32.collider:SetOffset(-2.79242,-1.10765,-10.6115)
Tile1Colider7ID32.collider:SetZAxis(-0.482651,0,0.875813)
Tile1Colider7ID32.collider:SetHalfLengths(2.22756,4.19528,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID32.collider)
table.insert(colliders,Tile1Colider7ID32)
Tile1Colider7ID33 = {}
Tile1Colider7ID33.collider = OBBCollider.Create(-1)
Tile1Colider7ID33.collider:SetOffset(-6.74301,-3.76563,-12.1722)
Tile1Colider7ID33.collider:SetZAxis(-0.329544,0,0.94414)
Tile1Colider7ID33.collider:SetHalfLengths(2.43991,3.87472,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID33.collider)
table.insert(colliders,Tile1Colider7ID33)
Tile1Colider7ID34 = {}
Tile1Colider7ID34.collider = OBBCollider.Create(-1)
Tile1Colider7ID34.collider:SetOffset(-9.8125,-4.6875,51.625)
Tile1Colider7ID34.collider:SetZAxis(0.63835,0,-0.769746)
Tile1Colider7ID34.collider:SetHalfLengths(3.35942,4.74032,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID34.collider)
table.insert(colliders,Tile1Colider7ID34)
Tile1Colider7ID35 = {}
Tile1Colider7ID35.collider = OBBCollider.Create(-1)
Tile1Colider7ID35.collider:SetOffset(-12.6152,-5.04297,48.375)
Tile1Colider7ID35.collider:SetZAxis(0.900335,0,-0.435197)
Tile1Colider7ID35.collider:SetHalfLengths(4.27398,5.60994,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID35.collider)
table.insert(colliders,Tile1Colider7ID35)
Tile1Colider7ID36 = {}
Tile1Colider7ID36.collider = OBBCollider.Create(-1)
Tile1Colider7ID36.collider:SetOffset(-14.3764,-5.80469,41.7021)
Tile1Colider7ID36.collider:SetZAxis(0.995846,0,-0.0910506)
Tile1Colider7ID36.collider:SetHalfLengths(4.87325,6.13714,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID36.collider)
table.insert(colliders,Tile1Colider7ID36)
Tile1Colider7ID37 = {}
Tile1Colider7ID37.collider = OBBCollider.Create(-1)
Tile1Colider7ID37.collider:SetOffset(-14.3892,-4.07813,34.8629)
Tile1Colider7ID37.collider:SetZAxis(0.999723,0,0.0235538)
Tile1Colider7ID37.collider:SetHalfLengths(6.33369,5.02226,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID37.collider)
table.insert(colliders,Tile1Colider7ID37)
Tile1Colider7ID38 = {}
Tile1Colider7ID38.collider = OBBCollider.Create(-1)
Tile1Colider7ID38.collider:SetOffset(-11.6243,-4.07813,28.5513)
Tile1Colider7ID38.collider:SetZAxis(0.617509,0,0.786564)
Tile1Colider7ID38.collider:SetHalfLengths(5.02528,6.40485,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID38.collider)
table.insert(colliders,Tile1Colider7ID38)
Tile1Colider7ID39 = {}
Tile1Colider7ID39.collider = OBBCollider.Create(-1)
Tile1Colider7ID39.collider:SetOffset(-7.25236,-1.89063,24.373)
Tile1Colider7ID39.collider:SetZAxis(0.897614,0,0.440783)
Tile1Colider7ID39.collider:SetHalfLengths(1.35934,4.64164,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID39.collider)
table.insert(colliders,Tile1Colider7ID39)
Tile1Colider7ID40 = {}
Tile1Colider7ID40.collider = OBBCollider.Create(-1)
Tile1Colider7ID40.collider:SetOffset(-6.88683,-2.67188,22.2232)
Tile1Colider7ID40.collider:SetZAxis(0.973328,0,-0.22942)
Tile1Colider7ID40.collider:SetHalfLengths(1.71804,3.93282,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID40.collider)
table.insert(colliders,Tile1Colider7ID40)
Tile1Colider7ID41 = {}
Tile1Colider7ID41.collider = OBBCollider.Create(-1)
Tile1Colider7ID41.collider:SetOffset(-9.43484,-2.51497,18.7201)
Tile1Colider7ID41.collider:SetZAxis(0.697603,0,-0.716485)
Tile1Colider7ID41.collider:SetHalfLengths(2.93807,5.03755,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID41.collider)
table.insert(colliders,Tile1Colider7ID41)
Tile1Colider7ID42 = {}
Tile1Colider7ID42.collider = OBBCollider.Create(-1)
Tile1Colider7ID42.collider:SetOffset(-12.4048,-1.90625,14.5197)
Tile1Colider7ID42.collider:SetZAxis(0.93109,0,-0.364789)
Tile1Colider7ID42.collider:SetHalfLengths(4.04745,4.75224,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID42.collider)
table.insert(colliders,Tile1Colider7ID42)
Tile1Colider7ID43 = {}
Tile1Colider7ID43.collider = OBBCollider.Create(-1)
Tile1Colider7ID43.collider:SetOffset(-12.2166,-1.29508,6.6976)
Tile1Colider7ID43.collider:SetZAxis(0.97915,0,0.20314)
Tile1Colider7ID43.collider:SetHalfLengths(7.20088,4.94138,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID43.collider)
table.insert(colliders,Tile1Colider7ID43)
Tile1Colider7ID44 = {}
Tile1Colider7ID44.collider = OBBCollider.Create(-1)
Tile1Colider7ID44.collider:SetOffset(-11.374,-0.866289,-1.41711)
Tile1Colider7ID44.collider:SetZAxis(0.684941,0,-0.728598)
Tile1Colider7ID44.collider:SetHalfLengths(1.4292,4.90774,0.5)
Tile1Colider7ID29.collider:AddChild(Tile1Colider7ID44.collider)
table.insert(colliders,Tile1Colider7ID44)
Tile1Colider7ID45 = {}
Tile1Colider7ID45.collider = AABBCollider.Create(-1)
Tile1Colider7ID45.collider:SetOffset(-24,20,25)
Tile1Colider7ID45.collider:SetMinPos(-15,-15,-18)
Tile1Colider7ID45.collider:SetMaxPos(100,35,40)
Tile1Colider7ID.collider:AddChild(Tile1Colider7ID45.collider)
table.insert(colliders,Tile1Colider7ID45)
Tile1Colider7ID46 = {}
Tile1Colider7ID46.collider = OBBCollider.Create(-1)
Tile1Colider7ID46.collider:SetOffset(10.8298,-7.55469,-3.12949)
Tile1Colider7ID46.collider:SetZAxis(-0.753698,0,0.657221)
Tile1Colider7ID46.collider:SetHalfLengths(5.32195,4.96317,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID46.collider)
table.insert(colliders,Tile1Colider7ID46)
Tile1Colider7ID47 = {}
Tile1Colider7ID47.collider = OBBCollider.Create(-1)
Tile1Colider7ID47.collider:SetOffset(16.1607,-6.94531,1.77893)
Tile1Colider7ID47.collider:SetZAxis(-0.529293,0,0.848439)
Tile1Colider7ID47.collider:SetHalfLengths(2.71396,6.74204,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID47.collider)
table.insert(colliders,Tile1Colider7ID47)
Tile1Colider7ID48 = {}
Tile1Colider7ID48.collider = OBBCollider.Create(-1)
Tile1Colider7ID48.collider:SetOffset(22.7419,-3.3125,2.50987)
Tile1Colider7ID48.collider:SetZAxis(0.0403177,0,0.999187)
Tile1Colider7ID48.collider:SetHalfLengths(4.60364,9.39264,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID48.collider)
table.insert(colliders,Tile1Colider7ID48)
Tile1Colider7ID49 = {}
Tile1Colider7ID49.collider = OBBCollider.Create(-1)
Tile1Colider7ID49.collider:SetOffset(32.6857,0.507353,-1.06566)
Tile1Colider7ID49.collider:SetZAxis(0.424874,0,0.905252)
Tile1Colider7ID49.collider:SetHalfLengths(8.0292,12.3174,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID49.collider)
table.insert(colliders,Tile1Colider7ID49)
Tile1Colider7ID50 = {}
Tile1Colider7ID50.collider = OBBCollider.Create(-1)
Tile1Colider7ID50.collider:SetOffset(43.1706,8.29564,-7.51918)
Tile1Colider7ID50.collider:SetZAxis(0.623735,0,0.781636)
Tile1Colider7ID50.collider:SetHalfLengths(5.68089,7.12234,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID50.collider)
table.insert(colliders,Tile1Colider7ID50)
Tile1Colider7ID51 = {}
Tile1Colider7ID51.collider = OBBCollider.Create(-1)
Tile1Colider7ID51.collider:SetOffset(53.234,8.91043,-14.1469)
Tile1Colider7ID51.collider:SetZAxis(0.474159,0,0.880439)
Tile1Colider7ID51.collider:SetHalfLengths(7.66356,7.41439,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID51.collider)
table.insert(colliders,Tile1Colider7ID51)
Tile1Colider7ID52 = {}
Tile1Colider7ID52.collider = OBBCollider.Create(-1)
Tile1Colider7ID52.collider:SetOffset(68.0019,13.3125,-12.3305)
Tile1Colider7ID52.collider:SetZAxis(-0.345483,0,0.938425)
Tile1Colider7ID52.collider:SetHalfLengths(14.2873,17.1501,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID52.collider)
table.insert(colliders,Tile1Colider7ID52)
Tile1Colider7ID53 = {}
Tile1Colider7ID53.collider = OBBCollider.Create(-1)
Tile1Colider7ID53.collider:SetOffset(80.9792,21.375,-2.16187)
Tile1Colider7ID53.collider:SetZAxis(-0.945342,0,0.326082)
Tile1Colider7ID53.collider:SetHalfLengths(6.5895,9.82831,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID53.collider)
table.insert(colliders,Tile1Colider7ID53)
Tile1Colider7ID54 = {}
Tile1Colider7ID54.collider = OBBCollider.Create(-1)
Tile1Colider7ID54.collider:SetOffset(65.8437,12.7476,-2.60721)
Tile1Colider7ID54.collider:SetZAxis(0.541425,0,-0.840749)
Tile1Colider7ID54.collider:SetHalfLengths(6.77617,9.74417,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID54.collider)
table.insert(colliders,Tile1Colider7ID54)
Tile1Colider7ID55 = {}
Tile1Colider7ID55.collider = OBBCollider.Create(-1)
Tile1Colider7ID55.collider:SetOffset(49.6993,9.30269,6.72589)
Tile1Colider7ID55.collider:SetZAxis(-0.908177,0,0.418586)
Tile1Colider7ID55.collider:SetHalfLengths(4.17998,11.6442,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID55.collider)
table.insert(colliders,Tile1Colider7ID55)
Tile1Colider7ID56 = {}
Tile1Colider7ID56.collider = OBBCollider.Create(-1)
Tile1Colider7ID56.collider:SetOffset(52.625,4.875,11.75)
Tile1Colider7ID56.collider:SetZAxis(-0.825738,0,0.564054)
Tile1Colider7ID56.collider:SetHalfLengths(2.42056,5.80978,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID56.collider)
table.insert(colliders,Tile1Colider7ID56)
Tile1Colider7ID57 = {}
Tile1Colider7ID57.collider = OBBCollider.Create(-1)
Tile1Colider7ID57.collider:SetOffset(58.5347,19,14.3786)
Tile1Colider7ID57.collider:SetZAxis(-0.177843,0,0.984059)
Tile1Colider7ID57.collider:SetHalfLengths(4.92175,16.985,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID57.collider)
table.insert(colliders,Tile1Colider7ID57)
Tile1Colider7ID58 = {}
Tile1Colider7ID58.collider = OBBCollider.Create(-1)
Tile1Colider7ID58.collider:SetOffset(65.5002,11.6984,16.8674)
Tile1Colider7ID58.collider:SetZAxis(-0.650917,0,0.759149)
Tile1Colider7ID58.collider:SetHalfLengths(2.92575,6.36294,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID58.collider)
table.insert(colliders,Tile1Colider7ID58)
Tile1Colider7ID59 = {}
Tile1Colider7ID59.collider = OBBCollider.Create(-1)
Tile1Colider7ID59.collider:SetOffset(70.3125,12.5313,16.625)
Tile1Colider7ID59.collider:SetZAxis(0.448727,0,0.893669)
Tile1Colider7ID59.collider:SetHalfLengths(3.71803,5.81299,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID59.collider)
table.insert(colliders,Tile1Colider7ID59)
Tile1Colider7ID60 = {}
Tile1Colider7ID60.collider = OBBCollider.Create(-1)
Tile1Colider7ID60.collider:SetOffset(74.005,12.9375,12.1657)
Tile1Colider7ID60.collider:SetZAxis(0.951034,0,0.309086)
Tile1Colider7ID60.collider:SetHalfLengths(3.0458,7.39666,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID60.collider)
table.insert(colliders,Tile1Colider7ID60)
Tile1Colider7ID61 = {}
Tile1Colider7ID61.collider = OBBCollider.Create(-1)
Tile1Colider7ID61.collider:SetOffset(72.8462,16.7188,5.20532)
Tile1Colider7ID61.collider:SetZAxis(-0.94411,0,0.329631)
Tile1Colider7ID61.collider:SetHalfLengths(4.65494,4.26718,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID61.collider)
table.insert(colliders,Tile1Colider7ID61)
Tile1Colider7ID62 = {}
Tile1Colider7ID62.collider = OBBCollider.Create(-1)
Tile1Colider7ID62.collider:SetOffset(92.8009,14,19.9681)
Tile1Colider7ID62.collider:SetZAxis(0,0,1)
Tile1Colider7ID62.collider:SetHalfLengths(2.65826,4,0.5)
Tile1Colider7ID45.collider:AddChild(Tile1Colider7ID62.collider)
table.insert(colliders,Tile1Colider7ID62)
CollisionHandler.AddAABB(Tile1Colider7ID.collider, 3)
Tile1Colider7ID1 = nil
Tile1Colider7ID2 = nil
Tile1Colider7ID3 = nil
Tile1Colider7ID4 = nil
Tile1Colider7ID5 = nil
Tile1Colider7ID6 = nil
Tile1Colider7ID7 = nil
Tile1Colider7ID8 = nil
Tile1Colider7ID9 = nil
Tile1Colider7ID10 = nil
Tile1Colider7ID11 = nil
Tile1Colider7ID12 = nil
Tile1Colider7ID13 = nil
Tile1Colider7ID14 = nil
Tile1Colider7ID15 = nil
Tile1Colider7ID16 = nil
Tile1Colider7ID17 = nil
Tile1Colider7ID18 = nil
Tile1Colider7ID19 = nil
Tile1Colider7ID20 = nil
Tile1Colider7ID21 = nil
Tile1Colider7ID22 = nil
Tile1Colider7ID23 = nil
Tile1Colider7ID24 = nil
Tile1Colider7ID25 = nil
Tile1Colider7ID26 = nil
Tile1Colider7ID27 = nil
Tile1Colider7ID28 = nil
Tile1Colider7ID29 = nil
Tile1Colider7ID30 = nil
Tile1Colider7ID31 = nil
Tile1Colider7ID32 = nil
Tile1Colider7ID33 = nil
Tile1Colider7ID34 = nil
Tile1Colider7ID35 = nil
Tile1Colider7ID36 = nil
Tile1Colider7ID37 = nil
Tile1Colider7ID38 = nil
Tile1Colider7ID39 = nil
Tile1Colider7ID40 = nil
Tile1Colider7ID41 = nil
Tile1Colider7ID42 = nil
Tile1Colider7ID43 = nil
Tile1Colider7ID44 = nil
Tile1Colider7ID45 = nil
Tile1Colider7ID46 = nil
Tile1Colider7ID47 = nil
Tile1Colider7ID48 = nil
Tile1Colider7ID49 = nil
Tile1Colider7ID50 = nil
Tile1Colider7ID51 = nil
Tile1Colider7ID52 = nil
Tile1Colider7ID53 = nil
Tile1Colider7ID54 = nil
Tile1Colider7ID55 = nil
Tile1Colider7ID56 = nil
Tile1Colider7ID57 = nil
Tile1Colider7ID58 = nil
Tile1Colider7ID59 = nil
Tile1Colider7ID60 = nil
Tile1Colider7ID61 = nil
Tile1Colider7ID62 = nil
table.insert(colliders,Tile1Colider7ID)
Tile1Colider7ID = nil

StartHouseCol8ID = {}
StartHouseCol8ID.transformID = Transform.Bind()
Transform.SetPosition(StartHouseCol8ID.transformID, {x=44.5252, y=23.8791, z=152.081})
Transform.SetScaleNonUniform(StartHouseCol8ID.transformID, 1, 1, 1)
Transform.SetRotation(StartHouseCol8ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,StartHouseCol8ID)
StartHouseCol8ID = nil

Obb9ID = {}
Obb9ID.transformID = Transform.Bind()
Transform.SetPosition(Obb9ID.transformID, {x=39.2188, y=11.0963, z=126.485})
Transform.SetScaleNonUniform(Obb9ID.transformID, 5.33843, 5.90499, 0.887863)
Transform.SetRotation(Obb9ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb9ID)
Obb9ID = nil

Obb110ID = {}
Obb110ID.transformID = Transform.Bind()
Transform.SetPosition(Obb110ID.transformID, {x=44.7947, y=12.0151, z=129.069})
Transform.SetScaleNonUniform(Obb110ID.transformID, 8.30671, 7.20676, 0.65567)
Transform.SetRotation(Obb110ID.transformID, {x=0, y=-0.0131889, z=0})
table.insert(colliders,Obb110ID)
Obb110ID = nil

Obb211ID = {}
Obb211ID.transformID = Transform.Bind()
Transform.SetPosition(Obb211ID.transformID, {x=52.2659, y=14.2357, z=137.028})
Transform.SetScaleNonUniform(Obb211ID.transformID, 13.4763, 11.3442, 1)
Transform.SetRotation(Obb211ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb211ID)
Obb211ID = nil

Obb312ID = {}
Obb312ID.transformID = Transform.Bind()
Transform.SetPosition(Obb312ID.transformID, {x=56.6113, y=15.1691, z=145.5})
Transform.SetScaleNonUniform(Obb312ID.transformID, 5.78123, 12.6913, 1.29184)
Transform.SetRotation(Obb312ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb312ID)
Obb312ID = nil

Obb413ID = {}
Obb413ID.transformID = Transform.Bind()
Transform.SetPosition(Obb413ID.transformID, {x=52.7757, y=13.3417, z=152.966})
Transform.SetScaleNonUniform(Obb413ID.transformID, 12.2092, 9.29743, 1)
Transform.SetRotation(Obb413ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb413ID)
Obb413ID = nil

Obb514ID = {}
Obb514ID.transformID = Transform.Bind()
Transform.SetPosition(Obb514ID.transformID, {x=44.1356, y=13.6087, z=157.73})
Transform.SetScaleNonUniform(Obb514ID.transformID, 9.82996, 9.1749, 1)
Transform.SetRotation(Obb514ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb514ID)
Obb514ID = nil

OakTree15ID = {}
OakTree15ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree15ID.transformID, {x=24.2969, y=7.51563, z=139.5})
Transform.SetScaleNonUniform(OakTree15ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree15ID.transformID, {x=0, y=0.131111, z=0})
OakTree15ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree15ID.model, OakTree15ID.transformID)
table.insert(props,OakTree15ID)
OakTree15ID = nil

OakTree116ID = {}
OakTree116ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree116ID.transformID, {x=38.165, y=9.16406, z=155.143})
Transform.SetScaleNonUniform(OakTree116ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree116ID.transformID, {x=0, y=0.131111, z=0})
OakTree116ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree116ID.model, OakTree116ID.transformID)
table.insert(props,OakTree116ID)
OakTree116ID = nil

Obb617ID = {}
Obb617ID.transformID = Transform.Bind()
Transform.SetPosition(Obb617ID.transformID, {x=37, y=9.5333, z=157.949})
Transform.SetScaleNonUniform(Obb617ID.transformID, 9.35705, 5.50959, 1)
Transform.SetRotation(Obb617ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb617ID)
Obb617ID = nil

Obb718ID = {}
Obb718ID.transformID = Transform.Bind()
Transform.SetPosition(Obb718ID.transformID, {x=42.2044, y=10.3271, z=163.596})
Transform.SetScaleNonUniform(Obb718ID.transformID, 8.15694, 6.00243, 1)
Transform.SetRotation(Obb718ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb718ID)
Obb718ID = nil

Obb819ID = {}
Obb819ID.transformID = Transform.Bind()
Transform.SetPosition(Obb819ID.transformID, {x=48.9783, y=10.9527, z=164.675})
Transform.SetScaleNonUniform(Obb819ID.transformID, 6.97815, 7.49178, 1)
Transform.SetRotation(Obb819ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb819ID)
Obb819ID = nil

Obb920ID = {}
Obb920ID.transformID = Transform.Bind()
Transform.SetPosition(Obb920ID.transformID, {x=55.3556, y=11.1204, z=168.448})
Transform.SetScaleNonUniform(Obb920ID.transformID, 10.8495, 9.54112, 1)
Transform.SetRotation(Obb920ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb920ID)
Obb920ID = nil

Obb1021ID = {}
Obb1021ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1021ID.transformID, {x=58.6678, y=12.1175, z=174.958})
Transform.SetScaleNonUniform(Obb1021ID.transformID, 10.9676, 9.64082, 1)
Transform.SetRotation(Obb1021ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1021ID)
Obb1021ID = nil

Obb1122ID = {}
Obb1122ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1122ID.transformID, {x=55.9463, y=12.6501, z=182.812})
Transform.SetScaleNonUniform(Obb1122ID.transformID, 10.1088, 9.38199, 1)
Transform.SetRotation(Obb1122ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1122ID)
Obb1122ID = nil

Obb1223ID = {}
Obb1223ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1223ID.transformID, {x=48.6808, y=12.5014, z=187.183})
Transform.SetScaleNonUniform(Obb1223ID.transformID, 13.7087, 11.7246, 1)
Transform.SetRotation(Obb1223ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1223ID)
Obb1223ID = nil

Obb1324ID = {}
Obb1324ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1324ID.transformID, {x=38.1514, y=13.6557, z=185.956})
Transform.SetScaleNonUniform(Obb1324ID.transformID, 11.3925, 13.5993, 1)
Transform.SetRotation(Obb1324ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1324ID)
Obb1324ID = nil

Obb1425ID = {}
Obb1425ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1425ID.transformID, {x=34.5771, y=13.8542, z=180.313})
Transform.SetScaleNonUniform(Obb1425ID.transformID, 12.9332, 12.3953, 1)
Transform.SetRotation(Obb1425ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1425ID)
Obb1425ID = nil

Obb1526ID = {}
Obb1526ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1526ID.transformID, {x=31.8688, y=14.2511, z=173.021})
Transform.SetScaleNonUniform(Obb1526ID.transformID, 8.30632, 13.757, 1)
Transform.SetRotation(Obb1526ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1526ID)
Obb1526ID = nil

StartHouseAdjCol27ID = {}
StartHouseAdjCol27ID.transformID = Transform.Bind()
Transform.SetPosition(StartHouseAdjCol27ID.transformID, {x=45.8125, y=16.8656, z=175.375})
Transform.SetScaleNonUniform(StartHouseAdjCol27ID.transformID, 1, 1, 1)
Transform.SetRotation(StartHouseAdjCol27ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,StartHouseAdjCol27ID)
StartHouseAdjCol27ID = nil

Obb1728ID = {}
Obb1728ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1728ID.transformID, {x=27.1257, y=8.69628, z=170.818})
Transform.SetScaleNonUniform(Obb1728ID.transformID, 4.71224, 6.04265, 1)
Transform.SetRotation(Obb1728ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1728ID)
Obb1728ID = nil

Obb1829ID = {}
Obb1829ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1829ID.transformID, {x=24.5398, y=8.39063, z=172.849})
Transform.SetScaleNonUniform(Obb1829ID.transformID, 2.51462, 7.81261, 1)
Transform.SetRotation(Obb1829ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1829ID)
Obb1829ID = nil

Obb1930ID = {}
Obb1930ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1930ID.transformID, {x=23.0938, y=8.5625, z=173.17})
Transform.SetScaleNonUniform(Obb1930ID.transformID, 1, 7.31101, 1)
Transform.SetRotation(Obb1930ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1930ID)
Obb1930ID = nil

Obb2031ID = {}
Obb2031ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2031ID.transformID, {x=23.149, y=8.23438, z=175.228})
Transform.SetScaleNonUniform(Obb2031ID.transformID, 4.04565, 9.08401, 1)
Transform.SetRotation(Obb2031ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2031ID)
Obb2031ID = nil

Obb2132ID = {}
Obb2132ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2132ID.transformID, {x=24.4609, y=8.22656, z=179.033})
Transform.SetScaleNonUniform(Obb2132ID.transformID, 4.8056, 9.35686, 1)
Transform.SetRotation(Obb2132ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2132ID)
Obb2132ID = nil

Obb2233ID = {}
Obb2233ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2233ID.transformID, {x=29.7923, y=8.63281, z=186.254})
Transform.SetScaleNonUniform(Obb2233ID.transformID, 12.9065, 11.8147, 1)
Transform.SetRotation(Obb2233ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2233ID)
Obb2233ID = nil

Obb2334ID = {}
Obb2334ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2334ID.transformID, {x=35.0836, y=9.70313, z=192.442})
Transform.SetScaleNonUniform(Obb2334ID.transformID, 7.62255, 11.5604, 1)
Transform.SetRotation(Obb2334ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2334ID)
Obb2334ID = nil

Obb1635ID = {}
Obb1635ID.transformID = Transform.Bind()
Transform.SetPosition(Obb1635ID.transformID, {x=30.0386, y=8.42188, z=169.58})
Transform.SetScaleNonUniform(Obb1635ID.transformID, 2.82024, 10.0437, 1)
Transform.SetRotation(Obb1635ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb1635ID)
Obb1635ID = nil

StartHouseAdj2Col36ID = {}
StartHouseAdj2Col36ID.transformID = Transform.Bind()
Transform.SetPosition(StartHouseAdj2Col36ID.transformID, {x=15, y=12, z=150})
Transform.SetScaleNonUniform(StartHouseAdj2Col36ID.transformID, 1, 1, 1)
Transform.SetRotation(StartHouseAdj2Col36ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,StartHouseAdj2Col36ID)
StartHouseAdj2Col36ID = nil

Obb2437ID = {}
Obb2437ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2437ID.transformID, {x=19.4379, y=10.0219, z=140.008})
Transform.SetScaleNonUniform(Obb2437ID.transformID, 2.79296, 6.58353, 1)
Transform.SetRotation(Obb2437ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2437ID)
Obb2437ID = nil

Obb2538ID = {}
Obb2538ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2538ID.transformID, {x=16.0687, y=11.3801, z=140.449})
Transform.SetScaleNonUniform(Obb2538ID.transformID, 4.16547, 10.2432, 1)
Transform.SetRotation(Obb2538ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2538ID)
Obb2538ID = nil

Obb2639ID = {}
Obb2639ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2639ID.transformID, {x=12.2076, y=10.8924, z=139.388})
Transform.SetScaleNonUniform(Obb2639ID.transformID, 4.45512, 8.39056, 1)
Transform.SetRotation(Obb2639ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2639ID)
Obb2639ID = nil

Obb2740ID = {}
Obb2740ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2740ID.transformID, {x=8.25699, y=8.23438, z=137.828})
Transform.SetScaleNonUniform(Obb2740ID.transformID, 4.87982, 7.74944, 1)
Transform.SetRotation(Obb2740ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2740ID)
Obb2740ID = nil

Obb2841ID = {}
Obb2841ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2841ID.transformID, {x=5.1875, y=7.3125, z=201.625})
Transform.SetScaleNonUniform(Obb2841ID.transformID, 6.71884, 9.48064, 1)
Transform.SetRotation(Obb2841ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2841ID)
Obb2841ID = nil

Obb2942ID = {}
Obb2942ID.transformID = Transform.Bind()
Transform.SetPosition(Obb2942ID.transformID, {x=2.38477, y=6.95703, z=198.375})
Transform.SetScaleNonUniform(Obb2942ID.transformID, 8.54796, 11.2199, 1)
Transform.SetRotation(Obb2942ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb2942ID)
Obb2942ID = nil

Obb3043ID = {}
Obb3043ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3043ID.transformID, {x=0.623587, y=6.19531, z=191.702})
Transform.SetScaleNonUniform(Obb3043ID.transformID, 9.7465, 12.2743, 1)
Transform.SetRotation(Obb3043ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3043ID)
Obb3043ID = nil

Obb3144ID = {}
Obb3144ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3144ID.transformID, {x=0.610751, y=7.92188, z=184.863})
Transform.SetScaleNonUniform(Obb3144ID.transformID, 12.6674, 10.0445, 1)
Transform.SetRotation(Obb3144ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3144ID)
Obb3144ID = nil

Obb3245ID = {}
Obb3245ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3245ID.transformID, {x=3.37572, y=7.92188, z=178.551})
Transform.SetScaleNonUniform(Obb3245ID.transformID, 10.0506, 12.8097, 1)
Transform.SetRotation(Obb3245ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3245ID)
Obb3245ID = nil

Obb3346ID = {}
Obb3346ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3346ID.transformID, {x=7.74764, y=10.1094, z=174.373})
Transform.SetScaleNonUniform(Obb3346ID.transformID, 2.71867, 9.28327, 1)
Transform.SetRotation(Obb3346ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3346ID)
Obb3346ID = nil

Obb3447ID = {}
Obb3447ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3447ID.transformID, {x=8.11317, y=9.32813, z=172.223})
Transform.SetScaleNonUniform(Obb3447ID.transformID, 3.43608, 7.86563, 1)
Transform.SetRotation(Obb3447ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3447ID)
Obb3447ID = nil

Obb3548ID = {}
Obb3548ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3548ID.transformID, {x=5.56516, y=9.48503, z=168.72})
Transform.SetScaleNonUniform(Obb3548ID.transformID, 5.87615, 10.0751, 1)
Transform.SetRotation(Obb3548ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3548ID)
Obb3548ID = nil

Obb3649ID = {}
Obb3649ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3649ID.transformID, {x=2.59518, y=10.0938, z=164.52})
Transform.SetScaleNonUniform(Obb3649ID.transformID, 8.09491, 9.50447, 1)
Transform.SetRotation(Obb3649ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3649ID)
Obb3649ID = nil

Obb3750ID = {}
Obb3750ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3750ID.transformID, {x=2.78337, y=10.7049, z=156.698})
Transform.SetScaleNonUniform(Obb3750ID.transformID, 14.4018, 9.88275, 1)
Transform.SetRotation(Obb3750ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3750ID)
Obb3750ID = nil

Obb3851ID = {}
Obb3851ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3851ID.transformID, {x=3.62596, y=11.1337, z=148.583})
Transform.SetScaleNonUniform(Obb3851ID.transformID, 2.85839, 9.81549, 1)
Transform.SetRotation(Obb3851ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3851ID)
Obb3851ID = nil

StartHouseAdj3Col52ID = {}
StartHouseAdj3Col52ID.transformID = Transform.Bind()
Transform.SetPosition(StartHouseAdj3Col52ID.transformID, {x=40, y=20, z=205})
Transform.SetScaleNonUniform(StartHouseAdj3Col52ID.transformID, 1, 1, 1)
Transform.SetRotation(StartHouseAdj3Col52ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,StartHouseAdj3Col52ID)
StartHouseAdj3Col52ID = nil

Obb3953ID = {}
Obb3953ID.transformID = Transform.Bind()
Transform.SetPosition(Obb3953ID.transformID, {x=50.8298, y=12.4453, z=201.871})
Transform.SetScaleNonUniform(Obb3953ID.transformID, 10.6439, 9.92635, 1)
Transform.SetRotation(Obb3953ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb3953ID)
Obb3953ID = nil

Obb4054ID = {}
Obb4054ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4054ID.transformID, {x=56.1607, y=13.0547, z=206.779})
Transform.SetScaleNonUniform(Obb4054ID.transformID, 5.42791, 13.4841, 1)
Transform.SetRotation(Obb4054ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4054ID)
Obb4054ID = nil

Obb4155ID = {}
Obb4155ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4155ID.transformID, {x=62.7419, y=16.6875, z=207.51})
Transform.SetScaleNonUniform(Obb4155ID.transformID, 9.20728, 18.7853, 1)
Transform.SetRotation(Obb4155ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4155ID)
Obb4155ID = nil

Obb4256ID = {}
Obb4256ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4256ID.transformID, {x=72.6857, y=20.5074, z=203.934})
Transform.SetScaleNonUniform(Obb4256ID.transformID, 16.0584, 24.6348, 1)
Transform.SetRotation(Obb4256ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4256ID)
Obb4256ID = nil

Obb4357ID = {}
Obb4357ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4357ID.transformID, {x=83.1706, y=28.2956, z=197.481})
Transform.SetScaleNonUniform(Obb4357ID.transformID, 11.3618, 14.2447, 1)
Transform.SetRotation(Obb4357ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4357ID)
Obb4357ID = nil

New58ID = {}
New58ID.transformID = Transform.Bind()
Transform.SetPosition(New58ID.transformID, {x=118.254, y=53.1783, z=226.98})
Transform.SetScaleNonUniform(New58ID.transformID, 1, 1, 1)
Transform.SetRotation(New58ID.transformID, {x=0, y=0, z=0})
Light.addLight(118.254, 53.1783, 226.98, 0.870588, 0.627451, 0, 100,2)
table.insert(props,New58ID)
New58ID = nil

Obb4459ID = {}
Obb4459ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4459ID.transformID, {x=93.234, y=28.9104, z=190.853})
Transform.SetScaleNonUniform(Obb4459ID.transformID, 15.3271, 14.8288, 1)
Transform.SetRotation(Obb4459ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4459ID)
Obb4459ID = nil

Obb4560ID = {}
Obb4560ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4560ID.transformID, {x=108.002, y=33.3125, z=192.67})
Transform.SetScaleNonUniform(Obb4560ID.transformID, 28.5746, 34.3001, 1)
Transform.SetRotation(Obb4560ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4560ID)
Obb4560ID = nil

Obb4661ID = {}
Obb4661ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4661ID.transformID, {x=120.979, y=41.375, z=202.838})
Transform.SetScaleNonUniform(Obb4661ID.transformID, 13.179, 19.6566, 1)
Transform.SetRotation(Obb4661ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4661ID)
Obb4661ID = nil

Obb4762ID = {}
Obb4762ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4762ID.transformID, {x=105.844, y=32.7476, z=202.393})
Transform.SetScaleNonUniform(Obb4762ID.transformID, 13.5523, 19.4883, 1)
Transform.SetRotation(Obb4762ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4762ID)
Obb4762ID = nil

Obb4963ID = {}
Obb4963ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4963ID.transformID, {x=89.6993, y=29.3027, z=211.726})
Transform.SetScaleNonUniform(Obb4963ID.transformID, 8.35995, 23.2883, 1)
Transform.SetRotation(Obb4963ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb4963ID)
Obb4963ID = nil

Obb5064ID = {}
Obb5064ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5064ID.transformID, {x=92.625, y=24.875, z=216.75})
Transform.SetScaleNonUniform(Obb5064ID.transformID, 4.84111, 11.6196, 1)
Transform.SetRotation(Obb5064ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5064ID)
Obb5064ID = nil

Obb5165ID = {}
Obb5165ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5165ID.transformID, {x=98.5347, y=39, z=219.379})
Transform.SetScaleNonUniform(Obb5165ID.transformID, 9.8435, 33.9701, 1)
Transform.SetRotation(Obb5165ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5165ID)
Obb5165ID = nil

Obb5266ID = {}
Obb5266ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5266ID.transformID, {x=105.5, y=31.6984, z=221.867})
Transform.SetScaleNonUniform(Obb5266ID.transformID, 5.8515, 12.7259, 1)
Transform.SetRotation(Obb5266ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5266ID)
Obb5266ID = nil

Obb5367ID = {}
Obb5367ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5367ID.transformID, {x=110.313, y=32.5313, z=221.625})
Transform.SetScaleNonUniform(Obb5367ID.transformID, 7.43607, 11.626, 1)
Transform.SetRotation(Obb5367ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5367ID)
Obb5367ID = nil

Obb5468ID = {}
Obb5468ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5468ID.transformID, {x=114.005, y=32.9375, z=217.166})
Transform.SetScaleNonUniform(Obb5468ID.transformID, 6.09159, 14.7933, 1)
Transform.SetRotation(Obb5468ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5468ID)
Obb5468ID = nil

Obb5569ID = {}
Obb5569ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5569ID.transformID, {x=112.846, y=36.7188, z=210.205})
Transform.SetScaleNonUniform(Obb5569ID.transformID, 9.30988, 8.53436, 1)
Transform.SetRotation(Obb5569ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,Obb5569ID)
Obb5569ID = nil

Obb4870ID = {}
Obb4870ID.transformID = Transform.Bind()
Transform.SetPosition(Obb4870ID.transformID, {x=96.1735, y=33.4375, z=201.026})
Transform.SetScaleNonUniform(Obb4870ID.transformID, 10.0435, 18.0165, 1)
Transform.SetRotation(Obb4870ID.transformID, {x=0, y=0, z=0})
Obb4870ID.collider = OBBCollider.Create(Obb4870ID.transformID)
Obb4870ID.collider:SetOffset(0,0,0)
Obb4870ID.collider:SetZAxis(-0.461222,0,-0.887285)
Obb4870ID.collider:SetHalfLengths(5.02173,9.00826,0.5)
CollisionHandler.AddOBB(Obb4870ID.collider, 3)
table.insert(colliders,Obb4870ID)
Obb4870ID = nil

Obb5671ID = {}
Obb5671ID.transformID = Transform.Bind()
Transform.SetPosition(Obb5671ID.transformID, {x=90.5204, y=26.4627, z=206.347})
Transform.SetScaleNonUniform(Obb5671ID.transformID, 7.26399, 16.0026, 1)
Transform.SetRotation(Obb5671ID.transformID, {x=0, y=0.419141, z=0})
Obb5671ID.collider = OBBCollider.Create(Obb5671ID.transformID)
Obb5671ID.collider:SetOffset(0,0,0)
Obb5671ID.collider:SetZAxis(-0.900232,0,-0.435411)
Obb5671ID.collider:SetHalfLengths(3.632,8.00131,0.5)
CollisionHandler.AddOBB(Obb5671ID.collider, 3)
table.insert(colliders,Obb5671ID)
Obb5671ID = nil

New172ID = {}
New172ID.transformID = Transform.Bind()
Transform.SetPosition(New172ID.transformID, {x=132.801, y=34, z=224.968})
Transform.SetScaleNonUniform(New172ID.transformID, 5.31653, 8, 1)
Transform.SetRotation(New172ID.transformID, {x=0, y=0, z=0})
table.insert(props,New172ID)
New172ID = nil

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
