with Ada.Integer_Text_IO;
with Ada.Text_IO;

use Ada.Integer_Text_IO;
use Ada.Text_IO;

procedure Access_Types is
   --  type String_Ptr is access String;
   type Int_Array is array (Positive range <>) of Integer;
   type Int_Array_Ptr is access Int_Array;

   Arr_Ptr : Int_Array_Ptr;
   N : Positive;
   --  Name : String_Ptr;
   --  Len : Positive;
begin
   --  Put ("Enter the length of your name: ");
   --  Get (Len);
   --  Name := new String (1 .. Len);
   --  Put_Line ("Allocated string of length" & Integer'Image (Len));

   --  Name.all := (others => '*');
   --  Put_Line ("String contents: " & Name.all);
   Put ("Enter array size: ");
   Get (N);

   Arr_Ptr := new Int_Array (1 .. N);

   for I in Arr_Ptr'Range loop
      Arr_Ptr (I) := I * I;
   end loop;

   for I in Arr_Ptr'Range loop
      Put_Line("Arr(" & Integer'Image (I) & ") =" & Integer'Image (Arr_Ptr (I)));
   end loop;
end Access_Types;
