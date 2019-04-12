program ArraySlices(output);

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

{ Won't be necessary once conformant arrays are implemented in FPC }
{$IFDEF __GPC__}
{$DEFINE HAS_CONFORMANT_ARRAYS}
{$ENDIF}

type
  ArrayType = packed array[1..5] of char;

var
  a: ArrayType;

procedure p(x: packed array{$IFDEF HAS_CONFORMANT_ARRAYS}[l..h: integer]{$ENDIF} of char);
begin
  {$IFDEF HAS_CONFORMANT_ARRAYS}
  WriteLn(x[l], ':', x[h]); { Should be 2:3 }
  {$ELSE}
  WriteLn(x[0], ':', x[1]); { Should be 2:3 }
  {$ENDIF}
end;

begin
  a := '12345';
  p(a[2..3]);
end.
