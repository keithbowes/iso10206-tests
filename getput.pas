program GetPut(input, output);

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
  FileOfInteger = file of integer;

var
  f1, f2: FileOfInteger;
  i: integer;

{ Copied from the standard }
procedure CopyFrom(var from, into: FileOfInteger);
begin
  reset(from);
  rewrite(into);
  while not eof(from) do
  begin
    WriteLn('Copying ', from^, ' from the file');
    into^ := from^;
    put(into); get(from);
  end;
end;

begin
  Rewrite(f1);
  for i := 0 to 10 do
  begin
    WriteLn('Putting ', i, ' into the file');
    Write(f1, i);
  end;
  CopyFrom(f1, f2);
  Reset(f2);
  repeat
    WriteLn('Reading ', f2^, ' from the copied file');
    Get(f2);
  until Eof(f2);
end.
