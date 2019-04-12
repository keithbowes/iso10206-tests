program File_Routines(f, output);

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
  TFileString = packed array[1..80] of char;

var
  b: BindingType;
  f: file of TFileString;
  s: TFileString;

begin
  Unbind(f);
  b := Binding(f);
  b.Name := 'foo';
  Bind(f, b);
  if Binding(f).Bound then
  begin
    Rewrite(f);
    WriteLn('Is the file empty: ', Empty(f));
    Write(f, 'New line');
    SeekUpdate(f, 1);
    Write(f, 'New Text');
    SeekRead(f, 0);
    while not Eof(f) do
    begin
      Read(f, s);
      WriteLn('Reading line from the file: ', s);
    end;
    WriteLn('Position: ', Position(f));
    WriteLn('LastPosition: ', LastPosition(f));
  end;
  Unbind(f);
end.
