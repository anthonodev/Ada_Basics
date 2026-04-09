with Ada.Text_IO;
use Ada.Text_IO;

procedure Constants is
   type Point is record
      x, y : Float;
   end record; -- struct equiv

   type Day_of_Week is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);

   Origin : constant Point := (x => 0.0, y => 0.0);
   PI : constant Float := 3.14159;
   Max_score : constant Integer := 100;
   App_Name : constant String := "some string";
   Radius : constant Float := 5.0;
   Today : constant Day_of_Week := Tue;
begin
   Put_Line ("PI = " & Float'Image (PI));
   Put_Line ("Max score = " & Integer'Image (Max_score));
   Put_Line ("App name = " & App_Name);
   Put_Line ("Radius = " & Float'Image (Radius));
   Put_Line ("Today = " & Day_of_Week'Image (Today));

end Constants;
