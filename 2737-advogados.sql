SELECT l.name,
       l.customers_number
FROM lawyers l
WHERE l.customers_number = (SELECT MAX(customers_number) 
                            FROM lawyers)
UNION ALL

SELECT l.name,
       l.customers_number
FROM lawyers l
WHERE l.customers_number = (SELECT MIN(customers_number) 
                            FROM lawyers)
UNION ALL

SELECT 'Average' AS name,
        AVG(l.customers_number)::int AS customers_number
FROM lawyers l