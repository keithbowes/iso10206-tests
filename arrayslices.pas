program ArraySlices(output);

{ Won't be necessary once conformant arrays are implemented in FPC }
{$IFDEF __GPC__}
{$DEFINE HAS_CONFORMANT_ARRAYS}
{$ENDIF}

type
  ArrayType = packed array[1..5] of char;

var
  a: ArrayType;

procedure p(x: packed array{$IFDEF HAS_CONFORMANT_ARRAYS}[l..h: integer]{$ENDIF} of char);
begin
  {$IFDEF HAS_CONFORMANT_ARRAYS}
  WriteLn(x[l], ':', x[h]); { Should be 2:3 }
  {$ELSE}
  WriteLn(x[0], ':', x[1]); { Should be 2:3 }
  {$ENDIF}
end;

begin
  a := '12345';
  p(a[2..3]);
end.
