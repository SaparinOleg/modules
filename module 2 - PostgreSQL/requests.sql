--		Task 2

SELECT 
    FORMAT('This is %s, %s has email %s',
        name,
        CASE gender WHEN 'm' THEN 'he' 
                    WHEN 'f' THEN 'she' 
                    END,
        email
    ) AS "info" 
FROM 
    first_task;


SELECT 
    CONCAT(
       'This is ', name, ', ', CASE gender WHEN 'm' THEN 'he' WHEN 'f' THEN 'she' END, ' has email ', email) 
    AS "info" 
FROM 
    first_task;


SELECT 
   'This is ' || name || ', ' || CASE gender WHEN 'm' THEN 'he' WHEN 'f' THEN 'she' END || ' has email ' || email 
    AS "info" 
FROM 
    first_task;


--		Task 3

SELECT
    FORMAT('We have %s %s!',
        COUNT(gender),
        CASE gender WHEN 'm' THEN 'boys' 
                    WHEN 'f' THEN 'girls' 
                    END)
    AS "Gender information:"
FROM 
    first_task 
GROUP BY
    gender;


--		Task 5

SELECT
    v.name, 
    COUNT(w.word) AS "words"
FROM 
    vocabulary AS v
INNER JOIN word AS w ON w.vocabulary_id = v.id
GROUP BY
    v.name;
