program FileIndices(f);

var
  b: BindingType;
  f: file[0..255] of char;
  i: 0..300;

begin
  b.Name := 'chartable';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    Rewrite(f);
    for i := 0 to 256 do { shouldn't be able to write Chr(256) }
    begin
      Write(f, Chr(i));
    end;
  end;
  Unbind(f);
end.
