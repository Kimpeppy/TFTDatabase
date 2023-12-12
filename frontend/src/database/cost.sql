DELIMITER //
PROCEDURE showCost (IN champ_cost INT)
BEGIN
    SELECT * FROM champions WHERE cost = champ_cost;
END //
DELIMITER ;
