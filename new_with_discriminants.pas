program New_with_Discriminants(output);

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
