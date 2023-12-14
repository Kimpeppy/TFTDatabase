DELIMITER //
CREATE PROCEDURE showCost (IN champ_cost1 INT, 
    IN champ_cost2 INT, 
    IN champ_cost3 INT, 
    IN champ_cost4 INT, 
    IN champ_cost5 INT)
BEGIN
    CREATE TABLE costs (
        name VARCHAR(50) NOT NULL,
        cost INT,
        origin VARCHAR(50),
        className1 VARCHAR(50),
        className2 VARCHAR(50)
    );

    INSERT INTO costs (name, cost, origin, className1, className2)
    SELECT name, cost, origin, className1, className2
    FROM Champions
    WHERE cost = champ_cost1;

    IF champ_cost2 IS NOT NULL THEN 
        INSERT INTO costs (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE cost = champ_cost2;
    END IF;

    IF champ_cost3 IS NOT NULL THEN
        INSERT INTO costs (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE cost = champ_cost3;
    END IF;

     IF champ_cost4 IS NOT NULL THEN
        INSERT INTO costs (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE cost = champ_cost4;
    END IF;

     IF champ_cost5 IS NOT NULL THEN
         INSERT INTO costs (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE cost = champ_cost5;
    END IF;

    SELECT * FROM costs;

    DROP TABLE costs;
END //
DELIMITER ;
