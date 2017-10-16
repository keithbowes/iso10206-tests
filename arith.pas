program Arith(output);

var
  c: Complex;

procedure print_complex(x: complex);
begin
  WriteLn(Re(x):1:3, '+', Im(x):1:3, 'i');
end;

begin
  c := Cmplx(2, 3);
  print_complex(c);
  print_complex(Abs(c));
  print_complex(Arctan(c));
  print_complex(Arg(c));
  print_complex(Cos(c));
  print_complex(Exp(c));
  print_complex(Ln(c));
  print_complex(Sin(c));
  print_complex(Sqr(c));
  print_complex(Sqrt(c));
  WriteLn;
  print_complex(Polar(2, 3));
end.
