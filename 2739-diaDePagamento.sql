SELECT loan.name,
       CAST(EXTRACT(DAY FROM loan.payday) AS Integer)
FROM loan