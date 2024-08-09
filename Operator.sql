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
SELECT
  first_name, last_name,
  job_id,
  salary
FROM
  employees
WHERE
  job_id ='FI_ACCOUNT' AND salary<20000;
  

--Q7
SELECT
  first_name, last_name,
  job_id,
  salary
FROM
  employees
WHERE
  job_id ='FI_ACCOUNT' AND salary BETWEEN 5000 AND 20000;
  
  
--Q8
SELECT
  first_name, last_name,
  salary,
  commission_pct 
FROM
  employees
WHERE
  commission_pct > 0;
  
  
--Q9
SELECT
  first_name, last_name,
  salary,
  hire_date
FROM
  employees
WHERE 
  first_name IN ('Samuel','Elizabeth','Charles');
  
  
--Q10
SELECT
  first_name, last_name,
  job_id,
  salary
FROM
  employees
WHERE
  job_id NOT IN ('IT_PROG', 'FI_ACCOUNT')
ORDER BY 
  salary;
  
  
--Q11
SELECT
  first_name, last_name,
  hire_date
FROM
  employees
WHERE
  EXTRACT(YEAR from hire_date) != 2005;
  
  
--Q12
SELECT
  first_name, last_name,
  hire_date
FROM
  employees
WHERE
  hire_date = '17-JUN-1987'
ORDER BY
  hire_date DESC;
  
  
--Q13
SELECT
  first_name || ' ' || last_name || ' is a ' || job_id
FROM
  employees
WHERE
  salary > 2000;
 
 
--Q14
SELECT * FROM employees
WHERE hire_date BETWEEN '01-JAN-98' AND '31-DEC-2008';

