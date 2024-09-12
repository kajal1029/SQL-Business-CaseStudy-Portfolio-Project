use ks;


WITH ranked_employees AS (
    SELECT 
        empid,
        salary,
        round(PERCENT_RANK() OVER (ORDER BY salary DESC),1) AS percentile
    FROM table19 
)
SELECT 
    empid, 
    salary 
FROM ranked_employees
WHERE percentile <= 0.1;

select * from table19;


