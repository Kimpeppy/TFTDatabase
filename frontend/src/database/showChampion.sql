DELIMITER //
CREATE OR REPLACE PROCEDURE showOrigin (IN champ_name VARCHAR(50))
BEGIN
    SELECT * FROM champions WHERE name = champ_name;
END //
DELIMITER ;
