program maker;
var
   n,i:longint;
begin
     assign(output,'dancinglessons.in');rewrite(output);
     randomize;
     n:=random(100000)+2;
     writeln(n);
     for i:=1 to n do
     if random(2)=0 then write('B')else write('G');
     writeln;
     for i:=1 to n do
     write(random(20000),' ');

     close(output);
end.

