DELIMITER //
CREATE PROCEDURE showClass (IN champ_class VARCHAR(50))
BEGIN
    SELECT * FROM champions WHERE className1 = champ_class OR className2 = champ_class;
END //
DELIMITER ;
