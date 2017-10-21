program Result_Variables(output);

function f(protected x: String) = i: integer;
begin
  i := Length(x);
end;

begin
  WriteLn(f('Hello World'));
end.
