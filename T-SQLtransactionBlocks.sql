-- Marking the start and end of transaction blocks:

BEGIN TRANSACTION
-- Any SQL between these blocks must be executed entirely or not at all.
COMMIT TRANSACTION 