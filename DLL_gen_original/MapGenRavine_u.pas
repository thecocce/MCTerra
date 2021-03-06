unit MapGenRavine_u;

interface

uses MapGenBase_u, WorldChunkManager_u, generation;

type MapGenRavine=class(MapGenBase)
     private
       field_35627_a:ar_double;
     public
       constructor Create(man:WorldChunkManager); override;
       destructor Destroy; override;
       procedure func_35626_a(l:int64; i,j:integer; abyte0:ar_byte; d,d1,d2,f,f1,f2:double; k,i1:integer; d3:double);
       procedure recursiveGenerate(sid:int64; i,j,k,l:integer; abyte0:ar_byte); override;
     end;

implementation

uses RandomMCT, MathHelper_u;

constructor MapGenRavine.Create(man:WorldChunkManager);
begin
  inherited Create(man);
  setlength(field_35627_a,1024);
end;

destructor MapGenRavine.Destroy;
begin
  setlength(field_35627_a,0);
  inherited;
end;

procedure MapGenRavine.func_35626_a(l:int64; i,j:integer; abyte0:ar_byte; d,d1,d2,f,f1,f2:double; k,i1:integer; d3:double);
var random1:rnd;
d4,d5,f3,f4,f5,d6,d7,f6,f7,d8a,d9a,d10a,d11,d12,d13,d14:double;
j1,k1,d8,l1,d9,i2,d10,j2,k2,i3,j3,k3,l2,l3,i4,j4,byte0:integer;
flag,flag1,flag2:boolean;
label label0;
begin
  random1:=rnd.Create(l);
  d4:=i * 16 + 8;
  d5:=j * 16 + 8;
  f3:=0;
  f4:=0;
  if (i1 <= 0)then
  begin
    j1:=range * 16 - 16;
    i1:=j1 - random1.nextInt(j1 div 4);
  end;
  flag:=false;
  if (k = -1)then
  begin
    k:=i1 div 2;
    flag:=true;
  end;
  f5:=1;
  for k1:=0 to 127 do     //WORLDHEIGHT
  begin
    if (k1 = 0)or(random1.nextInt(3) = 0)then
      f5:=1 + random1.nextFloat() * random1.nextFloat() * 1;
    field_35627_a[k1]:=f5 * f5;
  end;

  while k<i1 do
  begin
    d6:=1.5 + (MathHelper_u.math_sin((k * 3.141593) / i1) * f * 1);
    d7:=d6 * d3;
    d6:=d6*(random1.nextFloat() * 0.25 + 0.75);
    d7:=d7*(random1.nextFloat() * 0.25 + 0.75);
    f6:=MathHelper_u.math_cos(f2);
    f7:=MathHelper_u.math_sin(f2);
    d:=d+(MathHelper_u.math_cos(f1) * f6);
    d1:=d1+f7;
    d2:=d2+(MathHelper_u.math_sin(f1) * f6);
    f2:=f2*0.7;
    f2:=f2+(f4 * 0.05);
    f1:=f1+(f3 * 0.05);
    f4:=f4*0.8;
    f3:=f3*0.5;
    f4:=f4+((random1.nextFloat() - random1.nextFloat()) * random1.nextFloat() * 2);
    f3:=f3+((random1.nextFloat() - random1.nextFloat()) * random1.nextFloat() * 4);
    if (not(flag))and(random1.nextInt(4) = 0)then
    begin
      inc(k);
      continue;
    end;
    d8a:=d - d4;
    d9a:=d2 - d5;
    d10a:=i1 - k;
    d11:=f + 2 + 16;
    if ((d8a * d8a + d9a * d9a) - d10a * d10a > d11 * d11)then
    begin
      random1.Free;
      exit;
    end;
    if (d < d4 - 16 - d6 * 2)or(d2 < d5 - 16 - d6 * 2)or(d > d4 + 16 + d6 * 2)or(d2 > d5 + 16 + d6 * 2)then
    begin
      inc(k);
      continue;
    end;
    d8:=MathHelper_u.floor_double(d - d6) - i * 16 - 1;
    l1:=(MathHelper_u.floor_double(d + d6) - i * 16) + 1;
    d9:=MathHelper_u.floor_double(d1 - d7) - 1;
    i2:=MathHelper_u.floor_double(d1 + d7) + 1;
    d10:=MathHelper_u.floor_double(d2 - d6) - j * 16 - 1;
    j2:=(MathHelper_u.floor_double(d2 + d6) - j * 16) + 1;
    if (d8 < 0)then d8:=0;
    if (l1 > 16)then l1:=16;
    if (d9 < 1)then d9:=1;
    if (i2 > 128 - 8)then i2:=128 - 8;    //WORLDHEIGHT
    if (d10 < 0)then d10:=0;
    if (j2 > 16)then j2:=16;
    flag1:=false;

    for k2:=d8 to l1-1 do  //X
    begin
      if flag1=true then break;
      for i3:=d10 to j2-1 do   //Z
      begin
        if flag1=true then break;
        j3:=i2+1;
        while (flag1=false)and(j3 >= d9 - 1) do     //Y
        //for j3:=i2+1 downto d9-1 do
        begin
          //k3:=(k2 * 16 + i3) * 128 + j3;
          k3:=k2+i3*16+j3*256;
          if (j3 < 0)or(j3 >= 128)then
          begin
            dec(j3);
            continue;
          end;
          if (abyte0[k3] = 8)or(abyte0[k3] = 9)then flag1:=true;
          if (j3 <> d9 - 1)and(k2 <> d8)and(k2 <> l1 - 1)and(i3 <> d10)and(i3 <> j2 - 1)then j3:=d9;

          dec(j3);
        end;
      end;
    end;

    if flag1 then
    begin
      inc(k);
      continue;
    end;

    for l2:=d8 to l1-1 do       //X
    begin
      d12:=(((l2 + i * 16) + 0.5) - d) / d6;
      l3:=d10-1;
        label0:
      inc(l3);
      while l3<j2 do           //Z
      begin
        d13:=(((l3 + j * 16) + 0.5) - d2) / d6;
        //i4:=(l2 * 16 + l3) * 128 + i2;       //WORLDHEIGHT
        i4:=l2+l3*16+i2*256;
        flag2:=false;
        if (d12 * d12 + d13 * d13 >= 1) then
        begin
          inc(l3);
          continue;
        end;
        j4:=i2 - 1;
        repeat
          if (j4 < d9)then goto label0;
          d14:=((j4 + 0.5) - d1) / d7;
          //if (d14 > -0.69999999999999996)and(d12 * d12 + d14 * d14 + d13 * d13 < 1)then
          if ((d12 * d12 + d13 * d13) * field_35627_a[j4] + (d14 * d14) / 6 < 1) then
          begin
            byte0:=abyte0[i4];
            if (byte0 = 2)then flag2:=true;
            if (byte0 = 1)or(byte0 = 3)or(byte0 = 2)then
            begin
              if (j4 < 10)then abyte0[i4]:=10
              else
              begin
                abyte0[i4]:=0;
                {if (flag3)and(abyte0[i4 - 1] = 3)then
                  abyte0[i4 - 1]:=manager.getBiomeGenAt(l2 + i * 16, l3 + j * 16).topBlock;}
                if (flag2)and(abyte0[i4 - 256] = 3)then
                  abyte0[i4 - 256]:=manager.getBiomeGenAt(l2 + i * 16, l3 + j * 16).topBlock;
              end;
            end;
          end;
          //dec(i4);
          dec(i4,256);
          dec(j4);
        until false;
      end;
    end;

    if flag then break;

    inc(k);
  end;

  random1.Free;
end;

procedure MapGenRavine.recursiveGenerate(sid:int64; i,j,k,l:integer; abyte0:ar_byte);
var d,d1,d2,f,f1,f2:double;
i1,j1:integer;
begin
  if (rand.nextInt(50) <> 0)then exit;
  d:=i * 16 + rand.nextInt(16);
  d1:=rand.nextInt(rand.nextInt(40) + 8) + 20;
  d2:=j * 16 + rand.nextInt(16);
  i1:=1;
  for j1:=0 to i1-1 do
  begin
    f:=rand.nextFloat() * 3.141593 * 2;
    f1:=((rand.nextFloat() - 0.5) * 2) / 8;
    f2:=(rand.nextFloat() * 2 + rand.nextFloat()) * 2;
    func_35626_a(rand.nextLong(), k, l, abyte0, d, d1, d2, f2, f, f1, 0, 0, 3);
  end;
end;

end.
