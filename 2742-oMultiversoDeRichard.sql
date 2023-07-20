SELECT lr.name,
       CAST(lr.omega * 1.618 AS NUMERIC(10, 3)) AS "Fator N"
FROM dimensions d
INNER JOIN life_registry lr ON lr.dimensions_id = d.id
WHERE lr.name LIKE 'Richard%' 
      AND d.name IN ('C875', 'C774')
ORDER BY lr.omega 

