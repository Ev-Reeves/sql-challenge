---1
select employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.sex,
	salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no
order by emp_no;

---2
select 
	employees.first_name,
	employees.last_name,
	employees.hire_date
from employees
where hire_date like '%1986';

---3
select
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name,
	dept_manager.dept_no
from dept_manager
inner join employees
on dept_manager.emp_no = employees.emp_no 
inner join departments
on dept_manager.dept_no = departments.dept_no
order by emp_no;
	
---4
select
	employees.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
from employees 
inner join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no
order by emp_no;

---5
select
	first_name,
	last_name,
	sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

---6
select
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales'
order by emp_no;

---7
select
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on dept_emp.emp_no = employees.emp_no
where dept_name in ('Sales', 'Development')
order by emp_no;

---8
select
	last_name, count(last_name) as frequency 
from employees
group by last_name
order by frequency desc;