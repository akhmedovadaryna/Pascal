unit Test;

interface
  procedure Test_sort;

 implementation
 uses CRT, Makearr, Common;

  procedure TInsert2;
   begin
            for s:=1 to 2 do
            for i:=2 to 4*5 do
            begin
                 i1:=((i-1) div 5)+1;
                 k1:=((i-1) mod 5)+1;
                 B:=tA[s,i1,k1];
                 j:=i;
                 j1:=((j-2) div 5)+1;
                 k:=((j-2) mod 5)+1;
                 while (j>1) and (B<tA[s,j1,k]) do
                 begin
                      tA[s,i1,k1]:=tA[s,j1,k];
                      j:=j-1;
                      i1:=((j-1) div 5)+1;
                      k1:=((j-1) mod 5)+1;
                      j1:=((j-2) div 5)+1;
                      k:=((j-2) mod 5)+1;
                 end;
                 tA[s,i1,k1]:=B;
            end;

   end;

 procedure TSelect6;
   begin
        for s:=1 to 2 do
            for j:=1 to 4*5-1 do
            begin
                 imin:=((j-1) div 5)+1;
                 kmin:=((j-1) mod 5)+1;
                 k:=kmin;
                 for i:=j+1 to 4*5 do
                 begin
                      i1:=((i-1) div 5)+1;
                      k1:=((i-1) mod 5)+1;
                      if tA[s,i1,k1]<tA[s,imin,kmin] then
                      begin
                           imin:=i1;
                           kmin:=k1;
                           end;
                 end;
                 if (imin<>(((j-1) div 5)+1)) or (kmin<>((j-1) mod 5)+1) then
                 begin
                      B:=tA[s,imin,kmin];
                      tA[s,imin,kmin]:=tA[s,(((j-1) div 5)+1),k];
                      tA[s,(((j-1) div 5)+1),k]:=B;
                 end;
            end;
   end;

 procedure TSelectExchange2;
   begin
        for s:=1 to 2 do
      for j:=1 to 4*5-1 do
      begin
           j1:=((j-1) div 5)+1;
           k:=((j-1) mod 5)+1;
           for i:=j+1 to 4*5 do
           begin
                i1:=((i-1) div 5)+1;
                k1:=((i-1) mod 5)+1;
                if tA[s,i1,k1]<tA[s,j1,k] then
                begin
                     B:=tA[s,i1,k1];
                     tA[s,i1,k1]:=tA[s,j1,k];
                     tA[s,j1,k]:=B;
                end;
           end  ;
      end;
   end;


 procedure Out;
  begin
    for i:=1 to 2 do begin
      for j:=1 to 4 do  begin
       for k:=1 to 5 do
       write( tA[i,j,k]:4);
      writeln; end;
    writeln; end;
 end;

   procedure Test_maker(typ,vpor:char);
   begin
     case vpor of
                  '1': begin trand;  writeln ('First Array:');out;   end;
                  '2': begin tordered;writeln ('First Array:'); out;  end;
                  '3': begin tdisordered;writeln ('First Array:'); out; end;
                   end;

     case typ of
     '1': begin
            TInsert2;
            writeln('Sorted Array:');
            Out;
          end;

     '2': begin
            TSelect6;
            writeln('Sorted Array:');
            Out;
          end;

     '3': begin
            TSelectExchange2;
            writeln('Sorted Array:');
            Out;
          end;

     end;
   end;

 procedure Test_Sort;
   begin
     clrscr;
     writeln;
     writeln(' Choose type of sorting:');
     writeln;
     writeln(' 1. Insert #2 ');
     writeln;
     writeln(' 2. Select #6 ');
     writeln;
     writeln(' 3. SelectExchange #2 ');
     writeln;
     writeln(' 4. Exit');
     readln(ttype);
     if ttype='4' then exit;
     clrscr;
     writeln;
     writeln(' Choose type of Array:');
     writeln;
     writeln(' 1. Random Array');
     writeln;
     writeln(' 2. Ordered Array');
     writeln;
     writeln(' 3. Disordered Array');
     writeln;
     writeln(' 4. Exit');
     readln(tvpor);
     if tvpor='4' then exit;
     clrscr;
     if (ttype in tmen)and(tvpor in tmen) then
      begin
        test_maker(ttype, tvpor);
        writeln;
      end;
     readkey;
   end;

 BEGIN
 END.