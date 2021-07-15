-- Create departments table

DROP TABLE deptartments

CREATE TABLE departments (
dept_no VARCHAR(30) NOT NULL,
dept_name VARCHAR(50) NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments


-- Create dept_emp table

DROP TABLE dept_emp

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(50) NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- Create dept_managers table

DROP TABLE dept_managers

CREATE TABLE dept_managers(
dept_no VARCHAR (10),
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_managers

-- Create employees table

DROP TABLE employees

CREATE TABLE employees(
emp_no INT,
emp_title_id VARCHAR(70),
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
sex VARCHAR(2),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no)
);

SELECT * FROM employees

--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

--Creating titles table

DROP TABLE titles

CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR(50) NOT NULL
);

SELECT * FROM titles