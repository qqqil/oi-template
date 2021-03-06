program cover;
const
     fx:array[1..4]of integer=(0,0,1,-1);
     fy:array[1..4]of integer=(1,-1,0,0);
var
   a,col:array[0..100,0..100]of longint;
   pre:array[0..100050]of longint;
   u:array[0..100050]of boolean;
   head,v,t,next:array[0..400050]of longint;
   num,ge:longint;
procedure add(x,y:longint);
begin
     inc(num);next[num]:=head[x];v[num]:=y;head[x]:=num;
end;

function path(x:longint):boolean;
var
   i:longint;
begin
     i:=head[x];
     while i<>0 do
     begin
          if not u[v[i]] then
          begin
               U[V[I]]:=true;
               if pre[v[i]]=0 then
               begin
                    pre[v[i]]:=x;
                    exit(true);
               end
               else
               begin
                    if path(pre[v[i]]) then
                    begin
                         pre[v[i]]:=x;
                         exit(true);
                    end;
               end;
          end;
          i:=next[i];
     end;
     exit(false);
end;

function hungary:longint;
var
   i:longint;
begin
     hungary:=0;
     fillchar(pre,sizeof(pre),0);
     for i:=1 to ge do
     begin
          fillchar(u,sizeof(u),false);
          if path(t[i]) then inc(hungary);
     end;
end;

procedure init;
var
   i,j,k,x,y,n,m:LONGiNT;
begin
     readln(n,m);

     for i:=1 to m do
     begin
     inc(num); a[1,i]:=num; col[1,i]:=i mod 2 xor 1;
     if col[1,i]=0 then
     begin
     inc(ge);t[ge]:=num;
     end;
     end;

     for i:=2 to n do
         for j:=1 to m do
         begin
              inc(num); a[i,j]:=num;
              col[i,j]:=col[i-1,j]xor 1;
              if col[i,j]=0 then
               begin
               inc(ge);t[ge]:=num;
               end;
         end;

     readln(k);
     for i:=1 to k do
     begin
          readln(x,y);
          a[x,y]:=0;
     end;

     num:=0;
     for i:=1 to n do
     for j:=1 to m do
     if a[i,j]<>0 then
     begin
          for k:=1 to 4 do
          if a[i+fx[k],j+fy[k]]<>0 then
          add(a[i,j],a[i+fx[k],j+fy[k]]);
     end;
     writeln(hungary);
end;

begin
     assign(input,'cover.in');assign(output,'cover.out');
     reset(input);rewrite(output);

     init;

     close(input);close(output);
end.

