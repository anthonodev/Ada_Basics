package vehicule is
   type Vehicle is abstract tagged private;
   procedure Start (V : in out Vehicle) is abstract;
   function Info (V : Vehicle) return String is abstract;

private
   type Vehicle is abstract tagged record
      Year : Integer;
   end record;
end vehicule;
