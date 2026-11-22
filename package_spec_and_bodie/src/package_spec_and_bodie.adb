with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;

with simple_maths;
use simple_maths;

procedure Package_Spec_And_Bodie is
   r : Float := 5.0;
begin
   Put_Line ("Radius: " & Float'Image (r));
   Put_Line ("Square(5.0) = " & Float'Image (Square (r)));
   Put_Line ("Area = " & Float'Image (Circle_Area (r)));
   Put_Line ("Pi = " & Float'Image (Pi));
end Package_Spec_And_Bodie;
