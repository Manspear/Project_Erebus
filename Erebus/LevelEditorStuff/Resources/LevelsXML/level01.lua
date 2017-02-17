levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_heights.png")
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

OpWall6ID = {}
OpWall6ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6ID.transformID, {x=59, y=10.8824, z=175})
Transform.SetScaleNonUniform(OpWall6ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6ID)
OpWall6ID = nil

OpWall17ID = {}
OpWall17ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall17ID.transformID, {x=56.5, y=10.8824, z=167})
Transform.SetScaleNonUniform(OpWall17ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall17ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall17ID)
OpWall17ID = nil

OpWall28ID = {}
OpWall28ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall28ID.transformID, {x=50, y=11.0137, z=165})
Transform.SetScaleNonUniform(OpWall28ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall28ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall28ID)
OpWall28ID = nil

OpWall39ID = {}
OpWall39ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall39ID.transformID, {x=43, y=10.3569, z=162.5})
Transform.SetScaleNonUniform(OpWall39ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall39ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall39ID)
OpWall39ID = nil

OpWall410ID = {}
OpWall410ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall410ID.transformID, {x=45, y=11.9333, z=159})
Transform.SetScaleNonUniform(OpWall410ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall410ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall410ID)
OpWall410ID = nil

OpWall511ID = {}
OpWall511ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall511ID.transformID, {x=53.5, y=12.1961, z=154.5})
Transform.SetScaleNonUniform(OpWall511ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall511ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall511ID)
OpWall511ID = nil

OpWall612ID = {}
OpWall612ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall612ID.transformID, {x=57, y=11.9333, z=146})
Transform.SetScaleNonUniform(OpWall612ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall612ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall612ID)
OpWall612ID = nil

OpWall713ID = {}
OpWall713ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall713ID.transformID, {x=51.5, y=11.9333, z=134.5})
Transform.SetScaleNonUniform(OpWall713ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall713ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall713ID)
OpWall713ID = nil

OpWall814ID = {}
OpWall814ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall814ID.transformID, {x=37.5, y=11.1451, z=128})
Transform.SetScaleNonUniform(OpWall814ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall814ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall814ID)
OpWall814ID = nil

OpWall915ID = {}
OpWall915ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall915ID.transformID, {x=23.5, y=10.4882, z=134.5})
Transform.SetScaleNonUniform(OpWall915ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall915ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall915ID)
OpWall915ID = nil

OpWall1016ID = {}
OpWall1016ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1016ID.transformID, {x=12.5, y=9.7, z=139.5})
Transform.SetScaleNonUniform(OpWall1016ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1016ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1016ID)
OpWall1016ID = nil

OpWall1117ID = {}
OpWall1117ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1117ID.transformID, {x=3.5, y=9.83137, z=138})
Transform.SetScaleNonUniform(OpWall1117ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1117ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1117ID)
OpWall1117ID = nil

OpWall1218ID = {}
OpWall1218ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1218ID.transformID, {x=0, y=9.7, z=143})
Transform.SetScaleNonUniform(OpWall1218ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1218ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1218ID)
OpWall1218ID = nil

OpWall1319ID = {}
OpWall1319ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1319ID.transformID, {x=2, y=9.7, z=148.5})
Transform.SetScaleNonUniform(OpWall1319ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1319ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1319ID)
OpWall1319ID = nil

OpWall1420ID = {}
OpWall1420ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1420ID.transformID, {x=4, y=9.83137, z=151.5})
Transform.SetScaleNonUniform(OpWall1420ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1420ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1420ID)
OpWall1420ID = nil

OpWall1521ID = {}
OpWall1521ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1521ID.transformID, {x=3.5, y=10.2255, z=160})
Transform.SetScaleNonUniform(OpWall1521ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1521ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1521ID)
OpWall1521ID = nil

OpWall1622ID = {}
OpWall1622ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1622ID.transformID, {x=6, y=9.30588, z=169})
Transform.SetScaleNonUniform(OpWall1622ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1622ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1622ID)
OpWall1622ID = nil

OpWall1723ID = {}
OpWall1723ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1723ID.transformID, {x=9, y=9.17451, z=173.5})
Transform.SetScaleNonUniform(OpWall1723ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1723ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1723ID)
OpWall1723ID = nil

OpWall1824ID = {}
OpWall1824ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1824ID.transformID, {x=5.5, y=8.78039, z=177.5})
Transform.SetScaleNonUniform(OpWall1824ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1824ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1824ID)
OpWall1824ID = nil

OpWall1925ID = {}
OpWall1925ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall1925ID.transformID, {x=2.5, y=8.78039, z=189.5})
Transform.SetScaleNonUniform(OpWall1925ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall1925ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall1925ID)
OpWall1925ID = nil

OpWall2026ID = {}
OpWall2026ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2026ID.transformID, {x=5, y=6.8098, z=202.5})
Transform.SetScaleNonUniform(OpWall2026ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2026ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2026ID)
OpWall2026ID = nil

OpWall2127ID = {}
OpWall2127ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2127ID.transformID, {x=10, y=6.41569, z=206})
Transform.SetScaleNonUniform(OpWall2127ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2127ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2127ID)
OpWall2127ID = nil

OpWall2228ID = {}
OpWall2228ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2228ID.transformID, {x=21, y=5.8902, z=203.5})
Transform.SetScaleNonUniform(OpWall2228ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2228ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2228ID)
OpWall2228ID = nil

OpWall2329ID = {}
OpWall2329ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2329ID.transformID, {x=29.5, y=6.67843, z=201})
Transform.SetScaleNonUniform(OpWall2329ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2329ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2329ID)
OpWall2329ID = nil

OpWall2430ID = {}
OpWall2430ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2430ID.transformID, {x=31.5, y=11.1451, z=206})
Transform.SetScaleNonUniform(OpWall2430ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2430ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2430ID)
OpWall2430ID = nil

OpWall2531ID = {}
OpWall2531ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2531ID.transformID, {x=39.5, y=10.6196, z=214})
Transform.SetScaleNonUniform(OpWall2531ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2531ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2531ID)
OpWall2531ID = nil

OpWall2632ID = {}
OpWall2632ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2632ID.transformID, {x=57.5, y=10.8824, z=219.5})
Transform.SetScaleNonUniform(OpWall2632ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2632ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2632ID)
OpWall2632ID = nil

OpWall2733ID = {}
OpWall2733ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2733ID.transformID, {x=78, y=10.0941, z=225})
Transform.SetScaleNonUniform(OpWall2733ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2733ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2733ID)
OpWall2733ID = nil

OpWall2834ID = {}
OpWall2834ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2834ID.transformID, {x=97, y=20.4725, z=232.5})
Transform.SetScaleNonUniform(OpWall2834ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2834ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2834ID)
OpWall2834ID = nil

OpWall2935ID = {}
OpWall2935ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall2935ID.transformID, {x=109.5, y=28.0922, z=245.5})
Transform.SetScaleNonUniform(OpWall2935ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall2935ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall2935ID)
OpWall2935ID = nil

OpWall3036ID = {}
OpWall3036ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3036ID.transformID, {x=115, y=29.9314, z=254})
Transform.SetScaleNonUniform(OpWall3036ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3036ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3036ID)
OpWall3036ID = nil

