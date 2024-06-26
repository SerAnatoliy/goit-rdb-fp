DROP FUNCTION IF EXISTS DiffYear;

DELIMITER //
CREATE FUNCTION DiffYear(year INT)
RETURNS INT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result INT;
    SET result = TIMESTAMPDIFF(YEAR, MAKEDATE(year, 1), CURDATE());
    RETURN result;
END //

DELIMITER ;

SELECT id, year, DiffYear(year) diff_data 
FROM cases