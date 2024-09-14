-- listing emp_no, first_name, last_name, sex, and salary
-- source: joins_solution.sql
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no=s.emp_no;

-- listing first_name, last_name, hire_date of employees hired in 1986
-- source: slides from tuesday
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

-- listing managers, dept_no, dept_name, emp_no, last_name, and first_name
-- source: joining_bird_bands_solution.sql
select dm.id as manager, dm.dept_no, dm.emp_no, e.last_name, e.first_name, d.dept_name
from dept_manager as dm
inner join employees as e on
dm.emp_no=e.emp_no
inner join departments as d on
dm.dept_no=d.dept_no;

-- listing dept_no, emp_no, last_name, first_name, dept_name
-- source: joining_bird_bands_solution.sql
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join employees as e on
de.emp_no=e.emp_no
inner join departments as d on
de.dept_no=d.dept_no;