with Ada.Text_IO;
use Ada.Text_IO;

procedure Dispatching_And_Dynamic_Polymorphism is
   package Shapes is
      --  Shape type
      type Shape is tagged record
         x, y : Float := 0.0;
      end record;

      --  Draw method
      procedure Draw (s : in Shape);

      --  Rectangle type (after Draw method, because In Ada,
      --  for a tagged type to have some primitive operations,
      --  those operations must be declared before any
      --  type extension that uses them.)
      type Rectangle is new Shape with record
         width, height : Float := 1.0;
      end record;

      --  heritor of Draw method for drawing rectangle
      overriding
      procedure Draw (R : in Rectangle);

      --  pointer to access Shape object
      type Shape_Ptr is access all Shape'Class;
   end Shapes;

   package body Shapes is

      --  Draw method body
      procedure Draw (s : in Shape) is
      begin
         Put_Line ("Drawing a shape at (" &
                     Float'Image (s.x) &
                     ", " & Float'Image (s.y) &
                     ")");
      end Draw;

      --  heritor of Draw method for drawing rectangle body
      overriding
      procedure Draw (R : in Rectangle) is
      begin
         Put_Line ("Drawing a rectangle at (" & Float'Image (R.x) &
                     ", " & Float'Image (R.y) &
                     " width " & Float'Image (R.width) &
                     " and height " & Float'Image (R.height));
      end Draw;
   end Shapes;

   --  use the Shapes class
   use Shapes;

   --  create a display proc
   procedure Display (s : in Shape'Class) is
   begin
      Draw (s);
   end Display;

   --  aliased means this object can have pointers to it
   --  without aliased word, it is not possible to access address
   --  using pointer.
   s : aliased Shape := (0.0, 2.0);
   R : aliased Rectangle := (Shape with width => 3.0, height => 7.0);

   type Shape_Array is array (Positive range <>) of Shape_Ptr;

   --  s'Access is a pointer to s
   --  R'Access is a pointer to R
   --  they have the same size
   ShapesA : Shape_Array := (s'Access, R'Access);
begin
   Display (s);
   Display (R);
   New_Line;
   for Item of ShapesA loop
      Display (Item.all);
   end loop;
end Dispatching_And_Dynamic_Polymorphism;
