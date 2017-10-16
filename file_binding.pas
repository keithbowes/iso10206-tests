program File_Binding(f, output);

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
    WriteLn('File ', Binding(f).Name, ' couldn''t be bound');
  end;
  Unbind(f);
end.
