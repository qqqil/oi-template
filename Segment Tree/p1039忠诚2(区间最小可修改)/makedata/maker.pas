program maker;
var
   i,n,m,x,y,box:longint;
begin
     assign(output,'a.in');
     rewrite(output);
     randomize;
     n:=random(10000)+1; m:=random(1000)+1;
     writeln(n,' ',m);
     for i:=1 to n do
     write(random(10000),' ');
     writeln;
     for i:=1 to m do
     begin
         x:=random(n)+1;
         y:=random(n)+1;
         if x>y then begin box:=x;x:=y;y:=box;end;
         writeln(random(2)+1,' ',x,' ',y);
     end;

     close(output);
end.

