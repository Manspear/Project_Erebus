levels = {}
heightmaps = {}

---------------------------------Heightmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap1.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap1.asset:SetHeightMultiplier(0.0707237)
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap2.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap2.asset:SetHeightMultiplier(0.113531)
heightmaps[2] = Heightmap2
Heightmap2 = nil

---------------------------------Heightmap-----------------------------


---------------------------------Settings-----------------------------

Setting.props.settings60ID = {}
Transform.SetPosition(player.transformID, {x=392.824, y=36.6573, z=151.181})
player:ChangeHeightmap(1)

---------------------------------Settings-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.props.t3s12ID = {}
level01.props.t3s12ID.model = Assets.LoadModel('Models/tile3_s1.model')
level01.props.t3s12ID.transformID = Gear.BindStaticInstance(level01.props.t3s12ID.model)
Transform.SetPosition(level01.props.t3s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.t3s12ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.t3s12ID.transformID, {x=0, y=0, z=0})
level01.props.tile33ID = {}
level01.props.t3s24ID = {}
level01.props.t3s24ID.model = Assets.LoadModel('Models/tile3_s2.model')
level01.props.t3s24ID.transformID = Gear.BindStaticInstance(level01.props.t3s24ID.model)
Transform.SetPosition(level01.props.t3s24ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.t3s24ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.t3s24ID.transformID, {x=0, y=0, z=0})
level01.props.t3s35ID = {}
level01.props.t3s35ID.model = Assets.LoadModel('Models/tile3_s3.model')
level01.props.t3s35ID.transformID = Gear.BindStaticInstance(level01.props.t3s35ID.model)
Transform.SetPosition(level01.props.t3s35ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.t3s35ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.t3s35ID.transformID, {x=0, y=0, z=0})
level01.props.t3s46ID = {}
level01.props.t3s46ID.model = Assets.LoadModel('Models/tile3_s4.model')
level01.props.t3s46ID.transformID = Gear.BindStaticInstance(level01.props.t3s46ID.model)
Transform.SetPosition(level01.props.t3s46ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.t3s46ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.t3s46ID.transformID, {x=0, y=0, z=0})
level01.props.New61ID = {}
level01.props.New61ID.model = Assets.LoadModel('Models/tile2_s9.model')
level01.props.New61ID.transformID = Gear.BindStaticInstance(level01.props.New61ID.model)
Transform.SetPosition(level01.props.New61ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.New61ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.New61ID.transformID, {x=0, y=0, z=0})
level01.props.New162ID = {}
level01.props.New162ID.model = Assets.LoadModel('Models/tile2_s10.model')
level01.props.New162ID.transformID = Gear.BindStaticInstance(level01.props.New162ID.model)
Transform.SetPosition(level01.props.New162ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.New162ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.New162ID.transformID, {x=0, y=0, z=0})
level01.props.Stone279ID = {}
level01.props.Stone279ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone279ID.transformID = Gear.BindStaticInstance(level01.props.Stone279ID.model)
Transform.SetPosition(level01.props.Stone279ID.transformID, {x=427.75, y=34.875, z=161.875})
Transform.SetScaleNonUniform(level01.props.Stone279ID.transformID, 3.39706, 4.05842, 3.72766)
Transform.SetRotation(level01.props.Stone279ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree180ID = {}
level01.props.PineTree180ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree180ID.transformID = Gear.BindStaticInstance(level01.props.PineTree180ID.model)
Transform.SetPosition(level01.props.PineTree180ID.transformID, {x=479, y=41.2813, z=202.125})
Transform.SetScaleNonUniform(level01.props.PineTree180ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree180ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree1181ID = {}
level01.props.PineTree1181ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree1181ID.transformID = Gear.BindStaticInstance(level01.props.PineTree1181ID.model)
Transform.SetPosition(level01.props.PineTree1181ID.transformID, {x=461, y=43.5313, z=228.125})
Transform.SetScaleNonUniform(level01.props.PineTree1181ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree1181ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree1282ID = {}
level01.props.PineTree1282ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree1282ID.transformID = Gear.BindStaticInstance(level01.props.PineTree1282ID.model)
Transform.SetPosition(level01.props.PineTree1282ID.transformID, {x=451, y=41.5, z=201.5})
Transform.SetScaleNonUniform(level01.props.PineTree1282ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree1282ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree1383ID = {}
level01.props.PineTree1383ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree1383ID.transformID = Gear.BindStaticInstance(level01.props.PineTree1383ID.model)
Transform.SetPosition(level01.props.PineTree1383ID.transformID, {x=493.5, y=42, z=247.75})
Transform.SetScaleNonUniform(level01.props.PineTree1383ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree1383ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree84ID = {}
level01.props.OakTree84ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree84ID.transformID = Gear.BindStaticInstance(level01.props.OakTree84ID.model)
Transform.SetPosition(level01.props.OakTree84ID.transformID, {x=467.75, y=38.9688, z=181})
Transform.SetScaleNonUniform(level01.props.OakTree84ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree84ID.transformID, {x=0, y=0.131111, z=0})
level01.props.OakTree185ID = {}
level01.props.OakTree185ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree185ID.transformID = Gear.BindStaticInstance(level01.props.OakTree185ID.model)
Transform.SetPosition(level01.props.OakTree185ID.transformID, {x=439, y=46.9375, z=220.875})
Transform.SetScaleNonUniform(level01.props.OakTree185ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree185ID.transformID, {x=0, y=0.131111, z=0})
level01.props.OakTree286ID = {}
level01.props.OakTree286ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree286ID.transformID = Gear.BindStaticInstance(level01.props.OakTree286ID.model)
Transform.SetPosition(level01.props.OakTree286ID.transformID, {x=485, y=31.7188, z=122.563})
Transform.SetScaleNonUniform(level01.props.OakTree286ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree286ID.transformID, {x=0, y=0.131111, z=0})
level01.props.OakTree387ID = {}
level01.props.OakTree387ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree387ID.transformID = Gear.BindStaticInstance(level01.props.OakTree387ID.model)
Transform.SetPosition(level01.props.OakTree387ID.transformID, {x=527.5, y=26.3125, z=143.375})
Transform.SetScaleNonUniform(level01.props.OakTree387ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree387ID.transformID, {x=0, y=0.131111, z=0})
level01.props.OakTree488ID = {}
level01.props.OakTree488ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree488ID.transformID = Gear.BindStaticInstance(level01.props.OakTree488ID.model)
Transform.SetPosition(level01.props.OakTree488ID.transformID, {x=563.5, y=15.2031, z=105.813})
Transform.SetScaleNonUniform(level01.props.OakTree488ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree488ID.transformID, {x=0, y=0.131111, z=0})
level01.props.OakTree589ID = {}
level01.props.OakTree589ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree589ID.transformID = Gear.BindStaticInstance(level01.props.OakTree589ID.model)
Transform.SetPosition(level01.props.OakTree589ID.transformID, {x=503.25, y=26.7188, z=163})
Transform.SetScaleNonUniform(level01.props.OakTree589ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.OakTree589ID.transformID, {x=0, y=0.131111, z=0})
level01.colliders.C_Parent_Tile_194ID = {}
level01.colliders.C_Parent_Tile_194ID.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_194ID.collider:SetMinPos(383.7,15.2031,104.405)
level01.colliders.C_Parent_Tile_194ID.collider:SetMaxPos(565.408,68.8781,255.3)
level01.colliders.C_Parent_Tile_194ID.collider:SetPos(0,0,0)
level01.colliders.C_Parent_Tile_194ID1 = {}
level01.colliders.C_Parent_Tile_194ID1.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID1.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_194ID1.collider:SetMinPos(383.7,30.1611,134.729)
level01.colliders.C_Parent_Tile_194ID1.collider:SetMaxPos(422.128,42.7071,172.134)
level01.colliders.C_Parent_Tile_194ID.collider:AddChild(level01.colliders.C_Parent_Tile_194ID1.collider)
level01.colliders.C_Parent_Tile_194ID2 = {}
level01.colliders.C_Parent_Tile_194ID2.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID2.collider:SetOffset(398,36.3044,158)
level01.colliders.C_Parent_Tile_194ID2.collider:SetZAxis(0.980581,0,0.196116)
level01.colliders.C_Parent_Tile_194ID2.collider:SetHalfLengths(0.3,5.15847,5.09902)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID2.collider)
level01.colliders.C_Parent_Tile_194ID3 = {}
level01.colliders.C_Parent_Tile_194ID3.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID3.collider:SetOffset(404,36.146,160)
level01.colliders.C_Parent_Tile_194ID3.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_194ID3.collider:SetHalfLengths(0.3,5.15847,1.41421)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID3.collider)
level01.colliders.C_Parent_Tile_194ID4 = {}
level01.colliders.C_Parent_Tile_194ID4.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID4.collider:SetOffset(406,36.3044,162.5)
level01.colliders.C_Parent_Tile_194ID4.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_194ID4.collider:SetHalfLengths(0.3,5.15847,1.80278)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID4.collider)
level01.colliders.C_Parent_Tile_194ID5 = {}
level01.colliders.C_Parent_Tile_194ID5.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID5.collider:SetOffset(409,36.4629,168)
level01.colliders.C_Parent_Tile_194ID5.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_194ID5.collider:SetHalfLengths(0.3,5.31694,4.47214)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID5.collider)
level01.colliders.C_Parent_Tile_194ID6 = {}
level01.colliders.C_Parent_Tile_194ID6.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID6.collider:SetOffset(412.5,35.5121,139.5)
level01.colliders.C_Parent_Tile_194ID6.collider:SetZAxis(-0.903738,0,0.428086)
level01.colliders.C_Parent_Tile_194ID6.collider:SetHalfLengths(0.3,5.15847,10.5119)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID6.collider)
level01.colliders.C_Parent_Tile_194ID7 = {}
level01.colliders.C_Parent_Tile_194ID7.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID7.collider:SetOffset(401.5,35.3536,144.5)
level01.colliders.C_Parent_Tile_194ID7.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.C_Parent_Tile_194ID7.collider:SetHalfLengths(0.3,5,1.58114)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID7.collider)
level01.colliders.C_Parent_Tile_194ID8 = {}
level01.colliders.C_Parent_Tile_194ID8.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID8.collider:SetOffset(392,35.3536,145)
level01.colliders.C_Parent_Tile_194ID8.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_194ID8.collider:SetHalfLengths(0.3,5.15847,8)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID8.collider)
level01.colliders.C_Parent_Tile_194ID9 = {}
level01.colliders.C_Parent_Tile_194ID9.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID9.collider:SetOffset(384,35.1951,146)
level01.colliders.C_Parent_Tile_194ID9.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID9.collider:SetHalfLengths(0.3,5,1)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID9.collider)
level01.colliders.C_Parent_Tile_194ID10 = {}
level01.colliders.C_Parent_Tile_194ID10.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID10.collider:SetOffset(384,36.4341,151.5)
level01.colliders.C_Parent_Tile_194ID10.collider:SetZAxis(0,0,-1)
level01.colliders.C_Parent_Tile_194ID10.collider:SetHalfLengths(0.3,6.27303,5.5)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID10.collider)
level01.colliders.C_Parent_Tile_194ID11 = {}
level01.colliders.C_Parent_Tile_194ID11.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID11.collider:SetOffset(388.5,36.4341,157)
level01.colliders.C_Parent_Tile_194ID11.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_194ID11.collider:SetHalfLengths(0.3,5.14145,4.5)
level01.colliders.C_Parent_Tile_194ID1.collider:AddChild(level01.colliders.C_Parent_Tile_194ID11.collider)
level01.colliders.C_Parent_Tile_194ID12 = {}
level01.colliders.C_Parent_Tile_194ID12.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID12.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_194ID12.collider:SetMinPos(410.719,30.5121,127.711)
level01.colliders.C_Parent_Tile_194ID12.collider:SetMaxPos(475.148,55.7251,239.073)
level01.colliders.C_Parent_Tile_194ID.collider:AddChild(level01.colliders.C_Parent_Tile_194ID12.collider)
level01.colliders.C_Parent_Tile_194ID13 = {}
level01.colliders.C_Parent_Tile_194ID13.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID13.collider:SetOffset(412.5,36.7798,176)
level01.colliders.C_Parent_Tile_194ID13.collider:SetZAxis(0.351123,0,0.936329)
level01.colliders.C_Parent_Tile_194ID13.collider:SetHalfLengths(0.3,5.79235,4.272)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID13.collider)
level01.colliders.C_Parent_Tile_194ID14 = {}
level01.colliders.C_Parent_Tile_194ID14.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID14.collider:SetOffset(415.5,37.5722,185)
level01.colliders.C_Parent_Tile_194ID14.collider:SetZAxis(0.287348,0,0.957826)
level01.colliders.C_Parent_Tile_194ID14.collider:SetHalfLengths(0.3,5.63388,5.22015)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID14.collider)
level01.colliders.C_Parent_Tile_194ID15 = {}
level01.colliders.C_Parent_Tile_194ID15.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID15.collider:SetOffset(418,38.2061,195.5)
level01.colliders.C_Parent_Tile_194ID15.collider:SetZAxis(0.178885,0,0.98387)
level01.colliders.C_Parent_Tile_194ID15.collider:SetHalfLengths(0.3,7.0601,5.59017)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID15.collider)
level01.colliders.C_Parent_Tile_194ID16 = {}
level01.colliders.C_Parent_Tile_194ID16.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID16.collider:SetOffset(419.5,40.2662,208.5)
level01.colliders.C_Parent_Tile_194ID16.collider:SetZAxis(0.066519,0,0.997785)
level01.colliders.C_Parent_Tile_194ID16.collider:SetHalfLengths(0.3,9.27867,7.51665)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID16.collider)
level01.colliders.C_Parent_Tile_194ID17 = {}
level01.colliders.C_Parent_Tile_194ID17.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID17.collider:SetOffset(418.5,44.5448,223.5)
level01.colliders.C_Parent_Tile_194ID17.collider:SetZAxis(-0.196116,0,0.980581)
level01.colliders.C_Parent_Tile_194ID17.collider:SetHalfLengths(0.3,8.80326,7.64853)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID17.collider)
level01.colliders.C_Parent_Tile_194ID18 = {}
level01.colliders.C_Parent_Tile_194ID18.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID18.collider:SetOffset(416,48.3481,235)
level01.colliders.C_Parent_Tile_194ID18.collider:SetZAxis(-0.242536,0,0.970143)
level01.colliders.C_Parent_Tile_194ID18.collider:SetHalfLengths(0.3,7.37704,4.12311)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID18.collider)
level01.colliders.C_Parent_Tile_194ID19 = {}
level01.colliders.C_Parent_Tile_194ID19.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID19.collider:SetOffset(463.5,38.2061,139.5)
level01.colliders.C_Parent_Tile_194ID19.collider:SetZAxis(-0.870563,0,-0.492057)
level01.colliders.C_Parent_Tile_194ID19.collider:SetHalfLengths(0.3,6.42622,13.2098)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID19.collider)
level01.colliders.C_Parent_Tile_194ID20 = {}
level01.colliders.C_Parent_Tile_194ID20.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID20.collider:SetOffset(443,36.7798,130.5)
level01.colliders.C_Parent_Tile_194ID20.collider:SetZAxis(-0.963518,0,-0.267644)
level01.colliders.C_Parent_Tile_194ID20.collider:SetHalfLengths(0.3,5.95082,9.34077)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID20.collider)
level01.colliders.C_Parent_Tile_194ID21 = {}
level01.colliders.C_Parent_Tile_194ID21.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID21.collider:SetOffset(428,35.829,131.5)
level01.colliders.C_Parent_Tile_194ID21.collider:SetZAxis(-0.863779,0,0.503871)
level01.colliders.C_Parent_Tile_194ID21.collider:SetHalfLengths(0.3,5.31694,6.94622)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID21.collider)
level01.colliders.C_Parent_Tile_194ID22 = {}
level01.colliders.C_Parent_Tile_194ID22.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID22.collider:SetOffset(428.05,35.475,161.875)
level01.colliders.C_Parent_Tile_194ID22.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID22.collider:SetHalfLengths(3.39706,2.43505,3.72766)
level01.colliders.C_Parent_Tile_194ID12.collider:AddChild(level01.colliders.C_Parent_Tile_194ID22.collider)
level01.colliders.C_Parent_Tile_194ID23 = {}
level01.colliders.C_Parent_Tile_194ID23.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID23.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_194ID23.collider:SetMinPos(414.882,31.7188,121.155)
level01.colliders.C_Parent_Tile_194ID23.collider:SetMaxPos(497.262,68.8781,255.3)
level01.colliders.C_Parent_Tile_194ID.collider:AddChild(level01.colliders.C_Parent_Tile_194ID23.collider)
level01.colliders.C_Parent_Tile_194ID24 = {}
level01.colliders.C_Parent_Tile_194ID24.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID24.collider:SetOffset(422,50.7251,242)
level01.colliders.C_Parent_Tile_194ID24.collider:SetZAxis(0.919145,0,0.393919)
level01.colliders.C_Parent_Tile_194ID24.collider:SetHalfLengths(0.3,5.79234,7.61577)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID24.collider)
level01.colliders.C_Parent_Tile_194ID25 = {}
level01.colliders.C_Parent_Tile_194ID25.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID25.collider:SetOffset(432.5,51.5175,250)
level01.colliders.C_Parent_Tile_194ID25.collider:SetZAxis(0.573462,0,0.819232)
level01.colliders.C_Parent_Tile_194ID25.collider:SetHalfLengths(0.3,5.79235,6.10328)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID25.collider)
level01.colliders.C_Parent_Tile_194ID26 = {}
level01.colliders.C_Parent_Tile_194ID26.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID26.collider:SetOffset(453.5,52.3098,255)
level01.colliders.C_Parent_Tile_194ID26.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_194ID26.collider:SetHalfLengths(0.3,16.5682,17.5)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID26.collider)
level01.colliders.C_Parent_Tile_194ID27 = {}
level01.colliders.C_Parent_Tile_194ID27.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID27.collider:SetOffset(492,41.217,172)
level01.colliders.C_Parent_Tile_194ID27.collider:SetZAxis(-0.485643,0,-0.874157)
level01.colliders.C_Parent_Tile_194ID27.collider:SetHalfLengths(0.3,6.42622,10.2956)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID27.collider)
level01.colliders.C_Parent_Tile_194ID28 = {}
level01.colliders.C_Parent_Tile_194ID28.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID28.collider:SetOffset(481,39.7907,154.5)
level01.colliders.C_Parent_Tile_194ID28.collider:SetZAxis(-0.576683,0,-0.816968)
level01.colliders.C_Parent_Tile_194ID28.collider:SetHalfLengths(0.3,6.58469,10.4043)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID28.collider)
level01.colliders.C_Parent_Tile_194ID29 = {}
level01.colliders.C_Parent_Tile_194ID29.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID29.collider:SetOffset(461,47.2313,228.125)
level01.colliders.C_Parent_Tile_194ID29.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID29.collider:SetHalfLengths(2.8,3.7,2.8)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID29.collider)
level01.colliders.C_Parent_Tile_194ID30 = {}
level01.colliders.C_Parent_Tile_194ID30.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID30.collider:SetOffset(451,45.2,201.5)
level01.colliders.C_Parent_Tile_194ID30.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID30.collider:SetHalfLengths(2.8,3.7,2.8)
level01.colliders.C_Parent_Tile_194ID23.collider:AddChild(level01.colliders.C_Parent_Tile_194ID30.collider)
level01.colliders.C_Parent_Tile_194ID31 = {}
level01.colliders.C_Parent_Tile_194ID31.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID31.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_194ID31.collider:SetMinPos(476.2,15.2031,104.405)
level01.colliders.C_Parent_Tile_194ID31.collider:SetMaxPos(565.408,49.4,255.011)
level01.colliders.C_Parent_Tile_194ID.collider:AddChild(level01.colliders.C_Parent_Tile_194ID31.collider)
level01.colliders.C_Parent_Tile_194ID32 = {}
level01.colliders.C_Parent_Tile_194ID32.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID32.collider:SetOffset(511.5,41.5339,241.5)
level01.colliders.C_Parent_Tile_194ID32.collider:SetZAxis(-0.0370117,0,-0.999315)
level01.colliders.C_Parent_Tile_194ID32.collider:SetHalfLengths(0.3,5.31694,13.5093)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID32.collider)
level01.colliders.C_Parent_Tile_194ID33 = {}
level01.colliders.C_Parent_Tile_194ID33.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID33.collider:SetOffset(510,41.8508,221)
level01.colliders.C_Parent_Tile_194ID33.collider:SetZAxis(-0.141421,0,-0.98995)
level01.colliders.C_Parent_Tile_194ID33.collider:SetHalfLengths(0.3,5.31694,7.07107)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID33.collider)
level01.colliders.C_Parent_Tile_194ID34 = {}
level01.colliders.C_Parent_Tile_194ID34.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID34.collider:SetOffset(506.5,42.1678,206.5)
level01.colliders.C_Parent_Tile_194ID34.collider:SetZAxis(-0.316228,0,-0.948683)
level01.colliders.C_Parent_Tile_194ID34.collider:SetHalfLengths(0.3,5.31694,7.90569)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID34.collider)
level01.colliders.C_Parent_Tile_194ID35 = {}
level01.colliders.C_Parent_Tile_194ID35.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID35.collider:SetOffset(500.5,41.8508,190)
level01.colliders.C_Parent_Tile_194ID35.collider:SetZAxis(-0.362446,0,-0.932005)
level01.colliders.C_Parent_Tile_194ID35.collider:SetHalfLengths(0.3,5.63388,9.6566)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID35.collider)
level01.colliders.C_Parent_Tile_194ID36 = {}
level01.colliders.C_Parent_Tile_194ID36.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID36.collider:SetOffset(479,44.9813,202.125)
level01.colliders.C_Parent_Tile_194ID36.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID36.collider:SetHalfLengths(2.8,3.7,2.8)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID36.collider)
level01.colliders.C_Parent_Tile_194ID37 = {}
level01.colliders.C_Parent_Tile_194ID37.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_194ID37.collider:SetOffset(493.5,45.7,247.75)
level01.colliders.C_Parent_Tile_194ID37.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_194ID37.collider:SetHalfLengths(2.8,3.7,2.8)
level01.colliders.C_Parent_Tile_194ID31.collider:AddChild(level01.colliders.C_Parent_Tile_194ID37.collider)
CollisionHandler.AddAABB(level01.colliders.C_Parent_Tile_194ID.collider, 3)
level01.colliders.C_Parent_Tile_194ID1 = nil
level01.colliders.C_Parent_Tile_194ID2 = nil
level01.colliders.C_Parent_Tile_194ID3 = nil
level01.colliders.C_Parent_Tile_194ID4 = nil
level01.colliders.C_Parent_Tile_194ID5 = nil
level01.colliders.C_Parent_Tile_194ID6 = nil
level01.colliders.C_Parent_Tile_194ID7 = nil
level01.colliders.C_Parent_Tile_194ID8 = nil
level01.colliders.C_Parent_Tile_194ID9 = nil
level01.colliders.C_Parent_Tile_194ID10 = nil
level01.colliders.C_Parent_Tile_194ID11 = nil
level01.colliders.C_Parent_Tile_194ID12 = nil
level01.colliders.C_Parent_Tile_194ID13 = nil
level01.colliders.C_Parent_Tile_194ID14 = nil
level01.colliders.C_Parent_Tile_194ID15 = nil
level01.colliders.C_Parent_Tile_194ID16 = nil
level01.colliders.C_Parent_Tile_194ID17 = nil
level01.colliders.C_Parent_Tile_194ID18 = nil
level01.colliders.C_Parent_Tile_194ID19 = nil
level01.colliders.C_Parent_Tile_194ID20 = nil
level01.colliders.C_Parent_Tile_194ID21 = nil
level01.colliders.C_Parent_Tile_194ID22 = nil
level01.colliders.C_Parent_Tile_194ID23 = nil
level01.colliders.C_Parent_Tile_194ID24 = nil
level01.colliders.C_Parent_Tile_194ID25 = nil
level01.colliders.C_Parent_Tile_194ID26 = nil
level01.colliders.C_Parent_Tile_194ID27 = nil
level01.colliders.C_Parent_Tile_194ID28 = nil
level01.colliders.C_Parent_Tile_194ID29 = nil
level01.colliders.C_Parent_Tile_194ID30 = nil
level01.colliders.C_Parent_Tile_194ID31 = nil
level01.colliders.C_Parent_Tile_194ID32 = nil
level01.colliders.C_Parent_Tile_194ID33 = nil
level01.colliders.C_Parent_Tile_194ID34 = nil
level01.colliders.C_Parent_Tile_194ID35 = nil
level01.colliders.C_Parent_Tile_194ID36 = nil
level01.colliders.C_Parent_Tile_194ID37 = nil
end
level01.unload = function()
Gear.UnbindInstance(level01.props.t3s12ID.transformID)
level01.props.t3s12ID = nil
level01.props.tile33ID = nil
Gear.UnbindInstance(level01.props.t3s24ID.transformID)
level01.props.t3s24ID = nil
Gear.UnbindInstance(level01.props.t3s35ID.transformID)
level01.props.t3s35ID = nil
Gear.UnbindInstance(level01.props.t3s46ID.transformID)
level01.props.t3s46ID = nil
level01.colliders.Tile3_wallNr17ID = nil
level01.colliders.Tile3_wallNr28ID = nil
level01.colliders.Tile3_wallNr39ID = nil
level01.colliders.Tile3_wallNr410ID = nil
level01.colliders.Tile3_wallNr511ID = nil
level01.colliders.Tile3_wallNr612ID = nil
level01.colliders.Tile3_wallNr713ID = nil
level01.colliders.Tile3_wallNr814ID = nil
level01.colliders.Tile3_wallNr915ID = nil
level01.colliders.Tile3_wallNr1016ID = nil
level01.colliders.Tile3_wallNr1117ID = nil
level01.colliders.Tile3_wallNr1218ID = nil
level01.colliders.Tile3_wallNr1319ID = nil
level01.colliders.Tile3_wallNr1420ID = nil
level01.colliders.Tile3_wallNr1521ID = nil
level01.colliders.Tile3_wallNr1622ID = nil
level01.colliders.Tile3_wallNr1723ID = nil
level01.colliders.Tile3_wallNr1824ID = nil
level01.colliders.Tile3_wallNr1925ID = nil
level01.colliders.Tile3_wallNr2026ID = nil
level01.colliders.Tile3_wallNr2127ID = nil
level01.colliders.Tile3_wallNr2228ID = nil
level01.colliders.Tile3_wallNr2329ID = nil
level01.colliders.Tile3_wallNr2430ID = nil
level01.colliders.Tile3_wallNr2531ID = nil
level01.colliders.Tile3_wallNr2632ID = nil
level01.props.settings60ID = nil
Gear.UnbindInstance(level01.props.New61ID.transformID)
level01.props.New61ID = nil
Gear.UnbindInstance(level01.props.New162ID.transformID)
level01.props.New162ID = nil
level01.colliders.Tile1_wallNr63ID = nil
level01.colliders.Tile1_wallNr164ID = nil
Gear.UnbindInstance(level01.props.Stone279ID.transformID)
level01.props.Stone279ID = nil
Gear.UnbindInstance(level01.props.PineTree180ID.transformID)
level01.props.PineTree180ID = nil
Gear.UnbindInstance(level01.props.PineTree1181ID.transformID)
level01.props.PineTree1181ID = nil
Gear.UnbindInstance(level01.props.PineTree1282ID.transformID)
level01.props.PineTree1282ID = nil
Gear.UnbindInstance(level01.props.PineTree1383ID.transformID)
level01.props.PineTree1383ID = nil
Gear.UnbindInstance(level01.props.OakTree84ID.transformID)
level01.props.OakTree84ID = nil
Gear.UnbindInstance(level01.props.OakTree185ID.transformID)
level01.props.OakTree185ID = nil
Gear.UnbindInstance(level01.props.OakTree286ID.transformID)
level01.props.OakTree286ID = nil
Gear.UnbindInstance(level01.props.OakTree387ID.transformID)
level01.props.OakTree387ID = nil
Gear.UnbindInstance(level01.props.OakTree488ID.transformID)
level01.props.OakTree488ID = nil
Gear.UnbindInstance(level01.props.OakTree589ID.transformID)
level01.props.OakTree589ID = nil
level01.colliders.C_Parent_Tile_1190ID = nil
level01.colliders.C_Parent_Tile_1291ID = nil
level01.colliders.C_Parent_Tile_1392ID = nil
level01.colliders.C_Parent_Tile_1493ID = nil
level01.colliders.C_Parent_Tile_194ID = nil
level01.props = nil
level01.colliders = nil
level01.triggers = nil
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.surrounding = { 1 }
level02.load = function()
level02.props = {}
level02.colliders = {}
level02.triggers = {}
level02.props.tile433ID = {}
level02.props.t4s134ID = {}
level02.props.t4s134ID.model = Assets.LoadModel('Models/tile4_s1.model')
level02.props.t4s134ID.transformID = Gear.BindStaticInstance(level02.props.t4s134ID.model)
Transform.SetPosition(level02.props.t4s134ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t4s134ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t4s134ID.transformID, {x=0, y=0, z=0})
level02.props.t4s235ID = {}
level02.props.t4s235ID.model = Assets.LoadModel('Models/tile4_s2.model')
level02.props.t4s235ID.transformID = Gear.BindStaticInstance(level02.props.t4s235ID.model)
Transform.SetPosition(level02.props.t4s235ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t4s235ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t4s235ID.transformID, {x=0, y=0, z=0})
level02.props.t4s336ID = {}
level02.props.t4s336ID.model = Assets.LoadModel('Models/tile4_s3.model')
level02.props.t4s336ID.transformID = Gear.BindStaticInstance(level02.props.t4s336ID.model)
Transform.SetPosition(level02.props.t4s336ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t4s336ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t4s336ID.transformID, {x=0, y=0, z=0})
level02.props.t4s437ID = {}
level02.props.t4s437ID.model = Assets.LoadModel('Models/tile4_s4.model')
level02.props.t4s437ID.transformID = Gear.BindStaticInstance(level02.props.t4s437ID.model)
Transform.SetPosition(level02.props.t4s437ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t4s437ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t4s437ID.transformID, {x=0, y=0, z=0})
local New265ID = CreateEnemy(ENEMY_MELEE, {x=423.75, y=49.8438, z=237.5})
New265ID.moveSpeed = 9
New265ID.health = 50
New265ID.visionRange = 30

