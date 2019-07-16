with Interfaces.C;

package Program
is
   function Incremented (Value : Interfaces.C.Int) return Interfaces.C.Int
   with Export, External_Name => "incremented";
end Program;
