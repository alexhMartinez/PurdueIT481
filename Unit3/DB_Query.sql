USE Northwind

CREATE ROLE SalesRole
GO
GRANT SELECT ON Orders TO SalesRole
GO
GRANT SELECT ON Customers TO SalesRole
GO
CREATE LOGIN User_Sales WITH PASSWORD = '123'
GO
CREATE USER User_Sales FOR LOGIN User_sales
GO
EXEC SP_ADDROLEMEMBER SalesRole, User_Sales
GO
;

USE Northwind

CREATE ROLE HRRole
GO
GRANT SELECT ON Employees TO HRRole
GO
CREATE LOGIN User_HR WITH PASSWORD = '123'
GO
CREATE USER User_HR FOR LOGIN User_HR
GO
EXEC SP_ADDROLEMEMBER HRRole, User_HR
GO
;

USE Northwind

CREATE ROLE CEORole
GO
GRANT SELECT ON Orders TO CEORole
GO
GRANT SELECT ON Customers TO CEORole
GO
GRANT SELECT ON Employees TO CEORole
GO
CREATE LOGIN User_CEO WITH PASSWORD = '123'
GO
CREATE USER User_CEO FOR LOGIN User_CEO
GO
EXEC SP_ADDROLEMEMBER CEORole, User_CEO
GO
;