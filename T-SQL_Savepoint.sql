-- T-SQL Save Points:
--To support the ROLLBACK of partial transactions, you must be able to put placeholders at strategic locations
--in the transaction block. Then, if a ROLL BACK is required, you can ROLL BACK to one of the placeholders.

--In SQL these placeholders are called savepoints. SQL server example:
SAVE TRANSACTION delete1; 

--Each savepoint takes a unique name that identifies it, so that when you roll back, the DBMS knows where you
--are rolling back to. To roll back to this savepoint, do the following in SQL server:

ROLLBACK TRANSACTION delete1;