program Complex_Numbers(output);

{
    ISO 10206 Tests
    Copyright (C) 2017  Keith Bowes

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
  }

var
  c: Complex;

procedure print_complex(x: complex);
begin
  WriteLn(Re(x):1:3, '+', Im(x):1:3, 'i');
end;

procedure print_real(x: real);
begin
   WriteLn(x:1:3);
end;

begin
  c := Cmplx(2, 3);
  print_complex(c);
  print_real(Abs(c));
  print_complex(Arctan(c));
  print_real(Arg(c));
  print_complex(Cos(c));
  print_complex(Exp(c));
  print_complex(Ln(c));
  print_complex(Sin(c));
  print_complex(Sqr(c));
  print_complex(Sqrt(c));
  WriteLn;
  print_complex(Polar(2, 3));
end.
