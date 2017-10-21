program Value_on_Arrays(output);

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
