program KVal_Record(output);

type
  TMyRec = record
    i: integer
  end value [i: 3];

var
  rec: TMyRec;

begin
  WriteLn(rec.i);
end.
