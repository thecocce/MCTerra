unit WorldGenLiquids_u;

interface

uses WorldGenerator_u, generation, RandomMCT;

type WorldGenLiquids=class(WorldGenerator)
     private
       liquidBlockId:integer;
     public
       constructor Create(i:integer);
       function generate(xreg,yreg:integer; map:region; rand:rnd; i,j,k:integer):boolean; override;
     end;

implementation

constructor WorldGenLiquids.Create(i:integer);
begin
  liquidBlockId:=i;
end;

function WorldGenLiquids.generate(xreg,yreg:integer; map:region; rand:rnd; i,j,k:integer):boolean;
var t,l,t1,t2,t3,t4,i1:integer;
begin
  if (get_block_id(map,xreg,yreg,i, j + 1, k) <> 1) then
  begin
    result:=false;
    exit;
  end;
  if (get_block_id(map,xreg,yreg,i, j - 1, k) <> 1) then
  begin
    result:=false;
    exit;
  end;
  t:=get_block_id(map,xreg,yreg,i,j,k);
  if (t <> 0)and(t <> 1) then
  begin
    result:=false;
    exit;
  end;
  l:=0;
  t1:=get_block_id(map,xreg,yreg,i-1,j,k);
  t2:=get_block_id(map,xreg,yreg,i+1,j,k);
  t3:=get_block_id(map,xreg,yreg,i,j,k-1);
  t4:=get_block_id(map,xreg,yreg,i,j,k+1);
  if t1=1 then inc(l);
  if t2=1 then inc(l);
  if t3=1 then inc(l);
  if t4=1 then inc(l);

  i1:=0;
  if t1=0 then inc(i1);
  if t2=0 then inc(i1);
  if t3=0 then inc(i1);
  if t4=0 then inc(i1);

  if (l = 3)and(i1 = 1) then
  begin
    set_block_id(map,xreg,yreg,i, j, k, liquidBlockId);
    {world.scheduledUpdatesAreImmediate = true;
    Block.blocksList[liquidBlockId].updateTick(world, i, j, k, random);
    world.scheduledUpdatesAreImmediate = false;}
  end;

  result:=true;
end;

end.
