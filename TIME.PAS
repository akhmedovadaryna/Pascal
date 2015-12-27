unit Time;

interface
 uses Common;
 function ResTime(const STime, FTime:TTime):Longint;

implementation

 function ResTime(const STime, FTime: TTime): Longint;
   begin
     ResTime := 36000*(FTime.Hours - STime.Hours)+
     6000*(FTime.Minutes - STime.Minutes)+
     100*(FTime.Seconds - STime.Seconds)+
     (FTime.HSeconds - STime.HSeconds)
   end;

 BEGIN
 END.