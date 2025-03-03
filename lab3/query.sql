use [TT219-2]

--lab 3.1
Select id_ord, sum_ord, date_ord
From dbo.Orders

--lab 3.2
select *
from dbo.Customers
where id_cust = 8

--lab 3.3
select distinct id_sel
from dbo.Orders

-- lab 3.4
SELECT *
FROM [dbo].[Customers]
WHERE rating_cust <= 60
AND city_cust <> 'Yerevan'

--lab 5


select *
from dbo.Orders
where datepart(year, date_ord) = 2012
AND datepart(month, date_ord) = 10
OR datepart(month, date_ord) = 12

--year(date_ord) = 2012
--AND month(date_ord) = 10
--or month(date_ord) = 12

-- lab 6
select id_cust, lname_cust, rating_cust
from dbo.Customers
order by rating_cust desc

-- lab 7
select 
	UPPER(lname_sel) AS lname,
	ROUND(comis_sel, 2) as rounded_comis_sel
from dbo.Sellars
where comis_sel is not null

-- lab 8
select ABS(comis_sel - plan_sel) as profit 
from dbo.Sellars

-- lab 9
select *, Price - (0.1 + (RAND()/10)) * Price as newPrice
from dbo.Goods

--JOIN(select id_goods, (0.1 + (RAND()/10)) * Price as discount from Goods) as discounts
--on Goods.id_goods = discounts.id_goods

-- lab 3.10
select *, sqrt(credit) as sqrt_credit
from dbo.Customers
order by sqrt_credit desc

--lab 3.11
select id_cust, MAX(date_ord), DATEDIFF(day, max(date_ord), getdate()) as differenc 
from dbo.Orders
group by id_cust
