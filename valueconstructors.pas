program ValueConstructors(output);

type
  TMyRec = record
    f1, f2, f3: integer;
  end;

const
  r = TMyRec[f1, f2: 3; f3: 5];

begin
  WriteLn(r.f1, ':', r.f2, ':', r.f3); { Should be 3:3:5 }
end.
