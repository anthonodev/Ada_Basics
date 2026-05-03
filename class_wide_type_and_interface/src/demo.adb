with Ada.Text_IO;
use Ada.Text_IO;

package body Demo is
   overriding
   procedure Print (Self : Integer_Holder) is
   begin
      Put_Line ("Integer: " & Integer'Image (Self.Value));
   end Print;

   overriding
   procedure Print (Self : String_Holder) is
   begin
      Put_Line ("String: " & Self.Value (1 .. Self.Length));
   end Print;

   overriding
   procedure Print (Self : Dual_Holder) is
   begin
      Put_Line ("Dual: " & Integer'Image (Self.I));
   end Print;

   procedure Process (Obj : Root'Class) is
   begin
      Print (Obj);
   end Process;

   procedure Run is
      type Root_Class is access all Root'Class;

      IH : aliased Integer_Holder := (Value => 42);
      SH : aliased String_Holder := (Value => "Ada       ", Length => 3);
      DH : aliased Dual_Holder := (I => 100);
      Ptrs : array (1 .. 3) of Root_Class := (IH'Access, SH'Access, DH'Access);
   begin
      Put_Line ("Run ");

      for p of Ptrs loop
         Process (P.all);
      end loop;

      declare
         P : Printable'Class := DH;
      begin
         Print (P);
      end;
   end run;
end Demo;
