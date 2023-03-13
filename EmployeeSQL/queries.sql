/* 1. List the employee number, last name, first name, sex, and salary of each employee. */
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees_4 as e
INNER JOIN salary_3 as s on e.emp_no = s.emp_no
WHERE salary > 0;

/* 2. List the first name, last name, and hire date for the employees who were hired in 1986. */
SELECT first_name, last_name, hire_date 
FROM employees_4
WHERE EXTRACT(YEAR FROM hire_date)=1986;

/* 3. List the manager of each department along with their department number, department name, 
employee number, last name, and first name. */
SELECT dm.dept_no, dep.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees_4 as e
INNER JOIN dept_manager_4 as dm on e.emp_no = dm.emp_no
INNER JOIN departments_4 as dep on dm.dept_no = dep.dept_no;


/* 4. List the department number for each employee along with that employee’s employee number, 
last name, first name, and department name. */
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employees_4 as e
inner join dept_emp_4 as de on e.emp_no = de.emp_no
inner join departments_4 as dep on dep.dept_no = de.dept_no;

/* 5. List first name, last name, and sex of each employee whose first name is Hercules 
and whose last name begins with the letter B. */
select first_name, last_name , sex
from employees_4
where first_name = 'Hercules' and last_name like 'b%';


/* 6. List each employee in the Sales department, including their employee number, last name, 
and first name. */

Select e.last_name, e.first_name, de.emp_no , dep.dept_name
From employees_4 as e 
inner join dept_emp_4 as de on e.emp_no =de.emp_no
inner join departments_4 as dep  on de.dept_no =dep.dept_no 
where dep.dept_name = 'Sales';


/* 7. List each employee in the Sales and Development departments, including their employee number, 
last name, first name, and department name. */

select e.last_name , e.first_name , dept_name , e.emp_no
from employees_4 as e
inner join dept_emp_4 as de on e.emp_no =de.emp_no
inner join departments_4 as dep  on de.dept_no =dep.dept_no 
where dep.dept_name in ('Sales','Development');



/* 8. List the frequency counts, in descending order, of all the employee last names (that is, how 
many employees share each last name). */

Select COUNT(DISTINCT e.last_name) as "last_name_count"
From employees_4 as e
group by last_name
order by "last_name_count" DESC;

