type
    node=record
    p,d:longint;
    end;
var
   h:array[0..1000,0..1000]of boolean;
   n,m:longint;
procedure init;
var
   i,x,y,z:longint;
begin
     fillchar(h,sizeof(h),false);
     readln(n,m);
     for i:=1 to m do
     begin
          readln(x,y,z);
          if h[x,y] then begin writeln(1);halt;end;
          h[x,y]:=true;
     end;
end;

begin
     assign(input,'path.in');
     assign(output,'path.out');
     reset(input);rewrite(output);
     init;

     close(input);close(output);
end.

