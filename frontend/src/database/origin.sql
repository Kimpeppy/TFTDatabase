DELIMITER //
CREATE PROCEDURE showOrigin (IN champ_origin VARCHAR(50))
BEGIN
    SELECT * FROM champions WHERE origin = champ_origin;
END //
DELIMITER ;
