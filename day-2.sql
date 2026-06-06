DESCRIBE `50_days_sql_challenge`.cleaned_departments;

-- 1. Tell VS Code exactly which folder to use
USE `50_days_sql_challenge`;

-- 2. Run your clean departments filter query
SELECT * 
FROM cleaned_departments
WHERE dept_name IS NULL 
   OR dept_name = ''
   OR dept_id IS NULL 
   OR dept_id = '';

DESCRIBE `50_days_sql_challenge`.cleaned_employees;

SELECT * 
FROM cleaned_employees
WHERE emp_id IS NULL
   OR emp_id = ''
   OR emp_name IS NULL
   OR emp_name = ''
   OR age  IS NULL
   OR age = ''
   OR city IS NULL
   OR city = ''
   OR dept_id IS NULL
   OR dept_id = ''
   OR hire_date IS NULL
   OR hire_date = ''

DESCRIBE `50_days_sql_challenge`.cleaned_performance;

SELECT * FROM cleaned_performance
WHERE salary_id IS NULL
   OR salary_id = ''
   OR employee_name IS NULL
   OR employee_name = ''
   OR salary_amount IS NULL
   OR salary_amount = ''

DESCRIBE `50_days_sql_challenge`.cleaned_salaries; 

SELECT*FROM cleaned_salaries
WHERE salary_id IS NULL
   OR salary_id = ''
   OR emp_id IS NULL
   OR emp_id = ''
   OR salary IS NULL
   OR salary = ''

DESCRIBE `50_days_sql_challenge`.cleaned_attendance;  

SELECT*FROM cleaned_attendance
WHERE attendance_id IS NULL
   OR attendance_id = ''
   OR employee_name IS NULL
   OR employee_name =''
   OR attendance_status IS NULL
   OR attendance_status = ''


 







