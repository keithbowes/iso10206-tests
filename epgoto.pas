program EpGoto;

label lend;

procedure p;
begin
  goto lend;
  WriteLn('You shouldn''t see this');
end;

begin
  lend:
    Halt(2);
  end.
