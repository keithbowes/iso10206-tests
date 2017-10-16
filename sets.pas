program Sets(output);

var
  c: char;
  s1: set of char = ['a', 'b', 'c', 'd'];
  s2: set of char = ['b', 'd'];
  s3: set of char;

begin
  WriteLn(Card(s1), ' elements in the first set');
  WriteLn(Card(s2), ' elements in the second set');
  s3 := s1 * s2;
  WriteLn;
  WriteLn(Card(s3), ' elements in the intersection:');
  for c in s3 do
    WriteLn(c);

  WriteLn;
  WriteLn(Card(s3), ' elements in the symmetric difference:');
  s3 := s1 >< s2;
  for c in s3 do
    WriteLn(c);
end.
