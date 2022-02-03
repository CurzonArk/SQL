-----Open MySQL Client------
sudo mysql;
-----Close MYSQL Client------
quit;
-----Coments------
show databases;                --show all databases
use ${mysql};                  -- use database
show tables;                   -- show all tables
describe ${tablename};         -- show the struture of the table name
select * from user;            -- reutrn all rows in table
create database ${database};   -- create a new database
use ${database};               -- use a database

-- Create Table --
create table weirdos (pid int(12),lastname varchar(255),firstname varchar(255),address varchar(255),city varchar(255));
insert into weirdos (pid,lastname,firstname,address,city) values (1,'landry','jacob','977 main street','gothom');

-- Create User --
create user '$user'@'$destination' identified by '$password';
grant all privileges on $databases.$actions to '$user'@'$destination';
flush privileges;

-- Order By --
SELECT * FROM table_name ORDER BY column_name;

-- Limit --
SELECT column_names FROM table_name OFFSET 3 LIMIT 4
OR
SELECT column_names FROM table_name LIMIT 3, 4


-- DISTINCT --
SELECT DISTINCT column_name1, Column_name2 FROM table_name;


-- WHERE clause --
SELECT column_list FROM table_name WHERE condition;

 =                  | --EQUAL
 !=                 | --NOT EQUAL
 >                  | --GREATER THAN
 <                  | --LESS THAN
 >=                 | --GREATER THAN OR EQUAL
 <=                 | --LESS THAN OR EQUAL
 BETWEEN # AND #    | --BETWEEN AN INCLUSIVE RANGE

SELECT column_names FROM table_name WHERE column_name = '#identity';

-- LOGICAL OPERATORS --
 AND                | --TRUE if BOTH expressions are TRUE;
 OR                 | --TRUE if either expression is TRUE;
 IN                 | --True if the operand is wqual to one of a list of expressions;
 NOT                | --Returns TRUE if expression if not TRUE;

SELECT column_names FROM table_name WHERE column{int}>= # AND column{int} <= #;

-----Example of both--
     SELECT * FROM customers WHERE (id = 1 OR id = 2) AND city = 'Boston';
     SELECT * FROM customers WHERE city IN ('New York', 'Los Angeles', 'Chicago');

-- CONCAT function
SELECT CONCAT(column, ',',column) AS new_column_name FROM table;

-- Arithmetic Operators --
SELECT column_name{+-*/} AS new_column_name FROM table;

-- UPPER function -- LOWER function
SELECT column_name1, UPPER(column_name) AS new_column_name FROM table; --UPPER CASE
SELECT column_name1, LOWER(column_name) AS new_column_name FROM table; --LOWER CASE


-- SQRT and AVG --
SELECT Salary, SQRT(Salary) FROM employees;
SELECT AVG(Salary) FROM employees;

-- SUM function --
SELECT SUM(Salary) FROM employees;

-- Subqueries --
SELECT AVG(Salary) FROM employees;
SELECT FirstName, Salary FROM employees WHERE Salary > 3100 ORDER BY Salary {DESC | ASC};
SELECT FirstName, Salary FROM employees WHERE Salary > (SELECT AVG(Salary) FROM employees) ORDER BY Salary {DESC | ASC};

-- LIKE Operator --
SELECT column_name(s) FROM table_name WHERE column_name LIKE {patter};
--Pattern = '_' to match any single character and '%' to match an arbitary number of character (including zero)
--E.G. SELECT * FROM employees WHERE FirstName LIKE 'A%';

-- MIN Function --
SELECT MIN(Salary) AS Salary FROM employees;
















-- More Privileges in MySQL --

ALL PRIVILEGES: A wildcard for all rights to the selected database object or – with a *. * – to all databases
CREATE: Allows a user to create new databases
    -- Create user '$user'@'$localhost' identified by '$password';
DROP: Allows a user to delete databases
    -- Drop user '$user'@'$localhost';
DELETE: Allows a user to delete individual rows in a table
INSERT: Allows a user to create new rows in a table
SELECT: Read permissions for a database or table
FIX: Permission to update a row
GRANT OPTION: Allows a user to set or revoke the rights of other users