local New2166ID = CreateEnemy(ENEMY_MELEE, {x=436, y=50.4688, z=241.5})
New2166ID.moveSpeed = 9
New2166ID.health = 50
New2166ID.visionRange = 30

local New2267ID = CreateEnemy(ENEMY_MELEE, {x=428.75, y=48.5625, z=231.875})
New2267ID.moveSpeed = 9
New2267ID.health = 50
New2267ID.visionRange = 30

local New2368ID = CreateEnemy(ENEMY_MELEE, {x=476.5, y=39.3125, z=169.25})
New2368ID.moveSpeed = 9
New2368ID.health = 50
New2368ID.visionRange = 30

local New2469ID = CreateEnemy(ENEMY_MELEE, {x=499.75, y=42.1875, z=218.375})
New2469ID.moveSpeed = 9
New2469ID.health = 50
New2469ID.visionRange = 30

local New2570ID = CreateEnemy(ENEMY_MELEE, {x=494.75, y=42.0938, z=225})
New2570ID.moveSpeed = 9
New2570ID.health = 50
New2570ID.visionRange = 30

local New2671ID = CreateEnemy(ENEMY_MELEE, {x=500.25, y=40.0625, z=333.5})
New2671ID.moveSpeed = 9
New2671ID.health = 50
New2671ID.visionRange = 30

