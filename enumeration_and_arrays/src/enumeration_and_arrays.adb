with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Enumeration_And_Arrays is

   --  enumerator
   type Day_Of_Week is (Mon, Tue, Wed);
   Today : Day_Of_Week := Tue;

   --  array
   type Int_Array is array (1 .. 5) of Integer;
   Numbers : Int_Array := (1 => 10, 2 => 20, 3 => 30, 4 => 45, 5 => 55);

   --  array of enum
   type schedule is array (Day_Of_Week) of string(1 .. 15);
   work_week : Schedule := ( Mon => "maths          ",
                             Tue => "science        ",
                             Wed => "history        "
                             );

begin
   Put_Line ("First element:" & Integer'Image (Numbers (1)));

   for I in Numbers'Range loop
      Put_Line ("Numbers(" & Integer'Image (I) & ") =" & Integer'Image (Numbers (I)));
   end loop;

   for D in Day_Of_Week loop
         Put_Line (Day_Of_Week'Image(D) & "=> " & work_week (D));
   end loop;
end Enumeration_And_Arrays;
