package Counter is    
   --  Counter_Type type is only accessible from counter.adb
   type Counter_Type is private;
   procedure Reset_Counter (C : out    Counter_Type);
   procedure Add_Counter   (C : in out Counter_Type);
   function  Read_Counter  (C : Counter_Type) return Integer;

  private
   --  invisible for user of this package
   type Counter_Type is record
      Seconds : Integer := 0;
   end record;
end Counter;
