with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

with Ada.Text_IO;
use Ada.Text_IO;

procedure Unbounded_Strings is
   S1, S2, S3 : Unbounded_String;
   Line : Unbounded_String;
begin
   --  unbounded string is about dynamic string array
   --  it is allocated in the heap, not the stack
   --  some usefull functions

   --  To_Unbounded_String
   --  To_String
   --  Length => size of unbounded string
   --  &      => concatenate
   --  Append => add a char or normal string to an existant unbounded string
   --  Equal  => equality check between unbounded strings
   S1 := To_Unbounded_String ("Hello");
   S2 := S1;
   S3 := S1 & To_Unbounded_String (" world");
   Put_Line (To_String (S3));

   Line := To_Unbounded_String ("");
   loop
      declare
         Temp : String (1 .. 100);
         Last : Natural;
      begin
         Get_Line (Temp, Last);
         Append (Line, Temp (1 .. Last));
         exit when Last < Temp'Length;
      end;
   end loop;
   Put_Line ("entered: " & To_String (Line));
end Unbounded_Strings;
