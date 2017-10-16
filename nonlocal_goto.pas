program Nonlocal_Goto(output);

label lend;

procedure p;
begin
  goto lend;
  WriteLn('You shouldn''t see this');
end;

begin
  lend:
  begin
    Halt(2);
  end;
end.
