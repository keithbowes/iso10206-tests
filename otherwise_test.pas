{ Test out ISO 10206's new otherwise clause, which FPC 3.1.1's extendedpascal mode oddly omits (though, it has it in its default mode) }
{$IFDEF FPC}
{ "$IF FPCVERSION < 3.1" doesn't work for some reason }
{$IF DEFINED(VER0) or DEFINED(VER1) or DEFINED(VER2) or DEFINED(VER3_0)}
{$ERROR This is for testing FPC 3.1+'s support for otherwise in ISO 10206 mode}
{$ENDIF}
{$MODE extendedpascal}
{$ENDIF}

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
