with Ada.Text_IO;
use Ada.Text_IO;

procedure Data_Types_And_Subtype_Declarations is
   type Meter is new Float; --  typedef equiv
   type Day_of_Week is (Mon, Tue, Wed, Thu, Fri, Sat, Sun); -- enum type
   subtype Number_Type is Integer range 0 .. 120; --  constraint equiv, at run time

   Number      : constant Number_Type := 59; -- shall be in range [0; 120]
   Temperature : constant Float       := 36.6;
   Grade       : constant Character   := 'A';
   Name        : constant String      := "Alice";
   Is_student  : constant Boolean     := True;
   Distance    : constant Meter       := 100.0;
   Today       : constant Day_of_Week := Tue;
begin
   Put_Line ("Name: " & Name);
   Put_Line ("Temperature: " & Float'Image (Temperature));
   Put_Line ("Number: " & Integer'Image (Number));
   Put_Line ("Grade: " & Grade);
   Put_Line ("Is student: " & Boolean'Image (Is_student));
   Put_Line ("Distance " & Meter'Image (Distance));
   Put_Line ("Day " & Day_of_Week'Image (Today));
end Data_Types_And_Subtype_Declarations;
