with Ada.Text_IO;
use Ada.Text_IO;

procedure Protected_Objects_And_Mutual_Exclusion is
   --  Shared counter
   protected Shared_Counter is
      procedure Increment;
      function Value return Integer;
   private
      Counter : Integer := 0;
   end Shared_Counter;

   protected body Shared_Counter is
      procedure Increment is
      begin
         Counter := Counter + 1;
      end Increment;

      function Value return Integer is
      begin
         return Counter;
      end Value;
   end Shared_Counter;

   --  Worker
   task type Worker (ID : Integer);
   task body Worker is
   begin
      for I in 1 .. 5 loop
         Shared_Counter.Increment;
         Put_Line ("Task " & Integer'Image (ID) & " incremented counter to " & Integer'Image (Shared_Counter.Value));
      end loop;
   end Worker;

   Task1 : Worker (1);
   Task2 : Worker (2);
   Task3 : Worker (3);
begin
   --  carefull with the final counter value
   --  Task 1, 2, 3 can still run at this step
   --  so, the final value can not be the same between I = 1 and I = 128
   --  a sufficient max number (128) has been choosen to see the behavior
   --  of multiple tasks. However, mutual exclusion is ok

   for I in 1 .. 128 loop
      Put_Line ("Final counter value:" & Integer'Image (Shared_Counter.Value));
   end loop;
end Protected_Objects_And_Mutual_Exclusion;
