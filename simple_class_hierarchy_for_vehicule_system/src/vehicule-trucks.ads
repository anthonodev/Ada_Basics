package vehicule.Trucks is

   type Truck is new Vehicle with private;
   
   function Create (Year : Integer; Payload : Integer) return Truck;
   overriding procedure Start (T : in out Truck);
   overriding function Info (T : Truck) return String;

private
   type Truck is new Vehicle with record
      Payload : Integer;
   end record;

end vehicule.Trucks;
