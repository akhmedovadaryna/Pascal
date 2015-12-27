unit Gener;

interface

 procedure Sortmaker(typ,vpor:char);
 procedure Pack;

implementation
 uses CRT, DOS, Makearr, Alg, Time, Common;
 procedure Sortmaker(typ,vpor:char);
   begin
     case vpor of
                  '1': rand;
                  '2': ordered;
                  '3': disordered;
                   end;

     case typ of
     '1': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      Insert2;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      write(ResTime(StartTime,FinishTime));
      end;

     '2': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      Select6;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      write(ResTime(StartTime,FinishTime));
      end;

     '3': begin with StartTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      SelectExchange2;
      with FinishTime do GetTime(Hours,Minutes,Seconds,Hseconds);
      writeln(ResTime(StartTime,FinishTime));
      end;

     end;
   end;

 procedure Pack;
  begin
                       writeln('Array A[p,n,m], p=',p,' n=',n,' m=',m);
                       gotoxy(5,2); writeln('+------------+-------+-------+----------+');
                       gotoxy(5,3); writeln('|            |Ordered|Random |Disordered|');
                       gotoxy(5,4); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,5); writeln('|Insertion #2|       |');gotoxy(25,5);writeln(' |       |          |');
                       gotoxy(5,6); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,7); writeln('|Selection #6|       |');gotoxy(25,7);writeln(' |       |          |');
                       gotoxy(5,8); writeln('|------------|-------|-------|----------|');
                       gotoxy(5,9); writeln('|Exchange #2 |       |');gotoxy(25,9);writeln(' |       |          |');
                       gotoxy(5,10);writeln('+------------+-------+-------+----------+');
                       gotoxy(20,5);  Sortmaker('1','2'); gotoxy(29,5); Sortmaker('1','1');gotoxy(36,5); Sortmaker('1','3');
                       gotoxy(20,7);  Sortmaker('2','2'); gotoxy(29,7); Sortmaker('2','1');gotoxy(36,7); Sortmaker('2','3');
                       gotoxy(20,9);  Sortmaker('3','2'); gotoxy(29,9); Sortmaker('3','1');gotoxy(36,9); Sortmaker('3','3');
                     readkey;
                     end;

 BEGIN
 END.
