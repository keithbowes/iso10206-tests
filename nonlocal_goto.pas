program Nonlocal_Goto(output);

label 2;

procedure p;
begin
  goto 2;
  WriteLn('You shouldn''t see this');
end;

begin
  2:
  begin
    WriteLn('Correctly made it to extraprocedural label 2');
  end;
end.
