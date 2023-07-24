SELECT COUNT(amount) AS most_frequent_value
FROM value_table
GROUP BY amount 
LIMIT 1