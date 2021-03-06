unit GenLayerSmooth_u;

interface

uses GenLayer_u, generation;

type GenLayerSmooth=class(GenLayer)
     public
       constructor Create(l:int64; gen:GenLayer);
       destructor Destroy; override;
       function getInts(i,j,k,l:integer):ar_int; override;
     end;

implementation

uses IntCache_u;

constructor GenLayerSmooth.Create(l:int64; gen:GenLayer);
begin
  inherited Create(l);
  parent:=gen;
end;

destructor GenLayerSmooth.Destroy;
begin
  //if parent<>nil then parent.Free;
  //parent:=nil;
  inherited;
end;

function GenLayerSmooth.getInts(i,j,k,l:integer):ar_int;
var i1,j1,k1,l1,i2,j2,k2,l2,i3,j3,k3:integer;
ai:ar_int;
ai1:par_int;
begin
  i1:=i - 1;
  j1:=j - 1;
  k1:=k + 2;
  l1:=l + 2;
  ai:=parent.getInts(i1, j1, k1, l1);
  ai1:=IntCache_u.getIntCache(k * l);
  for i2:=0 to l-1 do
    for j2:=0 to k-1 do
    begin
      k2:=ai[j2 + 0 + (i2 + 1) * k1];
      l2:=ai[j2 + 2 + (i2 + 1) * k1];
      i3:=ai[j2 + 1 + (i2 + 0) * k1];
      j3:=ai[j2 + 1 + (i2 + 2) * k1];
      k3:=ai[j2 + 1 + (i2 + 1) * k1];
      if (k2 = l2)and(i3 = j3)then
      begin
        initChunkSeed(j2 + i, i2 + j);
        if (nextInt(2) = 0)then k3:=k2
        else k3:=i3;
      end
      else
      begin
        if (k2 = l2)then k3:=k2;
        if (i3 = j3)then k3:=i3;  
      end;
      ai1^[j2 + i2 * k]:=k3;
    end;

  result:=ai1^;
end;



end.
