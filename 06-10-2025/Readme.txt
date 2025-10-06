
GROUP BY Clause: The GROUP BY clause in SQL is used to group rows that have the same values in one or more columns into summary rows.It is commonly used with aggregate functions like SUM(), COUNT(), AVG(), etc., to perform calculations on each group.
Syntax:GROUP BY column_name;
Example:
select department, count(employeeid) as num_employees
from employees
group by department;

This query helps to find total number of employees per department.

Having clause:
The Having clause is used to filter groups created by GROUP BY based on a condition.Unlike WHERE, which filters individual rows, Having filters aggregated results.
Syntax:HAVING aggregate_function(column_name) condition;
Example:
select department, count(employeeid) as num_employees, avg(salary) as avg_salary
from employees
group by department
having avg(salary) > 50000;

This query helps to find total number of employees per department where average salary is greater than 50000.

Order By clause:The Order By clause is used to sort the result set in ascending (ASC) or descending (DESC) order. By default, it sorts in ascending order.
Syntax- Order by column_name (asc/desc)
select department, count(employeeid) as numemployees, avg(salary) as avgsalary
from employees
group by department
having avg(salary) > 50000
order by avg_salary asc;

Order of Execution in SQL:
Even though we write SQL queries in a certain order,the database engine executes them in a different logical order. Understanding this is crucial for writing correct queries, especially with aggregations, filtering, and joins.
(i)FROM – The database identifies the tables or views from which to retrieve data. Joins between tables are processed here.
(ii)WHERE – Filters individual rows based on conditions.Only rows that satisfy the WHERE clause move to the next step.
(iii)GROUP BY – Groups the filtered rows based on one or more columns.Prepares for aggregation.
(iv)HAVING – Filters groups created by GROUP BY based on an aggregate condition (e.g., SUM(Salary) > 50000).
(v)SELECT – Chooses the columns or expressions to return. Aggregate functions like COUNT(), SUM() are calculated here.
(vi)DISTINCT – Removes duplicate rows from the result set if Distinct is used.
(vii)ORDER BY – Sorts the final result set in ascending (ASC) or descending (DESC) order.
(viii)LIMIT or TOP – Limit or Top restricts the number of rows returned.

Aggregate Functions:
(i)Count():Counts the number of rows or non-NULL values in a column.
    Syntax: Count(column_name | *)
    Example (Count all employees):
    Select Count(*) as TotalEmployees
    From Employees;

(ii)Sum():Calculates the sum of values in a numeric column.
    Syntax: Sum(column_name)
    Example (Calculate total sales):
    Select Sum(OrderTotal) as TotalSales
    From Orders;

(iii)Avg():Calculates the average of values in a numeric column.
     Syntax: Avg(column_name)
     Example (Calculate average salary):
     Select Avg(Salary) as AverageSalary
     From Employees;

(iv) Min():Returns the minimum value in a column.
     Syntax: Min(column_name)
     Example (Find the lowest price):
     Select Min(Price) as LowestPrice
     From Products;

(v) Max(): Returns the maximum value in a column.
    Syntax: Max(column_name)
    Example (Find the highest score):
    Select Max(Score) as HighestScore
    From Students;


