program DatetimeRoutines(output);

var
  ts: TimeStamp;

begin
  GetTimeStamp(ts);
  WriteLn(Date(ts));
  WriteLn(Time(ts));
end.
