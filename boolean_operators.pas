program Boolean_Operators(output);

begin
  WriteLn('Should be true: ', true and_then not false);
  WriteLn('Should be true: ', true and_then true);
  WriteLn('Should be false: ', true and_then false);
  WriteLn('Should be false: ', false and_then true);
  WriteLn('Should be false: ', false and_then false);
  WriteLn('Should be true: ', true or_else true);
  WriteLn('Should be true: ', true or_else false);
  WriteLn('Should be true: ', false or_else true);
  WriteLn('Should be false: ', false or_else false);
end.
