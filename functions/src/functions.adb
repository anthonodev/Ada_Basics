with Ada.Text_IO;
use Ada.Text_IO;

procedure Functions is
   --  function Add (X : Integer; Y : Integer) return Integer is
   --  begin
   --     return X + Y;
   --  end Add;

   --  type Point is record
   --     x, y : Float;
   --  end record;

   --  function Make_point (xval, yval : Float) return Point is
   --  begin
   --     return (x => xval, y => yval);
   --  end Make_point;

   --  point1 : Point;
   function Multiply (A, B : Integer) return Integer is
      function Double (x : Integer) return Integer is
      begin
         return x * 2;
      end Double;
   begin
      return Double (A) * Double (B);
   end Multiply;

   --  overload the functions
   function Add (A, B : Integer) return Integer is
   begin
      return A + B;
   end Add;

   function Add (A, B : Float) return Float is
   begin
      return A + B;
   end Add;

   --  declare first, then, write it
   function Even (N : Integer) return Boolean;
   function Odd (N : Integer) return Boolean;

   function Even (N : Integer) return Boolean is
   begin
      return ((N mod 2) = 0);
   end Even;

   function Odd (N : Integer) return Boolean is
   begin
      return ((N mod 2) /= 0);
   end Odd;

begin
   --  Put_Line (Integer'Image (Add (1, 1)));
   --  point1 := Make_point (1.0, 1.0);
   Put_Line ("Result =" & Integer'Image (Multiply (2, 3)));
   Put_Line ("Int Add: " & Integer'Image (Add (4, 3)));
   Put_Line ("Float Add: " & Float'Image (Add (4.3, 3.6)));
   if Even (14) then
      Put_Line ("it s even");
   end if;
   if Odd (7) then
      Put_Line ("it s odd");
   end if;

end Functions;
