program New_with_Discriminants(output);

type
  TRec = record
    case b: Boolean of
      true: (i: integer value 5);
      false: (c: char value 'c');
  end;
  TType(n: integer) = packed array[0..n-1] of integer;

var
  r: ^TRec;
  t: ^TType;

begin
  New(r, true);
  Writeln(r^.i);
  New(t, 3);
  WriteLn(t^.n);
  Dispose(t);
  Dispose(r);
end.
