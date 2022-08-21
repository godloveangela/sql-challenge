--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary FROM employees, salaries WHERE employees.emp_no = salaries.emp_no LIMIT 50'

--2 List first name, last name, and hire date for employees who were hired in 1986.
 SELECT employees.first_name, employees.last_name, employees.hire_date FROM employees WHERE employees.hire_date BETWEEN '1986-01-01' AND '1986-12-31'

--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
 SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name from departments, dept_manager, employees where departments.dept_no = dept_manager.dept_no and dept_manager.emp_no = employees.emp_no LIMIT 50

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
 SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees, dept_emp, departments WHERE (employees.emp_no = dept_emp.emp_no) AND (dept_emp.dept_no = departments.dept_no) LIMIT 50

--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 SELECT first_name, last_name, sex from employees WHERE (first_name = 'Hercules') AND (last_name LIKE 'B%')

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
 SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees, dept_emp, departments WHERE (employees.emp_no = dept_emp.emp_no) AND (dept_emp.dept_no = departments.dept_no) AND (departments.dept_name = 'Sales') LIMIT 50

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
 SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees, dept_emp, departments WHERE (employees.emp_no = dept_emp.emp_no) AND (dept_emp.dept_no = departments.dept_no) AND (departments.dept_name = 'Sales' OR departments.dept_name = 'Development') LIMIT 50

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name ORDER BY COUNT(last_name) DESC LIMIT 50


