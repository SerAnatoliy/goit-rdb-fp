SELECT id, 
AVG(number_rabies) AS average, 
MAX(number_rabies) AS max, 
MIN(number_rabies) AS min,
SUM(number_rabies) AS sum 
FROM cases
WHERE Number_rabies <>''
GROUP BY id
ORDER BY average DESC
LIMIT 10;