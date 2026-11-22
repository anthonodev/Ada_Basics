package vehicule.Cars is

   type Car is new Vehicle with private;
   
   function Create (Year : Integer; Doors : Integer) return Car;
   overriding procedure Start (C : in out Car);
   overriding function Info (C : Car) return String;

private
   type Car is new Vehicle with record
      Doors : Integer;
   end record;
end vehicule.Cars;
