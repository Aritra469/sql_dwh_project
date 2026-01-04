/* Create database 'DataWarehouse' and schemas bronze,silver,gold.
If the database exists drop and recreate it.

Warning: This script drop and recreate the entire database. Take appropriate backup.
*/
USE master;
GO

--Drop and recreate the 'Datawarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK_IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO