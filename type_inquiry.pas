program Type_Inquiry(output);

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

{ I originally had b as a second parameter, but GPC failed, saying that a is undefined.
  Though, reading the standard, it seems that that should be allowed. }
procedure p(a: integer);
var
  b: type of a;
begin
  b := Succ(a);
  WriteLn('The number after ', a , ' is ', b);
end;

begin
  p(1);
end.
