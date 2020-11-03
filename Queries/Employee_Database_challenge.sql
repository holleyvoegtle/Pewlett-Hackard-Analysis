SELECT emp_no, first_name, last_name 
FROM employees;

SELECT title, from_date, to_date, employees.emp_no, first_name, last_name
INTO retirement_titles
FROM titles
JOIN employees
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER by employees.emp_no;

SELECT * FROM retirement_titles;

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title INTO unique_titles FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(title), title FROM unique_titles GROUP BY(title) ORDER BY COUNT(title) DESC;


SELECT emp_no, first_name, last_name, birth_date
FROM employees;
SELECT from_date, to_date
FROM dept_emp;
SELECT title
FROM titles;
SELECT employees.emp_no, first_name, last_name, birth_date, from_date, to_date, title
INTO mentorship_eligibilty
FROM titles
JOIN employees
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY employees.emp_no;

SELECT * FROM mentorship_eligibilty