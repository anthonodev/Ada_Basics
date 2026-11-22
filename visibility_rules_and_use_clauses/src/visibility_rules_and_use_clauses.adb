with Ada.Text_IO;
use Ada.Text_IO;

procedure Visibility_Rules_And_Use_Clauses is
   procedure Put_Line (Message : String) is
   begin
      Ada.Text_IO.Put_Line ("Local Put_Line : " & Message);
   end Put_Line;
begin
   --  without specifing the function is comming from Ada package,
   --  Put_Line function used comes from the local procedure
   --  even if use Ada.Text_IO is defined
   Put_Line ("test with Put_Line function");
end Visibility_Rules_And_Use_Clauses;
