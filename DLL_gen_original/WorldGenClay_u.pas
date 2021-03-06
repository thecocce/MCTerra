unit WorldGenClay_u;

interface

uses WorldGenerator_u, generation, RandomMCT;

type WorldGenClay=class(WorldGenerator)
     private
       clayBlockId,numberOfBlocks:integer;
     public
       constructor Create(i:integer);
       function generate(xreg,yreg:integer; map:region; rand:rnd; i,j,k:integer):boolean; override;
     end;

implementation

constructor WorldGenClay.Create(i:integer);
begin
  clayBlockId:=82;
  numberOfBlocks:=i;
end;

function WorldGenClay.generate(xreg,yreg:integer; map:region; rand:rnd; i,j,k:integer):boolean;
var t,l,i1,j1,k1,l1,i2,j2,k2:integer;
begin
  t:=get_block_id(map,xreg,yreg,i,j,k);
  if (t<>8)and(t<>9) then
  begin
    result:=false;
    exit;
  end;

  l:=rand.nextInt(numberOfBlocks - 2) + 2;
  i1:=1;

  for j1:=i-l to i+l do
    for k1:=k-l to k+l do
    begin
      l1:=j1 - i;
      i2:=k1 - k;
      if (l1 * l1 + i2 * i2) > (l * l) then continue;
      for j2:=j-i1 to j+i1 do
      begin
        k2:=get_block_id(map,xreg,yreg,j1,j2,k1);
        if (k2 = 3) then
          set_block_id(map,xreg,yreg,j1,j2,k1,clayBlockId);
      end;
    end;

  result:=true;
end;

end.
