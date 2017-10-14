program StrFun(output);

begin
  WriteLn(Index('Hello', 'lo'));
  WriteLn(Substr('Hello', 4, 2));
  WriteLn(Trim(' Hello '));
  WriteLn(EQ('Hello', 'Hello'));
  WriteLn(LT('Hello', 'Saluton'));
  WriteLn(GT('Hello', 'Saluton'));
  WriteLn(NE('Hello', 'Saluton'));
  WriteLn(LE('Hello', 'Saluton'));
  WriteLn(GE('Hello', 'Saluton'));
end.