local New2772ID = CreateEnemy(ENEMY_MELEE, {x=494, y=40, z=333.75})
New2772ID.moveSpeed = 9
New2772ID.health = 50
New2772ID.visionRange = 30

local New2873ID = CreateEnemy(ENEMY_MELEE, {x=487.5, y=40.5938, z=334.5})
New2873ID.moveSpeed = 9
New2873ID.health = 50
New2873ID.visionRange = 30

local New2974ID = CreateEnemy(ENEMY_MELEE, {x=486.75, y=40.7813, z=329.5})
New2974ID.moveSpeed = 9
New2974ID.health = 50
New2974ID.visionRange = 30

local New21075ID = CreateEnemy(ENEMY_MELEE, {x=493.5, y=40.125, z=328.5})
New21075ID.moveSpeed = 9
New21075ID.health = 50
New21075ID.visionRange = 30

local New21176ID = CreateEnemy(ENEMY_MELEE, {x=500.25, y=40.0938, z=328})
New21176ID.moveSpeed = 9
New21176ID.health = 50
New21176ID.visionRange = 30

local New21277ID = CreateEnemy(ENEMY_MELEE, {x=449.5, y=53.8125, z=283.5})
New21277ID.moveSpeed = 9
New21277ID.health = 50
New21277ID.visionRange = 30

