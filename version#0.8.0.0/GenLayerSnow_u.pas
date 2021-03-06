unit GenLayerSnow_u;

interface

uses GenLayer_u, generation_obsh;

type  GenLayerSnow=class(GenLayer)
      public
        constructor Create(l:int64; gen:GenLayer);
        function func_35500_a(i,j,k,l:integer):ar_int; override;
      end;

implementation

uses IntCache_u, BiomeGenBase_u;

constructor GenLayerSnow.Create(l:int64; gen:GenLayer);
begin
  inherited Create(l);
  parent:=gen;
end;

function GenLayerSnow.func_35500_a(i,j,k,l:integer):ar_int;
var i1,j1,k1,l1,i2,j2,k2,l2:integer;
ai:ar_int;
ai1:par_int;
begin
  i1:=i-1;
  j1:=j-1;
  k1:=k+2;
  l1:=l+2;
  ai:=parent.func_35500_a(i1, j1, k1, l1);
  ai1:=IntCache_u.getIntCache(k * l);
  for i2:=0 to l-1 do
    for j2:=0 to k-1 do
    begin
      k2:=ai[j2 + 1 + (i2 + 1) * k1];
      func_35499_a(j2 + i, i2 + j);
      if k2=0 then
      begin
        ai1^[j2 + i2 * k]:=0;
        continue;
      end;
      l2:=nextInt(5);
      if l2=0 then l2:=BiomeGenBase_u.icePlains_b.biomeID
      else l2:=1;
      ai1^[j2 + i2 * k]:=l2;
    end;

  result:=ai1^;
end;

end.
