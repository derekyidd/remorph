-- see https://learn.microsoft.com/en-us/sql/t-sql/database-console-commands/dbcc-updateusage-transact-sql?view=sql-server-ver16

DBCC UPDATEUSAGE (AdventureWorks2022, 'HumanResources.Employee', IX_Employee_OrganizationLevel_OrganizationNode);
GO