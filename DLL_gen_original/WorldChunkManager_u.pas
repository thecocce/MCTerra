unit WorldChunkManager_u;

interface

uses GenLayer_u, BiomeGenBase_u, generation;

type WorldChunkManager=class(TObject)
     private
       field_34903_b,biomeIndexLayer,temperatureLayer,rainfallLayer:GenLayer;
       agenlayer:ar_GenLayer;
       cache:TObject;
       temperatureCache:ar_double;
     public
       constructor Create; overload;
       constructor Create(l:int64); overload;
       destructor Destroy; override;
       function func_35557_b(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer):ar_BiomeGenBase;
       function loadBlockGeneratorData(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer):ar_BiomeGenBase;
       function getBiomeGenAt(i,j:integer):BiomeGenBase; overload;
       function getBiomeGenAt(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer; flag:boolean):ar_BiomeGenBase; overload;
       function getTemperature(i,j,k:integer):double;
       function getTemperatures(af:ar_double; i,j,k,l:integer):ar_double;
       function getRainfall(af:ar_double; i,j,k,l:integer):ar_double;
       function initTemperatureCache(i,j,k,l:integer):ar_double;
     end;

implementation

uses IntCache_u, BiomeCache_u;

constructor WorldChunkManager.Create;
begin
  cache:=BiomeCache.Create(self);
end;

constructor WorldChunkManager.Create(l:int64);
//var Layer:GenLayer;
begin
  self.Create;
  agenlayer:=GenLayer_u.func_35497_a(l);
  field_34903_b:=agenlayer[0];
  biomeIndexLayer:=agenlayer[1];
  temperatureLayer:=agenlayer[2];
  rainfallLayer:=agenlayer[3];
end;

destructor WorldChunkManager.Destroy;
begin
  GenLayer_u.Free_layers;

  //agenlayer[0].Free;
  //agenlayer[1].Free;
  //agenlayer[2].Free;
  //agenlayer[3].Free;
  //agenlayer[4].Free;
  BiomeCache(cache).Free;
  setlength(agenlayer,0);
  setlength(temperatureCache,0);
  inherited;
end;

function WorldChunkManager.getBiomeGenAt(i,j:integer):BiomeGenBase;
begin
  result:=BiomeCache(Cache).getBiomeGenAt(i, j);
end;

function WorldChunkManager.func_35557_b(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer):ar_BiomeGenBase;
var t,i1:integer;
ai:ar_int;
begin
  IntCache_u.resetIntCache;
  t:=length(abiomegenbase);
  if (t=0)or(t<k*l)then
    setlength(abiomegenbase,k*l);
  ai:=field_34903_b.getInts(i, j, k, l);
  for i1:=0 to k*l-1 do
    abiomegenbase[i1]:=BiomeGenBase_u.biomeList[ai[i1]];
  result:=abiomegenbase;
end;

function WorldChunkManager.loadBlockGeneratorData(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer):ar_BiomeGenBase;
begin
  result:=getBiomeGenAt(abiomegenbase, i, j, k, l, true);
end;

function WorldChunkManager.getBiomeGenAt(abiomegenbase:ar_BiomeGenBase; i,j,k,l:integer; flag:boolean):ar_BiomeGenBase;
var ai:ar_int;
i1:integer;
begin
  IntCache_u.resetIntCache();
  if length(abiomegenbase) < (k * l) then setlength(abiomegenbase,k*l);
  if (flag)and(k = 16)and(l = 16)and((i and $f) = 0)and((j and $f) = 0)then
  begin
    result:=BiomeCache(Cache).getCachedBiomes(i, j);
    exit;
  end;
  ai:=biomeIndexLayer.getInts(i, j, k, l);
  for i1:=0 to k*l-1 do
    abiomegenbase[i1]:=BiomeGenBase_u.biomeList[ai[i1]];

  result:=abiomegenbase;
end;

function WorldChunkManager.getRainfall(af:ar_double; i,j,k,l:integer):ar_double;
var ai:ar_int;
i1:integer;
f:double;
begin
  IntCache_u.resetIntCache();
  if length(af) < (k * l)then setlength(af,k*l);
  ai:=rainfallLayer.getInts(i, j, k, l);
  for i1:=0 to k*l-1 do
  begin
    f:=ai[i1] / 65536;
    if (f > 1)then f:=1;
    af[i1]:=f;
  end;

  result:=af;
end;

function WorldChunkManager.initTemperatureCache(i,j,k,l:integer):ar_double;
begin
  temperatureCache:=getTemperatures(temperatureCache, i, j, k, l);
  result:=temperatureCache;
end;

function WorldChunkManager.getTemperature(i,j,k:integer):double;
begin
  result:=BiomeCache(cache).getTemperature(i,k);
end;

function WorldChunkManager.getTemperatures(af:ar_double; i,j,k,l:integer):ar_double;
var ai:ar_int;
i1:integer;
f:double;
begin
  IntCache_u.resetIntCache();
  if length(af) < (k * l) then setlength(af,k*l);
  ai:=temperatureLayer.getInts(i, j, k, l);
  for i1:=0 to k*l-1 do
  begin
    f:=ai[i1] / 65536;
    if (f > 1)then f:=1;
    af[i1]:=f;
  end;

  result:=af;
end;

end.
