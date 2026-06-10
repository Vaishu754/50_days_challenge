USE `50_days_sql_challenge`;

alter table cleaned_salaries
modify salary int;

----basic understanding----
SELECT

MIN(salary) as min_salary,
MAX(salary) as max_salary,
AVG(salary) as avg_salary

from cleaned_salaries
where salary>0;

--client rules max sal-2,00,000  min_sal-20,000

alter table as cleaned_salaries
add column is_outlier int;

update cleaned_salaries
set is_outlier = 
case when salary<20000 or salary>200000
then 1
then 0
end;

select*
from cleaned_salaries
where is_outlier=1;

----clent rules max_sal- 2,00,000 min_sal-0

ALTER TABLE cleaned_salaries
ADD COLUMN is_outlier INT;

UPDATE cleaned_salaries
SET is_outlier =
CASE
    WHEN salary < 0 OR salary > 200000 THEN 1
    ELSE 0
END;

SELECT *
FROM cleaned_salaries
WHERE is_outlier = 1;
----handle outliers-----
UPDATE cleaned_salaries
SET salary =
CASE
    WHEN emp_id = 35 THEN 65000
    WHEN emp_id = 262 THEN 97000
    WHEN emp_id = 463 THEN 55000
    WHEN emp_id = 142 THEN 60000
    ELSE salary
END
WHERE emp_id IN (35, 262, 463, 142);
-----handle records-----
SELECT *
FROM cleaned_salaries
WHERE emp_id IN (35, 262, 463, 142);



