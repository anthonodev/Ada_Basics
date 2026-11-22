with Ada.Text_IO;
use Ada.Text_IO;

--  NOTE: in order to assertion predicates works, compilation option gnata
--  has to be activated.
--  In Gnat studio, do
--  Edit > project properties > build > switches > ada > Enable assertions

procedure Contract_Based_Programming is
   type account_id is range 1000 .. 9999;
   type Money is delta 0.01 digits 10;

   Balance : Money := 1000.0;
   Daily_Withdrawal_Total : Money := 0.0;

   Daily_Limit : constant Money := 1000.0;
   Min_Balance : constant Money := 0.0;
   Max_Balance : constant Money := 100_000.0;

   procedure Withdraw (account : account_id; amount : Money)
     with Pre => amount > 0.0 and then
         amount <= 1000.0  and then
         Balance >= amount and then
         Daily_Withdrawal_Total + amount <= Daily_Limit,
         Post => Balance = Balance'Old - amount
   is
   begin
      Balance := Balance - amount;
      Daily_Withdrawal_Total := Daily_Withdrawal_Total + amount;
      Put_Line ("Withdraw " & amount'Image & " from account.");
   end Withdraw;

   procedure Deposit (account : account_id;
                      amount : Money)
     with
       Pre => amount > 0.0 and then
       amount <= 10_000.0 and then
       Balance + amount <= Max_Balance,
       Post => Balance = Balance'Old + amount
   is
   begin
      Balance := Balance + amount;
      Put_Line ("deposited some money into account.");
   end Deposit;

   procedure Transfer (from_account : account_id;
                       to_account : account_id;
                       amount : Money)
     with
       Pre => from_account /= to_account and then
       amount > 0.0 and then
       Balance >= amount,
       Post => Balance = Balance'Old - amount
   is
   begin
      Balance := Balance - amount;
      Put_Line ("transfer money.");
   end Transfer;

begin
   Put_Line ("Initial Balance: " & Balance'Image);
   Put_Line ("");

   Deposit (1234, 500.00);
   Put_Line ("");

   Withdraw (1234, 200.00);
   Put_Line ("");

   Transfer (1234, 5678, 100.00);
   Put_Line ("");

   --  Withdraw (1234, 9999.0); --  money not sufficient leads to an error

   Put_Line ("Balance: " & Balance'Image);
end Contract_Based_Programming;
