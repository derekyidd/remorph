-- see https://learn.microsoft.com/en-us/sql/t-sql/statements/create-columnstore-index-transact-sql?view=sql-server-ver16

CREATE CLUSTERED COLUMNSTORE INDEX cci ON Sales.OrderLines
WITH ( DATA_COMPRESSION = COLUMNSTORE_ARCHIVE );