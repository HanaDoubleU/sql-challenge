-- listing emp_no, first_name, last_name, sex, and salary
-- source: joins_solution.sql
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no=s.emp_no;

-- listing first_name, last_name, and hire_date of employees hired in 1986
-- source: slides from tuesday
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

-- listing managers, dept_no, dept_name, emp_no, last_name, and first_name
-- source: joining_bird_bands_solution.sql
select dm.id as "manager", dm.dept_no, dm.emp_no, e.last_name, e.first_name, d.dept_name
from dept_manager as dm
inner join employees as e on
dm.emp_no=e.emp_no
inner join departments as d on
dm.dept_no=d.dept_no;

-- listing dept_no, emp_no, last_name, first_name, and dept_name
-- source: joining_bird_bands_solution.sql
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join employees as e on
de.emp_no=e.emp_no
inner join departments as d on
de.dept_no=d.dept_no;

-- listing first_name, last_name, and sex of employees named hercules b.
-- source: slides from tuesday
-- source: mine_the_subquery_solution.sql
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and
last_name like 'B%';

-- listing employees in sales, emp_no, last_name, and first_name of employees in sales
-- source: subqueries_solution.sql
select emp_no, last_name, first_name
from employees
where emp_no in
(
	select emp_no
	from dept_emp
	where dept_no in
	(
		select dept_no
		from departments
		where dept_name = 'Sales'
	)
);

-- listing employees in sales and development, emp_no, last_name, first_name, and dept_name
-- source: joining_birds_bands_solution.sql
-- source: i figure that "or" would be a thing since "and" was a thing.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on
e.emp_no=de.emp_no
inner join departments as d on
de.dept_no=d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- listing count of shared last_name in descending order
-- source: https://www.postgresql.org/docs/9.5/functions-aggregate.html
-- source: order_by_aggregates_solution.sql
select last_name, count(last_name) as "counts"
from employees
group by last_name
order by "counts" desc;