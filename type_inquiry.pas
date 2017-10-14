program Type_Inquiry;

procedure p(a: integer);
var
  b: type of a;
begin
  b := Succ(a);
  WriteLn('The number after ', a , ' is ', b);
end;

begin
  p(1);
end.
