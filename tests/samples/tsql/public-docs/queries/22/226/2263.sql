-- see https://learn.microsoft.com/en-us/sql/t-sql/statements/restore-statements-transact-sql?view=sql-server-ver16

RESTORE DATABASE Sales
  FROM URL = 'https://mystorageaccount.blob.core.windows.net/mysecondcontainer/Sales.bak'
  WITH MOVE 'Sales_Data1' to 'H:\DATA\Sales_Data1.mdf',
  MOVE 'Sales_log' to 'O:\LOG\Sales_log.ldf',
  STATS = 10;