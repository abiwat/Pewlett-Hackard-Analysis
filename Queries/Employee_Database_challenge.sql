SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_Date
	INTO retirement_titles
	FROM employees as e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	ORDER BY(e.emp_no);

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no ) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
	INTO unique_titles
	FROM retirement_titles as rt
	ORDER BY rt.emp_no asc, to_date desc ;

SELECT COUNT(ut.emp_no), ut.title
	INTO retiring_titles
	FROM unique_titles as ut
	GROUP BY ut.title
	ORDER BY COUNT(ut.emp_no) DESC;
				
SELECT DISTINCT ON (e.emp_no )e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
	INTO mentorship_eligibilty
	FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
	ON (e.emp_no= ti.emp_no)
	WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
	ORDER BY(e.emp_no);

SELECT DISTINCT ON (emp_no ) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title,
	rt.from_date,
	rt.to_date
	INTO retirement_titles_current
	FROM retirement_titles as rt
	where (to_date='9999/01/01')
	ORDER BY rt.emp_no asc, to_date desc ;
			
SELECT COUNT (retirement_titles_current.emp_no), retirement_titles_current.title 
	INTO retirement_title_count_current
	FROM retirement_titles_current
		GROUP BY retirement_titles_current.title
		ORDER BY COUNT desc;

SELECT DISTINCT ON (emp_no ) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title,
	rt.from_date,
	rt.to_date,
	d.dept_name
	INTO current_retitement_dept
		FROM retirement_titles as rt
		inner join dept_emp as de
		on (rt.emp_no=de.emp_no)
		inner join departments as d
		on (de.dept_no=d.dept_no)
		where (rt.to_date='9999/01/01')
		ORDER BY rt.emp_no asc, to_date desc ;

SELECT COUNT (dept_name), crd.dept_name
	INTO current_retirement_dept_v1
				FROM current_retitement_dept as crd
				GROUP BY dept_name;
				
SELECT DISTINCT ON (e.emp_no )e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title,
	d.dept_name
	INTO mentorship_eligibilty_v1
		FROM employees as e
		INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
		INNER JOIN titles as ti
		ON (e.emp_no= ti.emp_no)
		inner join departments as d
		ON de.dept_no=d.dept_no
		WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
		ORDER BY(e.emp_no);
				
SELECT COUNT(dept_name), dept_name
	INTO mentorship_eligibility_dept
		FROM mentorship_eligibilty_v1 as me
			GROUP BY dept_name;			
			
				
SELECT COUNT(emp_no), title
	INTO eligibility_count
	FROM mentorship_eligibilty
	GROUP BY title
	ORDER BY COUNT(emp_no ) desc;