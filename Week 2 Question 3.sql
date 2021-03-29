SELECT dept_name, sum(salary) AS Total
	FROM salaries 
	INNER JOIN dept_emp
	ON salaries.emp_no = dept_emp.emp_no
		INNER JOIN departments 
		ON dept_emp.dept_no = departments.dept_no 
	WHERE departments.dept_name = "Marketing"
		AND (YEAR(salaries.from_date) BETWEEN "1990" AND "1992"
		OR YEAR(salaries.to_date) BETWEEN "1990" AND "1992")
	GROUP BY dept_emp.dept_no;