OpWall3137ID = {}
OpWall3137ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3137ID.transformID, {x=123, y=30.4569, z=250})
Transform.SetScaleNonUniform(OpWall3137ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3137ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3137ID)
OpWall3137ID = nil

OpWall3238ID = {}
OpWall3238ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3238ID.transformID, {x=125.5, y=33.7412, z=209})
Transform.SetScaleNonUniform(OpWall3238ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3238ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3238ID)
OpWall3238ID = nil

OpWall3339ID = {}
OpWall3339ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3339ID.transformID, {x=119, y=32.9529, z=202})
Transform.SetScaleNonUniform(OpWall3339ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3339ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3339ID)
OpWall3339ID = nil

OpWall3440ID = {}
OpWall3440ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3440ID.transformID, {x=110, y=32.2961, z=192.5})
Transform.SetScaleNonUniform(OpWall3440ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3440ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3440ID)
OpWall3440ID = nil

OpWall3541ID = {}
OpWall3541ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3541ID.transformID, {x=103.5, y=28.3549, z=189.5})
Transform.SetScaleNonUniform(OpWall3541ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3541ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3541ID)
OpWall3541ID = nil

OpWall3642ID = {}
OpWall3642ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3642ID.transformID, {x=100.5, y=27.698, z=189})
Transform.SetScaleNonUniform(OpWall3642ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3642ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3642ID)
OpWall3642ID = nil

OpWall3743ID = {}
OpWall3743ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3743ID.transformID, {x=98, y=27.3039, z=189})
Transform.SetScaleNonUniform(OpWall3743ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3743ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3743ID)
OpWall3743ID = nil

OpWall3844ID = {}
OpWall3844ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3844ID.transformID, {x=96.5, y=27.0412, z=189})
Transform.SetScaleNonUniform(OpWall3844ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3844ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3844ID)
OpWall3844ID = nil

OpWall3945ID = {}
OpWall3945ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall3945ID.transformID, {x=82.5, y=26.9098, z=197.5})
Transform.SetScaleNonUniform(OpWall3945ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall3945ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall3945ID)
OpWall3945ID = nil

OpWall4046ID = {}
OpWall4046ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4046ID.transformID, {x=63.5, y=17.8451, z=207})
Transform.SetScaleNonUniform(OpWall4046ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4046ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4046ID)
OpWall4046ID = nil

OpWall4147ID = {}
OpWall4147ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4147ID.transformID, {x=113, y=31.6392, z=215})
Transform.SetScaleNonUniform(OpWall4147ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4147ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4147ID)
OpWall4147ID = nil

OpWall4248ID = {}
OpWall4248ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4248ID.transformID, {x=110.5, y=35.8431, z=208.5})
Transform.SetScaleNonUniform(OpWall4248ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4248ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4248ID)
OpWall4248ID = nil

OpWall4349ID = {}
OpWall4349ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4349ID.transformID, {x=104.5, y=32.6902, z=203})
Transform.SetScaleNonUniform(OpWall4349ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4349ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4349ID)
OpWall4349ID = nil

OpWall4450ID = {}
OpWall4450ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4450ID.transformID, {x=96, y=29.4059, z=203.5})
Transform.SetScaleNonUniform(OpWall4450ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4450ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4450ID)
OpWall4450ID = nil

OpWall4551ID = {}
OpWall4551ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4551ID.transformID, {x=90.5, y=24.0196, z=208.5})
Transform.SetScaleNonUniform(OpWall4551ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4551ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4551ID)
OpWall4551ID = nil

OpWall4652ID = {}
OpWall4652ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4652ID.transformID, {x=92, y=22.9686, z=214})
Transform.SetScaleNonUniform(OpWall4652ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4652ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4652ID)
OpWall4652ID = nil

OpWall4753ID = {}
OpWall4753ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4753ID.transformID, {x=97.5, y=24.0196, z=217.5})
Transform.SetScaleNonUniform(OpWall4753ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4753ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4753ID)
OpWall4753ID = nil

OpWall4854ID = {}
OpWall4854ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4854ID.transformID, {x=105.5, y=26.2529, z=219.5})
Transform.SetScaleNonUniform(OpWall4854ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4854ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4854ID)
OpWall4854ID = nil

OpWall4955ID = {}
OpWall4955ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall4955ID.transformID, {x=111.5, y=30.1941, z=219.5})
Transform.SetScaleNonUniform(OpWall4955ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall4955ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall4955ID)
OpWall4955ID = nil

OpWall5056ID = {}
OpWall5056ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5056ID.transformID, {x=55.5, y=10.8824, z=184.5})
Transform.SetScaleNonUniform(OpWall5056ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5056ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5056ID)
OpWall5056ID = nil

OpWall5157ID = {}
OpWall5157ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5157ID.transformID, {x=45.5, y=10.8824, z=188})
Transform.SetScaleNonUniform(OpWall5157ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5157ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5157ID)
OpWall5157ID = nil

OpWall5258ID = {}
OpWall5258ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5258ID.transformID, {x=37.5, y=10.6196, z=186})
Transform.SetScaleNonUniform(OpWall5258ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5258ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5258ID)
OpWall5258ID = nil

OpWall5359ID = {}
OpWall5359ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5359ID.transformID, {x=33.5, y=10.3569, z=177})
Transform.SetScaleNonUniform(OpWall5359ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5359ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5359ID)
OpWall5359ID = nil

OpWall5460ID = {}
OpWall5460ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5460ID.transformID, {x=27.5, y=9.43725, z=172.5})
Transform.SetScaleNonUniform(OpWall5460ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5460ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5460ID)
OpWall5460ID = nil

OpWall5561ID = {}
OpWall5561ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5561ID.transformID, {x=32, y=8.78039, z=185})
Transform.SetScaleNonUniform(OpWall5561ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5561ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5561ID)
OpWall5561ID = nil

OpWall5662ID = {}
OpWall5662ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5662ID.transformID, {x=40, y=10.8824, z=196.5})
Transform.SetScaleNonUniform(OpWall5662ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5662ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5662ID)
OpWall5662ID = nil

OpWall5763ID = {}
OpWall5763ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5763ID.transformID, {x=44.5, y=10.3569, z=197.5})
Transform.SetScaleNonUniform(OpWall5763ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5763ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5763ID)
OpWall5763ID = nil

OpWall5864ID = {}
OpWall5864ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5864ID.transformID, {x=53.5, y=11.802, z=202.5})
Transform.SetScaleNonUniform(OpWall5864ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5864ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5864ID)
OpWall5864ID = nil

AutoGenParent172ID = {}
AutoGenParent172ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent172ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent172ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent172ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent172ID)
AutoGenParent172ID = nil

AutoGenParent273ID = {}
AutoGenParent273ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent273ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent273ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent273ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent273ID)
AutoGenParent273ID = nil

AutoGenParent374ID = {}
AutoGenParent374ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent374ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent374ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent374ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent374ID)
AutoGenParent374ID = nil

AutoGenParent475ID = {}
AutoGenParent475ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent475ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent475ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent475ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent475ID)
AutoGenParent475ID = nil

