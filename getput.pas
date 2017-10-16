program GetPut(input, output);

type
  FileOfInteger = file of integer;

var
  f1, f2: FileOfInteger;
  i: integer;

{ Copied from the standard }
procedure CopyFrom(var from, into: FileOfInteger);
begin
  reset(from);
  rewrite(into);
  while not eof(from) do
  begin
    WriteLn('Copying ', from^, ' from the file');
    into^ := from^;
    put(into); get(from);
  end;
end;

begin
  Rewrite(f1);
  for i := 0 to 10 do
  begin
    WriteLn('Putting ', i, ' into the file');
    Write(f1, i);
  end;
  CopyFrom(f1, f2);
  Reset(f2);
  repeat
    Read(f2, i);
    WriteLn('Reading ', i, ' from the copied file');
  until Eof(f2);
end.
