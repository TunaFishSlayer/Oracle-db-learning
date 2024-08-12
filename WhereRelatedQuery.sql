--ORACLE WHERE STATEMENT EXERCISES


--Q1
SELECT
  employee_id,
  first_name,
  last_name
FROM
  employees
WHERE
  commission_pct > 0 OR commission_pct IS NOT NULL;


--Q2
SELECT
  employee_id,
  first_name,
  last_name
FROM
  employees
WHERE
  commission_pct IS NULL;
  
  
--Q3
SELECT
  first_name,
  last_name,
  job_id,
  salary
FROM
  employees
WHERE
  job_id IN('ST_CLERK', 'SA_MAN', 'IT_PROG') AND salary > 3000;
  
  
--Q4
SELECT
  first_name,
  last_name,
  job_id,
  department_id
FROM
  employees
WHERE
  job_id IN('ST_CLERK', 'SA_MAN', 'IT_PROG') 
  OR
  department_id IN('10', '20', '40');


--Q5
SELECT
  first_name,
  last_name,
  job_id
FROM 
  employees
WHERE
  job_id != 'AC_MGR';
  

--Q6
SELECT
  first_name,
  last_name,
  job_id
FROM
  employees
WHERE
  job_id NOT IN('ST_CLERK', 'SA_MAN', 'IT_PROG');
 
 
 --Q7
SELECT
  max(salary)
FROM
  employees
WHERE
  job_id = 'ST_CLERK';
  
  
--Q8 
SELECT
  max(salary)
FROM
  employees
WHERE
  department_id = 50;
  
  
--Q9
SELECT
  min(salary)
FROM
  employees
WHERE
  job_id = 'SA_MAN';


--Q10
SELECT
  sum(salary)
FROM
  employees
WHERE
  job_id = 'SA_MAN';
  

--Q11
SELECT
  department_id,
  count(department_id) 
FROM
  employees
GROUP BY
  department_id HAVING count(department_id) > 10;


--Q12
SELECT
  job_id,
  sum(salary)
FROM
  employees
GROUP BY
  job_id HAVING sum(salary) > 50000;
  

--Q13
SELECT
  job_id,
  count(employee_id)
FROM
  employees
GROUP BY
  job_id HAVING count(employee_id) > 3;