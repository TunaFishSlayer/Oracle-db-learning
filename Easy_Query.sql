-- ORACLE EXERCISES QUERY


--Q1
SELECT * FROM employees


--Q2
SELECT 
  first_name || ' ' || last_name AS employee_name,
  job_id, 
  salary 
from employees  


--Q3
SELECT COUNT(*) FROM employees


--Q4
SELECT sum(salary) AS SUM_OF_Salary from employees


--Q5
SELECT 
  max(salary) AS highest_salary,
  min(salary) AS lowest_salary
FROM
  employees
  

--Q6
SELECT
  first_name || ' ' || last_name AS employee_name,
  salary
FROM
  employees
ORDER BY
  salary ASC;
  

--Q7
SELECT
  first_name || ' ' || last_name AS employee_name,
  salary
FROM
  employees
ORDER BY
  salary DESC;
  
  
--Q8
SELECT 
  first_name,
  last_name
FROM
  employees
ORDER BY 
  first_name ASC,
  last_name ASC;


--Q9
SELECT
  employee_id,
  first_name,
  department_id,
  salary
FROM
  employees
ORDER BY
  first_name,
  department_id,
  salary DESC;


--Q10
SELECT
  first_name,
  salary*12 AS annual_salary
FROM 
  employees
ORDER BY
  annual_salary DESC;
  

--Q11
SELECT
  department_id,
  COUNT(*) AS number_of_employees
FROM
  employees
GROUP BY 
  department_id
ORDER BY 
  department_id NULLS LAST;
  
  
--Q12  
SELECT 
  job_id,
  count(job_id)
FROM
  employees
GROUP BY 
  job_id;
  
 
--Q13
SELECT
  department_id,
  sum(salary)
FROM 
  employees
GROUP BY  
  department_id;
  

--Q14
SELECT
  department_id,
  max(salary)
FROM 
  employees
GROUP BY  
  department_id;
  

--Q15
SELECT
  job_id,
  sum(salary)
FROM 
  employees
GROUP BY  
  job_id;
  