program CNum(output);

var
  c: Complex;

begin
  c := Cmplx(2, 3);
  WriteLn(Re(c):1:0, '+', Im(c):1:0, 'i');
end.
