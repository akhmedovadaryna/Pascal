unit Common;

interface
   const
      p=3; n=300; m=4;
      z=p*n*m;
      tmen:set of char=['1'..'4'];
      vpmen:set of char=['1'..'8'];

   type
      mas=array[1..p,1..m,1..n] of integer;
      odn=array[1..z] of integer;
      TTime = record
          Hours,
          Minutes,
          Seconds,
          HSeconds: word;
      end;

   var
      menuvar,typesort,ttype, tvpor,typevpor:char;
      A:mas;
      tA : array[1..2,1..4,1..5] of integer;
      AA:odn;
      tAA : array[1..8] of integer;
      B:integer;
      s,i1,k1,j1,i,j,k,imin,kmin:longint;
      StartTime,FinishTime  : TTime;

implementation

 BEGIN
 END.
