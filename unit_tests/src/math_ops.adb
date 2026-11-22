package body Math_ops is

   function Add (a, b : Integer) return Integer is
      res : Integer;
   begin
      res := a + b;
      return res;
   end Add;

   function Substract (a, b : Integer) return Integer is
      res : Integer;
   begin
      res := a - b;
      return res;
   end Substract;

end Math_ops;
