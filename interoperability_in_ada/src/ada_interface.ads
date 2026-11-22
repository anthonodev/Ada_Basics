with Interfaces.C;

package ada_interface is

   function Add (A, B : Interfaces.C.int) return Interfaces.C.int;
   pragma Import (C, Add, "add");

end ada_interface;
