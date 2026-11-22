with Ada.Assertions;
use Ada.Assertions;
with Math_ops;
package body Test_Math_ops is

   procedure Run_Tests is
   begin
      --  if an UT is wrong, error is raised by ada at run time
      Assert (Math_ops.Add (2, 3) = 5); --  correct
      Assert (Math_ops.Add (-1, 1) = 0); --  correct
      Assert (Math_ops.Substract (2, 3) = -1); --  correct
      Assert (Math_ops.Substract (-1, -4) = 3); --  correct
   end Run_Tests;

end Test_Math_ops;
