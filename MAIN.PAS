program Main;

uses CRT, Gener,Common,Vect,Formenu,Test;

 procedure Menu;
   begin
     clrscr;
     writeln;
     writeln('                MENU');
     writeln;
     writeln('       Select one of the options below:');
     writeln;
     writeln('    1. Sort type and order of the array on the user''s choice');
     writeln;
     writeln('    2. All arrays and all types of sorting');
     writeln;
     writeln('    3. Vector mode');
     writeln;
     writeln('    4. All arrays and all types of sorting');
     writeln;
     writeln('    5. Test mode');
     writeln;
     writeln('    6. Exit');
     readln(menuvar);
      clrscr;
     case menuvar of
                     '1': Sort;
                     '2': Pack;
                     '3': Vector;
                     '4': Packv;
                     '5': Test_sort;
                     '6': Exit;
     end;
   end;

 BEGIN
   while menuvar<>'6'do
    Menu;
 END.