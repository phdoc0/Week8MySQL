SELECT title AS Title, avg(salary) AS "Average Salary"
	FROM salaries
	INNER JOIN titles
	ON salaries.emp_no = titles.emp_no
	GROUP BY title;

