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
    emp_no int primary key,
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
create table dept_manager (
    dept_no varchar(4),
    emp_no int primary key
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
create table employees (
    emp_no int primary key,
    emp_title_id varchar,
    birth_date varchar,
    first_name varchar,
    last_name varchar,
    sex varchar,
    hire_date varchar
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
    title_id primary key,
    title varchar
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from titles;