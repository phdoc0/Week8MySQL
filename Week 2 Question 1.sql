SELECT titles.title as Title, COUNT(*) as count 
    FROM employees
    inner join titles
    on employees.emp_no = titles.emp_no
    where birth_date > "1965-01-01"
    GROUP BY titles.title 
    ORDER BY count DESC;
