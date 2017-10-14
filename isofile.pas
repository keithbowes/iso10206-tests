program ISOFile;

var
  b: BindingType;
  f: text;

begin
  b.Name := 'isofile.pas';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    WriteLn('Successfully bound ', Binding(f).Name);
  end
  else
  begin
    WriteLn('File couldn''t be bound');
  end;
  Unbind(f);
end.
