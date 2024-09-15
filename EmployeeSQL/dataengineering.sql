-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists departments;

-- creating table and columns for departments
-- source: schema.sql from tenth activity on tuesday
create table departments (
    dept_no varchar(4) primary key,
    dept_name varchar
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from departments;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists dept_emp;

-- creating table and columns for dept_emp
-- source: schema.sql from tenth activity on tuesday
create table dept_emp (
    emp_no int,
    dept_no varchar(4)
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from dept_emp;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists dept_manager;

-- creating table and columns for dept_manager
-- source: schema.sql from tenth activity on tuesday
-- source: xpert
-- source: value_of_uniques_solution.sql
create table dept_manager (
    dept_no varchar(4),
    emp_no int,
    id serial primary key
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from dept_manager;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists employees;

-- creating table and columns for employees
-- source: schema.sql from tenth activity on tuesday
-- source: value_of_unique_solution.sql
create table employees (
    id serial primary key,
    emp_no int,
    emp_title_id varchar(5),
    birth_date varchar(10),
    first_name varchar(30),
    last_name varchar (30),
    sex varchar(1),
    hire_date varchar(10)
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from employees;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists salaries;

-- creating table and columns for salaries
-- source: schema.sql from tenth activity on tuesday
create table salaries (
    emp_no int primary key,
    salary int
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from salaries;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists titles;

-- creating table and columns for titles
-- source: schema.sql from tenth activity on tuesday
create table titles (
    title_id varchar(5) primary key,
    title varchar(18)
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from titles;