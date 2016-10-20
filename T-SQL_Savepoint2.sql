-- T-SQL Savepoint:

BEGIN TRANSACTION
INSERT INTO Customers(ID, First_Name) --Insert details into database table.
VALUES ('22','Mike');
SAVE TRANSACTION StartOrder;          --Create a savepoint to rollback to. 
INSERT INTO Orders(ID, Customer_ID)   --Insert details into database table.
VALUES ('22','22');
IF @@ERROR <> 0 ROLLBACK TRANSACTION StartOrder;  --Rolls back to *StartOrder* savepoint if error.
COMMIT TRANSACTION 