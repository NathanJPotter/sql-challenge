--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--2. List employees who were hired in 1986.

SELECT first_name,
last_name,
hire_date 
FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;