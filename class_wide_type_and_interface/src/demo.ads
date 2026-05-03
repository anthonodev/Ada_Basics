package Demo is
   type Root is abstract tagged null record;
   procedure Print (Self : Root) is abstract;

   type Integer_Holder is new Root with record
      Value : Integer;
   end record;
   overriding procedure Print (Self : Integer_Holder);

   type String_Holder is new Root with record
      Value : String (1 .. 10);
      Length : Natural;
   end record;
   overriding procedure Print (Self : String_Holder);

   --  with interface, we do not specify the data, only the methods
   --  to be used by different objects with the same methos need
   --  example: radio do sound and bird do sound. Methods are abstracts.
   type Printable is interface;
   procedure Print (Self : Printable) is abstract;

   type Dual_Holder is new Root and Printable with record
      I : Integer;
   end record;
   overriding procedure Print (Self : Dual_Holder);

   procedure Process (Obj : Root'Class);

   procedure Run;
end Demo;
