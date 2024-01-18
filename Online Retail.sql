select *
from ['Online Retail$']

--deleting blank CustomerID
delete from ['Online Retail$']
where ['Online Retail$'].CustomerID IS NULL

--Highest Quantities ordered by a customer
select['Online Retail$'].CustomerID,count(quantity) as Highest_Quantity
from ['Online Retail$']
Group by CustomerID
order by Highest_Quantity DESC 

--Most ordered items
Select['Online Retail$'].Description, COUNT(['Online Retail$'].StockCode) as Highest_Order
from ['Online Retail$']
group by ['Online Retail$'].Description
order by Highest_Order DESC

--Most expensive items
select ['Online Retail$'].Description,Max(['Online Retail$'].UnitPrice) as Highest_price
from ['Online Retail$']
group by ['Online Retail$'].Description
order by Highest_price DESC

--Day with most orders
select ['Online Retail$'].InvoiceDate,count(['Online Retail$'].InvoiceDate) as Highest_date
from ['Online Retail$']
Group by ['Online Retail$'].InvoiceDate
order by Highest_date DESC 

--Country with lowest orders
select ['Online Retail$'].Country,count(['Online Retail$'].InvoiceNo) as Highest_Orders
from ['Online Retail$']
group by ['Online Retail$'].Country
order by Highest_Orders ASC

--Highest Revenue generating items
select ['Online Retail$'].Description,['Online Retail$'].Quantity*['Online Retail$'].UnitPrice as Revenue,
['Online Retail$'].Quantity,['Online Retail$'].UnitPrice
from ['Online Retail$']
group by ['Online Retail$'].Description, ['Online Retail$'].Quantity,['Online Retail$'].UnitPrice
order by Revenue DESC

--Highest Revenue generating countries
Select ['Online Retail$'].Country, ['Online Retail$'].Quantity*['Online Retail$'].UnitPrice as Revenue,
['Online Retail$'].Quantity,['Online Retail$'].UnitPrice
from ['Online Retail$']
group by ['Online Retail$'].Country,['Online Retail$'].Quantity,['Online Retail$'].UnitPrice
Order by Revenue DESC