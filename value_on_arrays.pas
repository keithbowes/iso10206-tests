program Value_on_Arrays(output);

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
  MyArray = array[1..3] of integer value [1..2: 3; 3: 5];
  MyStrArray = packed array[1..3] of char value '*';
  MyStrArray2 = packed array[1..3] of char value [1..3: '*'];

var
  ma: MyArray;
  sa: MyStrArray;
  s2: MyStrArray2;

begin
  WriteLn(ma[1], ':', ma[2], ':', ma[3]); {3:3:5}
  WriteLn(sa); {*}
  WriteLn(s2); {***}
  WriteLn(s2[1], ':', s2[2], ':', s2[3]); {*:*:*}
end.
