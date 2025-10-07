
SQL:SQL or Structured Query Language,is a specialized computer language(querying method) used to manage and interact with relational databases.In simple terms,it is the language you use to "talk" to a database that stores information in structured tables of rows and columns.Imagine a database as a collection of organized tables, much like spreadsheets. Each table has rows (representing individual records) and columns (representing specific pieces of information about each record).

Database:It is an organized electronic filing cabinet designed to store,manage and easily retrieve vast amounts of information, like a digital phone book for contacts or an online library catalog. 
Examples: Oracle,Microsoft SQL,Teradata,Amazon redshift etc.

SSMS:An interface betweeen the user and the RDBMS applications basically.It is a DBMS syste,m that stores and manages data by providing tools to connect to that server,execute queries and manage databases and their objects and perform administrative tasks.
Inshort a "Client" between SQL and database.

Tables: A structured storage format in a database which is in the form of Rows and columns,structurising the data.
Syntax of creating a table in SQL:
                                 create table table_name 
                                 (
                                  Data atrribute datatype_format(length)
                                  )
Datatype: formats of stored data in attributes whic categorises them to number,text,date or decimal number formats.
Datatypes include Integer--> For Whole Numbers
                  varchar--> For Text data
                  Date or Date/time--> For Date and date/time format data
                  Decimal/Float--> For Decimal number values

Point to be noted for a decimal number value: decimal number valkues are given with precision points like(10,2),(5,2) where 10 and 5 represent total digits of numbers inclkuding decimal point numbers and 2 represents total numbers after decimal point.

Schema:Schema is nothing but like folders in the system(database here) that includes the files(tables) and their structures(Rows,columns and their data)

How to Create a Schema:Schema can be created uin two different ways,
(i) by commmand line:CREATE SCHEMA schema_name;
(ii) By GUI: in SQL server, click on database name-->Security-->New-->Schema-->Enter Schema name

Can we map data from one schema table to another?
Yes,we can but we need to check the table's attribute(columns) are same in number,otherwise it shows error or it fails.

Insert: This SQL command is being used to insert and enter values to the passed  attributes in a table.
        Syntax: Insert into table_name(attributes(columns)) values(....)
        Example:INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
                VALUES (1, 'John', 'Doe', 'Sales');
Here employees is the table,(EmployeeID, FirstName, LastName, Department) are the columns or the attributes and (1, 'John', 'Doe', 'Sales') are the values passed to the respective attributes or columns.
Noted: Dates and String type(text data) need always be enclosed in single quotes.

Select Statement--> This statement is being used for retrieving data values as per the queries.It is a DQL(Data querying Language) command which is used to query data by retrieving as per the required column data's.

How do we retrieve data's from select:
(i) using '*' we retrieve whole data from the table, eg:- select * from employees(table_name).
Here all the columns(attributes) with their datas is being retrieved and displayed in output.
(ii) listing specific columns(attributes) from the table,eg:- select employee_id from employees.
Here all the employee_id data is being retrieved and displayed in output.

From: This clakuse or command is the firstt order form in the SQL query execution process as it lists the table from which data is to be fetched and retrieved.

Limiting by Top/Limit--> In SQL, TOP/Limit clause is used to specify the number of records(rows) to return through the querying.
Top is being used in SQL server and limit in MYSql.
Syntax of Top: SELECT TOP number column_name(s)
               FROM table_name
               WHERE condition;

Example:SELECT TOP 5 EmpName, Salary
        FROM Employees
        ORDER BY Salary DESC;

Syntax of Limit:SELECT column_name(s)
                FROM table_name
                WHERE condition
                LIMIT number;
Example:SELECT EmpName, Salary
        FROM Employees
        Where Salary>50000
        LIMIT 5;

Order By: This Clause is used for sorting data in ascending or descending order.
Syntax: ORDER BY column1 [ASC|DESC], column2 [ASC|DESC].....
Example:SELECT ProductName, Price
        FROM Products
        ORDER BY Price asc;

