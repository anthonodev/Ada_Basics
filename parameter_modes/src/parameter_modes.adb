with Ada.Text_IO;
use Ada.Text_IO;

procedure Parameter_Modes is
   procedure Process (A : in Integer; B : out Integer; C : in out Integer) is
   begin
      Put_Line ("A (in) = " & Integer'Image (A));
      Put_Line ("C (in/out - before) = " & Integer'Image (C));
      c := 124;
      Put_Line ("C (in/out -after) = " & Integer'Image (C));
   end Process;
   x : Integer := 5;
   y : Integer := 10;
   z : Integer := 15;
begin
   Process (x, y, z);
   Put_Line (Integer'Image (z));
end Parameter_Modes;