local New21378ID = CreateEnemy(ENEMY_MELEE, {x=448.5, y=53.4375, z=279})
New21378ID.moveSpeed = 9
New21378ID.health = 50
New21378ID.visionRange = 30

level02.colliders.C_Parent_Tile_298ID = {}
level02.colliders.C_Parent_Tile_298ID.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_298ID.collider:SetMinPos(434.7,23.9934,255.7)
level02.colliders.C_Parent_Tile_298ID.collider:SetMaxPos(512.3,78.3839,383.3)
level02.colliders.C_Parent_Tile_298ID.collider:SetPos(0,0,0)
level02.colliders.C_Parent_Tile_298ID1 = {}
level02.colliders.C_Parent_Tile_298ID1.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID1.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_298ID1.collider:SetMinPos(434.7,23.9934,255.7)
level02.colliders.C_Parent_Tile_298ID1.collider:SetMaxPos(477.295,65.2143,350.111)
level02.colliders.C_Parent_Tile_298ID.collider:AddChild(level02.colliders.C_Parent_Tile_298ID1.collider)
level02.colliders.C_Parent_Tile_298ID2 = {}
level02.colliders.C_Parent_Tile_298ID2.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID2.collider:SetOffset(474,40.2329,303.5)
level02.colliders.C_Parent_Tile_298ID2.collider:SetZAxis(0.178885,0,0.98387)
level02.colliders.C_Parent_Tile_298ID2.collider:SetHalfLengths(0.3,7.15708,16.7705)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID2.collider)
level02.colliders.C_Parent_Tile_298ID3 = {}
level02.colliders.C_Parent_Tile_298ID3.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID3.collider:SetOffset(467.5,40.2329,291.5)
level02.colliders.C_Parent_Tile_298ID3.collider:SetZAxis(-0.613941,0,0.789352)
level02.colliders.C_Parent_Tile_298ID3.collider:SetHalfLengths(0.3,15.3313,5.70088)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID3.collider)
level02.colliders.C_Parent_Tile_298ID4 = {}
level02.colliders.C_Parent_Tile_298ID4.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID4.collider:SetOffset(466,50.5642,306)
level02.colliders.C_Parent_Tile_298ID4.collider:SetZAxis(0.196116,0,0.980581)
level02.colliders.C_Parent_Tile_298ID4.collider:SetHalfLengths(0.3,5.68119,10.198)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID4.collider)
level02.colliders.C_Parent_Tile_298ID5 = {}
level02.colliders.C_Parent_Tile_298ID5.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID5.collider:SetOffset(468.5,51.2454,325.5)
level02.colliders.C_Parent_Tile_298ID5.collider:SetZAxis(0.0525588,0,0.998618)
level02.colliders.C_Parent_Tile_298ID5.collider:SetHalfLengths(0.3,8.29239,9.51315)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID5.collider)
level02.colliders.C_Parent_Tile_298ID6 = {}
level02.colliders.C_Parent_Tile_298ID6.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID6.collider:SetOffset(453,40.9141,256)
level02.colliders.C_Parent_Tile_298ID6.collider:SetZAxis(-1,0,0)
level02.colliders.C_Parent_Tile_298ID6.collider:SetHalfLengths(0.3,16.9207,18)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID6.collider)
level02.colliders.C_Parent_Tile_298ID7 = {}
level02.colliders.C_Parent_Tile_298ID7.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID7.collider:SetOffset(435,52.8348,263)
level02.colliders.C_Parent_Tile_298ID7.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_298ID7.collider:SetHalfLengths(0.3,6.1353,7)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID7.collider)
level02.colliders.C_Parent_Tile_298ID8 = {}
level02.colliders.C_Parent_Tile_298ID8.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID8.collider:SetOffset(436,53.9701,283.5)
level02.colliders.C_Parent_Tile_298ID8.collider:SetZAxis(0.0738717,0,0.997268)
level02.colliders.C_Parent_Tile_298ID8.collider:SetHalfLengths(0.3,6.81649,13.537)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID8.collider)
level02.colliders.C_Parent_Tile_298ID9 = {}
level02.colliders.C_Parent_Tile_298ID9.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID9.collider:SetOffset(439,55.7866,309.5)
level02.colliders.C_Parent_Tile_298ID9.collider:SetZAxis(0.157991,0,0.987441)
level02.colliders.C_Parent_Tile_298ID9.collider:SetHalfLengths(0.3,5.3406,12.659)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID9.collider)
level02.colliders.C_Parent_Tile_298ID10 = {}
level02.colliders.C_Parent_Tile_298ID10.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID10.collider:SetOffset(442.5,56.1272,328.5)
level02.colliders.C_Parent_Tile_298ID10.collider:SetZAxis(0.22486,0,0.974391)
level02.colliders.C_Parent_Tile_298ID10.collider:SetHalfLengths(0.3,6.13531,6.67083)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID10.collider)
level02.colliders.C_Parent_Tile_298ID11 = {}
level02.colliders.C_Parent_Tile_298ID11.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID11.collider:SetOffset(447,57.2625,342.5)
level02.colliders.C_Parent_Tile_298ID11.collider:SetZAxis(0.371391,0,0.928477)
level02.colliders.C_Parent_Tile_298ID11.collider:SetHalfLengths(0.3,7.95179,8.07775)
level02.colliders.C_Parent_Tile_298ID1.collider:AddChild(level02.colliders.C_Parent_Tile_298ID11.collider)
level02.colliders.C_Parent_Tile_298ID12 = {}
level02.colliders.C_Parent_Tile_298ID12.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID12.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_298ID12.collider:SetMinPos(449.701,28.7617,256)
level02.colliders.C_Parent_Tile_298ID12.collider:SetMaxPos(512.3,78.3839,383.3)
level02.colliders.C_Parent_Tile_298ID.collider:AddChild(level02.colliders.C_Parent_Tile_298ID12.collider)
level02.colliders.C_Parent_Tile_298ID13 = {}
level02.colliders.C_Parent_Tile_298ID13.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID13.collider:SetOffset(512,41.5953,300.5)
level02.colliders.C_Parent_Tile_298ID13.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_298ID13.collider:SetHalfLengths(0.3,11.8118,44.5)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID13.collider)
level02.colliders.C_Parent_Tile_298ID14 = {}
level02.colliders.C_Parent_Tile_298ID14.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID14.collider:SetOffset(508,34.7835,352.5)
level02.colliders.C_Parent_Tile_298ID14.collider:SetZAxis(-0.470588,0,0.882353)
level02.colliders.C_Parent_Tile_298ID14.collider:SetHalfLengths(0.3,6.02178,8.5)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID14.collider)
level02.colliders.C_Parent_Tile_298ID15 = {}
level02.colliders.C_Parent_Tile_298ID15.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID15.collider:SetOffset(502.5,35.8052,364.5)
level02.colliders.C_Parent_Tile_298ID15.collider:SetZAxis(-0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_298ID15.collider:SetHalfLengths(0.3,6.24884,4.74342)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID15.collider)
level02.colliders.C_Parent_Tile_298ID16 = {}
level02.colliders.C_Parent_Tile_298ID16.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID16.collider:SetOffset(475.5,42.39,334)
level02.colliders.C_Parent_Tile_298ID16.collider:SetZAxis(-0.106533,0,0.994309)
level02.colliders.C_Parent_Tile_298ID16.collider:SetHalfLengths(0.3,6.58943,14.0801)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID16.collider)
level02.colliders.C_Parent_Tile_298ID17 = {}
level02.colliders.C_Parent_Tile_298ID17.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID17.collider:SetOffset(475.5,43.9794,365.5)
level02.colliders.C_Parent_Tile_298ID17.collider:SetZAxis(0.0854011,0,0.996347)
level02.colliders.C_Parent_Tile_298ID17.collider:SetHalfLengths(0.3,5.34059,17.5642)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID17.collider)
level02.colliders.C_Parent_Tile_298ID18 = {}
level02.colliders.C_Parent_Tile_298ID18.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID18.collider:SetOffset(469.5,54.5378,347.5)
level02.colliders.C_Parent_Tile_298ID18.collider:SetZAxis(0.039968,0,0.999201)
level02.colliders.C_Parent_Tile_298ID18.collider:SetHalfLengths(0.3,6.81649,12.51)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID18.collider)
level02.colliders.C_Parent_Tile_298ID19 = {}
level02.colliders.C_Parent_Tile_298ID19.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID19.collider:SetOffset(470,56.3543,371.5)
level02.colliders.C_Parent_Tile_298ID19.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_298ID19.collider:SetHalfLengths(0.3,7.49767,11.5)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID19.collider)
level02.colliders.C_Parent_Tile_298ID20 = {}
level02.colliders.C_Parent_Tile_298ID20.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID20.collider:SetOffset(450.5,60.2143,356.5)
level02.colliders.C_Parent_Tile_298ID20.collider:SetZAxis(0.0766965,0,0.997055)
level02.colliders.C_Parent_Tile_298ID20.collider:SetHalfLengths(0.3,5.90825,6.5192)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID20.collider)
level02.colliders.C_Parent_Tile_298ID21 = {}
level02.colliders.C_Parent_Tile_298ID21.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID21.collider:SetOffset(452,61.1226,373)
level02.colliders.C_Parent_Tile_298ID21.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.C_Parent_Tile_298ID21.collider:SetHalfLengths(0.3,7.38414,10.0499)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID21.collider)
level02.colliders.C_Parent_Tile_298ID22 = {}
level02.colliders.C_Parent_Tile_298ID22.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID22.collider:SetOffset(473.5,58.852,383)
level02.colliders.C_Parent_Tile_298ID22.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_298ID22.collider:SetHalfLengths(0.3,19.5319,3.5)
level02.colliders.C_Parent_Tile_298ID12.collider:AddChild(level02.colliders.C_Parent_Tile_298ID22.collider)
level02.colliders.C_Parent_Tile_298ID23 = {}
level02.colliders.C_Parent_Tile_298ID23.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID23.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_298ID23.collider:SetMinPos(500.724,31.3729,368.882)
level02.colliders.C_Parent_Tile_298ID23.collider:SetMaxPos(508.26,43.6435,383.149)
level02.colliders.C_Parent_Tile_298ID.collider:AddChild(level02.colliders.C_Parent_Tile_298ID23.collider)
level02.colliders.C_Parent_Tile_298ID24 = {}
level02.colliders.C_Parent_Tile_298ID24.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID24.collider:SetOffset(502.5,37.0541,372.5)
level02.colliders.C_Parent_Tile_298ID24.collider:SetZAxis(0.393919,0,0.919145)
level02.colliders.C_Parent_Tile_298ID24.collider:SetHalfLengths(0.3,5.68118,3.80789)
level02.colliders.C_Parent_Tile_298ID23.collider:AddChild(level02.colliders.C_Parent_Tile_298ID24.collider)
level02.colliders.C_Parent_Tile_298ID25 = {}
level02.colliders.C_Parent_Tile_298ID25.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_298ID25.collider:SetOffset(506,37.7352,379.5)
level02.colliders.C_Parent_Tile_298ID25.collider:SetZAxis(0.496139,0,0.868243)
level02.colliders.C_Parent_Tile_298ID25.collider:SetHalfLengths(0.3,5.90825,4.03113)
level02.colliders.C_Parent_Tile_298ID23.collider:AddChild(level02.colliders.C_Parent_Tile_298ID25.collider)
CollisionHandler.AddAABB(level02.colliders.C_Parent_Tile_298ID.collider, 3)
level02.colliders.C_Parent_Tile_298ID1 = nil
level02.colliders.C_Parent_Tile_298ID2 = nil
level02.colliders.C_Parent_Tile_298ID3 = nil
level02.colliders.C_Parent_Tile_298ID4 = nil
level02.colliders.C_Parent_Tile_298ID5 = nil
level02.colliders.C_Parent_Tile_298ID6 = nil
level02.colliders.C_Parent_Tile_298ID7 = nil
level02.colliders.C_Parent_Tile_298ID8 = nil
level02.colliders.C_Parent_Tile_298ID9 = nil
level02.colliders.C_Parent_Tile_298ID10 = nil
level02.colliders.C_Parent_Tile_298ID11 = nil
level02.colliders.C_Parent_Tile_298ID12 = nil
level02.colliders.C_Parent_Tile_298ID13 = nil
level02.colliders.C_Parent_Tile_298ID14 = nil
level02.colliders.C_Parent_Tile_298ID15 = nil
level02.colliders.C_Parent_Tile_298ID16 = nil
level02.colliders.C_Parent_Tile_298ID17 = nil
level02.colliders.C_Parent_Tile_298ID18 = nil
level02.colliders.C_Parent_Tile_298ID19 = nil
level02.colliders.C_Parent_Tile_298ID20 = nil
level02.colliders.C_Parent_Tile_298ID21 = nil
level02.colliders.C_Parent_Tile_298ID22 = nil
level02.colliders.C_Parent_Tile_298ID23 = nil
level02.colliders.C_Parent_Tile_298ID24 = nil
level02.colliders.C_Parent_Tile_298ID25 = nil
end
level02.unload = function()
level02.props.tile433ID = nil
Gear.UnbindInstance(level02.props.t4s134ID.transformID)
level02.props.t4s134ID = nil
Gear.UnbindInstance(level02.props.t4s235ID.transformID)
level02.props.t4s235ID = nil
Gear.UnbindInstance(level02.props.t4s336ID.transformID)
level02.props.t4s336ID = nil
Gear.UnbindInstance(level02.props.t4s437ID.transformID)
level02.props.t4s437ID = nil
level02.colliders.Tile4_wallNr38ID = nil
level02.colliders.Tile4_wallNr139ID = nil
level02.colliders.Tile4_wallNr240ID = nil
level02.colliders.Tile4_wallNr341ID = nil
level02.colliders.Tile4_wallNr442ID = nil
level02.colliders.Tile4_wallNr543ID = nil
level02.colliders.Tile4_wallNr644ID = nil
level02.colliders.Tile4_wallNr745ID = nil
level02.colliders.Tile4_wallNr846ID = nil
level02.colliders.Tile4_wallNr947ID = nil
level02.colliders.Tile4_wallNr1048ID = nil
level02.colliders.Tile4_wallNr1149ID = nil
level02.colliders.Tile4_wallNr1250ID = nil
level02.colliders.Tile4_wallNr1351ID = nil
level02.colliders.Tile4_wallNr1452ID = nil
level02.colliders.Tile4_wallNr1553ID = nil
level02.colliders.Tile4_wallNr1654ID = nil
level02.colliders.Tile4_wallNr1755ID = nil
level02.colliders.Tile4_wallNr1856ID = nil
level02.colliders.Tile4_wallNr1957ID = nil
level02.colliders.Tile4_wallNr2058ID = nil
level02.colliders.Tile4_wallNr2159ID = nil














level02.colliders.C_Parent_Tile_2195ID = nil
level02.colliders.C_Parent_Tile_2296ID = nil
level02.colliders.C_Parent_Tile_2397ID = nil
level02.colliders.C_Parent_Tile_298ID = nil
level02.props = nil
level02.colliders = nil
level02.triggers = nil
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
