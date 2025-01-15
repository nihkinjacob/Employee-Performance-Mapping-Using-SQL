-- ANSWER - 1
create database employee;
use employee;

-- ANSWER - 2
select * from data_science_team; 
select * from emp_record_table; 
select * from proj_table; 

-- ANSWER - 3
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT from emp_record_table;
select EMP_ID, FIRST_NAME, LAST_NAME, DEPT from emp_record_table;

-- ANSWER - 4
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING from emp_record_table
where EMP_RATING <2 or EMP_RATING >4 or (EMP_RATING between 2 and 4); 

-- ANSWER - 5
Select concat(FIRST_NAME, ' '  ,LAST_NAME) as 'NAME' from emp_record_table
where DEPT = 'finance';

-- ANSWER - 6
SELECT MANAGER_ID AS EMP_ID, COUNT(*) AS NUMBER_OF_REPORTERS
FROM emp_record_table
WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID
ORDER BY NUMBER_OF_REPORTERS DESC;

-- ANSWER - 7
Select * from  emp_record_table where DEPT= 'healthcare' 
union
Select * from  emp_record_table where  DEPT = 'Finance' ;

-- -- ANSWER - 8
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EMP_RATING,
    (SELECT MAX(EMP_RATING) 
     FROM emp_record_table 
     WHERE DEPT = emp_record_table.DEPT) AS MAX_EMP_RATING
FROM emp_record_table
ORDER BY 
DEPT, EMP_RATING DESC;

-- ANSWER - 9
SELECT ROLE, MIN(SALARY) AS MINIMUM_SALARY, MAX(SALARY) AS MAXIMUM_SALARY
FROM emp_record_table
GROUP BY ROLE;

-- ANSWER - 10
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EXP,
RANK() OVER (ORDER BY EXP DESC) AS RANK_BY_EXPERIENCE
FROM emp_record_table
ORDER BY RANK_BY_EXPERIENCE;

-- ANSWER - 11
Create view Workers_Globally  AS
select EMP_ID, FIRST_NAME, LAST_NAME, ROLE, SALARY, COUNTRY from emp_record_table where salary>6000;
Select * from Workers_Globally;

-- ANSWER - 12
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EXP
FROM emp_record_table
WHERE 
    EMP_ID IN (
        SELECT EMP_ID
        FROM emp_record_table
        WHERE EXP > 10);
        
-- ANSWER - 13
call experience();




-- ANSWER - 14
call JOB_REQUIREMENTS(4);
DESCRIBE emp_record_table;
SELECT EMP_ID, FIRST_NAME, LAST_NAME, DEPT, EXP,
    JOB_POSITION AS ASSIGNED_POSITION,
    JOB_REQUIREMENTS(EXP) AS COMPANY_STANDARDS,
    CASE 
        WHEN JOB_POSITION = JOB_REQUIREMENTS THEN 'Standard_matched'
        ELSE 'Not_matched'
    END AS MATCH_PROFILE
FROM emp_record_table
WHERE DEPT = 'Data Science';

-- ANSWER - 15
CREATE INDEX index_first_name ON emp_record_table (FIRST_NAME(255));
SHOW INDEX FROM emp_record_table;
EXPLAIN SELECT * FROM emp_record_table WHERE FIRST_NAME = 'Eric';

-- ANSWER - 16
SELECT EMP_ID, FIRST_NAME, LAST_NAME, SALARY, 
    EMP_RATING, (0.05 * SALARY * EMP_RATING) AS BONUS
FROM emp_record_table;

-- ANSWER - 17
SELECT CONTINENT, COUNTRY, 
    AVG(SALARY) AS AVERAGE_SALARY
FROM emp_record_table
GROUP BY CONTINENT, COUNTRY
ORDER BY CONTINENT, COUNTRY;