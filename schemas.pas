program Schemas(output);

type
  MySchema(n: integer) = array[0..n-1] of integer;

var
  a: MySchema(3) value [0:1; 1:2; 2:3];

begin
  WriteLn(a[1]); {2}
end.
