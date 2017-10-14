program ArraySlices(output);

{ Won't be necessary once conformant arrays are implemented in FPC }
{$IFDEF __GPC__}
{$DEFINE HAS_CONFORMANT_ARRAYS}
{$ENDIF}

type
  ArrayType = array[1..5] of integer;

var
  a: ArrayType;
  i: integer;

procedure p(x: array{$IFDEF HAS_CONFORMANT_ARRAYS}[l..h: integer]{$ENDIF} of integer);
begin
  {$IFDEF HAS_CONFORMANT_ARRAYS}
  WriteLn(x[l], ':', x[h]); { Should be 2:3 }
  {$ELSE}
  WriteLn(x[0], ':', x[1]); { Should be 2:3 }
  {$ENDIF}
end;

begin
  for i := 1 to 5 do
  begin
    a[i] := i;
  end;
  p(a[2..3]);
end.
