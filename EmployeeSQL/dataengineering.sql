-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists departments;

-- creating table and columns for departments
-- source: schema.sql from tenth activity on tuesday
create table departments (
    dept_no varchar(4) primary key not null,
    dept_name varchar(18) not null
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from departments;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists titles;

-- creating table and columns for titles
-- source: schema.sql from tenth activity on tuesday
create table titles (
    title_id varchar(5) primary key not null,
    title varchar(18) not null
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from titles;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists employees;

-- creating table and columns for employees
-- source: schema.sql from tenth activity on tuesday
-- source: schema_solution.sql from third activity on monday
create table employees (
    emp_no int primary key not null,
    emp_title_id varchar(5) not null,
    birth_date varchar(10) not null,
    first_name varchar(30) not null,
    last_name varchar (30) not null,
    sex varchar(1) not null,
    hire_date varchar(10) not null,
    foreign key (emp_title_id) references titles(title_id)
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
-- source: schema_solution.sql from third activity on monday
create table salaries (
    emp_no int primary key not null,
    salary int not null,
    foreign key (emp_no) references employees(emp_no)
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from salaries;



-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists dept_emp;

-- creating table and columns for dept_emp
-- source: schema.sql from tenth activity on tuesday
-- source: schema_solution.sql from third activity on monday
-- source: value_of_uniques_solution.sql
create table dept_emp (
    id serial primary key,
    emp_no int not null,
    dept_no varchar(4) not null,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
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
-- dropping any existing table before creating table
-- source: schema.sql from tenth activity on tuesday
drop table if exists dept_manager;

-- source: value_of_uniques_solution.sql
-- source: schema_solution.sql from third activity on monday
create table dept_manager (
    id serial primary key,
    dept_no varchar(4) not null,
    emp_no int not null,
    foreign key (dept_no) references departments(dept_no),
    foreign key (emp_no) references employees(emp_no)
);

-- verifying table
-- source: schema.sql from tenth activity on tuesday
select *
from dept_manager;