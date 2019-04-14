program Value_on_Enumerations;

{
    ISO 10206 Tests
    Copyright (C) 2019  Keith Bowes

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

import
  StandardOutput;

type
  TColor = (red, green, blue) value green;
  TColorStrings = array [0..2] of String(5) value [0: 'red'; 1: 'green'; 2: 'blue'];

var
  clr: TColor value red;
  color: TColor;
  cstrings: TColorStrings;

begin
  WriteLn(cstrings[Ord(clr)]); {red}
  WriteLn(cstrings[Ord(color)]) {green}
end.
