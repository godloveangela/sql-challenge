-- 1. Create a departments table

CREATE TABLE departments (
    dept_no SERIAL,
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- View our table
SELECT * FROM departments;


-- 2. Create employees table
CREATE TABLE employees (
    emp_no SERIAL,
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

-- View our table
SELECT * FROM employees;

-- 3. Create title table
CREATE TABLE title (
    title_id SERIAL,
    title_id VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (title_id),
);

-- View our  table
SELECT * FROM title;


-- 4. Create salaries table
CREATE TABLE salaries (
    emp_no SERIAL,
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

-- View our table
SELECT * FROM salaries;

-- 5. Create dept_manager table
CREATE TABLE dept_manager (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR (255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View our table
SELECT * FROM dept_manager;

-- 6. Create a dept_emp table
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- View our table
SELECT * FROM dept_emp;