AutoGenParent576ID = {}
AutoGenParent576ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent576ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent576ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent576ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent576ID)
AutoGenParent576ID = nil

AutoGenParent677ID = {}
AutoGenParent677ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent677ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent677ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent677ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent677ID)
AutoGenParent677ID = nil

AutoGenParent778ID = {}
AutoGenParent778ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent778ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent778ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent778ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent778ID)
AutoGenParent778ID = nil

AutoGenParent879ID = {}
AutoGenParent879ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent879ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent879ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent879ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent879ID)
AutoGenParent879ID = nil

AutoGenParent980ID = {}
AutoGenParent980ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent980ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent980ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent980ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent980ID)
AutoGenParent980ID = nil

AutoGenParent1081ID = {}
AutoGenParent1081ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1081ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1081ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1081ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1081ID)
AutoGenParent1081ID = nil

AutoGenParent1182ID = {}
AutoGenParent1182ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1182ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1182ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1182ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1182ID)
AutoGenParent1182ID = nil

AutoGenParent1283ID = {}
AutoGenParent1283ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent1283ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent1283ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent1283ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,AutoGenParent1283ID)
AutoGenParent1283ID = nil

AutoGenParent84ID = {}
AutoGenParent84ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent84ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent84ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent84ID.transformID, {x=0, y=0, z=0})
AutoGenParent84ID.collider = AABBCollider.Create(AutoGenParent84ID.transformID)
AutoGenParent84ID.collider:SetOffset(0,0,0)
AutoGenParent84ID.collider:SetMinPos(-1,-5.28431,127)
AutoGenParent84ID.collider:SetMaxPos(151.275,57,255)
AutoGenParent84ID1 = {}
AutoGenParent84ID1.collider = AABBCollider.Create(-1)
AutoGenParent84ID1.collider:SetOffset(0,0,0)
AutoGenParent84ID1.collider:SetMinPos(-1,-2.78823,127)
AutoGenParent84ID1.collider:SetMaxPos(151.275,57,222.977)
AutoGenParent84ID.collider:AddChild(AutoGenParent84ID1.collider)
table.insert(colliders,AutoGenParent84ID1)
AutoGenParent84ID2 = {}
AutoGenParent84ID2.collider = AABBCollider.Create(-1)
AutoGenParent84ID2.collider:SetOffset(0,0,0)
AutoGenParent84ID2.collider:SetMinPos(-1,4.56863,127)
AutoGenParent84ID2.collider:SetMaxPos(57.7634,17.7216,149.97)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID2.collider)
table.insert(colliders,AutoGenParent84ID2)
AutoGenParent84ID3 = {}
AutoGenParent84ID3.collider = OBBCollider.Create(-1)
AutoGenParent84ID3.collider:SetOffset(51.5,11.9333,134.5)
AutoGenParent84ID3.collider:SetZAxis(-0.645942,0,-0.763386)
AutoGenParent84ID3.collider:SetHalfLengths(1,5.78824,8.51469)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID3.collider)
table.insert(colliders,AutoGenParent84ID3)
AutoGenParent84ID4 = {}
AutoGenParent84ID4.collider = OBBCollider.Create(-1)
AutoGenParent84ID4.collider:SetOffset(37.5,11.1451,128)
AutoGenParent84ID4.collider:SetZAxis(-1,0,0)
AutoGenParent84ID4.collider:SetHalfLengths(1,5.65686,8.5)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID4.collider)
table.insert(colliders,AutoGenParent84ID4)
AutoGenParent84ID5 = {}
AutoGenParent84ID5.collider = OBBCollider.Create(-1)
AutoGenParent84ID5.collider:SetOffset(23.5,10.4882,134.5)
AutoGenParent84ID5.collider:SetZAxis(-0.645942,0,0.763386)
AutoGenParent84ID5.collider:SetHalfLengths(1,5.78824,8.51469)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID5.collider)
table.insert(colliders,AutoGenParent84ID5)
AutoGenParent84ID6 = {}
AutoGenParent84ID6.collider = OBBCollider.Create(-1)
AutoGenParent84ID6.collider:SetOffset(12.5,9.7,139.5)
AutoGenParent84ID6.collider:SetZAxis(-0.964764,0,-0.263117)
AutoGenParent84ID6.collider:SetHalfLengths(1,5.13137,5.70088)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID6.collider)
table.insert(colliders,AutoGenParent84ID6)
AutoGenParent84ID7 = {}
AutoGenParent84ID7.collider = OBBCollider.Create(-1)
AutoGenParent84ID7.collider:SetOffset(3.5,9.83137,138)
AutoGenParent84ID7.collider:SetZAxis(-1,0,0)
AutoGenParent84ID7.collider:SetHalfLengths(1,5.13137,3.5)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID7.collider)
table.insert(colliders,AutoGenParent84ID7)
AutoGenParent84ID8 = {}
AutoGenParent84ID8.collider = OBBCollider.Create(-1)
AutoGenParent84ID8.collider:SetOffset(0,9.7,143)
AutoGenParent84ID8.collider:SetZAxis(0,0,1)
AutoGenParent84ID8.collider:SetHalfLengths(1,5,5)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID8.collider)
table.insert(colliders,AutoGenParent84ID8)
AutoGenParent84ID9 = {}
AutoGenParent84ID9.collider = OBBCollider.Create(-1)
AutoGenParent84ID9.collider:SetOffset(2,9.7,148.5)
AutoGenParent84ID9.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent84ID9.collider:SetHalfLengths(1,5.13137,2.06155)
AutoGenParent84ID2.collider:AddChild(AutoGenParent84ID9.collider)
table.insert(colliders,AutoGenParent84ID9)
AutoGenParent84ID10 = {}
AutoGenParent84ID10.collider = AABBCollider.Create(-1)
AutoGenParent84ID10.collider:SetOffset(0,0,0)
AutoGenParent84ID10.collider:SetMinPos(2.00345,3.78039,141)
AutoGenParent84ID10.collider:SetMaxPos(58,17.4588,172.707)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID10.collider)
table.insert(colliders,AutoGenParent84ID10)
AutoGenParent84ID11 = {}
AutoGenParent84ID11.collider = OBBCollider.Create(-1)
AutoGenParent84ID11.collider:SetOffset(43,10.3569,162.5)
AutoGenParent84ID11.collider:SetZAxis(-0.768221,0,-0.640184)
AutoGenParent84ID11.collider:SetHalfLengths(1,6.57647,3.90512)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID11.collider)
table.insert(colliders,AutoGenParent84ID11)
AutoGenParent84ID12 = {}
AutoGenParent84ID12.collider = OBBCollider.Create(-1)
AutoGenParent84ID12.collider:SetOffset(45,11.9333,159)
AutoGenParent84ID12.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent84ID12.collider:SetHalfLengths(1,5.26274,5.09902)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID12.collider)
table.insert(colliders,AutoGenParent84ID12)
AutoGenParent84ID13 = {}
AutoGenParent84ID13.collider = OBBCollider.Create(-1)
AutoGenParent84ID13.collider:SetOffset(53.5,12.1961,154.5)
AutoGenParent84ID13.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent84ID13.collider:SetHalfLengths(1,5.26274,4.94975)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID13.collider)
table.insert(colliders,AutoGenParent84ID13)
AutoGenParent84ID14 = {}
AutoGenParent84ID14.collider = OBBCollider.Create(-1)
AutoGenParent84ID14.collider:SetOffset(57,11.9333,146)
AutoGenParent84ID14.collider:SetZAxis(0,0,-1)
AutoGenParent84ID14.collider:SetHalfLengths(1,5,5)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID14.collider)
table.insert(colliders,AutoGenParent84ID14)
AutoGenParent84ID15 = {}
AutoGenParent84ID15.collider = OBBCollider.Create(-1)
AutoGenParent84ID15.collider:SetOffset(4,9.83137,151.5)
AutoGenParent84ID15.collider:SetZAxis(0,0,1)
AutoGenParent84ID15.collider:SetHalfLengths(1,5.39412,2.5)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID15.collider)
table.insert(colliders,AutoGenParent84ID15)
AutoGenParent84ID16 = {}
AutoGenParent84ID16.collider = OBBCollider.Create(-1)
AutoGenParent84ID16.collider:SetOffset(3.5,10.2255,160)
AutoGenParent84ID16.collider:SetZAxis(-0.0830455,0,0.996546)
AutoGenParent84ID16.collider:SetHalfLengths(1,5.91961,6.0208)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID16.collider)
table.insert(colliders,AutoGenParent84ID16)
AutoGenParent84ID17 = {}
AutoGenParent84ID17.collider = OBBCollider.Create(-1)
AutoGenParent84ID17.collider:SetOffset(6,9.30588,169)
AutoGenParent84ID17.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent84ID17.collider:SetHalfLengths(1,5.13137,4.24264)
AutoGenParent84ID10.collider:AddChild(AutoGenParent84ID17.collider)
table.insert(colliders,AutoGenParent84ID17)
AutoGenParent84ID18 = {}
AutoGenParent84ID18.collider = AABBCollider.Create(-1)
AutoGenParent84ID18.collider:SetOffset(0,0,0)
AutoGenParent84ID18.collider:SetMinPos(1.41876,1.67843,164)
AutoGenParent84ID18.collider:SetMaxPos(59.6247,16.6706,195.625)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID18.collider)
table.insert(colliders,AutoGenParent84ID18)
AutoGenParent84ID19 = {}
AutoGenParent84ID19.collider = OBBCollider.Create(-1)
AutoGenParent84ID19.collider:SetOffset(56.5,10.8824,167)
AutoGenParent84ID19.collider:SetZAxis(-0.780869,0,-0.624695)
AutoGenParent84ID19.collider:SetHalfLengths(1,5.13137,3.20156)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID19.collider)
table.insert(colliders,AutoGenParent84ID19)
AutoGenParent84ID20 = {}
AutoGenParent84ID20.collider = OBBCollider.Create(-1)
AutoGenParent84ID20.collider:SetOffset(50,11.0137,165)
AutoGenParent84ID20.collider:SetZAxis(-1,0,0)
AutoGenParent84ID20.collider:SetHalfLengths(1,5.65686,4)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID20.collider)
table.insert(colliders,AutoGenParent84ID20)
AutoGenParent84ID21 = {}
AutoGenParent84ID21.collider = OBBCollider.Create(-1)
AutoGenParent84ID21.collider:SetOffset(9,9.17451,173.5)
AutoGenParent84ID21.collider:SetZAxis(0,0,1)
AutoGenParent84ID21.collider:SetHalfLengths(1,5.39412,1.5)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID21.collider)
table.insert(colliders,AutoGenParent84ID21)
AutoGenParent84ID22 = {}
AutoGenParent84ID22.collider = OBBCollider.Create(-1)
AutoGenParent84ID22.collider:SetOffset(5.5,8.78039,177.5)
AutoGenParent84ID22.collider:SetZAxis(-0.813733,0,0.581238)
AutoGenParent84ID22.collider:SetHalfLengths(1,5,4.30116)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID22.collider)
table.insert(colliders,AutoGenParent84ID22)
AutoGenParent84ID23 = {}
AutoGenParent84ID23.collider = OBBCollider.Create(-1)
AutoGenParent84ID23.collider:SetOffset(33.5,10.3569,177)
AutoGenParent84ID23.collider:SetZAxis(-0.336336,0,-0.941742)
AutoGenParent84ID23.collider:SetHalfLengths(1,5.91961,7.43303)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID23.collider)
table.insert(colliders,AutoGenParent84ID23)
AutoGenParent84ID24 = {}
AutoGenParent84ID24.collider = OBBCollider.Create(-1)
AutoGenParent84ID24.collider:SetOffset(27.5,9.43725,172.5)
AutoGenParent84ID24.collider:SetZAxis(-0.813733,0,0.581238)
AutoGenParent84ID24.collider:SetHalfLengths(1,5.65686,4.30116)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID24.collider)
table.insert(colliders,AutoGenParent84ID24)
AutoGenParent84ID25 = {}
AutoGenParent84ID25.collider = OBBCollider.Create(-1)
AutoGenParent84ID25.collider:SetOffset(32,8.78039,185)
AutoGenParent84ID25.collider:SetZAxis(0.624695,0,0.780869)
AutoGenParent84ID25.collider:SetHalfLengths(1,7.10196,12.8062)
AutoGenParent84ID18.collider:AddChild(AutoGenParent84ID25.collider)
table.insert(colliders,AutoGenParent84ID25)
AutoGenParent84ID26 = {}
AutoGenParent84ID26.collider = AABBCollider.Create(-1)
AutoGenParent84ID26.collider:SetOffset(0,0,0)
AutoGenParent84ID26.collider:SetMinPos(1.00138,1.41569,141.36)
AutoGenParent84ID26.collider:SetMaxPos(144.768,56.4118,206.496)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID26.collider)
table.insert(colliders,AutoGenParent84ID26)
AutoGenParent84ID27 = {}
AutoGenParent84ID27.collider = OBBCollider.Create(-1)
AutoGenParent84ID27.collider:SetOffset(59,10.8824,175)
AutoGenParent84ID27.collider:SetZAxis(0,0,-1)
AutoGenParent84ID27.collider:SetHalfLengths(1,5,6)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID27.collider)
table.insert(colliders,AutoGenParent84ID27)
AutoGenParent84ID28 = {}
AutoGenParent84ID28.collider = OBBCollider.Create(-1)
AutoGenParent84ID28.collider:SetOffset(2.5,8.78039,189.5)
AutoGenParent84ID28.collider:SetZAxis(0.0525588,0,0.998618)
AutoGenParent84ID28.collider:SetHalfLengths(1,6.97059,9.51315)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID28.collider)
table.insert(colliders,AutoGenParent84ID28)
AutoGenParent84ID29 = {}
AutoGenParent84ID29.collider = OBBCollider.Create(-1)
AutoGenParent84ID29.collider:SetOffset(5,6.8098,202.5)
AutoGenParent84ID29.collider:SetZAxis(0.496139,0,0.868243)
AutoGenParent84ID29.collider:SetHalfLengths(1,5.39412,4.03113)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID29.collider)
table.insert(colliders,AutoGenParent84ID29)
AutoGenParent84ID30 = {}
AutoGenParent84ID30.collider = OBBCollider.Create(-1)
AutoGenParent84ID30.collider:SetOffset(55.5,10.8824,184.5)
AutoGenParent84ID30.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent84ID30.collider:SetHalfLengths(1,5,4.94975)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID30.collider)
table.insert(colliders,AutoGenParent84ID30)
AutoGenParent84ID31 = {}
AutoGenParent84ID31.collider = OBBCollider.Create(-1)
AutoGenParent84ID31.collider:SetOffset(45.5,10.8824,188)
AutoGenParent84ID31.collider:SetZAxis(-1,0,0)
AutoGenParent84ID31.collider:SetHalfLengths(1,5.26274,6.5)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID31.collider)
table.insert(colliders,AutoGenParent84ID31)
AutoGenParent84ID32 = {}
AutoGenParent84ID32.collider = OBBCollider.Create(-1)
AutoGenParent84ID32.collider:SetOffset(37.5,10.6196,186)
AutoGenParent84ID32.collider:SetZAxis(-0.6,0,-0.8)
AutoGenParent84ID32.collider:SetHalfLengths(1,5.26274,2.5)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID32.collider)
table.insert(colliders,AutoGenParent84ID32)
AutoGenParent84ID33 = {}
AutoGenParent84ID33.collider = OBBCollider.Create(-1)
AutoGenParent84ID33.collider:SetOffset(139,49.5294,148)
AutoGenParent84ID33.collider:SetZAxis(0.640184,0,-0.768221)
AutoGenParent84ID33.collider:SetHalfLengths(1,6.88235,7.81025)
AutoGenParent84ID26.collider:AddChild(AutoGenParent84ID33.collider)
table.insert(colliders,AutoGenParent84ID33)
AutoGenParent84ID34 = {}
AutoGenParent84ID34.collider = AABBCollider.Create(-1)
AutoGenParent84ID34.collider:SetOffset(0,0,0)
AutoGenParent84ID34.collider:SetMinPos(12.7017,-2.78823,188.154)
AutoGenParent84ID34.collider:SetMaxPos(96.5328,40.9745,211.287)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID34.collider)
table.insert(colliders,AutoGenParent84ID34)
AutoGenParent84ID35 = {}
AutoGenParent84ID35.collider = OBBCollider.Create(-1)
AutoGenParent84ID35.collider:SetOffset(21,5.8902,203.5)
AutoGenParent84ID35.collider:SetZAxis(0.95448,0,-0.298275)
AutoGenParent84ID35.collider:SetHalfLengths(1,5.78824,8.38153)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID35.collider)
table.insert(colliders,AutoGenParent84ID35)
AutoGenParent84ID36 = {}
AutoGenParent84ID36.collider = OBBCollider.Create(-1)
AutoGenParent84ID36.collider:SetOffset(29.5,6.67843,201)
AutoGenParent84ID36.collider:SetZAxis(1,0,0)
AutoGenParent84ID36.collider:SetHalfLengths(1,9.46667,0.5)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID36.collider)
table.insert(colliders,AutoGenParent84ID36)
AutoGenParent84ID37 = {}
AutoGenParent84ID37.collider = OBBCollider.Create(-1)
AutoGenParent84ID37.collider:SetOffset(31.5,11.1451,206)
AutoGenParent84ID37.collider:SetZAxis(0.287348,0,0.957826)
AutoGenParent84ID37.collider:SetHalfLengths(1,5.52549,5.22015)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID37.collider)
table.insert(colliders,AutoGenParent84ID37)
AutoGenParent84ID38 = {}
AutoGenParent84ID38.collider = OBBCollider.Create(-1)
AutoGenParent84ID38.collider:SetOffset(82.5,26.9098,197.5)
AutoGenParent84ID38.collider:SetZAxis(-0.846233,0,0.532813)
AutoGenParent84ID38.collider:SetHalfLengths(1,14.0647,15.9531)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID38.collider)
table.insert(colliders,AutoGenParent84ID38)
AutoGenParent84ID39 = {}
AutoGenParent84ID39.collider = OBBCollider.Create(-1)
AutoGenParent84ID39.collider:SetOffset(40,10.8824,196.5)
AutoGenParent84ID39.collider:SetZAxis(0,0,1)
AutoGenParent84ID39.collider:SetHalfLengths(1,5.52549,1.5)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID39.collider)
table.insert(colliders,AutoGenParent84ID39)
AutoGenParent84ID40 = {}
AutoGenParent84ID40.collider = OBBCollider.Create(-1)
AutoGenParent84ID40.collider:SetOffset(44.5,10.3569,197.5)
AutoGenParent84ID40.collider:SetZAxis(0.993884,0,-0.110432)
AutoGenParent84ID40.collider:SetHalfLengths(1,6.4451,4.52769)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID40.collider)
table.insert(colliders,AutoGenParent84ID40)
AutoGenParent84ID41 = {}
AutoGenParent84ID41.collider = OBBCollider.Create(-1)
AutoGenParent84ID41.collider:SetOffset(53.5,11.802,202.5)
AutoGenParent84ID41.collider:SetZAxis(0.633238,0,0.773957)
AutoGenParent84ID41.collider:SetHalfLengths(1,7.23333,7.10634)
AutoGenParent84ID34.collider:AddChild(AutoGenParent84ID41.collider)
table.insert(colliders,AutoGenParent84ID41)
AutoGenParent84ID42 = {}
AutoGenParent84ID42.collider = AABBCollider.Create(-1)
AutoGenParent84ID42.collider:SetOffset(0,0,0)
AutoGenParent84ID42.collider:SetMinPos(7,0.890196,139.038)
AutoGenParent84ID42.collider:SetMaxPos(151.275,57,217.908)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID42.collider)
table.insert(colliders,AutoGenParent84ID42)
AutoGenParent84ID43 = {}
AutoGenParent84ID43.collider = OBBCollider.Create(-1)
AutoGenParent84ID43.collider:SetOffset(10,6.41569,206)
AutoGenParent84ID43.collider:SetZAxis(1,0,0)
AutoGenParent84ID43.collider:SetHalfLengths(1,5.52549,3)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID43.collider)
table.insert(colliders,AutoGenParent84ID43)
AutoGenParent84ID44 = {}
AutoGenParent84ID44.collider = OBBCollider.Create(-1)
AutoGenParent84ID44.collider:SetOffset(39.5,10.6196,214)
AutoGenParent84ID44.collider:SetZAxis(0.907959,0,0.419058)
AutoGenParent84ID44.collider:SetHalfLengths(1,5.26274,7.15891)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID44.collider)
table.insert(colliders,AutoGenParent84ID44)
AutoGenParent84ID45 = {}
AutoGenParent84ID45.collider = OBBCollider.Create(-1)
AutoGenParent84ID45.collider:SetOffset(98,27.3039,189)
AutoGenParent84ID45.collider:SetZAxis(-1,0,0)
AutoGenParent84ID45.collider:SetHalfLengths(1,5.26274,1)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID45.collider)
table.insert(colliders,AutoGenParent84ID45)
AutoGenParent84ID46 = {}
AutoGenParent84ID46.collider = OBBCollider.Create(-1)
AutoGenParent84ID46.collider:SetOffset(96.5,27.0412,189)
AutoGenParent84ID46.collider:SetZAxis(-1,0,0)
AutoGenParent84ID46.collider:SetHalfLengths(1,5.13137,0.5)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID46.collider)
table.insert(colliders,AutoGenParent84ID46)
AutoGenParent84ID47 = {}
AutoGenParent84ID47.collider = OBBCollider.Create(-1)
AutoGenParent84ID47.collider:SetOffset(63.5,17.8451,207)
AutoGenParent84ID47.collider:SetZAxis(-0.98387,0,0.178885)
AutoGenParent84ID47.collider:SetHalfLengths(1,8.8098,5.59017)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID47.collider)
table.insert(colliders,AutoGenParent84ID47)
AutoGenParent84ID48 = {}
AutoGenParent84ID48.collider = OBBCollider.Create(-1)
AutoGenParent84ID48.collider:SetOffset(134.5,44.4706,159.5)
AutoGenParent84ID48.collider:SetZAxis(-0.0905358,0,-0.995893)
AutoGenParent84ID48.collider:SetHalfLengths(1,10.0588,5.52268)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID48.collider)
table.insert(colliders,AutoGenParent84ID48)
AutoGenParent84ID49 = {}
AutoGenParent84ID49.collider = OBBCollider.Create(-1)
AutoGenParent84ID49.collider:SetOffset(147.5,51.4118,141)
AutoGenParent84ID49.collider:SetZAxis(0.961524,0,-0.274721)
AutoGenParent84ID49.collider:SetHalfLengths(1,5.58823,3.64005)
AutoGenParent84ID42.collider:AddChild(AutoGenParent84ID49.collider)
table.insert(colliders,AutoGenParent84ID49)
AutoGenParent84ID50 = {}
AutoGenParent84ID50.collider = AABBCollider.Create(-1)
AutoGenParent84ID50.collider:SetOffset(0,0,0)
AutoGenParent84ID50.collider:SetMinPos(45.7876,5.09412,164.78)
AutoGenParent84ID50.collider:SetMaxPos(142.975,49.4706,222.977)
AutoGenParent84ID1.collider:AddChild(AutoGenParent84ID50.collider)
table.insert(colliders,AutoGenParent84ID50)
AutoGenParent84ID51 = {}
AutoGenParent84ID51.collider = OBBCollider.Create(-1)
AutoGenParent84ID51.collider:SetOffset(57.5,10.8824,219.5)
AutoGenParent84ID51.collider:SetZAxis(0.977176,0,0.21243)
AutoGenParent84ID51.collider:SetHalfLengths(1,5.78823,11.7686)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID51.collider)
table.insert(colliders,AutoGenParent84ID51)
AutoGenParent84ID52 = {}
AutoGenParent84ID52.collider = OBBCollider.Create(-1)
AutoGenParent84ID52.collider:SetOffset(110,32.2961,192.5)
AutoGenParent84ID52.collider:SetZAxis(-0.894427,0,-0.447214)
AutoGenParent84ID52.collider:SetHalfLengths(1,8.94118,5.59017)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID52.collider)
table.insert(colliders,AutoGenParent84ID52)
AutoGenParent84ID53 = {}
AutoGenParent84ID53.collider = OBBCollider.Create(-1)
AutoGenParent84ID53.collider:SetOffset(103.5,28.3549,189.5)
AutoGenParent84ID53.collider:SetZAxis(-0.948683,0,-0.316228)
AutoGenParent84ID53.collider:SetHalfLengths(1,5.65686,1.58114)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID53.collider)
table.insert(colliders,AutoGenParent84ID53)
AutoGenParent84ID54 = {}
AutoGenParent84ID54.collider = OBBCollider.Create(-1)
AutoGenParent84ID54.collider:SetOffset(100.5,27.698,189)
AutoGenParent84ID54.collider:SetZAxis(-1,0,0)
AutoGenParent84ID54.collider:SetHalfLengths(1,5.39412,1.5)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID54.collider)
table.insert(colliders,AutoGenParent84ID54)
AutoGenParent84ID55 = {}
AutoGenParent84ID55.collider = OBBCollider.Create(-1)
AutoGenParent84ID55.collider:SetOffset(96,29.4059,203.5)
AutoGenParent84ID55.collider:SetZAxis(-0.894427,0,0.447214)
AutoGenParent84ID55.collider:SetHalfLengths(1,10.3863,5.59017)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID55.collider)
table.insert(colliders,AutoGenParent84ID55)
AutoGenParent84ID56 = {}
AutoGenParent84ID56.collider = OBBCollider.Create(-1)
AutoGenParent84ID56.collider:SetOffset(90.5,24.0196,208.5)
AutoGenParent84ID56.collider:SetZAxis(-0.196116,0,0.980581)
AutoGenParent84ID56.collider:SetHalfLengths(1,6.05098,2.54951)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID56.collider)
table.insert(colliders,AutoGenParent84ID56)
AutoGenParent84ID57 = {}
AutoGenParent84ID57.collider = OBBCollider.Create(-1)
AutoGenParent84ID57.collider:SetOffset(138.5,36,180.5)
AutoGenParent84ID57.collider:SetZAxis(-0.220261,0,-0.975441)
AutoGenParent84ID57.collider:SetHalfLengths(1,13.4706,15.8902)
AutoGenParent84ID50.collider:AddChild(AutoGenParent84ID57.collider)
table.insert(colliders,AutoGenParent84ID57)
AutoGenParent84ID58 = {}
AutoGenParent84ID58.collider = AABBCollider.Create(-1)
AutoGenParent84ID58.collider:SetOffset(0,0,0)
AutoGenParent84ID58.collider:SetMinPos(68.6838,-5.28431,194.504)
AutoGenParent84ID58.collider:SetMaxPos(142.707,43.9961,255)
AutoGenParent84ID.collider:AddChild(AutoGenParent84ID58.collider)
table.insert(colliders,AutoGenParent84ID58)
AutoGenParent84ID59 = {}
AutoGenParent84ID59.collider = AABBCollider.Create(-1)
AutoGenParent84ID59.collider:SetOffset(0,0,0)
AutoGenParent84ID59.collider:SetMinPos(68.6838,-5.28431,194.504)
AutoGenParent84ID59.collider:SetMaxPos(142.707,43.9961,228.949)
AutoGenParent84ID58.collider:AddChild(AutoGenParent84ID59.collider)
table.insert(colliders,AutoGenParent84ID59)
AutoGenParent84ID60 = {}
AutoGenParent84ID60.collider = OBBCollider.Create(-1)
AutoGenParent84ID60.collider:SetOffset(78,10.0941,225)
AutoGenParent84ID60.collider:SetZAxis(0.948683,0,0.316228)
AutoGenParent84ID60.collider:SetHalfLengths(1,15.3784,9.48683)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID60.collider)
table.insert(colliders,AutoGenParent84ID60)
AutoGenParent84ID61 = {}
AutoGenParent84ID61.collider = OBBCollider.Create(-1)
AutoGenParent84ID61.collider:SetOffset(119,32.9529,202)
AutoGenParent84ID61.collider:SetZAxis(-0.496139,0,-0.868243)
AutoGenParent84ID61.collider:SetHalfLengths(1,5.65686,8.06226)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID61.collider)
table.insert(colliders,AutoGenParent84ID61)
AutoGenParent84ID62 = {}
AutoGenParent84ID62.collider = OBBCollider.Create(-1)
AutoGenParent84ID62.collider:SetOffset(110.5,35.8431,208.5)
AutoGenParent84ID62.collider:SetZAxis(-0.581238,0,-0.813733)
AutoGenParent84ID62.collider:SetHalfLengths(1,8.15294,4.30116)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID62.collider)
table.insert(colliders,AutoGenParent84ID62)
AutoGenParent84ID63 = {}
AutoGenParent84ID63.collider = OBBCollider.Create(-1)
AutoGenParent84ID63.collider:SetOffset(104.5,32.6902,203)
AutoGenParent84ID63.collider:SetZAxis(-0.868243,0,-0.496139)
AutoGenParent84ID63.collider:SetHalfLengths(1,8.28432,4.03113)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID63.collider)
table.insert(colliders,AutoGenParent84ID63)
AutoGenParent84ID64 = {}
AutoGenParent84ID64.collider = OBBCollider.Create(-1)
AutoGenParent84ID64.collider:SetOffset(92,22.9686,214)
AutoGenParent84ID64.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent84ID64.collider:SetHalfLengths(1,6.05098,3.60555)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID64.collider)
table.insert(colliders,AutoGenParent84ID64)
AutoGenParent84ID65 = {}
AutoGenParent84ID65.collider = OBBCollider.Create(-1)
AutoGenParent84ID65.collider:SetOffset(97.5,24.0196,217.5)
AutoGenParent84ID65.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent84ID65.collider:SetHalfLengths(1,7.23333,3.53553)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID65.collider)
table.insert(colliders,AutoGenParent84ID65)
AutoGenParent84ID66 = {}
AutoGenParent84ID66.collider = OBBCollider.Create(-1)
AutoGenParent84ID66.collider:SetOffset(139.5,33.6471,198.5)
AutoGenParent84ID66.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent84ID66.collider:SetHalfLengths(1,7.35294,3.53553)
AutoGenParent84ID59.collider:AddChild(AutoGenParent84ID66.collider)
table.insert(colliders,AutoGenParent84ID66)
AutoGenParent84ID67 = {}
AutoGenParent84ID67.collider = AABBCollider.Create(-1)
AutoGenParent84ID67.collider:SetOffset(0,0,0)
AutoGenParent84ID67.collider:SetMinPos(86.5896,7.85294,200.804)
AutoGenParent84ID67.collider:SetMaxPos(137.981,40.8431,237.912)
AutoGenParent84ID58.collider:AddChild(AutoGenParent84ID67.collider)
table.insert(colliders,AutoGenParent84ID67)
AutoGenParent84ID68 = {}
AutoGenParent84ID68.collider = OBBCollider.Create(-1)
AutoGenParent84ID68.collider:SetOffset(97,20.4725,232.5)
AutoGenParent84ID68.collider:SetZAxis(0.911922,0,0.410365)
AutoGenParent84ID68.collider:SetHalfLengths(1,12.6196,10.9659)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID68.collider)
table.insert(colliders,AutoGenParent84ID68)
AutoGenParent84ID69 = {}
AutoGenParent84ID69.collider = OBBCollider.Create(-1)
AutoGenParent84ID69.collider:SetOffset(125.5,33.7412,209)
AutoGenParent84ID69.collider:SetZAxis(-1,0,0)
AutoGenParent84ID69.collider:SetHalfLengths(1,5.78823,2.5)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID69.collider)
table.insert(colliders,AutoGenParent84ID69)
AutoGenParent84ID70 = {}
AutoGenParent84ID70.collider = OBBCollider.Create(-1)
AutoGenParent84ID70.collider:SetOffset(113,31.6392,215)
AutoGenParent84ID70.collider:SetZAxis(0,0,-1)
AutoGenParent84ID70.collider:SetHalfLengths(1,9.20392,3)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID70.collider)
table.insert(colliders,AutoGenParent84ID70)
AutoGenParent84ID71 = {}
AutoGenParent84ID71.collider = OBBCollider.Create(-1)
AutoGenParent84ID71.collider:SetOffset(105.5,26.2529,219.5)
AutoGenParent84ID71.collider:SetZAxis(0.948683,0,0.316228)
AutoGenParent84ID71.collider:SetHalfLengths(1,8.94118,4.74342)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID71.collider)
table.insert(colliders,AutoGenParent84ID71)
AutoGenParent84ID72 = {}
AutoGenParent84ID72.collider = OBBCollider.Create(-1)
AutoGenParent84ID72.collider:SetOffset(111.5,30.1941,219.5)
AutoGenParent84ID72.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent84ID72.collider:SetHalfLengths(1,6.4451,2.12132)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID72.collider)
table.insert(colliders,AutoGenParent84ID72)
AutoGenParent84ID73 = {}
AutoGenParent84ID73.collider = OBBCollider.Create(-1)
AutoGenParent84ID73.collider:SetOffset(132,33.5294,206.5)
AutoGenParent84ID73.collider:SetZAxis(0.992278,0,-0.124035)
AutoGenParent84ID73.collider:SetHalfLengths(1,5.23529,4.03113)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID73.collider)
table.insert(colliders,AutoGenParent84ID73)
AutoGenParent84ID74 = {}
AutoGenParent84ID74.collider = OBBCollider.Create(-1)
AutoGenParent84ID74.collider:SetOffset(136.5,33.7647,203.5)
AutoGenParent84ID74.collider:SetZAxis(0.196116,0,-0.980581)
AutoGenParent84ID74.collider:SetHalfLengths(1,5.11765,2.54951)
AutoGenParent84ID67.collider:AddChild(AutoGenParent84ID74.collider)
table.insert(colliders,AutoGenParent84ID74)
AutoGenParent84ID75 = {}
AutoGenParent84ID75.collider = AABBCollider.Create(-1)
AutoGenParent84ID75.collider:SetOffset(0,0,0)
AutoGenParent84ID75.collider:SetMinPos(106.041,21.2529,236.718)
AutoGenParent84ID75.collider:SetMaxPos(128.625,36.6392,255)
AutoGenParent84ID58.collider:AddChild(AutoGenParent84ID75.collider)
table.insert(colliders,AutoGenParent84ID75)
AutoGenParent84ID76 = {}
AutoGenParent84ID76.collider = OBBCollider.Create(-1)
AutoGenParent84ID76.collider:SetOffset(109.5,28.0922,245.5)
AutoGenParent84ID76.collider:SetZAxis(0.282166,0,0.959365)
AutoGenParent84ID76.collider:SetHalfLengths(1,6.83921,8.86002)
AutoGenParent84ID75.collider:AddChild(AutoGenParent84ID76.collider)
table.insert(colliders,AutoGenParent84ID76)
AutoGenParent84ID77 = {}
AutoGenParent84ID77.collider = OBBCollider.Create(-1)
AutoGenParent84ID77.collider:SetOffset(115,29.9314,254)
AutoGenParent84ID77.collider:SetZAxis(1,0,0)
AutoGenParent84ID77.collider:SetHalfLengths(1,5.52549,3)
AutoGenParent84ID75.collider:AddChild(AutoGenParent84ID77.collider)
table.insert(colliders,AutoGenParent84ID77)
AutoGenParent84ID78 = {}
AutoGenParent84ID78.collider = OBBCollider.Create(-1)
AutoGenParent84ID78.collider:SetOffset(123,30.4569,250)
AutoGenParent84ID78.collider:SetZAxis(0.780869,0,-0.624695)
AutoGenParent84ID78.collider:SetHalfLengths(1,6.18235,6.40312)
AutoGenParent84ID75.collider:AddChild(AutoGenParent84ID78.collider)
table.insert(colliders,AutoGenParent84ID78)
CollisionHandler.AddAABB(AutoGenParent84ID.collider, 3)
AutoGenParent84ID1 = nil
AutoGenParent84ID2 = nil
AutoGenParent84ID3 = nil
AutoGenParent84ID4 = nil
AutoGenParent84ID5 = nil
AutoGenParent84ID6 = nil
AutoGenParent84ID7 = nil
AutoGenParent84ID8 = nil
AutoGenParent84ID9 = nil
AutoGenParent84ID10 = nil
AutoGenParent84ID11 = nil
AutoGenParent84ID12 = nil
AutoGenParent84ID13 = nil
AutoGenParent84ID14 = nil
AutoGenParent84ID15 = nil
AutoGenParent84ID16 = nil
AutoGenParent84ID17 = nil
AutoGenParent84ID18 = nil
AutoGenParent84ID19 = nil
AutoGenParent84ID20 = nil
AutoGenParent84ID21 = nil
AutoGenParent84ID22 = nil
AutoGenParent84ID23 = nil
AutoGenParent84ID24 = nil
AutoGenParent84ID25 = nil
AutoGenParent84ID26 = nil
AutoGenParent84ID27 = nil
AutoGenParent84ID28 = nil
AutoGenParent84ID29 = nil
AutoGenParent84ID30 = nil
AutoGenParent84ID31 = nil
AutoGenParent84ID32 = nil
AutoGenParent84ID33 = nil
AutoGenParent84ID34 = nil
AutoGenParent84ID35 = nil
AutoGenParent84ID36 = nil
AutoGenParent84ID37 = nil
AutoGenParent84ID38 = nil
AutoGenParent84ID39 = nil
AutoGenParent84ID40 = nil
AutoGenParent84ID41 = nil
AutoGenParent84ID42 = nil
AutoGenParent84ID43 = nil
AutoGenParent84ID44 = nil
AutoGenParent84ID45 = nil
AutoGenParent84ID46 = nil
AutoGenParent84ID47 = nil
AutoGenParent84ID48 = nil
AutoGenParent84ID49 = nil
AutoGenParent84ID50 = nil
AutoGenParent84ID51 = nil
AutoGenParent84ID52 = nil
AutoGenParent84ID53 = nil
AutoGenParent84ID54 = nil
AutoGenParent84ID55 = nil
AutoGenParent84ID56 = nil
AutoGenParent84ID57 = nil
AutoGenParent84ID58 = nil
AutoGenParent84ID59 = nil
AutoGenParent84ID60 = nil
AutoGenParent84ID61 = nil
AutoGenParent84ID62 = nil
AutoGenParent84ID63 = nil
AutoGenParent84ID64 = nil
AutoGenParent84ID65 = nil
AutoGenParent84ID66 = nil
AutoGenParent84ID67 = nil
AutoGenParent84ID68 = nil
AutoGenParent84ID69 = nil
AutoGenParent84ID70 = nil
AutoGenParent84ID71 = nil
AutoGenParent84ID72 = nil
AutoGenParent84ID73 = nil
AutoGenParent84ID74 = nil
AutoGenParent84ID75 = nil
AutoGenParent84ID76 = nil
AutoGenParent84ID77 = nil
AutoGenParent84ID78 = nil
table.insert(colliders,AutoGenParent84ID)
AutoGenParent84ID = nil

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

