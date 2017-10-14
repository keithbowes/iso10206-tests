program CNum(output);

var
  c: Complex;

begin
  c := Cmplx(2, 3);
  WriteLn(Im(c));
  WriteLn(Re(c));
end.
