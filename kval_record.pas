program KVal_Record;

type
  TMyRec = record
    i: integer
  end value [i: 3];

var
  rec: TMyRec;

begin
  WriteLn(rec.i);
end.
