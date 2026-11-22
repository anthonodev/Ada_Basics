with Ada.Text_IO;
use Ada.Text_IO;

procedure Select_Statements is
   task Server is
      entry Start;
      entry Stop;
   end Server;
begin
   --  In Ada, select is used to control task directions
   --  or perform timed or waiting operations
   --  There is 4 main operations:
   --  1) Selective accept
   --  2) Time entry call (wait an entry call for a limited time)
   --  3) Conditionnal entry call (attempt entry call only if the
   --     task is immediately ready)
   --  4) Asynchronous select (perform an operation that
   --    can be aborted  if an other event occurs)

   task body Server is
      running : Boolean := False;
   begin
   loop
      select
         accept Start do
            Put_Line ("Server started.");
            running := True;
         end Start;
      or
         accept Stop do
            Put_Line("Server stopped.");
            running := False;
         end Stop;
      or
         delay 3.0;
         if running then
            Put_Line ("Server idle for 3 seconds.");
         end if;
      or
         terminate;
      end select;
   end loop;
   end Server;
end Select_Statements;
