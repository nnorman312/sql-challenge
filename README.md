Employee Database: A Mystery in Two Parts

As a new data engineer at Pewlett Hackard, I am conducting a research project on employees of the corporation from the 1980s and 1990s. There are 6 remaining CSV files of data from this time period. 

Based on the CSV data, I first sketch out an ERD of the 6 corresponding SQL tables. Using this information, I then create a table schema for each of the 6 CSV files within a SQL database.

Once I complete the database, I perform the following data analysis: 

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Finally, I generate a visualization of the data by importing the SQL database into Pandas. I create a histogram to visualize the most common salary ranges for employees. Then, I create a bar chart of average salary by title.

