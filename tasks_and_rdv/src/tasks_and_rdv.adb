with Ada.Text_IO;
use Ada.Text_IO;

procedure Tasks_And_Rdv is
   --  Simple task
   task Simple_Task is
      entry Start;
   end Simple_Task;

   task body Simple_Task is
   begin
      accept Start do
         Put_Line ("Waiting for start signal.");
      end Start;
      Put_Line ("Now running...");
      for I in 1 .. 3 loop
         Put_Line ("Working..." & Integer'Image (I));
         delay 0.5;
      end loop;
      Put_Line ("Completed.");
   end Simple_Task;

   --  Server
   task Server is
      entry Request_Service (Data : in Integer; Result : out Integer);
      entry Shutdown;
   end Server;

   task body Server is
      Done : Boolean := False;
   begin
      Put_Line ("Server is ready to accept request");
      while not Done loop
         select
            accept Request_Service (Data : in Integer; Result : out Integer) do
               Put_Line ("Server processing request with data: " & Integer'Image (Data));
               Result := Data * 2;
            end Request_Service;
         or
            accept Shutdown do
               Put_Line ("Server shutting down...");
               Done := True;
            end Shutdown;
         or
            delay 5.0;
            Put_Line ("Timeout, no requests received.");
            Done := True;
         end select;
      end loop;
      Put_Line ("Server : terminated.");
   end Server;

   Service_Result : Integer;
begin
   --  tasks and protected objects allow implementation of concurrency in Ada
   --  A task can be thought as an application that run concurrently with
   --  the main application. In other programming languages, a task might be
   --  called multithreading.

   --  Tasks may synchronize with the main application but may also process
   --  information completely independently from the main application.
   Server.Request_Service (10, Service_Result);
   Put_Line ("Received result: " & Integer'Image (Service_Result));
   Server.Request_Service (24, Service_Result);
   Put_Line ("Received result: " & Integer'Image (Service_Result));
   Server.Shutdown;
   delay 1.0;
   New_Line;
   Simple_Task.Start;
end Tasks_And_Rdv;
