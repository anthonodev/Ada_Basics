with Ada.Text_IO;
use Ada.Text_IO;

procedure Generic_Packages_And_Procedures is
   generic
      type Item_Type is private;
      with procedure Print (x : in Item_Type);
   procedure Print_Item (x : in Item_Type);

   procedure Print_Item (x : in Item_Type) is
   begin
      Print (x);
   end Print_Item;

   procedure Print_Int (x : in Integer) is
   begin
      Put_Line ("Item:" & Integer'Image (x));
   end Print_Int;

   procedure Print_Float (x : in Float) is
   begin
      Put_Line ("Item:" & Float'Image (x));
   end Print_Float;

   procedure Print_Int_Item is new Print_Item (Integer, Print_Int);
   procedure Print_Float_Item is new Print_Item (Float, Print_Float);

begin
   Print_Int_Item (42);
   Print_Float_Item (3.14159);
end Generic_Packages_And_Procedures;
