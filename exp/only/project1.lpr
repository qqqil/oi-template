program project1;
const
     mo=1012;
var
   n,m:Longint;
function kuai(n,m:int64):int64;
var
   x:int64;
begin
     x:=1;
     while m>0 do
     begin
          if odd(m) then x:=int64(x)*n mod mo;
          n:=int64(n)*n mod mo;
          m:=m shr 1;
     end;
     exit(x);
end;

procedure init;
var
   i:longint;
begin
     readln(i);
     for i:=1 to i do
     begin
     readln(n,m);
     writeln(kuai(n,m));
     end;
end;

begin
     init;
     readln;
end.

