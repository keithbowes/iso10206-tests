{ Test out ISO 10206's new otherwise clause, which FPC 3.1.1's extendedpascal mode oddly omits (though, it has it in its default mode) }

program Otherwise_Test(output);

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
  i: integer;

begin
  i := 5;

  case i of
    -maxint-1..4: WriteLn('Less that 5');
    6..maxint: WriteLn('More than 5');
    otherwise WriteLn(5);
  end;
end.
