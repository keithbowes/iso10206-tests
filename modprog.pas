program ModProg;

import
  modl qualified only (a, b, d, f => myproc);

begin
  modl.myproc(3);
end.
