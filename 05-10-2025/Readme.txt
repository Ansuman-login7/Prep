
Select Clause: This clause generally is used to depict the display and retrieval of columns data of the table which is demanded or asked as per the case of the query.
Syntax: SELECT column1, column2/ Select *(if you want all column data's)
Example: Q-write a sql query to get all the shipmodes of the orders table uniquely?
         A-select distinct(ship_mode)
           from orders;
Here we can see That the ship_mode column data is being used to reflect all data's from ship_mode columns.

From Clause: The From clause in SQL specifies the data source(tables)from which a SELECT statement retrieves data(columns data).It indicates the tables, views or other rowset-producing entities that the query will operate on.

Where Clause: The Where clause in SQL is used to filter rows from a table based on specified conditions.It evaluates each row individually and returns only the rows that meet the conditions.The filtering happens before any grouping or aggregation occurs.

Distinct Clause:The Distinct clause in SQL is used to eliminate duplicate rows from the result set and return only unique values for one or more columns.It is similar in concept to a unique constraint in a table, but unlike a constraint, it applies only to the query result rather than the underlying table.
Syntax:SELECT DISTINCT column1, column2, ...
       FROM table_name
       WHERE condition;
Example:Q-write a sql query to get all the shipmodes of the orders table uniquely?
A-select distinct(ship_mode)
  from orders;
The output lists all the unique ship_modes here of the data which are First Class,Same Day,Standard Class and Second Class.

Between: This is a range filter command between the given dates or values in the where command. Mostly used in industrial purposes for dataes between the starting to ending for either historical data or  limiting data within the date range.
Syntax: Where value/date Between 'Starting date/value' and 'Ending date/value'.
Example: Select *
         From orders
         Where order_date between '01-01-2024' and '12-31-2024'.
It gives/retrieves all the data from orders table between the given dates.

In-This operator in SQL that is used to filter out data condition when it is multiple value case, like out of the 4 ship_mode data i need a requirement in maybe lets say only 2 cases in First Class and Same Day,we use in operator with where clause to filter out the data with the condition that applies in the ship_mode of First Class and Same Day.
Syntax- Where Column_name in (value1,value2.....)
Example- select *
         from orders
         where ship_mode in ('First class','Same Day');
Here the values retrieved are mainly from First class and Same Day in shipping mode column data.

Not in- This is an anti in operator which does just the opposite of what in operator do,used in where clause in SQL.
Syntax-Where Column_name not in (value1,value2.....)
Example- select *
         from orders
         where ship_mode not in ('First class','Same Day');
Here the data values retrieved are from other than First class and Same Day in shipping mode column data.

Like-The Like operator in SQL is used within the WHERE clause to search for a specified pattern in a column.It allows for flexible pattern matching rather than requiring exact matches.
Syntax-WHERE column_name LIKE pattern;
Example- select *
         from orders
         where ship_mode like ('F%');
Lists all data's from the shipping mode that starts with 'F',here "First Class".

Cast: This is a type conversion function that converts a given column data to the data type we want explicitly.It changes how data is interpreted or stored — for example,converting a string(text) to a number,a decimal to an integer,or a date to text or date time to date.
Syntax- CAST (expression AS target_data_type)
Example-SELECT CAST('100' AS INT) AS ConvertedValue

Escape- The ESCAPE clause in SQL is used with the LIKE operator to search for literal characters that are normally treated as wildcards (% or _).
% → Represents any sequence of characters.
_ → Represents any single character.
Sometimes, you want to search for the actual % or _ character in your data instead of using them as wildcards.That’s where ESCAPE comes in.
Syntax- WHERE column_name LIKE 'pattern' ESCAPE 'escape_character';
Example- Suppose EmployeeCodes table has values like EMP_01, EMP_02.
SELECT EmployeeCode
FROM EmployeeCodes
WHERE EmployeeCode LIKE 'EMP\_%' ESCAPE '\';
o/p--> EMP_01 and EMP_02

Q-write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character?
select * 
from orders 
where customer_name like '_a_d%';

Q-write a sql to get all the orders placed in the month of dec 2020?
select * 
from orders 
where order_date between '2020-12-01' and '2020-12-31';

Q-write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020?
select * 
from orders
where ship_mode not in ('Standard Class','First Class')
and ship_date > '2020-11-30';

Q-write a query to get all the orders where customer name neither start with "A" and nor ends with "n"?
select * 
from orders 
where customer_name not like 'A%n';

Q-write a query to get all the orders where profit is negative?
select * 
from orders 
where profit<0;

Q-write a query to get all the orders where either quantity is less than 3 or profit is 0?
select * 
from orders 
where profit=0 or quantity<3;

Q-your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers?
select * 
from orders 
where region='South' and discount>0;

Q-write a query to find top 5 orders with highest sales in furniture category.
select top 5 * 
from orders 
where category='Furniture' 
order by sales desc;


Q-write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only?
select * 
from orders 
where category in ('Furniture','Technology') and 
order_date between '2020-01-01' and '2020-12-31';

Q-write a sql query to get all the shipmodes of the orders table uniquely?
select distinct(ship_mode)
from orders;

Q-write a query to gather all order data's in first class and same day mode
select *
from orders
where ship_mode in ('First class','Same Day');

