package body simple_maths is
   function Square (x : Float) return Float is
   begin
      return x * x;
   end Square;
   
   function Circle_Area (radius : Float) return Float is
   begin
      return Pi * Square (radius);
   end Circle_Area;

end simple_maths;
