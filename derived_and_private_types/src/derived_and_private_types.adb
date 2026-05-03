with Ada.Text_IO;
use Ada.Text_IO;
with Counter;

procedure Derived_And_Private_Types is
   type Age is range 0 .. 150;

   --  Years_of_Service type is derived from existing one
   type Years_of_Service is new Age;

   My_Age : Age := 24;
   My_Service : Years_of_Service := 4;
   My_count : Counter.Counter_Type;
begin
   --  My_Service must be cast to Age
   My_Age := Age (My_Service);
   Put_Line (Age'Image (My_Age));

   --  Right operation with counter
   Counter.Reset_Counter (My_count);
   for i in 1 .. 9 loop
      Counter.Add_Counter (My_count);
      Put_Line ("actual count value : " & Integer'Image (Counter.Read_Counter (My_count)));
   end loop;

   --  Wrong operation with counter (because of private scope)
   --  By using counter, it is not possible to see the
   --  details about Counter_Type here because it is private

   --  My_count.Seconds := 100;

end Derived_And_Private_Types;
