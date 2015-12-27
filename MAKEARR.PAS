unit Makearr;

interface
 procedure rand;
 procedure ordered;
 procedure disordered;
 procedure vrand;
 procedure vordered;
 procedure vdisordered;
 procedure trand;
 procedure tordered;
 procedure tdisordered;
implementation
 uses Common;

 procedure rand;
   begin
     randomize;
     for i:=1 to p do
      for j:=1 to m do
       for k:=1 to n do
        A[i,j,k]:=random(m*n);
   end;

 procedure ordered;
   begin
     for i:=1 to p do
      for j:=1 to m do
       for k:=1 to n do
        A[i,j,k]:=j;
   end;

 procedure disordered;
   begin
     for i:=1 to p do
      for j:=1 to m do
       for k:=1 to n do
        A[i,j,k]:=n-j+1;
   end;

 procedure vrand;
   begin
     randomize;
     for i:=1 to z do
        AA[i]:=random(z);
   end;

 procedure vordered;
   begin
     for i:=1 to z do
        AA[i]:=i;
   end;

 procedure vdisordered;
   begin
     for i:=1 to z do
        AA[i]:=z-i+1;
   end;

    procedure trand;
   begin
     randomize;
     for i:=1 to 2 do
      for j:=1 to 4 do
       for k:=1 to 5 do
        tA[i,j,k]:=random(4*5);
   end;

 procedure tordered;
   begin
     for i:=1 to 2 do
      for j:=1 to 4 do
       for k:=1 to 5 do
        tA[i,j,k]:=j;
   end;

 procedure tdisordered;
   begin
     for i:=1 to 2 do
      for j:=1 to 4 do
       for k:=1 to 5 do
        tA[i,j,k]:=5-j+1;
   end;


 BEGIN
 END.
