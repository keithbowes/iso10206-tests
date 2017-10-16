program Value_on_Types(output);

type
  Number = integer value 3;

var
  n: Number;

begin
  WriteLn(n); {3}

  { Testing that FPC's Default() function works correctly with value on types }
  { Might cause problems in compilers that lack UCSD-style compiler directives (if they exist) }
  {$IFDEF FPC}
  n := 5;
  WriteLn(n); {5}
  n := Default(n);
  WriteLn(n); {3}
  {$ENDIF}
end.
