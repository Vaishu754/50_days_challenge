USE `50_days_sql_challenge`;


Update cleaned_employees
set emp_name='Unknown'
where emp_name is null or emp_name=''

--emp_id 13=Delhi
update cleaned_employees
set city='Delhi'
where emp_id=13;

update cleaned_employees
set city='Delhi NCR'
WHERE CITY IS NULL OR CITY='';

UPDATE cleaned_performance
SET salary_id = 0
WHERE salary_id='';

---EMPLOYEES

select emp_id,emp_name,city,count(*)
from cleaned_employees
GROUP BY emp_id,emp_name,city

having count(*)>1;

select rating_2022,emp_id,count(*)
from cleaned_performance
GROUP BY rating_2022,emp_id

having count(*)>1;

select dept_name,dept_id,count(*)
from cleaned_departments
GROUP BY dept_name,dept_id

having count(*)>1;

select attendance_id,attendance_status,count(*)
from cleaned_attendance
GROUP BY attendance_id,attendance_status

having count(*)>1;

select salary_id,emp_id,salary, count(*)
from cleaned_attendance
GROUP BY salary_id,emp_id,salary

having count(*)>1;















