program FileProc(f, output);

type
  TFileString = packed array[1..80] of char;

var
  b: BindingType;
  f: file of TFileString;
  s: TFileString;

begin
  b.Name := 'foo';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    Rewrite(f);
    WriteLn('Is the file empty: ', Empty(f));
    Write(f, 'New line');
    SeekUpdate(f, 1);
    Write(f, 'New Text');
    Reset(f);
    SeekRead(f, 0);
    while not Eof(f) do
    begin
      Read(f, s);
      WriteLn('Reading line from the file: ', s);
    end;
    WriteLn('Position: ', Position(f));
    WriteLn('LastPosition: ', LastPosition(f));
  end;
  Unbind(f);
end.
