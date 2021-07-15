-- Create departments table

CREATE TABLE departments (
dept_no VARCHAR(30),
dept_name VARCHAR(50) NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments

DROP TABLE dept_emp

-- Create dept_emp table

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR(50) NOT NULL,
PRIMARY KEY (emp_no)
);

SELECT * FROM dept_emp