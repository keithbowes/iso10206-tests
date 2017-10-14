program TS(output);

var
  t: TimeStamp;

begin
  GetTimeStamp(t);
  WriteLn(Date(t));
  WriteLn(Time(t));
end.
