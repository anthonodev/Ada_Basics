with Ada.Text_IO;
use Ada.Text_IO;

procedure Scope_Rules is
   x : Integer := 10; --  outer variable
   procedure Inner is
      x : Integer := 20; --  shadows outer x
   begin
      Put_Line ("Inner x= " & Integer'Image (x));
   end Inner;
begin
   Put_Line ("outer x = " & Integer'Image (x));
   Inner;
   Put_Line ("Outer x again = " & Integer'Image (x));
end Scope_Rules;
