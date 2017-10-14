program KVal_RecField;

type
  TMyRec = record
    i: integer value 3;
  end;

var
  rec: TMyRec;

begin
  WriteLn(rec.i);
end.
