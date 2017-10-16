program Restricted_Protected;

type
  MyRealType = packed record
    MyField: Integer;
  end;

  MyType = restricted MyRealType;

procedure SetType(var t: MyRealType; protected v: integer);
begin
  t.MyField := v;
end;

begin
end.
