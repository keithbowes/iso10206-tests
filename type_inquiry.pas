program Type_Inquiry;

{ I originally had b as a second parameter, but GPC failed, saying that a is undefined.
  Though, reading the standard, it seems that that should be allowed. }
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
