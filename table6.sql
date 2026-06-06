USE `50_days_sql_challenge`;

CREATE TABLE cleaned_departments AS 
SELECT * FROM departments;

CREATE TABLE cleaned_employees AS 
SELECT * FROM employees;


DROP TABLE IF EXISTS `50_days_sql_challenge`.cleaned_attendance;


CREATE TABLE `50_days_sql_challenge`.cleaned_attendance AS 
SELECT * FROM `50_days_sql_challenge`.attendance;

USE `50_days_sql_challenge`;


DROP TABLE IF EXISTS `50_days_sql_challenge`.cleaned_salaries;


CREATE TABLE `50_days_sql_challenge`.cleaned_salaries AS 
SELECT * FROM `50_days_sql_challenge`.salaries;


DROP TABLE IF EXISTS `50_days_sql_challenge`.cleaned_performance;


CREATE TABLE `50_days_sql_challenge`.cleaned_performance AS 
SELECT 
    salary_id,       
    employee_name, 
    salary_amount 
FROM `50_days_sql_challenge`.salary;





