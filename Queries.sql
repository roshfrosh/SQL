--List the following details of each employee: employee number, last name, first name, gender, and salary
Select Employees.emp_no,
Employees.last_name,
Employees.first_name,
Employees.gender,
Salary.salary
FROM Employees
INNER JOIN Salary ON
Employees.emp_no = Salary.emp_no;

--List employees who were hired in 1986.
Select first_name, last_name, hire_date FROM Employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

Select Departments.dept_no,
Departments.dept_name,
Dept_manager.emp_no,
Employees.last_name,
Employees.first_name,
Dept_manager.from_date,
Dept_manager.to_date
FROM Departments
INNER JOIN Dept_manager ON
Departments.dept_no = Dept_manager.dept_no
INNER JOIN Employees ON
Dept_manager.emp_no = Employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON
Dept_emp.emp_no = Employees.emp_no
INNER JOIN Departments ON
Dept_emp.dept_no = Departments.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name FROM Employees
Where first_name = 'Hercules'
And last_name like  'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON
Dept_emp.emp_no = Employees.emp_no
INNER JOIN Departments ON
Dept_emp.dept_no = Departments.dept_no
Where Departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select Dept_emp.emp_no,
Employees.last_name,
Employees.first_name,
Departments.dept_name
FROM Dept_emp
INNER JOIN Employees ON
Dept_emp.emp_no = Employees.emp_no
INNER JOIN Departments ON
Dept_emp.dept_no = Departments.dept_no
Where Departments.dept_name = 'Sales'
Or Departments.dept_name = 'Development';
--order by departments asc;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, 
Count(last_name) as "frequency"
From  Employees
Group by last_name 
Order by count (last_name) desc;

