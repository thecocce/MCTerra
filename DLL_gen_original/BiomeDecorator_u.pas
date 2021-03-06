unit BiomeDecorator_u;

interface

uses RandomMCT, WorldGenClay_u, WorldGenSand_u, WorldGenMinable_u,
WorldGenFlowers_u, WorldGenBigMushroom_u, WorldGenReed_u,
WorldGenCactus_u, MapGenWaterLily_u, WorldGenerator_u, generation;

type BiomeDecorator=class(TObject)
     protected
       procedure genStandardOre1(xreg,yreg:integer; map:region; i:integer; generator:WorldGenerator; j,k:integer);
       procedure genStandardOre2(xreg,yreg:integer; map:region; i:integer; generator:WorldGenerator; j,k:integer);
       procedure generateOres(xreg,yreg:integer; map:region);
     public
       randomGenerator:rnd;
       chunk_X,chunk_Z:integer;
       biome:TObject;
       clayGen:WorldGenClay;
       sandGen,gravelAsSandGen:WorldGenSand;
       dirtGen,gravelGen,coalGen,ironGen,goldGen,redstoneGen,diamondGen,lapisGen:WorldGenMinable;
       plantYellowGen,plantRedGen,mushroomBrownGen,mushroomRedGen:WorldGenFlowers;
       bigMushroomGen:WorldGenBigMushroom;
       reedGen:WorldGenReed;
       cactusGen:WorldGenCactus;
       waterlilyGen:MapGenWaterlily;
       waterlilyPerChunk,treesPerChunk,flowersPerChunk,grassPerChunk,
       deadBushPerChunk,mushroomsPerChunk,reedsPerChunk,cactiPerChunk,
       sandPerChunk,sandPerChunk2,clayPerChunk,bigMushroomsPerChunk:integer;
       generateLakes:boolean;
       constructor Create(genbase:TObject);
       destructor Destroy; override;
       procedure decorate(xreg,yreg:integer; map:region; rand:rnd; i,j:integer);
     end;

implementation

uses BiomeGenBase_u, WorldGenTallGrass_u, WorldGenDeadBush_u,
WorldGenPumpkin_u, WorldGenLiquids_u;

constructor BiomeDecorator.Create(genbase:TObject);
begin
  clayGen:=WorldGenClay.Create(4);
  sandGen:=WorldGenSand.Create(7, 12);
  gravelAsSandGen:=WorldGenSand.Create(6, 13);
  dirtGen:=WorldGenMinable.Create(3, 32);
  gravelGen:=WorldGenMinable.Create(13, 32);
  coalGen:=WorldGenMinable.Create(16, 16);
  ironGen:=WorldGenMinable.Create(15, 8);
  goldGen:=WorldGenMinable.Create(14, 8);
  redstoneGen:=WorldGenMinable.Create(73, 7);
  diamondGen:=WorldGenMinable.Create(56, 7);
  lapisGen:=WorldGenMinable.Create(21, 6);
  plantYellowGen:=WorldGenFlowers.Create(37);
  plantRedGen:=WorldGenFlowers.Create(38);
  mushroomBrownGen:=WorldGenFlowers.Create(39);
  mushroomRedGen:=WorldGenFlowers.Create(40);
  bigMushroomGen:=WorldGenBigMushroom.Create();
  reedGen:=WorldGenReed.Create();
  cactusGen:=WorldGenCactus.Create();
  waterlilyGen:=MapGenWaterlily.Create();
  waterlilyPerChunk:=0;
  treesPerChunk:=0;
  flowersPerChunk:=2;
  grassPerChunk:=1;
  deadBushPerChunk:=0;
  mushroomsPerChunk:=0;
  reedsPerChunk:=0;
  cactiPerChunk:=0;
  sandPerChunk:=1;
  sandPerChunk2:=3;
  clayPerChunk:=1;
  bigMushroomsPerChunk:=0;
  generateLakes:=true;
  biome:=genbase;
end;

