SELECT e.emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_emp
FROM employees AS e
JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

select * from retirement_emp;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_emp 
ORDER BY emp_no, to_date DESC;


-- Table to count different employees by title
SELECT COUNT(title) AS emp_count, title
INTO retiring_titles
FROM unique_titles
JOIN employees
	ON unique_titles.emp_no = employees.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
GROUP BY title
ORDER BY emp_count DESC;

-- Create a table of  Mentorship Eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no, first_name, last_name, birth_date, dm.from_date, dm.to_date, title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS dm
	ON e.emp_no = dm.emp_no
	INNER JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE (dm.to_date = ('9999-01-01'))
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;