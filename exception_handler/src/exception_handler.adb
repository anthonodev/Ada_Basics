with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Exception_Handler is

   --  custom exception
   procedure custom_exception is
      custom_error : exception;
   begin
      raise custom_error;
   exception
      when custom_error =>
         Put_Line ("Custom exception");
   end custom_exception;

   --  store a, b and res
   a, b, res : Integer;

begin
   Put ("Enter numerator: ");
   Get (a);
   Put ("Enter denominator: ");
   Get (b);

   res := a / b; --  can raise an error if b equal 0

   Put_Line ("Result is" & Integer'Image (Result));
exception
   when Constraint_Error =>
      Put_Line ("Error: Division by zero or numeric overflow");
   when Data_Error =>
      Put_Line ("Invalid input (not an integer)");
   when others =>
      Put_Line ("Some unexpected error occured");
end Exception_Handler;
