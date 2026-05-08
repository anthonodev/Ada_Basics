with Ada.Text_IO;
use Ada.Text_IO;
with vehicule;
with vehicule.Cars;
with vehicule.Trucks;

procedure Simple_Class_Hierarchy_For_Vehicule_System is
   C : vehicule.Cars.Car := vehicule.Cars.Create (2024, 4);
   T : vehicule.Trucks.Truck := vehicule.Trucks.Create (2025, 5000);
begin
   vehicule.Cars.Start (C);
   Put_Line (C.Info);

   vehicule.Trucks.Start (T);
   Put_Line (T.Info);
end Simple_Class_Hierarchy_For_Vehicule_System;