SQL order of execution of statements- 
From-->Where-->Group By-->Having-->Select-->Distinct-->Order By-->Limit/Offset

DDL: DDL(Data defination Language)commands are used to define,modify and delete the structure of database objects like tables,indexes, views and schemas.These commands affect the database schema rather than the data itself.
Functions under DDL-->Create,Drop,Alter,Truncate,Rename

DML: DML(Data Manipulation Language) commands are used to manage the data within database tables,including inserting, updating and deleting records.
Functions under DDL-->Insert,Update,Delete.

DQL:DQL(Data Query language) commands are used to retrieve and query data from the database.
Functions under DQL-->Select

Drop:Used to delete database objects entirely.
Syntax:DROP TABLE Table_name;

Delete:Used to remove records(rows) from a table.
Syntax:Delete from Table_name
       Where Condition;

Alter: The ALTER command in SQL,specifically ALTER TABLE is a Data Definition Language (DDL) statement used to modify the structure of an existing table in a database.It allows for various structural changes without affecting the data already stored within the table.
Syntax: Alter table table_name alter column column_name,
        ALTER TABLE table_name ADD column_name datatype,
        ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;

Q:So Alter is a DDL or DML command?
A:The ALTER command in SQL is a DDL (Data Definition Language) command. 
DDL commands are used to define and manage the structure of a database and its objects,such as tables,views and indexes.ALTER specifically modifies the structure of existing database objects,like adding,dropping or modifying columns in a table or adding/removing constraints.

Constraints: Constraints in SQL are rules applied to columns or entire tables within a relational database to enforce data integrity and ensure the accuracy and reliability of the data.They limit the type of data that can be inserted,updated or deleted and if any operation violates a defined constraint,it is typically aborted.

Types:
(i)NOT NULL- Ensures that a column cannot store NULL values.
   Example: Create table a_orders
            (
            Order_id integer not null,
            Order_date date,
            Product_name Varchar(100),
            Total_price decimal(10,2),
            Payment_method varchar(20);
            )
Here it checks no null value enter order_id.

Check: Ensures that all values in a column satisfy a specific condition.
   Example: Create table a_orders
            (
            Order_id integer not null,
            Order_date date,
            Product_name Varchar(100),
            Total_price decimal(10,2),
            Payment_method varchar(20) check (Payment_method in ('UPI','Credit Card'));
            )
Here it checks no unauthorised payment method entry except UPI and Credit Card.

Default: Provides a default value for a column when no value is explicitly specified during an INSERT operation.
    Example:Create table a_orders
            (
            Order_id integer not null,
            Order_date date,
            Product_name Varchar(100),
            Total_price decimal(10,2),
            Payment_method VARCHAR(20) DEFAULT 'UPI' CHECK (Payment_method IN ('UPI', 'Credit Card'))
            )

Unique: A UNIQUE constraint in SQL is a rule applied to one or more columns within a table to ensure that all values in those specified columns are distinct.This means no two rows can have the same value (or combination of values, if applied to multiple columns) in the constrained column(s).
            Create table a_orders
            (
            Order_id integer not null Unique,
            Order_date date,
            Product_name Varchar(100),
            Total_price decimal(10,2),
            Payment_method VARCHAR(20) DEFAULT 'UPI' CHECK (Payment_method IN ('UPI', 'Credit Card'))
            )

Primary key:A primary key constraint in SQL is a fundamental database constraint that uniquely identifies each record within a table.
              Create table a_orders
            (
            Order_id integer,
            Order_date date,
            Product_name Varchar(100),
            Total_price decimal(10,2),
            Payment_method VARCHAR(20) DEFAULT 'UPI' CHECK (Payment_method IN ('UPI', 'Credit Card'))
            Primary key(Order_id));

Update: This DML command is used to update the attribute's value in the whole column.
                Syntax: Update table_name
                              Set Column_name = Value;
                Example: Update a_orders
                                   Set discount = 10  // Sets whole discount column value as 10
                                   Where order_id = 2 // Here it fetches Row wise where order_id is 2 and sets discount as 10.
