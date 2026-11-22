with Test_Math_ops;
with Ada.Text_IO;

procedure Unit_Tests is
begin
   Test_Math_ops.Run_Tests;
   Ada.Text_IO.Put_Line ("Tests passed.");
end Unit_Tests;
