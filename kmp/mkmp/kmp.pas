program Project1;
var
   pre,ans:array[0..10000]of longint;
   p,q:string;   i:longint;
procedure kmp(p,q:string);
var
   k,n,m,temp,i:longint;
begin
     k:=0;
     pre[1]:=0;
     m:=length(p);
     for i:=2 to m do
     begin
          while(k>0)and(p[k+1]<>p[i])do k:=pre[k];
          if p[k+1]=p[i]  then inc(k);
          pre[i]:=k;
     end;
     k:=0;
     n:=length(q);
     for i:=1 to n do
     begin
          while(k>0)and(p[k+1]<>q[i])do k:=pre[k];
          if p[k+1]=q[i] then inc(k);
          //if k=m then
          //begin
               ans[i]:=k;
          //end;
     end;

     {for i:=1 to n do
     begin
          temp:=ans[i];
          ans[i]:=0;
          if ans[i-temp+1]<temp then ans[i-temp+1]:=temp;
     end; }
end;


begin
     readln(p);
     readln(q);
     kmp(p,q);
     for i:=1 to length(q) do
     writeln(ans[i]);
     readln;
end.

