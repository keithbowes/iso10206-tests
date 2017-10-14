program FileProc;

var
  b: BindingType;
  f: file of array[1..80] of char;

begin
  b.Name := 'foo';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    Extend(f);
    WriteLn(Empty(f));
    Write(f, 'New line');
    Update(f);
    SeekRead(f, 3);
    SeekWrite(f, 5);
    Write(f, 'New Text');
    SeekUpdate(f, 14);
    WriteLn(Position(f));
    WriteLn(LastPosition(f));
  end;
  Unbind(f);
end.
