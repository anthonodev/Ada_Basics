with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with maths_operations;
use maths_operations;

procedure Impl_Adb_Vs_Spec_Ads is
   A, B, Sum, Product : Integer := 0;
begin
   A := 5;
   B := 7;
   Sum := Add (A, B);
   Product := Multiply (A, B);

   Put_Line ("Sum = " & Integer'Image (Sum));
   Put_Line ("Product = " & Integer'Image (Product));

end Impl_Adb_Vs_Spec_Ads;
