SELECT * FROM "Departments";
SELECT * FROM "Dept_employee";
SELECT * FROM "Dept_manager";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM "Employees" JOIN "Salaries" ON employees.emp_no = salaries.emp_no;