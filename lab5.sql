USE [TT219-2]
GO
-- lab 5.1
INSERT INTO Customers
           ([lname_cust]
           ,[city_cust]
           ,[rating_cust]
           ,[Credit]
           ,[name_cust])
     VALUES
           ('VARDANYAN', 'NEW YORK', 7, 10000, 'ARMAN'),
           ('MIKAYELYAN', 'BANGLADESH', 6, 8000, 'GARIK')
GO
-- 5.2
INSERT INTO Goods
           ([goods_name]
           ,[quantity]
		   ,[id_cust]
		   )
     VALUES
           ('Pamidor', 2, 1)
GO

--5.3
SELECT [id_sel]
      ,[lname_sel]
      ,[city_sel]
      ,[comis_sel]
      ,[leader]
      ,[plan_sel]
  INTO Yerevan_Sellers
  FROM Sellars
  WHERE city_sel = 'Yerevan'
GO

--5.4
--truncate table Yerevan_Sellers
delete from Yerevan_Sellers


-- 5.5
Delete from Customers
where rating_cust < 50

-- 5.6
UPDATE Customers
SET Credit = Credit + (Credit / 10)

--5.7
UPDATE Orders
set sum_ord = 0
where year(date_ord) = 2012

--5.8
SELECT * 
from Orders
where date_ord >= DATEADD(Month, -3, getdate())
