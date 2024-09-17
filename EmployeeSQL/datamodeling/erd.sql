departments
--
dept_no varchar(4) pk
dept_name varchar(18)

dept_emp
--
emp_no int pk fk - employees.emp_no
dept_no varchar(4) fk >- departments.dept_no

dept_manager
--
dept_no varchar(4) fk >- departments.dept_no
emp_no int fk - employees.emp_no
id serial pk

employees
--
emp_no int pk
emp_title_id varchar(5) fk >- titles.title_id
birth_date varchar(10)
first_name varchar(30)
last_name varchar(30)
sex varchar(1)
hire_date varchar(10)

salaries
--
emp_no int pk fk - employees.emp_no
salary int

titles
--
title_id varchar(5) pk
title varchar(18)