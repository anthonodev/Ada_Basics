with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Directories;
use Ada.Directories;

procedure File_Io is
   File_Name : constant String := "example.txt";
   File      : File_Type;
   Line      : String (1 .. 80);
   Last      : Natural;
begin

   --  Create a file
   Create (File, Out_File, File_Name);
   Put_Line (File, "Hello, world file");
   Put_Line (File, "second line");
   Close (File);

   --  Read a file
   Open (File, In_File, File_Name);
   while not End_Of_File (File) loop
      Get_Line (File, Line, Last);
      Put_Line (Line ( 1 .. Last));
   end loop;
   Close (File);

   --  Delete a file
   if Exists (File_Name) then
      Delete_File (File_Name);
   end if;

end File_Io;
