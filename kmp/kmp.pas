program kmp;
var
   pre,ans:array[0..1000000]of longint;
procedure kmp(var p,t:string);
var
   k,q,i:longint;
begin
     k:=0;
     pre[1]:=0;
     for i:=2 to m do
     begin
          while(k>0)and(p[k+1]<>p[i]) do k:=pre[k];
          if p[k+1]=p[i] then inc(k);
          pre[i]:=k;
     end;
     q:=0;
     for i:=1 to n do
     begin
          while(q>0)and(p[q+1]<>t[i])do q:=pre[q];
          if p[q+1]=t[i] then inc(q);
          if q=m then
          begin
               inc(ans[0]);
               ans[ans[0]]:=i-m;
          end;
     end;
end;

begin
end.

