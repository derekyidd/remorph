-- see https://learn.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?view=sql-server-ver16

SELECT BusinessEntityID,
    LastName,
    TerritoryName,
    CountryRegionName
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL
ORDER BY CASE CountryRegionName
        WHEN 'United States' THEN TerritoryName
        ELSE CountryRegionName
        END;
GO