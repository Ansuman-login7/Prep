
/*write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character*/
select * 
from orders 
where customer_name like '_a_d%';

/*write a sql to get all the orders placed in the month of dec 2020*/
select * 
from orders 
where order_date between '2020-12-01' and '2020-12-31';

/*write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020*/
select * 
from orders
where ship_mode not in ('Standard Class','First Class')
and ship_date > '2020-11-30';

/* write a query to get all the orders where customer name neither start with "A" and nor ends with "n"*/
select * 
from orders 
where customer_name not like 'A%n';

/*write a query to get all the orders where profit is negative*/
select * 
from orders 
where profit<0;

/*write a query to get all the orders where either quantity is less than 3 or profit is 0*/
select * 
from orders 
where profit=0 or quantity<3;

/*your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers*/
select * 
from orders 
where region='South' and discount>0;

/*write a query to find top 5 orders with highest sales in furniture category*/
select top 5 * 
from orders 
where category='Furniture' 
order by sales desc;


/*write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only*/
select * 
from orders 
where category in ('Furniture','Technology') and 
order_date between '2020-01-01' and '2020-12-31';

/*write a query to find all the orders where order date is in year 2020 but ship date is in 2021*/
select * 
from orders 
where order_date between '2020-01-01' and '2020-12-31' and 
ship_date between '2021-01-01' and '2021-12-31';

/*write a sql query to get all the shipmodes of the orders table uniquely?*/
select distinct(ship_mode)
from orders;

/*write a query to gather all order data's in "first class" and "same day" shipping mode*/
select *
from orders
where ship_mode in ('First class','Same Day');

/*write a query to gather all order data's which are not in "first class" and "same day" shipping mode*/
select *
from orders
where ship_mode not in ('First class','Same Day');
