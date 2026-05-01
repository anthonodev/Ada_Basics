package body maths_operations is
   --  adb in ada is similar to .c in c language. It represents
   --  the implementation of interface (ads).
   --  The keyword package body means it is implementation part.

   function Add (A, B : Integer) return Integer is
   begin
      return A + B;
   end Add;

   function Multiply (A, B : Integer) return Integer is
   begin
      return A * B;
   end Multiply;

end maths_operations;
