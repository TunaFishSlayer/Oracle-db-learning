--ORACLE DATETIME QUERY


--Q1
SELECT TRUNC(TO_DATE(SYSDATE,'DD-MON-YY'), 'MONTH')
  "First day of current month " FROM DUAL;
SELECT TRUNC(SYSDATE,'MONTH') "First day of current month " FROM DUAL;


--Q2
SELECT TRUNC(LAST_DAY(SYSDATE)) AS last_day_of_month FROM dual;
SELECT TRUNC(ADD_MONTHS(SYSDATE, 1), 'MM') - 1 AS last_day_of_month FROM dual;


--Q3
SELECT 
  TRUNC(LAST_DAY(SYSDATE) - SYSDATE) "There are this much days left before the end of this month" 
FROM dual;


--Q4
SELECT 
  TRUNC(SYSDATE,'YEAR') "First day of the current year ",
  ADD_MONTHS(TRUNC(SYSDATE,'YEAR'),12)-1 "Last day of the current year"
FROM DUAL;


--Q5
SELECT
  TRUNC(LAST_DAY(SYSDATE)) - TRUNC(SYSDATE,'MM') + 1 "The number of days in the current month"
FROM dual;  
SELECT 
  CAST(LAST_DAY(SYSDATE) - TRUNC(SYSDATE, 'MM') AS INTEGER) "The number of days in the current month" 
FROM dual;


--Q6
SELECT 
  TO_DATE('12-08-2024', 'DD-MM-YYYY') - TO_DATE('01-08-2024', 'DD-MM-YYYY') AS days_between
FROM dual;
 
 
--Q7
SELECT
  TRUNC(SYSDATE, 'YYYY')
FROM dual;


--Q8
SELECT 
  ADD_MONTHS(TRUNC(SYSDATE, 'YYYY'),LEVEL-1) AS start_date,
  LAST_DAY(ADD_MONTHS(TRUNC(SYSDATE, 'YYYY' ),LEVEL-1)) AS end_date
FROM 
  dual
CONNECT BY 
  LEVEL <= 12;

