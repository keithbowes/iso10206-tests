program Dyn;

procedure p(n, o, p: integer);
var
  i: n..o;
begin
  i := p;
  WriteLn(i); { should be 12 }
end;

begin
  p(1, 27, 12);
end.
