SELECT * FROM "Departments";
SELECT * FROM "Dept_employee";
SELECT * FROM "Dept_manager";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
FROM "Employees" 
JOIN "Salaries" 
ON "Employees".emp_no = "Salaries".emp_no;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM "Employees" 
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_manager".emp_no, "Employees".last_name, "Employees".first_name, "Dept_manager".from_date, "Dept_manager".to_date
FROM "Departments"
JOIN "Dept_manager" ON "Departments".dept_no = "Dept_manager".dept_no
JOIN "Employees" ON "Dept_manager".emp_no = "Employees".emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Dept_employee".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_employee"
JOIN "Employees" ON "Dept_employee".emp_no = "Employees".emp_no
JOIN "Departments" ON "Dept_employee".dept_no = "Departments".dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM "Employees" WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Dept_employee".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_employee"
JOIN "Employees" ON "Dept_employee".emp_no = "Employees".emp_no
JOIN "Departments" ON "Dept_employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Dept_employee".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_employee"
JOIN "Employees" ON "Dept_employee".emp_no = "Employees".emp_no
JOIN "Departments" ON "Dept_employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' OR "Departments".dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM "Employees"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;