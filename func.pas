program func;

function f(protected x: String) = s: String;
begin
  s := x;
end;

begin
  WriteLn(f('Hello World'));
end.
