package body Program
is

   use type Interfaces.C.Int;
   function Incremented (Value : Interfaces.C.Int) return Interfaces.C.Int is (Value + 1);

end Program;
