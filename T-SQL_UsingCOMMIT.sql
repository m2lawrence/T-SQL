-- T-SQL Server. Using COMMIT:

-- Executed and written directly to teh database tables, is known as an Implicit commit. Write or Save is auto.
-- To force an explicit commit, the COMMIT statement is used:

BEGIN TRANSACTION
DELETE Customers WHERE Customers.ID = 4
DELETE Orders WHERE Orders.Customer_ID = 4
COMMIT TRANSACTION 

-- Order number 4 is deleted entirely from the system. Because this involves updating two database tables, 
-- Orders and Customers, a transaction block is used to ensure that the order is not partially deleted.
-- The final COMMIT statement writes the change only if no error occured. If the first DELETE worked, but
-- the second failed, the DELETE would not be commited. 