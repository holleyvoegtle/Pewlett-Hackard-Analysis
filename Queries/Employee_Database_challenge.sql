SELECT emp_no, first_name, last_name 
FROM employees;

SELECT title, from_date, to_date, employees.emp_no, first_name, last_name
INTO retirement_titles
FROM titles
JOIN employees
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER by employees.emp_no;

SELECT * FROM retirement_titles

SELECT emp_no, first_name, last_name, title FROM retirement_titles