OpWall5965ID = {}
OpWall5965ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall5965ID.transformID, {x=132, y=33.5294, z=206.5})
Transform.SetScaleNonUniform(OpWall5965ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall5965ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall5965ID)
OpWall5965ID = nil

OpWall6066ID = {}
OpWall6066ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6066ID.transformID, {x=136.5, y=33.7647, z=203.5})
Transform.SetScaleNonUniform(OpWall6066ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6066ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6066ID)
OpWall6066ID = nil

OpWall6167ID = {}
OpWall6167ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6167ID.transformID, {x=139.5, y=33.6471, z=198.5})
Transform.SetScaleNonUniform(OpWall6167ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6167ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6167ID)
OpWall6167ID = nil

OpWall6268ID = {}
OpWall6268ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6268ID.transformID, {x=138.5, y=36, z=180.5})
Transform.SetScaleNonUniform(OpWall6268ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6268ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6268ID)
OpWall6268ID = nil

OpWall6369ID = {}
OpWall6369ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6369ID.transformID, {x=134.5, y=44.4706, z=159.5})
Transform.SetScaleNonUniform(OpWall6369ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6369ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6369ID)
OpWall6369ID = nil

OpWall6470ID = {}
OpWall6470ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6470ID.transformID, {x=139, y=49.5294, z=148})
Transform.SetScaleNonUniform(OpWall6470ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6470ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6470ID)
OpWall6470ID = nil

OpWall6571ID = {}
OpWall6571ID.transformID = Transform.Bind()
Transform.SetPosition(OpWall6571ID.transformID, {x=147.5, y=51.4118, z=141})
Transform.SetScaleNonUniform(OpWall6571ID.transformID, 1, 1, 1)
Transform.SetRotation(OpWall6571ID.transformID, {x=0, y=0, z=0})
table.insert(colliders,OpWall6571ID)
OpWall6571ID = nil

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
