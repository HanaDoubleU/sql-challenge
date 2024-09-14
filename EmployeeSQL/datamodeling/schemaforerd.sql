-- schema for erd
-- source: schema.sql from tuesday's tenth activity
-- source: slides for 9.3
-- source: video on quickdbd

departments
-- # each department's number and its corresponding name
--
dept_no varchar(4) pk
dept_name varchar(18)

dept_emp
-- # each employee and their corresponding department(s)
--
emp_no int
dept_no varchar(4) fk >- departments.dept_no

dept_manager
-- # each manager among employees and their corresponding department
--
dept_no varchar(4) fk >- departments.dept_no
emp_no int
id serial pk

employees
-- # each employee's personal information
--
emp_no int pk
emp_title_id varchar(5) fk >- titles.title_id
birth_date varchar(10)
first_name varchar(30)
last_name varchar(30)
sex varchar(1)
hire_date varchar(10)

salaries
-- # each employee's salary
--
emp_no int pk
salary int

titles
-- # each title's number and its corresponding name
--
title_id varchar(5) pk
title varchar(18)