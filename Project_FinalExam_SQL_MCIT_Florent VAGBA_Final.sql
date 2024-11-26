/***I.  Create Customers table and Insert 10 records into Customers table ***/

Use MCIT

DROP TABLE IF EXISTS Customers

CREATE TABLE Customers (
    	CustomerID INT PRIMARY KEY,
    	FirstName VARCHAR(50),
    	LastName VARCHAR(50),
    	Email VARCHAR(100)
    	);
 
-- Insert 10 records into Customers table

INSERT INTO Customers 
VALUES
(1, 'John', 'Doe', 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', 'jane.smith@yahoo.com'),
(3, 'Nadreyh', 'NABEHY', 'nadreyh.nabehy@trevor.com'),
(4, 'Amenon', 'DACEEH', 'amenon.daceeh@gnimale.com'),
(5, 'Akaba', 'DJIMON', 'akaba.djimon@hotmail.com'),
(6, 'Okyo', 'ZADY', 'okyo.zady@bobo.com'),
(7, 'Kalie', 'ZOUKOUBY', 'kalie.zoukouby@pinky.com'),
(8, 'Digbehy', 'CAPORAL', 'digbehy.caporal@aol.com'),
(9, 'Gnakale', 'Za', 'gnakale.za@sql.com'),
(10, 'Gadega', 'NAWIHO', 'gadega.nawiho@azouakou.com');

Select * From Customers

-- Add 20 more records with similar structure with different domains like @gmail, @outlook 

INSERT INTO Customers (CustomerID
						,FirstName
						,LastName
						,Email)
VALUES
(11, 'Lola', 'BROWN', 'lola.brown@gmail.com'),
(12, 'Max', 'GREEN', 'max.green@outlook.com'),
(13, 'Zara', 'WHITE', 'zara.white@yahoo.com'),
(14, 'Leo', 'BLACK', 'leo.black@hotmail.com'),
(15, 'Eva', 'PINK', 'eva.pink@icloud.com'),
(16, 'Noah', 'GRAY', 'noah.gray@aol.com'),
(17, 'Mia', 'RED', 'mia.red@msn.com'),
(18, 'Lucas', 'BLUE', 'lucas.blue@protonmail.com'),
(19, 'Emma', 'PURPLE', 'emma.purple@zoho.com'),
(20, 'Liam', 'ORANGE', 'liam.orange@yandex.com'),
(21, 'Olivia', 'YELLOW', 'olivia.yellow@mail.com'),
(22, 'Ethan', 'GOLD', 'ethan.gold@edu.com'),
(23, 'Sophia', 'SILVER', 'sophia.silver@biz.com'),
(24, 'Mason', 'BRONZE', 'mason.bronze@org.com'),
(25, 'Isabella', 'PEARL', 'isabella.pearl@net.com'),
(26, 'Logan', 'RUBY', 'logan.ruby@info.com'),
(27, 'Ava', 'EMERALD', 'ava.emerald@co.com'),
(28, 'Jacob', 'SAPPHIRE', 'jacob.sapphire@me.com'),
(29, 'Bobo', 'TREMBLAY', 'bobo.tremblay@bobo.com'),
(30, 'parminder', 'singh', 'parminder.singh@mcit.com');

/*** 2. Create the supplier table and insert 10 records ***/

Use MCIT

DROP TABLE IF EXISTS Suppliers

CREATE TABLE Suppliers ( SupplierID VARCHAR(10) PRIMARY KEY
    					,SupplierName VARCHAR(100)
    					,ContactPerson VARCHAR(50)
    					,Email VARCHAR(100)
						)
INSERT INTO Suppliers

VALUES
('SUP-1', 'John Garments', 'John Supplier', 'john.supplier@jgarment.com'),
('SUP-2', 'Yankee Fashion World', 'Jane Contact', 'jane.contact@yankeefw.com'),
('SUP-3', 'MB Design', 'Brigitte KLA', 'brigitte.kla@mbdesign.com'),
('SUP-4', 'CI Model', 'Nadreyh NABEHY', 'nadrey.nabehy@cimodel.com'),
('SUP-5', 'ZoZo Fashion', 'Bidjoul GOURY', 'bidjoul.goury@zz.com'),
('SUP-6', 'SHAQ Garments', 'SHAQ Diesel', 'shaq.diesel@shaq.com'),
('SUP-7', 'Elephant', 'Alex GAGNON', 'alex.gagnon@elephant.com'),
('SUP-8', 'Cocorico Fashion', 'Sery MOUGOULI', 'sery.mougouli@gbapo.com'),
('SUP-9', 'FVA & CO', 'Adjoua KPETOU ', 'adjoua.kpetou@kpetou.com'),
('SUP-10', 'BATMAN Collection', 'Bob PINKY', 'bobo.pinky@batman.com');

SELECT * FROM Suppliers

/*** 3. Create Product table ***/

Use MCIT

DROP TABLE IF EXISTS Product

CREATE TABLE Product (
    	PID VARCHAR(10) PRIMARY KEY 
    	,PName VARCHAR(100)
    	,Size VARCHAR(10) -- Sizes are S,M,L,X-L,XXX-L,X4-L,X5-L
    	,Price DECIMAL(8, 2) -- 1.50 , 2.00 etc
    	);

INSERT INTO Product
VALUES
	(1,'Shirt_Tops', 'M', 20.00),
	(2,'Blouse_Tops', 'L', 25.50),
	(3,'T-shirt_Tops', 'S', 15.00),
	(4,'Sweater_Tops', 'X-L', 30.00),
	(5,'Jacket_Tops', 'M', 45.00),
	(6,'Tank Top_Tops', 'S', 12.50),
	(7,'Cardigan_Tops', 'L', 35.00),
	(8,'Blazer_Tops', 'X-L', 50.00),
	(9,'Bustier_Tops', 'S', 18.00),
	(10,'Camisole_Tops', 'M', 22.00),
	(11,'Pant_Bottoms', 'M', 35.00),
	(12,'Short_Bottoms', 'S', 18.50),
	(13,'Skirt_Bottoms', 'L', 28.00),
	(14,'Trouser_Bottoms', 'X-L', 40.00),
	(15,'Jeans_Bottoms', 'M', 38.50),
	(16,'Jumpsuit_Bottoms', 'L', 42.00),
	(17,'Legging_Bottoms', 'S', 20.00),
	(18,'Dress_Dresses', 'M', 55.00),
	(19,'Gown_Dresses', 'X-L', 75.00),
	(20,'Casual_Dresses', 'X-L', 75.00);

SELECT * FROM Product

--<> Creating a complete Product table with a split Pname in ProductCategory and ProductID (Product name) --<>--

Use MCIT

DROP TABLE IF EXISTS [dbo].[Products]

 SELECT TOP (1000) [PID]
		,[PName]
		,[Size]
		,[Price]
		,Left([PName],CHARINDEX('_',[PName]) - 1) As ProductID
		,RIGHT([PName], LEN([PName]) - CHARINDEX('_',[PName]) ) As ProductCategory
		INTO Products
From [dbo].[Product]

SELECT * FROM Products

/*** 4. Create Address table ***/

Use MCIT

DROP TABLE IF EXISTS [Address]

CREATE TABLE [Address] (
 AddressID INT PRIMARY KEY
 ,CustomerID INT
 ,SupplierID INT
,[Address] VARCHAR(200) ,--Address must consists of HouseNumber,City,State
 );
 
Select *
FROM [Address]

--<> Insert addresses for customers and suppliers <>--


INSERT INTO Address (AddressID, CustomerID, SupplierID, [Address])

VALUES
(1, 1, NULL, '1234, Toronto, Ontario'), -- This means that we are inserting the CustomerAddress because SupplierId is NULL
(2, NULL, '1', '1234, Montreal, Quebec'), -- This means that we are inserting the SupplierAddress because CustomerID is NULL
(3, 2, NULL, '5678, Vancouver, British Columbia'),
(4, NULL, '2', '5678, Calgary, Alberta'),
(5, 3, NULL, '91011, Edmonton, Alberta'),
(6, NULL, '3', '91011, Ottawa, Ontario'),
(7, 4, NULL, '1213, Halifax, Nova Scotia'),
(8, NULL, '4', '1213, Quebec City, Quebec'),
(9, 5, NULL, '1415, Winnipeg, Manitoba'),
(10, NULL, '5', '1415, Saskatoon, Saskatchewan');

SELECT * FROM [Address]

--<> Create a SuppliersAddress table <>--
Use MCIT

DROP TABLE IF EXISTS SuppliersAddress

SELECT TOP (1000) 
			[AddressID]
			,[SupplierID]
			,[Address]
	  INTO SuppliersAddress
FROM [MCIT].[dbo].[Address]
Where CustomerID is null

SELECT * FROM SuppliersAddress

--<> Create a CustomersAddress table <>--

Use MCIT

DROP TABLE IF EXISTS CustomersAddress

SELECT TOP (1000) 
		[AddressID]
        ,[CustomerID]
        ,[Address]
	  INTO CustomersAddress
FROM [MCIT].[dbo].[Address]
Where SupplierID is null

SELECT * FROM CustomersAddress

--<>--Creating A Suppliers_Address table With a split City and State--<>-----

SELECT TOP (1000) [AddressID]
      ,[SupplierID]
      ,[Address]
	  ,SUBSTRING([Address], CHARINDEX(',', [Address]) + 2, CHARINDEX(',', [Address], CHARINDEX(',', [Address]) + 1) - CHARINDEX(',', [Address]) - 2) AS SuppliersCity
	  ,SUBSTRING([Address], CHARINDEX(',', [Address], CHARINDEX(',', [Address]) + 1) + 2, LEN([Address])) AS SuppliersState
	INTO Suppliers_Address
  FROM [MCIT].[dbo].[SuppliersAddress]

  SELECT * FROM Suppliers_Address

  --<>--Creating A Customers_Address table With a split City ans State--<>-----

  SELECT TOP (1000) 
	   [AddressID]
      ,[CustomerID]
      ,[Address]
	  ,SUBSTRING([Address], CHARINDEX(',', [Address]) + 2, CHARINDEX(',', [Address], CHARINDEX(',', [Address]) + 1) - CHARINDEX(',', [Address]) - 2) AS CustomerCity
	  ,SUBSTRING([Address], CHARINDEX(',', [Address], CHARINDEX(',', [Address]) + 1) + 2, LEN([Address])) AS CustomerState
  INTO Customers_Address
  FROM [MCIT].[dbo].[CustomerAddress]

  SELECT * FROM Customers_Address

/*** 5. Create the table Sales ***/

Use MCIT

DROP TABLE IF EXISTS Sales

CREATE TABLE Sales (
    	SaleID INT PRIMARY KEY
    	,CustomerID INT
    	,SupplierID INT
    	,ProductID VARCHAR(50)
    	,SaleDate DATE
    	,TotalAmount DECIMAL(10, 2)
	);

--<> Insert 50 records into Sales table <>--

INSERT INTO Sales (SaleID, CustomerID, SupplierID, ProductID, SaleDate, TotalAmount)

VALUES
(1,1,1,'Pant','2022-01-11',150),
(2,1,1,'Pant','2022-01-12',200.5),
(3,2,3,'Shirt','2022-02-02',100),
(4,2,3,'Blouse','2022-02-03',120),
(5,3,5,'Sweater','2022-02-04',80),
(6,3,5,'Jacket','2022-02-08',250),
(7,4,7,'Skirt','2022-02-09',90),
(8,4,7,'Jeans','2022-03-10',140),
(9,5,9,'Dress','2022-03-23',180),
(10,5,9,'Dress','2022-04-14',200),
(11,6,2,'T-shirt','2022-05-08',50),
(12,6,2,'Tank top','2022-05-27',40),
(13,7,4,'Cardigan','2022-05-29',70),
(14,7,4,'Blazer','2022-06-01',150),
(15,8,6,'Short','2022-06-22',60),
(16,8,6,'Trouser','2022-12-05',100),
(17,9,8,'Jumpsuit','2022-12-16',160),
(18,9,8,'Legging','2022-12-18',50),
(19,10,10,'Bustier','2022-12-23',120),
(20,10,10,'Camisole','2022-12-24',80),
(21,11,1,'Pant','2023-01-07',140),
(22,11,1,'Pant','2023-01-07',190),
(23,12,3,'Shirt','2023-01-08',90),
(24,12,3,'Blouse','2023-01-09',110),
(25,13,5,'Sweater','2023-01-16',75),
(26,13,5,'Jacket','2023-01-21',240),
(27,14,7,'Skirt','2023-01-26',85),
(28,14,7,'Jeans','2023-01-27',130),
(29,15,9,'Dress','2023-01-28',170),
(30,15,9,'Dress','2023-01-29',190),
(31,16,2,'T-shirt','2023-01-30',45),
(32,16,2,'Tank top','2023-01-31',35),
(33,17,4,'Cardigan','2023-02-01',65),
(34,17,4,'Blazer','2023-02-03',140),
(35,18,6,'Short','2023-02-04',55),
(36,18,6,'Trouser','2023-03-08',95),
(37,19,8,'Jumpsuit','2023-03-12',155),
(38,19,8,'Legging','2023-04-07',45),
(39,20,10,'Bustier','2023-04-19',115),
(40,20,10,'Camisole','2023-05-11',75),
(41,21,1,'Pant','2023-05-13',130),
(42,21,1,'Pant','2023-05-15',180),
(43,22,3,'Shirt','2023-06-01',80),
(44,22,3,'Blouse','2023-06-02',100),
(45,23,5,'Sweater','2023-06-22',70),
(46,23,5,'Jacket','2023-07-15',230),
(47,24,7,'Skirt','2023-07-22',80),
(48,24,7,'Jeans','2023-12-17',120),
(49,25,9,'Dress','2023-12-19',160),
(50,25,9,'Dress','2023-12-23',180)

/*** 6. Create the table SalesOrderDetail ***/

CREATE TABLE SalesOrderDetail (
	OrderDetailID INT PRIMARY KEY IDENTITY(1,1)
	,SaleID INT
	,CustomerName VARCHAR(50) 
	,CustomerCity VARCHAR(50)
	,CustomerState VARCHAR(50)
	,ServiceProviderName VARCHAR(50)
	,ServiceProviderCity VARCHAR(50)
	,ServiceProviderState VARCHAR(50)
	,ProductName VARCHAR(50) 	,--ProductName first Part
	ProductCategory VARCHAR(50) 	,--ProductName LastPart after _
	Quantity INT
	,PricePerUnit DECIMAL(8, 2) 	,--This will come From ProductTable
	TotalSales DECIMAL(19, 2)--� This IS Quantity * PricePerUNIT FOREIGN KEY (SaleID) REFERENCES Sales(SaleID)
	)

	SELECT * FROM SalesOrderDetail

	/*** Tables list ***/

	SELECT * FROM [dbo].[Customers]
	SELECT * FROM [dbo].[Suppliers]
	SELECT * FROM [dbo].[Products]
	SELECT * FROM [dbo].[Sales]
	SELECT * FROM [dbo].[Customers_Address]
	SELECT * FROM [dbo].[Suppliers_Address]

	--<> Extracting the integer part of the SupplierID in the Suppliers' table <>--

	Select RIGHT([SupplierID],LEN([SupplierID]) - CHARINDEX('-',[SupplierID])) As SupID From [dbo].[Suppliers]
	
	Select SUBSTRING([SupplierID],5,2)  As SupID From [dbo].[Suppliers]



	--<> Extracting the integer part of the SupplierID in the Suppliers' table <>--

	SELECT TOP (1000) [SupplierID]
      ,[SupplierName]
      ,[ContactPerson]
      ,[Email]
	  ,SUBSTRING([SupplierID],5,2) As SupID
  FROM [MCIT].[dbo].[Suppliers]

	

/*** Modifying the Product table to create the Join conditions ***/

--<>--Retrieving the quantity --<>-----

SELECT 
	 S.[TotalAmount]
	,P.[Price]
	,(S.[TotalAmount]/P.[Price]) As Quantity 
FROM [dbo].[Sales] S
INNER JOIN [dbo].[Products] P
ON S.[ProductID] = P.[ProductID];

SELECT * FROM [dbo].[Product]



    --<>--Extracting the product category --<>-----

SELECT [PName]
		,RIGHT([PName], LEN([PName]) - CHARINDEX('_',[PName]) ) As ProductCategory 
FROM [dbo].[Product] 

--<>--Extracting the ProductID as Product name --<>-----

SELECT [PName],
	Left([PName],CHARINDEX('_',[PName]) - 1) As ProductID
FROM [dbo].[Product]



/*** Adding the quantity into the sales table ***/

SELECT TOP (1000) [SaleID]
      ,[CustomerID]
      ,[SupplierID]
      ,S.[ProductID]
	  ,(S.[TotalAmount]/P.[Price]) As Quantity
      ,[SaleDate]
      ,[TotalAmount]
	  INTO Sales01
  FROM [MCIT].[dbo].[Sales] S
    INNER JOIN [dbo].[Products] P
			ON S.[ProductID] = P.[ProductID];

	SELECT * FROM Sales01

/*** Building the joins ***/

		/*** List of tables used ***/

	SELECT * FROM [dbo].[Sales01] -- Sales table  with the Products' quantity
	SELECT * FROM [dbo].[Customers] -- Contains 30 Customers
	SELECT * FROM [dbo].[Suppliers] -- Contains 10 Suppliers
	SELECT * FROM [dbo].[Suppliers_Address] --Cleanded and complete Suppliers address 
	SELECT * FROM [dbo].[Customers_Address] --Cleanded and complete Customers address
	SELECT * FROM [dbo].[Products] -- New Product table with a split PName
	
	--<> The Join used to fill the final table <>---

SELECT *

FROM [dbo].[Sales01] S
	Left Join [dbo].[Customers] C On C.CustomerID = S.CustomerID
	Left Join [dbo].[Suppliers] Su On S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
	Left Join [dbo].[Customers_Address] Ca On Ca.[CustomerID] =S.[CustomerID]
	Left Join [dbo].[Suppliers_Address] SA On SA.[SupplierID]= S.[SupplierID]
	Left Join [dbo].[Products] P On P.[ProductID] = S.ProductID

SELECT * FROM SalesOrderDetail

/*** END Joins ***/

/***  The query to insert the values into the SalesOrderDetail table ***/

INSERT INTO SalesOrderDetail(
	SaleID 
	,CustomerName 
	,CustomerCity 
	,CustomerState 
	,ServiceProviderName 
	,ServiceProviderCity 
	,ServiceProviderState 
	,ProductName
	,ProductCategory
	,Quantity
	,PricePerUnit
	,TotalSales

)
SELECT 
SaleID,
C.Firstname + ' ' + C.LastName as CustomerName,
Ca.CustomerCity As CustomerCity,
Ca.CustomerState As CustomerState,
Su.SupplierName as ServiceProviderName,
SA.SuppliersCity as ServiceProviderCity,
SA.SuppliersState as ServiceProviderState,
P.ProductID as ProductName,
P.ProductCategory As ProductCategory,
S.Quantity as Quantity,
P.Price as PricePerUnit,
S.TotalAmount As TotalSales

FROM [dbo].[Sales01] S
	Left Join [dbo].[Customers] C On C.CustomerID = S.CustomerID
	Left Join [dbo].[Suppliers] Su On S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
	Left Join [dbo].[Customers_Address] Ca On Ca.[CustomerID] =S.[CustomerID]
	Left Join [dbo].[Suppliers_Address] SA On SA.[SupplierID]= S.[SupplierID]
	Left Join [dbo].[Products] P On P.[ProductID] = S.ProductID


SELECT * FROM SalesOrderDetail  --<>The SalesOrderDetail is filled --<>---

/*** Create the table SalesReports ***/

Use MCIT

DROP TABLE IF EXISTS SalesReports

CREATE TABLE SalesReports (
	[Year] INT
	,[Month] INT
	,[ProductCategory] VARCHAR(50)
	,[Top1Customer] VARCHAR(50) 	--who bought the maximum , only those customers they have @gmail or @outlook emails
	,[Top1Supplier] VARCHAR(50) 	--who's product is sold the max 
	,[TotalSales] DECIMAL (19, 2)
	,TotalRunningSales DECIMAL (19, 2)
	);

SELECT * FROM SalesReports

--<> Adding the [Year] and [Month] columns to the Sales01 table -- Creating the final Sales table named Sales02

SELECT TOP (1000) 
	  [SaleID]
      ,[CustomerID]
      ,[SupplierID]
      ,[ProductID]
      ,[Quantity]
      ,[SaleDate]
      ,[TotalAmount]
	  ,Year([SaleDate]) as [Year]
      ,Month([SaleDate]) as [Month]
	  INTO Sales02
  FROM [MCIT].[dbo].[Sales01]

  SELECT * FROM Sales02

  /*** The TOP customer per year and per month ***/

SELECT * FROM [dbo].[SalesReports]

    SELECT
        S.[Year],
        S.[Month],
		S.CustomerID,
		S.SupplierID,
        SD.CustomerName,
        SUM(TotalAmount) AS TotalSales,
        RANK() OVER (PARTITION BY [Year], [Month] ORDER BY SUM(TotalAmount) DESC) AS RankPerMonth
   
	FROM [dbo].[Sales02] S
        LEFT JOIN [dbo].[Customers] C ON C.CustomerID = S.CustomerID
        LEFT JOIN [dbo].[Suppliers] Su ON S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
        LEFT JOIN [dbo].[Customers_Address] Ca ON Ca.[CustomerID] = S.[CustomerID]
        LEFT JOIN [dbo].[Suppliers_Address] SA ON SA.[SupplierID] = S.[SupplierID]
        LEFT JOIN [dbo].[Products] P ON P.[ProductID] = S.ProductID
        LEFT JOIN [dbo].[SalesOrderDetail] SD ON SD.SaleID = S.SaleID
    
	GROUP BY S.[Year], S.[Month], SD.CustomerName, S.CustomerID,
		S.SupplierID

	--<> Need to use RankPerMonth to use a Where condition to select the TOP1
	--<> It is not a physical colum--> Creating a table from the previous query

Use MCIT

DROP TABLE IF EXISTS RankedCustomers

SELECT
        S.[Year],
        S.[Month],
		S.CustomerID,
		S.SupplierID,
        SD.CustomerName,
        SUM(TotalAmount) AS TotalSales,
        RANK() OVER (PARTITION BY [Year], [Month] ORDER BY SUM(TotalAmount) DESC) AS RankPerMonth
    INTO RankedCustomers
	FROM [dbo].[Sales02] S
        LEFT JOIN [dbo].[Customers] C ON C.CustomerID = S.CustomerID
        LEFT JOIN [dbo].[Suppliers] Su ON S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
        LEFT JOIN [dbo].[Customers_Address] Ca ON Ca.[CustomerID] = S.[CustomerID]
        LEFT JOIN [dbo].[Suppliers_Address] SA ON SA.[SupplierID] = S.[SupplierID]
        LEFT JOIN [dbo].[Products] P ON P.[ProductID] = S.ProductID
        LEFT JOIN [dbo].[SalesOrderDetail] SD ON SD.SaleID = S.SaleID
    
	GROUP BY S.[Year], S.[Month], SD.CustomerName, S.CustomerID,
		S.SupplierID

SELECT * FROM RankedCustomers


	--<> Retrieving the TOP customer per year and per month

SELECT
    [Year],
    [Month],
	[CustomerID],
	[SupplierID],
    [CustomerName],
    [TotalSales]
FROM RankedCustomers
WHERE RankPerMonth = 1;

-- Creating Table TOP1Customers

Use MCIT

DROP TABLE IF EXISTS TOP1Customers

SELECT
	ROW_NUMBER() Over(Order By Year, Month) As TopCustomerID,
    [Year],
    [Month],
	[CustomerID],
	[SupplierID],
    [CustomerName],
    [TotalSales]
	INTO TOP1Customers
FROM RankedCustomers
WHERE RankPerMonth = 1;

SELECT * FROM TOP1Customers

	/*** From this query we can retrieve:
	 Year
	 Month
	 CustomerName As TOP1Customer per Year and Per month (Where RankPerMonth = 1
	 TotalSales -- 
	 Remaining : ProductCategory,TOPSupplier and TotalRunningSales ***/

/*** The TOP Supplier per year and per month ***/

    SELECT
        S.[Year],
        S.[Month],
		S.[CustomerID],
		S.[SupplierID],
        SD.[ServiceProviderName],
        SUM(TotalAmount) AS TotalSales,
        RANK() OVER (PARTITION BY [Year], [Month] ORDER BY SUM(TotalAmount) DESC) AS RankPerMonth
    
	FROM [dbo].[Sales02] S
        LEFT JOIN [dbo].[Customers] C ON C.CustomerID = S.CustomerID
        LEFT JOIN [dbo].[Suppliers] Su ON S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
        LEFT JOIN [dbo].[Customers_Address] Ca ON Ca.[CustomerID] = S.[CustomerID]
        LEFT JOIN [dbo].[Suppliers_Address] SA ON SA.[SupplierID] = S.[SupplierID]
        LEFT JOIN [dbo].[Products] P ON P.[ProductID] = S.ProductID
        LEFT JOIN [dbo].[SalesOrderDetail] SD ON SD.SaleID = S.SaleID

    GROUP BY [Year], [Month], SD.[ServiceProviderName], S.[CustomerID],
		S.[SupplierID]
	
	--<> Need to use RankPerMonth to use a Where condition to select the TOP1
	--<> It is not a physical colum--> Creating a table from the previous query
Use MCIT

DROP TABLE IF EXISTS RankedSuppliers

SELECT
        S.[Year],
        S.[Month],
		S.[CustomerID],
		S.[SupplierID],
        SD.[ServiceProviderName],
        SUM(TotalAmount) AS TotalSales,
        RANK() OVER (PARTITION BY [Year], [Month] ORDER BY SUM(TotalAmount) DESC) AS RankPerMonth
    INTO RankedSuppliers
	FROM [dbo].[Sales02] S
        LEFT JOIN [dbo].[Customers] C ON C.CustomerID = S.CustomerID
        LEFT JOIN [dbo].[Suppliers] Su ON S.SupplierID = SUBSTRING(Su.[SupplierID],5,2) 
        LEFT JOIN [dbo].[Customers_Address] Ca ON Ca.[CustomerID] = S.[CustomerID]
        LEFT JOIN [dbo].[Suppliers_Address] SA ON SA.[SupplierID] = S.[SupplierID]
        LEFT JOIN [dbo].[Products] P ON P.[ProductID] = S.ProductID
        LEFT JOIN [dbo].[SalesOrderDetail] SD ON SD.SaleID = S.SaleID

    GROUP BY [Year], [Month], SD.[ServiceProviderName], S.[CustomerID],
		S.[SupplierID]

SELECT * FROM RankedSuppliers

	--<> Retrieving the TOP Supplier per year and per month

SELECT
    [Year],
    [Month],
	[CustomerID],
	[SupplierID],
    [ServiceProviderName],
    TotalSales
FROM RankedSuppliers
WHERE RankPerMonth = 1;

--<> Creating the TOP1Suppliers table

Use MCIT

DROP TABLE IF EXISTS TOP1Suppliers

SELECT
	ROW_NUMBER() Over(Order By Year, Month) As TopSupplierID,
    [Year],
    [Month],
	[CustomerID],
	[SupplierID],
    [ServiceProviderName],
    TotalSales
	INTO TOP1Suppliers 
FROM RankedSuppliers
WHERE RankPerMonth = 1;

SELECT * FROM TOP1Suppliers

/*** To this point we can retrieve:
	 Year
	 Month
	 CustomerName As TOP1Customer per Year and Per month (Where RankPerMonth = 1
	 TotalSales
	 ServiceProviderName as TOP1Supplier-- 
	 Remaining : ProductCategory and TotalRunningSales ***/

	--<> The TotalRunningSales  Query

SELECT CustomerID
	,Year
	,Month
	,SUM(TotalAmount)OVER (
			PARTITION BY CustomerID,
						Year, 
						Month 
			ORDER BY SaleDate) AS RunningSale
FROM Sales02

ORDER BY CustomerID, Year, Month, SaleDate;

/*** As we are retrieving the "TotalRunningSales' by year and by Month, the result will be the same for the TotalSales of the TOP Customers or Suppliers 
It is the Max of the Runningsale of this table***/


/*** To this point we can retrieve:
	 Year
	 Month
	 CustomerName As TOP1Customer per Year and Per month (Where RankPerMonth = 1
	 TotalSales
	 ServiceProviderName as TOP1Supplier
	 TotalRunningSales-- 
	 Remaining : ProductCategory   ***/

	 
	--<> TOP ProductCategory per year and per month
  
	SELECT
		
        [Year],
        [Month],
        ProductID,
	    ROW_NUMBER() OVER (
						PARTITION BY [Year],
						[Month] 
						ORDER BY SUM(TotalAmount) DESC) AS ProductRank
    FROM [dbo].[Sales02]
    GROUP BY [Year], [Month], ProductID


	--<> Create a ProductRank table

USE MCIT

DROP TABLE IF EXISTS ProductRank

SELECT
        [Year],
        [Month],
        ProductID,
	    ROW_NUMBER() OVER (
						PARTITION BY [Year],
						[Month] 
						ORDER BY SUM(TotalAmount) DESC) AS ProductRank
		INTO ProductRank
    FROM [dbo].[Sales02]
    GROUP BY [Year], [Month], ProductID

--<> Create TOPProductCategory table

Use MCIT

DROP TABLE IF EXISTS TOPProductsCategory

SELECT
ROW_NUMBER() Over(Order By Year, Month) As UniqueID,
    [Year],
    [Month],
    ProductID AS TopProductID
	INTO TOPProductsCategory
FROM ProductRank
WHERE ProductRank = 1;


SELECT * FROM Sales02
SELECT * FROM [dbo].[TOPProductsCategory]
SELECT * FROM [dbo].[TOP1Suppliers]
SELECT * FROM [dbo].[SalesReports]
SELECT * FROM [dbo].[TOP1Customers]

SELECT * FROM [dbo].[SalesReports]

--<> Join query for all the data we need for the salesreport table

SELECT * 
FROM [dbo].[TOP1Customers] TC
LEFT JOIN [dbo].[TOP1Suppliers] TS ON TC.TopCustomerID = TS.TopSupplierID
LEFT JOIN [dbo].[TOPProductsCategory] TPC ON TPC.UniqueID = TC.TopCustomerID

--<> Retrieving data needed for the [dbo].[SalesReports] table

SELECT TC.Year,
		TC.Month,
		TPC.TopProductID As ProductCategory,
		TC.CustomerName as Top1Customer,
		TS.ServiceProviderName As Top1Supplier,
		TC.TotalSales As TotalSales,
		TC.TotalSales As RunningSales

FROM [dbo].[TOP1Customers] TC
LEFT JOIN [dbo].[TOP1Suppliers] TS ON TC.TopCustomerID = TS.TopSupplierID
LEFT JOIN [dbo].[TOPProductsCategory] TPC ON TPC.UniqueID = TC.TopCustomerID

--<> Insert data into the [dbo].[SalesReports] table

INSERT INTO [dbo].[SalesReports]( 
		[Year]
      ,[Month]
      ,[ProductCategory]
      ,[Top1Customer]
      ,[Top1Supplier]
      ,[TotalSales]
      ,[TotalRunningSales]
	  )
SELECT TC.Year,
		TC.Month,
		TPC.TopProductID As ProductCategory,
		TC.CustomerName as Top1Customer,
		TS.ServiceProviderName As Top1Supplier,
		TC.TotalSales As TotalSales,
		TC.TotalSales As RunningSales

FROM [dbo].[TOP1Customers] TC
LEFT JOIN [dbo].[TOP1Suppliers] TS ON TC.TopCustomerID = TS.TopSupplierID
LEFT JOIN [dbo].[TOPProductsCategory] TPC ON TPC.UniqueID = TC.TopCustomerID

SELECT * FROM [dbo].[SalesReports]

--<> End of the Exam -- Thanks. It was not easy, It was worth the time spent doing it !


/***  Control Points ***/

--<> TOP1 Customer Overal 
SELECT TOP 1 CustomerName, SUM(TotalSales) AS TotalSales
FROM [dbo].[SalesOrderDetail]
GROUP BY CustomerName
ORDER BY TotalSales DESC;

--<> TOP1 Provider Overal 

SELECT TOP 1 ServiceProviderName, SUM(TotalSales) AS TotalSales
FROM [dbo].[SalesOrderDetail]
GROUP BY ServiceProviderName
ORDER BY TotalSales DESC;

--<> Total Sales per customer

SELECT CustomerName, SUM(TotalSales) AS TotalSales
FROM [dbo].[SalesOrderDetail]
GROUP BY CustomerName
ORDER BY CustomerName;

--<> Total Sales per ServiceProvider

SELECT ServiceProviderName, SUM(TotalSales) AS TotalSales
FROM [dbo].[SalesOrderDetail]
GROUP BY ServiceProviderName
ORDER BY ServiceProviderName;

--<> Sales per year

SELECT YEAR(SaleDate) AS Year, SUM(TotalAmount) AS TotalSales
FROM Sales02
GROUP BY YEAR(SaleDate)
ORDER BY Year;

--<> TOP1 Year based on the TotalSales

SELECT TOP 1 YEAR(SaleDate) AS Year, SUM(TotalAmount) AS TotalSales
FROM Sales02
GROUP BY YEAR(SaleDate)
ORDER BY TotalSales DESC;

--<> Total RunningSales

SELECT
    OrderDetailID,
    SaleID,
    CustomerName,
    CustomerCity,
    CustomerState,
    ServiceProviderName,
    ServiceProviderCity,
    ServiceProviderState,
    ProductName,
    ProductCategory,
    Quantity,
    PricePerUnit,
    TotalSales,
    SUM(TotalSales) OVER (ORDER BY OrderDetailID) AS TotalRunningSales
FROM
    [dbo].[SalesOrderDetail];













