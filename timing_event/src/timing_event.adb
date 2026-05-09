with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Real_Time;
use Ada.Real_Time;

procedure Timing_Event is

   --  Notify object
   protected Notify is
      procedure Trigger;
      function Fired return Boolean;
   private
      Fired_Flag : Boolean := False;
   end Notify;

   protected body Notify is
      procedure Trigger is
      begin
         Fired_Flag := True;
      end Trigger;

      function Fired return Boolean is
      begin
         return Fired_Flag;
      end Fired;
   end Notify;

   --  Timer task
   task Timer_Task;
   task body Timer_Task is
      Deadline : constant Time := Clock + Seconds (2);
   begin
      delay until Deadline;
      Notify.Trigger;
   end Timer_Task;

   --  Period : constant Time_Span := Milliseconds(500);
   --  Next : Time := Clock + Period;
begin
   Put_Line ("Waiting for one shot timer");

   while not Notify.Fired loop
      delay 0.1;
   end loop;

   Put_Line ("Timer fired.");
   Put_Line ("Done");
end Timing_Event;
