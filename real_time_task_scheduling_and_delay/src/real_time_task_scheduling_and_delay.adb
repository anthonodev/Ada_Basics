with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Real_Time_Task_Scheduling_And_Delay is

   --  Add priority to tasks
   pragma Priority (10);

   task type Fast_Task;
   task type Medium_Task;
   task type Slow_Task;

   task body Fast_Task is
      Next_Time : Time := Clock;
      Period : constant Time_Span := Milliseconds (20);
   begin
      for I in 1 .. 5 loop
         Put_Line ("Fast task running (iter number " & Integer'Image (I) & ")");
         Next_Time := Next_Time + Period;
         delay until Next_Time;
      end loop;
   end Fast_Task;

   task body Medium_Task is
      Next_Time : Time := Clock;
      Period : constant Time_Span := Milliseconds (50);
   begin
      for I in 1 .. 7 loop
         Put_Line ("Medium task running (iter number " & Integer'Image (I) & ")");
         Next_Time := Next_Time + Period;
         delay until Next_Time;
      end loop;
   end Medium_Task;

   task body Slow_Task is
      Next_Time : Time := Clock;
      Period : constant Time_Span := Milliseconds (100);
   begin
      for I in 1 .. 9 loop
         Put_Line ("Slow task running (iter number " & Integer'Image (I) & ")");
         Next_Time := Next_Time + Period;
         delay until Next_Time;
      end loop;
   end Slow_Task;

   --  Instantiate the tasks
   Fast_Instance   : Fast_Task;
   Medium_Instance : Medium_Task;
   Slow_Instance   : Slow_Task;

begin

   --  main program begins after the 3 tasks at iter 1
   Put_Line ("Main program begin");

   --  Keep main task alive until heritor tasks complete
   --  Option 1: Delay for expected duration (7 seconds is considered
   --  ok for other tasks to finish)
   delay until Clock + Seconds (7);

   Put_Line ("Main program finished");
end Real_Time_Task_Scheduling_And_Delay;
