USE `50_days_sql_challenge`;


---emp/salaries/performance

---employees table----

with CTE as (

    SELECT * ,ROW_NUMBER() over (PARTITION BY emp_id,emp_name,city

    ORDER BY emp_id ) as rn

    FROM cleaned_employees )

    DELETE FROM cleaned_employees 
    WHERE emp_id IN
    (select emp_id from cte WHERE rn>1);

    ---Salary Table----

with CTE as (    

    SELECT * ,ROW_NUMBER() over (PARTITION BY salary_id,emp_id

    ORDER BY salary_id ) as rn

    FROM cleaned_salaries )

    DELETE FROM cleaned_salaries
    WHERE salary_id IN
    (select salary_id from cte where rn>1);

    ---Performance Table----

with CTE as (    

    SELECT * ,ROW_NUMBER() over (PARTITION BY rating_2022,emp_id

    ORDER BY emp_id ) as rn

    FROM cleaned_performance )

    DELETE FROM cleaned_performance
    WHERE emp_id IN
    (select emp_id  from cte where rn>1); 

    -----attendance table-----

with CTE as (    

    SELECT * ,ROW_NUMBER() over (PARTITION BY attendance_id,emp_id

    ORDER BY attendance_id ) as rn

    FROM cleaned_attendance )

    DELETE FROM cleaned_attendance
    WHERE attendance_id IN
    (select attendance_id  from cte where rn>1);  

    -----department table------

 with CTE as (    

    SELECT * ,ROW_NUMBER() over (PARTITION BY dept_id,dept_name

    ORDER BY dept_id ) as rn

    FROM cleaned_department )

    DELETE FROM cleaned_department
    WHERE dept_id IN
    (select dept_id  from cte where rn>1);  
   
---task-02 identify text inconsistency-----
---city

SELECT distinct city
from cleaned_employees

SELECT DISTINCT dept_name
from cleaned_departments

UPDATE cleaned_employees
SET CITY =CONCAT(UPPER(LEFT(TRIM(CITY),1))),
LOWER(substring(trim(city),2))


UPDATE cleaned_employees
SET city = CASE

when city in('Dlhi','Dlehi ncr','New delhi') then 'DELHI'

WHEN CITY IN ('Hydbd','Hydrabad') then 'Hyderabad'

when city in ('Banglore') then 'Bengaluru'

else city
end;
-----Performance----
SELECT distinct rating_2023
from cleaned_performance

UPDATE performance
SET rating_2022 = CASE
    WHEN rating_2022 IS NULL THEN 0
    ELSE rating_2022
END,

rating_2023 = CASE
    WHEN rating_2023 IS NULL THEN 0
    ELSE rating_2023
END,

rating_2024 = CASE
    WHEN rating_2024 IS NULL THEN 0
    ELSE rating_2024
END;

-----salaries----
UPDATE salaries
SET salary = CASE

WHEN salary < 0 THEN ABS(salary)

ELSE salary
END;









