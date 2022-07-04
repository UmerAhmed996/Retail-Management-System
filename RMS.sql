--CREATE SCHEMA RMS --creating schema

--CREATE TABLE RMS.Customers -- creating customer table
--(
--	Customer_ID INT PRIMARY KEY IDENTITY(1,1),
--  Name VARCHAR(50),
--	Age VARCHAR(2),
--	Gender VARCHAR(50),
--	City VARCHAR(50),
--	Email VARCHAR(50),
--	Contact VARCHAR(50)
-- )
 
-- INSERT INTO RMS.Customers -- insert data into customer table
-- (
--  Name,
--  Age,
--  Gender,
--  City,
--  Email,
--  Contact
--)
--VALUES 
--(
--  'Tayyab Hameed',
--   19,
--  'Male',
--  'Islamabad',
--  'tayyabhameed986@gmail.com',
--  '0323455892'
-- )

--CREATE TABLE RMS.Staff -- creating staff table
--(
--	Staff_ID INT PRIMARY KEY IDENTITY(1,1),
--	Name VARCHAR(50),
--	Age INT,
--	Contact VARCHAR(50),
--	Email VARCHAR(50),
--	Designation VARCHAR(50)
-- )

-- INSERT INTO RMS.Staff -- insert data into staff table
-- (
--	 Name,
--	 Age,
--	 Contact,
--	 Email,
--	 Designation
--)
--VALUES 
--(
--	'Ahmed',
--	 21,
--	'0322-844707-8',
--	'ahmed997@gmail.com',
--	'Order Man'
--)

--CREATE TABLE RMS.Product -- creating product table
--(
--	Category_ID INT PRIMARY KEY IDENTITY(1,1),
--	Name VARCHAR(50),
--	Size VARCHAR(50),
--	Amount VARCHAR(50),
--	Availability VARCHAR(12)
-- )

-- INSERT INTO RMS.Category -- insert data into product table
-- (
--	 Name,
--	 Size,
--	 Amount,
--	 Availability
--)
--VALUES 
--(
--	'Shirts',
--	'M',
--	 2000,
--	'In Stock'
--)

----TRUNCATE Table RMS.CATEGORY;

--CREATE TABLE RMS.[Delivery Details] -- creating Delivery Details table
--(
--	Delivery_ID INT PRIMARY KEY IDENTITY(1,1),
--	Status BIT,
--	[Delivered Time] datetime,
--	Location VARCHAR(50),
--	[Departure Time] datetime,
--	Staff_ID INT UNIQUE FOREIGN KEY REFERENCES RMS.Staff(Staff_ID)
--)

-- INSERT INTO RMS.[Delivery Details] -- insert data into Delivery Details table
-- (
--	 Status,
--	 [Delivered Time],
--	 Location,
--	 [Departure Time],
--     Staff_ID
--)
--VALUES 
--(
--	 0,
--	 NULL, 
--	 'Lahore',
--	 NULL,
--     1
--)

--CREATE TABLE RMS.Orders -- creating Cart table
--(
--	Order_ID INT PRIMARY KEY IDENTITY(1,1),
--	Name VARCHAR(50),
--	Date date,
--	Quantity VARCHAR(1),
--	Staff_ID INT FOREIGN KEY REFERENCES RMS.Staff(Staff_ID),
--	Customer_ID INT UNIQUE FOREIGN KEY REFERENCES RMS.Customers(Customer_ID),
--    Category_ID INT UNIQUE FOREIGN KEY REFERENCES RMS.Category(Category_ID)
--)

-- INSERT INTO RMS.Cart -- insert data into Cart table
-- (
--	 Name,
--	 Date,
--	 Quantity,
--	 Staff_ID,
--     Customer_ID,
--     Category_ID
--)
--VALUES 
--(
--	'Lhr9282021',
--	'9/28/2021',
--	 3,
--	 4,
--     1002,
--	 5
--)

--CREATE TABLE RMS.Transactions -- creating Transactions table
--(
--	Transactions_ID INT PRIMARY KEY IDENTITY(1,1),
--	Transactions_Amount decimal(18, 2),
--	Status BIT,
--    Order_ID INT UNIQUE FOREIGN KEY REFERENCES RMS.Cart(Order_ID)
--)

-- INSERT INTO RMS.Transactions -- insert data into Transactions table
-- (
--	 Transactions_Amount,
--	 Status,
--	 Order_ID
--)
--VALUES 
--(
--	0,
--	0,
--	1
--)

--CREATE SCHEMA RMSA --creating schema

