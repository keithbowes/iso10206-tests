program Schema;

type
  MySchema(n: integer) = array[0..n-1] of integer;

var
  a: MySchema(3);

begin
end.
