program KVal_Array(output);

type
  MyArray = array[1..3] of integer value [1..2: 3; 3: 5];
  MyStrArray = array[1..3] of char value '*';

var
  ma: MyArray;
  sa: MyStrArray;

begin
  WriteLn(ma[2]); {3}
  WriteLn(sa[2]); {*}
end.
