with Ada.Text_IO;
use Ada.Text_IO;

--  procedure do not return, contrary to function which must return.
--  it can be recursive or not.
--  it can take in out and in/out. A function is more about taking in values,
--  altought it can takes out values.

procedure Procedures is
   x : Integer;
   y : Integer;
   procedure Swap (A, B : in out Integer) is
      Temp : Integer;
   begin
      Temp := A;
      A := B;
      B := Temp;
   end Swap;

begin
   x := 1;
   y := 2;
   Swap (x, y);
   Put_Line (Integer'Image (x));
   Put_Line (Integer'Image (y));
end Procedures;
