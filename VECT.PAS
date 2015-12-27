unit Vect;

interface
 procedure Vector;
 procedure Packv;


implementation
 uses DOS, CRT, Alg, Makearr, Common, Time;

 procedure vSortmaker(typ,vpor:char);
   begin
     case vpor of
                  '1': vrand;
                  '2': vordered;
                  '3': vdisordered;
                   end;

     case typ of
     '1': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      vInsert2;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      write(ResTime(StartTime,FinishTime));
      end;

     '2': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      vSelect6;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      write(ResTime(StartTime,FinishTime));
      end;

     '3': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      vSelectExchange2;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      writeln(ResTime(StartTime,FinishTime));
      end;

     end;
   end;

  procedure Packv;
   begin

                       writeln('Array A[1..p], p=',z);
                       gotoxy(5,2); writeln('+------------+-------+-------+----------+');
                       gotoxy(5,3); writeln('|            |Ordered|Random |Disordered|');
                       gotoxy(5,4); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,5); writeln('|Insertion #2|       |');gotoxy(25,5);writeln(' |       |          |');
                       gotoxy(5,6); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,7); writeln('|Selection #6|       |');gotoxy(25,7);writeln(' |       |          |');
                       gotoxy(5,8); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,9); writeln('|Exchange #2 |       |');gotoxy(25,9);writeln(' |       |          |');
                       gotoxy(5,10);writeln('+------------+-------+-------+----------+');
                       gotoxy(20,5);  vSortmaker('1','2'); gotoxy(29,5); vSortmaker('1','1');gotoxy(36,5); vSortmaker('1','3');
                       gotoxy(20,7);  vSortmaker('2','2'); gotoxy(29,7); vSortmaker('2','1');gotoxy(36,7); vSortmaker('2','3');
                       gotoxy(20,9);  vSortmaker('3','2'); gotoxy(29,9); vSortmaker('3','1');gotoxy(36,9); vSortmaker('3','3');
   readkey;
   end;


 procedure Vector;
   begin
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
     if (typesort='4') then exit;
     clrscr;
     writeln;
     writeln(' Choose Array order:');
     writeln;
     writeln(' 1. Random Array:');
     writeln;
     writeln(' 2. Ordered Array:');
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
        gotoxy(23,2); vsortmaker(typesort,typevpor)
      end;
     readkey;
   end;

 BEGIN
 END.