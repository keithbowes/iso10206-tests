program PackUnpack(output);

var
  a, c: array[1..2] of char;
  b: packed array[0..1] of char;

begin
  a := 'Hi';
  Pack(a, 1, b);
  WriteLn(a, ' is packed as ', b);
  Unpack(b, c, 1);
  WriteLn(b, ' is unpacked as ', c);
end.
