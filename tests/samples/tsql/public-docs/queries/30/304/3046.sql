-- see https://learn.microsoft.com/en-us/sql/t-sql/functions/openquery-transact-sql?view=sql-server-ver16

UPDATE OPENQUERY (OracleSvr, 'SELECT name FROM joe.titles WHERE id = 101')   
SET name = 'ADifferentName';