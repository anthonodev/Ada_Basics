with Ada.Text_IO;
use Ada.Text_IO;

package body vehicule.Cars is

   function Create (Year : Integer; Doors : Integer) return Car is
   begin
      return (Year => Year, Doors => Doors);
   end Create;

   overriding
   procedure Start (C : in out Car) is
   begin
      Put_Line ("Car starting...");
   end Start;

   overriding
   function Info (C : Car) return String is
   begin
      return C.Year'Image & " Car with " & C.Doors'Image & " doors";
   end Info;

end vehicule.Cars;
