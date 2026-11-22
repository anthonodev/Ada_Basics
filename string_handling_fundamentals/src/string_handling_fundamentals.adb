with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;
with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Strings.Fixed;
use Ada.Strings.Fixed;

procedure String_Handling_Fundamentals is
   function Reversed (input : String) return String is
      output : String (input'Range);
   begin
      for i in input'Range loop
         output (i) := input (input'Last - (i - input'First));
         Put_Line ("input " & Integer'Image (i));
      end loop;
      Put_Line ("input " & Integer'Image (input'First));
      Put_Line ("input " & Integer'Image (input'Last));
      return output;
   end Reversed;
   language : String := "Ada";
   action : String := "programming";

   full : String := language & " " & action;

   sub : String := full (1 .. 3);

   len : Integer := full'Length;

   ulab1 : Unbounded_String := To_Unbounded_String ("hello");
   ulab2 : Unbounded_String := To_Unbounded_String ("world");

   combined : Unbounded_String;
begin
   Put_Line ("substring was : " & sub);
   combined := ulab1 & To_Unbounded_String (" ") & ulab2;
   Put_Line ("Reversed = " & Reversed (full));
   if language = "Ada" then
      Put_Line ("Language was Ada.");
   end if;
end String_Handling_Fundamentals;
