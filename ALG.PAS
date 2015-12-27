unit Alg;

interface
 procedure Insert2;
 procedure Select6;
 procedure SelectExchange2;
 procedure vInsert2;
 procedure vSelect6;
 procedure vSelectExchange2;

implementation
 uses Common;

 procedure Insert2;
   begin
        for s:=1 to p do
            for i:=2 to n*m do
            begin
                 i1:=((i-1) div n)+1;
                 k1:=((i-1) mod n)+1;
                 B:=A[s,i1,k1];
                 j:=i;
                 j1:=((j-2) div n)+1;
                 k:=((j-2) mod n)+1;
                 while (j>1) and (B<A[s,j1,k]) do
                 begin
                      A[s,i1,k1]:=A[s,j1,k];
                      j:=j-1;
                      i1:=((j-1) div n)+1;
                      k1:=((j-1) mod n)+1;
                      j1:=((j-2) div n)+1;
                      k:=((j-2) mod n)+1;
                 end;
                 A[s,i1,k1]:=B;
            end;

   end;

 procedure Select6;
   begin
        for s:=1 to p do
            for j:=1 to m*n-1 do
            begin
                 imin:=((j-1) div n)+1;
                 kmin:=((j-1) mod n)+1;
                 k:=kmin;
                 for i:=j+1 to m*n do
                 begin
                      i1:=((i-1) div n)+1;
                      k1:=((i-1) mod n)+1;
                      if A[s,i1,k1]<A[s,imin,kmin] then
                      begin
                           imin:=i1;
                           kmin:=k1;
                           end;
                 end;
                 if (imin<>(((j-1) div n)+1)) or (kmin<>((j-1) mod n)+1) then
                 begin
                      B:=A[s,imin,kmin];
                      A[s,imin,kmin]:=A[s,(((j-1) div n)+1),k];
                      A[s,(((j-1) div n)+1),k]:=B;
                 end;
            end;
   end;

 procedure SelectExchange2;
   begin
        for s:=1 to p do
           for j:=1 to n*m-1 do
           begin
                j1:=((j-1) div n)+1;
                k:=((j-1) mod n)+1;
                for i:=j+1 to n*m do
                begin
                     i1:=((i-1) div n)+1;
                     k1:=((i-1) mod n)+1;
                     if A[s,i1,k1]<A[s,j1,k] then
                     begin
                          B:=A[s,i1,k1];
                          A[s,i1,k1]:=A[s,j1,k];
                          A[s,j1,k]:=B;
                     end;
                end  ;
           end;
   end;


 procedure vInsert2;
   begin
        for i:=2 to z do
        begin
             B:=AA[i];
             j:=i;
             while (j>1) and (B<AA[j-1]) do
             begin
                  AA[j]:=AA[j-1];
                  j:=j-1;
             end;
             AA[j]:=B;
        end;
   end;

 procedure vSelect6;
   begin
        for s:=1 to z-1 do
        begin
             imin:=s;
             for i:=s+1 to z do
                 if AA[i]<AA[imin] then
                    imin:=i;
             if imin<>s then
             begin
                  B:=AA[imin];
                  AA[imin]:=AA[s];
                  AA[s]:=B;
             end;
        end;
   end;

 procedure vSelectExchange2;
   begin
        for s:=1 to z-1 do
        begin
             for i:=s+1 to z do
                 if AA[i]<AA[s] then
                 begin
                      B:=AA[i];
                      AA[i]:=AA[s];
                      AA[s]:=B;
                 end;
        end;
   end;


 BEGIN
 END.