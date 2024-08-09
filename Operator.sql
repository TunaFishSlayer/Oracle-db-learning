--ORACLE EXERCISES OPERATOR


--Q1
SELECT 
  first_name || ' ' || last_name AS employee_name,
  department_id
FROM
  employees
WHERE 
 department_id = 20;
 
 
--Q2
SELECT
  first_name, last_name,
  salary*12 AS "Annual Salary"
FROM 
  employees
WHERE
  salary*12>10000;
  

--Q3
SELECT
  first_name, last_name,
  salary
FROM 
  employees
WHERE
  salary/30 > 100;
  
  
--Q4
SELECT 
  first_name || ' ' || last_name AS employee_name,
  department_id
FROM
  employees
WHERE 
 department_id != 20;


--Q5
SELECT
  first_name, last_name,
  job_id,
  salary
FROM
  employees
WHERE
  job_id ='AC_MGR' AND salary>5000;
  
  
--Q6
