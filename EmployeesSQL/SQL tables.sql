-- Create departments table

CREATE TABLE departments (
dept_no VARCHAR(30),
dept_name VARCHAR(50) NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments


-- Create dept_emp table

DROP TABLE dept_emp

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(50) NOT NULL,
PRIMARY KEY (emp_no)
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- Create dept_managers table

DROP TABLE dept_managers

CREATE TABLE dept_managers(
 dept_no VARCHAR (10),
 emp_no INT
);

SELECT * FROM dept_managers

-- Create employees table

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
);

SELECT * FROM employees

--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

SELECT * FROM salaries