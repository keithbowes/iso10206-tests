program SetOps(output);

var
  c: char;
  s1: set of char = ['a', 'b', 'c', 'd'];
  s2: set of char = ['b', 'd'];
  s3: set of char;

begin
  s3 := s1 * s2;
  WriteLn;
  WriteLn('Elements in intersection');
  for c in s3 do
    WriteLn(c);

  WriteLn;
  WriteLn('Elements in symmetric difference');
  s3 := s1 >< s2;
  for c in s3 do
    WriteLn(c);
end.
