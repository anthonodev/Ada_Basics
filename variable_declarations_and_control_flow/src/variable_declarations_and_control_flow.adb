with Ada.Text_IO;
use Ada.Text_IO;

procedure Variable_Declarations_And_Control_Flow is
   X     : constant Integer := 10;
   Count :          Integer :=  0;
   Day   : constant Integer :=  7;
begin
   --  conditions
   if X > 0 then
      Put_Line ("X is positive.");
   elsif X = 0 then
      Put_Line ("X is equal to zero.");
   else
      Put_Line ("X is negative.");
   end if;

   --  for loop
   for I in 1 .. 5 loop
      Put_Line ("Iteration: " & Integer'Image (I));
   end loop;

   --  while loop
   while Count <= 3 loop
      Put_Line ("Count = " & Integer'Image (Count));
      Count := Count + 1;
   end loop;

   --  switch case
   case Day is
      when 1 => Put_Line ("Monday");
      when 2 => Put_Line ("Tuesday");
      when 3 => Put_Line ("Wednesday");
      when 4 => Put_Line ("Thursday");
      when 5 => Put_Line ("Friday");
      when 6 => Put_Line ("Saturday");
      when 7 => Put_Line ("Sunday");
      when others => Put_Line ("Error, day not available");
   end case;
end Variable_Declarations_And_Control_Flow;
