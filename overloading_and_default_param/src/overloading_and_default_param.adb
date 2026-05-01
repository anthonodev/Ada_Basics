with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Overloading_And_Default_Param is

   --  print an integer value
   procedure Print_Value (x : Integer) is
   begin
      Put_Line (Integer'Image (x));
   end Print_Value;

   --  print a string value
   procedure Print_Value (x : String) is
   begin
      Put_Line (x);
   end Print_Value;

   --  square with integer
   function Square (x : Integer) return Integer is
   begin
      return x * x;
   end Square;

   --  square with float
   function Square (x : Float) return Float is
   begin
      return x * x;
   end Square;

   --  default param
   procedure Greet (Name : String := "User"; Times : Integer := 1) is
   begin
      for I in 1 .. Times loop
         Put_Line ("Hello, " & Name);
      end loop;
   end Greet;

begin
   Print_Value ("Hello");
   Print_Value (200);
   Put_Line (Integer'Image (Square (12)));
   Put_Line (Float'Image (Square (12.41)));
   Greet; --  Hello, User
   Greet ("Alice"); --  Hello, Alice
   Greet ("Ace", 20); --  Hello, Ace (20 times)

end Overloading_And_Default_Param;
