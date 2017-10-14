program ConfArr;

procedure a(x: array[l..h: integer] of integer);
var
  i: integer;
begin
  WriteLn(h-l, ' element(s)');
  for i := l to h do
  begin
    WriteLn('Index ', i, ': ', x[i]);
  end;
end;

var
  b: array[2..3] of integer;

begin
  b[2] := 1;
  b[3] := 2;

  a(b);
end.
