SELECT 
  CONCAT(
    SUBSTRING(cpf, 1, 3),
    '.',
    SUBSTRING(cpf, 4, 3),
    '.',
    SUBSTRING(cpf, 7, 3),
    '-',
    SUBSTRING(cpf, 10, 2)
  ) AS CPF
FROM natural_person
LEFT JOIN customers ON(customers.id = natural_person.id_customers)
 