--CREATE TABLE RMSA.Archive -- creating Archive table
--(
--	Archive_ID INT PRIMARY KEY IDENTITY(1,1)
--)

-------------------------------------------------------------
-- INSERT INTO RMS.Customers -- insert data into customer table
-- (
--  Name,
--  Age,
--  Gender,
--  City,
--  Email,
--  Contact
--)

--SELECT TOP 68 * FROM MOCK_DATA

-------------------------------------------------------------

-- INSERT INTO RMS.Staff -- insert data into staff table
-- (
--	 Name,
--	 Age,
--	 Contact,
--	 Email,
--	 Designation
--)
--SELECT TOP 998 * FROM MOCK_DATA;

-------------------------------------------------------------

-- INSERT INTO RMS.Category -- insert data into category table
-- (
--	 Name,
--	 Size,
--	 Amount,
--	 Availability
--)

--SELECT TOP 999 * FROM MOCK_DATA;

-------------------------------------------------------------
	 --INSERT INTO RMS.[Delivery Details]  -- insert data into Delivery Details table
  --   (
	 --Status,
	 --[Departure Time],
	 --[Delivered Time],
	 --Location,
	 --Staff_ID
  --   )
	
	 --SELECT 
		--1 AS [Status],
		--getutcdate()   AS [Departure Time],
		--getutcdate()+2 AS [Delivered Time],

		--RMS.Customers.City,RMS.Orders.Staff_ID
	 --FROM
	 --(
	 --	RMS.Customers
	 --   INNER JOIN RMS.Orders ON RMS.Customers.Customer_ID = RMS.Orders.Customer_ID
	 --   INNER JOIN RMS.Transactions ON RMS.Orders.Order_ID = RMS.Transactions.Order_ID
	 --)
	
	
	
		
	

	
--SELECT * FROM MOCK_DATA
--WHERE Staff_ID != 1;

-------------------------------------------------------------
--DROP TABLE RMS.Product;

--ALTER TABLE RMS.Orders
--ADD Category_ID INT UNIQUE FOREIGN KEY REFERENCES RMS.Product(Category_ID);

--UPDATE RMS.Cart
--SET Category_ID = 1
--WHERE Order_ID = 1;
-------------------------------------------------------------

-- INSERT INTO RMS.Orders -- insert data into Cart table
-- (
--	 Name,
--	 Date,
--	 Staff_ID,
--	 Quantity,
--     Customer_ID,
--     Category_ID
--)

--SELECT  
--	MD.[Name],
--	MD.[Date],
--	RS.Staff_ID,
--	MD.Quantity,
--	MD.Customer_ID,
--	MD.Category_ID
--FROM 
--	MOCK_DATA AS MD
--	INNER JOIN RMS.Staff AS RS ON MD.Staff_ID= RS.Staff_ID
--WHERE 
--	Designation = 'Order Man';
 -------------------------------------------------------------
--UPDATE  RMS.Category
--SET 
--	Amount = REPLACE(Amount,'$','')

 -------------------------------------------------------------

--UPDATE 
--	RMS.Transactions
--SET 
--	Status = 1
--WHERE 
--	Transactions_ID = 1;
 -------------------------------------------------------------

 --CREATE PROCEDURE Calc_Transactions -- SP of No Of Transactions
 --AS
 --SELECT 
 --	COUNT(*) AS [No Of Transactions]
 --FROM RMS.Transactions 

 -------------------------------------------------------------
 --CREATE TABLE RMSA.Transactions -- creating archive Transactions table
--(
--	ID INT PRIMARY KEY IDENTITY(1,1),
--	Transactions_Amount decimal(18, 2),
--	Status BIT,
--    Order_ID INT
--)

 -------------------------------------------------------------

 --CREATE TABLE RMSA.Customer -- creating archive customer table
--(
--	ID int primary key identity(1,1),
--	Customer_ID int foreign key references RMS.Customers(Customer_ID),
--	Name VARCHAR(50),
--	Age VARCHAR(2),
--	Gender VARCHAR(50),
--	City VARCHAR(50),
--	Email VARCHAR(50),
--	Contact VARCHAR(50)
--)
 -------------------------------------------------------------

--SELECT * FROM RMS.Cart;
--SELECT * FROM RMS.Product;
--SELECT * FROM RMS.Transactions;
--SELECT * FROM RMS.[Delivery Details];
--SELECT * FROM RMS.Customers;
--SELECT * FROM RMS.Staff;
--Select * from RMSA.Delivery;

 -------------------------------------------------------------


 