with Ada.Text_IO;
use Ada.Text_IO;

procedure Records is

   --  example of record with point (x, y), it is like a structure in c.
   --  the word tagged means it is a parents type who can have heritors
   --  who inherit the fields from parent, and can add specific new fields
   --  safely mastered by ada compiler
   type Point is tagged record
      x : Float;
      y : Float;
   end record;

   --  records can contain other records, example with rectangle
   type Rectangle is record
      Top_left, Bottom_right : Point;
   end record;

   --  records with extending types (need a base type tagged)
   --  it adds an extenion of the original type (heritor)
   type Painted_point is new Point with record
      Paint : String (1 .. 10);
   end record;

   --  derived type (object is distinct from the original Rectangle
   --  reguarding the compiler)
   type Painted_rectangle is new Rectangle;

   --  discriminant record is when field depends on an input condition
   type Circle (Filled : Boolean) is record
      Radius : Float;
      case Filled is
         when True => Fill_Color : String (1 .. 10);
         when False => Outline_Color : String (1 .. 10);
      end case;
   end record;

   --  dynamic length
   type Message ( Length : Natural) is record
      Text : String (1 .. Length);
   end record;


   --  create some points
   point1 : Point;
   point2 : Point;

   --  create rectangle
   R : Rectangle := (
                     Top_left => (0.0, 10.0),
                     Bottom_right => (10.0, 0.0)
                    );

   --  create circle
   c1 : Circle := (Filled => True, Radius => 5.0, Fill_Color => "Red       ");
   c2 : Circle := ( Filled => False, Radius => 5.0, Outline_color => "Black     ");

   -- create message
   m1 : Message := (Length => 5, Text => "Hello");
   m2 : Message := (Length => 3, Text => "Hey";

begin
   --  point1 := (x => 3.5, y => 4.7); --  other available syntax
   --  point1 := (3.5, 4.7); --  other available syntax
   point1.x := 3.5;
   point1.y := 4.7;
   point2 := point1;
   Put_Line ("rectangle bottom right: " & Float'Image (R.Bottom_right.x));
   Put_Line ("y: " & Float'Image (point1.y));
   Put_Line ("c1 radius= " & Float'Image (c1.Radius));
   if c1.Filled then
      Put_Line ("Fill color: " & c1.Fill_Color);
   end if;

   if not c2.Filled then
      Put_Line ("Outline color: " & c2.Outline_Color);
   end if;

end Records;