destructor BiomeDecorator.Destroy;
begin
  clayGen.Free;
  sandGen.Free;
  gravelAsSandGen.Free;
  dirtGen.Free;
  gravelGen.Free;
  coalGen.Free;
  ironGen.Free;
  goldGen.Free;
  redstoneGen.Free;
  diamondGen.Free;
  lapisGen.Free;
  plantYellowGen.Free;
  plantRedGen.Free;
  mushroomBrownGen.Free;
  mushroomRedGen.Free;
  bigMushroomGen.Free;
  reedGen.Free;
  cactusGen.Free;
  waterlilyGen.Free;
  biome:=nil;
  inherited;
end;

procedure BiomeDecorator.decorate(xreg,yreg:integer; map:region; rand:rnd; i,j:integer);
var ii,jj,k,l,i1,k5,j1,l5,k1,i6,yy,l1,j6,k10,i2,k6,l10,j2,l6,
i11,l14,i7,j11,i15,k2,k11,j15,l17,l2,k7,l11,k15,i3,l7,l15,i12,
j3,i8,j12,i16,j8,k12,j16,k3,k8,l12,l3,l8,i13,i4,i9,j13,k16,j4,
j9,k13,l16,k4,k9,l13,l4,l9,i14,i17,i5,i10,j14,j17,j5,j10,k14,k17:integer;
w_generator:WorldGenerator;
GenTallGrass:WorldGenTallGrass;
GenDeadBush:WorldGenDeadBush;
GenPumpkin:WorldGenPumpkin;
GenLiquids:WorldGenLiquids;
begin
  randomGenerator:=rand;
  chunk_X:=i;
  chunk_Z:=j;


  generateOres(xreg,yreg,map);
  for ii:=0 to sandPerChunk2-1 do
  begin
    i1:=chunk_X + randomGenerator.nextInt(16) + 8;
    k5:=chunk_Z + randomGenerator.nextInt(16) + 8;
    yy:=get_Top_Solid(map,xreg,yreg,i1, k5);
    sandGen.generate(xreg,yreg,map, randomGenerator, i1, yy, k5);
  end;

  for jj:=0 to clayPerChunk-1 do
  begin
    j1:=chunk_X + randomGenerator.nextInt(16) + 8;
    l5:=chunk_Z + randomGenerator.nextInt(16) + 8;
    yy:=get_Top_Solid(map,xreg,yreg,j1, l5);
    clayGen.generate(xreg,yreg,map, randomGenerator, j1, yy, l5);
  end;

  for k:=0 to sandPerChunk-1 do
  begin
    k1:=chunk_X + randomGenerator.nextInt(16) + 8;
    i6:=chunk_Z + randomGenerator.nextInt(16) + 8;
    yy:=get_Top_Solid(map,xreg,yreg,k1, i6);
    sandGen.generate(xreg,yreg,map, randomGenerator, k1, yy, i6);
  end;

  l:=treesPerChunk;
  if (randomGenerator.nextInt(10) = 0)then inc(l);
  for l1:=0 to l-1 do
  begin
    j6:=chunk_X + randomGenerator.nextInt(16) + 8;
    k10:=chunk_Z + randomGenerator.nextInt(16) + 8;
    w_generator:=BiomeGenBase(biome).getRandomWorldGenForTrees(randomGenerator);
    w_generator.func_517_a(1, 1, 1);
    yy:=get_top_any(map,xreg,yreg,j6,k10);
    w_generator.generate(xreg,yreg,map, randomGenerator, j6, yy, k10);
  end;

  for i2:=0 to bigMushroomsPerChunk-1 do
  begin
    k6:=chunk_X + randomGenerator.nextInt(16) + 8;
    l10:=chunk_Z + randomGenerator.nextInt(16) + 8;
    yy:=get_top_any(map,xreg,yreg,k6,l10);
    bigMushroomGen.generate(xreg,yreg,map, randomGenerator, k6, yy, l10);
  end;

  for j2:=0 to flowersPerChunk-1 do
  begin
    l6:=chunk_X + randomGenerator.nextInt(16) + 8;
    i11:=randomGenerator.nextInt(128);
    l14:=chunk_Z + randomGenerator.nextInt(16) + 8;
    plantYellowGen.generate(xreg,yreg,map, randomGenerator, l6, i11, l14);
    if (randomGenerator.nextInt(4) = 0) then
    begin
      i7:=chunk_X + randomGenerator.nextInt(16) + 8;
      j11:=randomGenerator.nextInt(128);
      i15:=chunk_Z + randomGenerator.nextInt(16) + 8;
      plantRedGen.generate(xreg,yreg,map, randomGenerator, i7, j11, i15);
    end;
  end;

  GenTallGrass:=WorldGenTallGrass.Create(31,1);
  for k2:=0 to grassPerChunk-1 do
  begin
    k11:=chunk_X + randomGenerator.nextInt(16) + 8;
    j15:=randomGenerator.nextInt(128);
    l17:=chunk_Z + randomGenerator.nextInt(16) + 8;
    GenTallGrass.generate(xreg,yreg,map, randomGenerator, k11, j15, l17);
  end;
  GenTallGrass.Free;

  GenDeadBush:=WorldGenDeadBush.Create(32);
  for l2:=0 to deadBushPerChunk-1 do
  begin
    k7:=chunk_X + randomGenerator.nextInt(16) + 8;
    l11:=randomGenerator.nextInt(128);
    k15:=chunk_Z + randomGenerator.nextInt(16) + 8;
    GenDeadBush.generate(xreg,yreg,map, randomGenerator, k7, l11, k15);
  end;
  GenDeadBush.Free;

  for i3:=0 to waterlilyPerChunk-1 do
  begin
    l7:=chunk_X + randomGenerator.nextInt(16) + 8;
    i12:=chunk_Z + randomGenerator.nextInt(16) + 8;
    l15:=randomGenerator.nextInt(128);
    while (l15>0)and(get_block_id(map,xreg,yreg,l7, l15 - 1, i12)=0)do
      dec(l15);
    waterlilyGen.generate(xreg,yreg,map, randomGenerator, l7, l15, i12);
  end;

  for j3:=0 to mushroomsPerChunk-1 do
  begin
    if (randomGenerator.nextInt(4) = 0)then
    begin
      i8:=chunk_X + randomGenerator.nextInt(16) + 8;
      j12:=chunk_Z + randomGenerator.nextInt(16) + 8;
      i16:=get_top_any(map,xreg,yreg,i8, j12);
      mushroomBrownGen.generate(xreg,yreg,map, randomGenerator, i8, i16, j12);
    end;
    if (randomGenerator.nextInt(8) = 0)then
    begin
      j8:=chunk_X + randomGenerator.nextInt(16) + 8;
      k12:=chunk_Z + randomGenerator.nextInt(16) + 8;
      j16:=randomGenerator.nextInt(128);
      mushroomRedGen.generate(xreg,yreg,map, randomGenerator, j8, j16, k12);
    end;
  end;

  if (randomGenerator.nextInt(4) = 0) then
  begin
    k3:=chunk_X + randomGenerator.nextInt(16) + 8;
    k8:=randomGenerator.nextInt(128);
    l12:=chunk_Z + randomGenerator.nextInt(16) + 8;
    mushroomBrownGen.generate(xreg,yreg,map, randomGenerator, k3, k8, l12);
  end;
  if (randomGenerator.nextInt(8) = 0) then
  begin
    l3:=chunk_X + randomGenerator.nextInt(16) + 8;
    l8:=randomGenerator.nextInt(128);
    i13:=chunk_Z + randomGenerator.nextInt(16) + 8;
    mushroomRedGen.generate(xreg,yreg,map, randomGenerator, l3, l8, i13);
  end;
  for i4:=0 to reedsPerChunk-1 do
  begin
    i9:=chunk_X + randomGenerator.nextInt(16) + 8;
    j13:=chunk_Z + randomGenerator.nextInt(16) + 8;
    k16:=randomGenerator.nextInt(128);
    reedGen.generate(xreg,yreg,map, randomGenerator, i9, k16, j13);
  end;

  for j4:=0 to 9 do
  begin
    j9:=chunk_X + randomGenerator.nextInt(16) + 8;
    k13:=randomGenerator.nextInt(128);
    l16:=chunk_Z + randomGenerator.nextInt(16) + 8;
    reedGen.generate(xreg,yreg,map, randomGenerator, j9, k13, l16);
  end;

  GenPumpkin:=WorldGenPumpkin.Create;
  if (randomGenerator.nextInt(32) = 0) then
  begin
    k4:=chunk_X + randomGenerator.nextInt(16) + 8;
    k9:=randomGenerator.nextInt(128);
    l13:=chunk_Z + randomGenerator.nextInt(16) + 8;
    GenPumpkin.generate(xreg,yreg,map, randomGenerator, k4, k9, l13);
  end;
  GenPumpkin.Free;

  for l4:=0 to cactiPerChunk-1 do
  begin
    l9:=chunk_X + randomGenerator.nextInt(16) + 8;
    i14:=randomGenerator.nextInt(128);
    i17:=chunk_Z + randomGenerator.nextInt(16) + 8;
    cactusGen.generate(xreg,yreg,map, randomGenerator, l9, i14, i17);
  end;

  
  if (generateLakes)then
  begin
    GenLiquids:=WorldGenLiquids.Create(8);
    for i5:=0 to 49 do
    begin
      i10:=chunk_X + randomGenerator.nextInt(16) + 8;
      j14:=randomGenerator.nextInt(randomGenerator.nextInt(128 - 8) + 8);
      j17:=chunk_Z + randomGenerator.nextInt(16) + 8;
      GenLiquids.generate(xreg,yreg,map, randomGenerator, i10, j14, j17);
    end;
    GenLiquids.Free;

    GenLiquids:=WorldGenLiquids.Create(10);
    for j5:=0 to 19 do
    begin
      j10:=chunk_X + randomGenerator.nextInt(16) + 8;
      k14:=randomGenerator.nextInt(randomGenerator.nextInt(randomGenerator.nextInt(128 - 16) + 8) + 8);
      k17:=chunk_Z + randomGenerator.nextInt(16) + 8;
      GenLiquids.generate(xreg,yreg,map, randomGenerator, j10, k14, k17);
    end;
  end;
