with Ada.Text_IO;
use Ada.Text_IO;

with Interfaces.C;
use Interfaces.C;

with ada_interface;
use ada_interface;

procedure Interoperability_In_Ada is
   x, y, z : Interfaces.C.int;
begin
   x := 5;
   y := 7;

   --  no body .adb shall be used for ada_interface, only .ads
   --  in file interoperability_in_ada.gpr, add "for Languages use ("Ada", "C");"
   --  to specify c is also present, not only ada language.
   z := Add (x, y);
   Put_Line ("Result add c function" & Interfaces.C.int'Image (z));
end Interoperability_In_Ada;
