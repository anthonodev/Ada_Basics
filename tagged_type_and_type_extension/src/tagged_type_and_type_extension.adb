with Ada.Text_IO;
use Ada.Text_IO;

procedure Tagged_Type_And_Type_Extension is
   type Shape is tagged record
      x, y : Float := 0.0;
   end record;

   procedure Move (s : in out Shape; dx, dy : Float) is
   begin
      s.x := s.x + dx;
      s.y := s.y + dy;
   end Move;

   procedure Draw (s : Shape) is
   begin
      Put_Line ("Drawing a shape at" & Float'Image (s.x) & Float'Image (s.y));
   end Draw;

   --  herit from Shape and add a new record field in it
   type Circle is new Shape with record
      Radius : Float := 1.0;
   end record;

   procedure Draw (c : Circle) is
   begin
      Put_Line ("Drawing a circle at" & Float'Image (c.x) & Float'Image (c.y) & " with radius" & Float'Image (c.Radius));
   end Draw;

   s1 : Shape := (1.0, 2.0);
   c1 : Circle := (Shape with Radius => 3.0);

begin
   Draw (s1);
   Draw (c1);
end Tagged_Type_And_Type_Extension;
