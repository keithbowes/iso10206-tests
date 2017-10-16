program Value_on_Record_Fields(output);

type
  TMyRec = record
    i: integer value 3;
  end;

var
  rec: TMyRec;

begin
  WriteLn(rec.i);
end.
