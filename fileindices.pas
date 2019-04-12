program FileIndices(f);

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
  b: BindingType;
  f: file[0..255] of char;
  i: 0..300;

begin
  Unbind(f);
  b := Binding(f);
  b.Name := 'chartable';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    Rewrite(f);
    for i := 0 to 256 do { shouldn't be able to write Chr(256) }
    begin
      Write(f, Chr(i));
    end;
  end;
  Unbind(f);
end.
