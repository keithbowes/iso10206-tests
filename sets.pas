program Sets(output);

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
  c: char;
  s1: set of char value ['a', 'b', 'c', 'd'];
  s2: set of char value ['b', 'd'];
  s3: set of char;

begin
  WriteLn(Card(s1), ' elements in the first set');
  WriteLn(Card(s2), ' elements in the second set');
  s3 := s1 * s2;
  WriteLn;
  WriteLn(Card(s3), ' elements in the intersection:');
  for c in s3 do
    WriteLn(c);

  WriteLn;
  WriteLn(Card(s3), ' elements in the symmetric difference:');
  s3 := s1 >< s2;
  for c in s3 do
    WriteLn(c);
end.