end;

procedure BiomeDecorator.genStandardOre1(xreg,yreg:integer; map:region; i:integer; generator:WorldGenerator; j,k:integer);
var l,i1,j1,k1:integer;
begin
  for l:=0 to i-1 do
  begin
    i1:=chunk_X + randomGenerator.nextInt(16);
    j1:=randomGenerator.nextInt(k - j) + j;
    k1:=chunk_Z + randomGenerator.nextInt(16);
    generator.generate(xreg,yreg,map, randomGenerator, i1, j1, k1);
  end;
end;

procedure BiomeDecorator.genStandardOre2(xreg,yreg:integer; map:region; i:integer; generator:WorldGenerator; j,k:integer);
var l,i1,j1,k1:integer;
begin
  for l:=0 to i-1 do
  begin
    i1:=chunk_X + randomGenerator.nextInt(16);
    j1:=randomGenerator.nextInt(k) + randomGenerator.nextInt(k) + (j - k);
    k1:=chunk_Z + randomGenerator.nextInt(16);
    generator.generate(xreg,yreg,map, randomGenerator, i1, j1, k1);
  end;
end;

procedure BiomeDecorator.generateOres(xreg,yreg:integer; map:region);
begin
  genStandardOre1(xreg,yreg,map,20, dirtGen, 0, 128);
  genStandardOre1(xreg,yreg,map,10, gravelGen, 0, 128);
  genStandardOre1(xreg,yreg,map,20, coalGen, 0, 128);
  genStandardOre1(xreg,yreg,map,20, ironGen, 0, 128 div 2);
  genStandardOre1(xreg,yreg,map,2, goldGen, 0, 128 div 4);
  genStandardOre1(xreg,yreg,map,8, redstoneGen, 0, 128 div 8);
  genStandardOre1(xreg,yreg,map,1, diamondGen, 0, 128 div 8);
  genStandardOre2(xreg,yreg,map,1, lapisGen, 128 div 8, 128 div 8);
end;

end.
