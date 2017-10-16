program Importing_Modules;

import
  module1 qualified only (a, b, d, f => myproc);

begin
  module1.myproc(3);
end.
