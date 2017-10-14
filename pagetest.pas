program PageTest(output);

var
  f: text;
  s: array[1..256] of char;

begin
  Rewrite(f);
  WriteLn(f, 'Here''s some text');
  Page(f);
  WriteLn(f, 'Here''s text on a new page');
  Reset(f);
  while not Eof(f) do
  begin
    ReadLn(f, s);
    WriteLn('Read line from internal file: ', s);
    s := '';
  end;
end.
