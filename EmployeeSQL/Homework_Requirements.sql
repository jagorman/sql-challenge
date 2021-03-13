--Data Analysis
--Once you have a complete database, do the following:


-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp, 
		employees.last_name, 
		employees.first_name, 
		employees.sex,
		salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '12-31-1985'
AND hire_date <= '01-01-1987'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--departments(dept_no, dept_name)
--dept_manager (dept_no, emp_no)
--employees (emp_no, last_name, first_name)
SELECT dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no,
		employees.last_name,
		employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no=employees.emp
ORDER BY "dept_no" ASC;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

---employees(emp, last_name, first_name)
---departments(dept_no, dept_name)
---dept_manager(dept_no, emp_no)

SELECT employees.emp,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM employees
INNER JOIN dept_manager ON
employees.emp = dept_manager.emp_no
INNER JOIN Departments ON
dept_manager.dept_no = departments.dept_no
ORDER BY "emp" ASC;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

---employees(last_name, first_name)

Select first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY "last_name" ASC;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

---departments (dept_no, dept_name)
---dept_manager(dept_no, emp_no
---employees(emp_no, last_name, first_name)

SELECT emp, 

employees.emp, 
		employees.last_name,
		employees.first_name,
		
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



