        unit Formenu;

interface
 procedure Sort;

implementation
  uses CRT, Common, Gener;
  procedure Sort;
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
     readln(typesort);
     if typesort='4' then exit;
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
     readln(typevpor);
     if typevpor='4' then exit;
     clrscr;
     if (typesort in tmen)and(typevpor in tmen) then
      begin
        writeln;
        writeln(' Time of sorting is: ');
        gotoxy(23,2); sortmaker(typesort,typevpor)
      end;
     readkey;
   end;

 BEGIN
 END.