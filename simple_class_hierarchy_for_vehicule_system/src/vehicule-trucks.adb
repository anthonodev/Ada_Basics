with Ada.Text_IO;
use Ada.Text_IO;

package body vehicule.Trucks is

   function Create (Year : Integer; Payload : Integer) return Truck is
   begin
      return (Year => Year, Payload => Payload);
   end Create;

   overriding
   procedure Start (T : in out Truck) is
   begin
      Put_Line ("Truck starting...");
   end Start;

   overriding
   function Info (T : Truck) return String is
   begin
      return T.Year'Image & " Truck with " & T.Payload'Image & " kg";
   end Info;

end vehicule.Trucks;
