{ Test out ISO 10206's new otherwise clause, which FPC 3.1.1's extendedpascal mode oddly omits (though, it has it in its default mode) }

program Otherwise_Test(output);

var
  i: integer;

begin
  i := 5;

  case i of
    -maxint-1..4: WriteLn('Less that 5');
    6..maxint: WriteLn('More than 5');
    otherwise WriteLn(5);
  end;
end.
