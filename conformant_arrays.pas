program Conformant_Arrays(output);

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

procedure a(x: array[l..h: integer] of integer);
var
  i: integer;
begin
  WriteLn(h-l, ' element(s)');
  for i := l to h do
  begin
    WriteLn('Index ', i, ': ', x[i]);
  end;
end;

var
  b: array[2..3] of integer;

begin
  b[2] := 1;
  b[3] := 2;

  a(b);
end.
