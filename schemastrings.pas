program SchemaStrings(output);

var
  s: String(20);

begin
  s := 'Hello, World!';
  WriteLn(s, ':', Length(s), ':', s.Capacity);
end.
