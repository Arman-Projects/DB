use [TT219-2]
go
-- lab 7.1
select *
from Orders as o
where o.sum_ord IN (select c.credit from Customers as c)

-- lab 7.2
select * 
from Customers as c
where id_cust in (
	select id_cust
	from Orders
	group by id_cust
	having sum(sum_ord) = 70000
)

-- lab 7.3
SELECT *
FROM Customers AS c
WHERE EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.id_cust = c.id_cust
);

-- lab 7.4
select lname_sel
from Sellars
where plan_sel > (
	select avg(plan_sel)
	from Sellars
)

-- lab 7.5
select s.lname_sel, 
       s.city_sel,
	    (select count(*)
	  	from Orders as o
		where o.id_sel = s.id_sel)
from Sellars as s 
where s.city_sel = 'Yerevan'

----- handzman query

use [NORTHWND]
go

select *
from Products as p
where p.ProductID in (
	select od.ProductID
	from [Order Details] as od
	where od.OrderID not in (
		select o.OrderId
		from Orders as o
	)
)



