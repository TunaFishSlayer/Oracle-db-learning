--Oracle Wildcard special Operators


--Q1
SELECT
  first_name, last_name
FROM
  employees
WHERE
  first_name LIKE 'A%';
  
  
--Q2
SELECT
  first_name, last_name
FROM
  employees
WHERE
  last_name LIKE '%a';


--Q3
SELECT
  first_name, last_name
FROM
  employees
WHERE
  first_name LIKE '_s%';
  
  
--Q4
SELECT
  first_name, last_name
FROM
  employees
WHERE  
  LENGTH(first_name) = 5;
  
  
--Q5
SELECT  
  first_name, last_name  
FROM 
  employees 
WHERE 
  first_name LIKE 'A%' AND LENGTH(first_name) = 5;


--Q6
SELECT
  first_name, last_name
FROM
  employees
WHERE  
  LENGTH(first_name) = 5 AND last_name LIKE '__s%';


--Q7
SELECT
  first_name, last_name
FROM
  employees
WHERE  
  LENGTH(first_name) = 5 AND first_name LIKE 'S%n';
  

--Q8
SELECT
  first_name, last_name, 
  hire_date
FROM
  employees
WHERE 
   EXTRACT(MONTH FROM hire_date) IN ('6','7','8');
   
   
--Q9
SELECT
  first_name, last_name, 
  salary
FROM
  employees
WHERE 
  LENGTH(salary) = 4 AND salary LIKE '%0';
  
  
--Q10
SELECT
  first_name, last_name, 
  salary
FROM
  employees
WHERE 
  first_name LIKE '%ll%' OR last_name LIKE '%11%';
  
  
--Q11
SELECT
  first_name, last_name
FROM
  employees
WHERE 
  first_name LIKE '%l_x%';
  