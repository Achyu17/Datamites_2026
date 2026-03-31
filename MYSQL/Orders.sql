create database OrderDB;
use OrderDB;

Select * from orders;

select orderid,orderdate,country,region from orders;

select distinct(category) from orders;
select distinct(subcategory) from orders;
select distinct(region) from orders;
select distinct(segement) from orders;


Select orderid as id from orders;
select region as area from orders;

Select * from orders where category='Technology';
Select * from orders where category='Furntiure';
Select * from orders where quantity >10;

Select * from orders where quantity <=5;
Select * from orders where sales < 5000;

Select * from orders where state='Texas' AND category='Technology';
Select * from orders where state='Califonia' AND category='Furniture';

Select * from orders where quantity >5 AND region='west' and subcategory='Tables';
Select * from orders where category ='Technology' or subcategory='Binders';

Select * from orders where not category='Technology';
Select * from orders where not region='central';

Select * from orders where category='Technology' order by orderdate,region,category,subcategory ,profit  where subcategory phone oder data by desc

Select orderid,region,category,subcategory,sales,profit
form order 
where 
subcategory='Phone'

Select * from orders where state='Texas' order by orderdate desc;

Select orderid,sales,profit,discount,region
from orders
where state='Texas' order by sales,profit desc;

Select * from orders where category is null;
Select * from orders where category='technology' is null;
Select * from orders where category is not null;

Select * from orders where category='Technology' order by sales desc limit 5;
Select * from orders where category='Technology' order by sales asc limit 5;

Select orderid,sales,profit,orderdate,region,city,category
from orders
where category ='Technology' order by sales ASC limit 10 offset 2;

Select orderid,sales,profit,orderdate,region,city,category
from orders
where category ='Technology' order by sales DESC limit 10 offset 2;

Select orderid,sales,profit,orderdate,region,city,category
from orders
where category ='Technology' order by sales DESC limit 10;


Select orderid,sales,profit,orderdate,region,city,category
from orders
where category ='Technology' order by sales DESC limit 1 offset 2;

Select * from orders where subcategory in ("paper",'phone','art');
Select * from orders where region in('east','west');
Select * from orders where region in('south','central');

Select * from orders
where orderdate between "2015-01-01" and "2015-01-30" 
order by orderdate desc;

Select * from orders where region like "W%";
Select * from orders where region like "%st";
Select * from orders where subcategory like "%on%";
Select * from orders where category like "%no%";

Select count(*) from orders where category ="Technology";
Select count(*) from orders where category ="Furniture";
Select count(distinct subcategory) from orders where state='texas';

Select count(distinct segement ) from orders;

Select avg(sales) from orders;
Select avg(sales) from orders  where state='Texas';

Select avg(sales) from orders  where state='Texas' and category='office suppilies';

Select sum(sales) from orders where state='Texas';
Select sum(sales) from orders  where state='California';

Select min(sales) from orders where category ="Technology";
Select min(sales) from orders where category ="Office Supplies";
Select min(sales) from orders where subcategory ="Phones";
Select min(profit) from orders where subcategory ="Art";

Select max(profit) from orders where subcategory ="Art";
Select max(profit) from orders where subcategory ="Art";
Select max(profit) from orders where subcategory in('Art','phone');

Select count(orderid),category from orders group by category;

Select sum(sales) as total_Sales,region
from orders
group by region;

Select sum(sales) as total_Sales,region,category
from orders
group by region,category;

Select sum(sales) as total_Sales,region,category
from orders
group by region,category
order by total_Sales asc;

select count(orderid) ,subcategory
from orders group by subcategory having count(orderid) > 500;

select count(orderid) ,region
from orders group by region  having count(orderid) > 2500;

select count(orderid) ,subcategory
from orders group by subcategory having count(orderid) > 500 
order by count(orderid) desc;

select * from orders where sales = (select min(sales) from orders);
Select * from orders where sales >(select avg(sales) from orders);

select cname from orders where cname in (
select distinct cname from orders where region='west');

select orderid,sales,(select avg(sales) from orders) as Avg_Sales_All from orders;