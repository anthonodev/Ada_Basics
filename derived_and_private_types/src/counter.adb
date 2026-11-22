package body Counter is
   procedure Reset_Counter (C : out    Counter_Type) is
   begin
      C.Seconds := 0;
   end Reset_Counter;

   procedure Add_Counter   (C : in out Counter_Type) is
   begin
      C.Seconds := C.Seconds + 1;
   end Add_Counter;

   function  Read_Counter  (C : Counter_Type) return Integer is
   begin
      return C.Seconds;
   end Read_Counter;
end Counter;
