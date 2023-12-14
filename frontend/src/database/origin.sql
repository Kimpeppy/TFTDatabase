DELIMITER //
CREATE PROCEDURE showOrigin (IN champ_origin1 VARCHAR(50),
    IN champ_origin2 VARCHAR(50),
    IN champ_origin3 VARCHAR(50),
    IN champ_origin4 VARCHAR(50),
    IN champ_origin5 VARCHAR(50),
    IN champ_origin6 VARCHAR(50),
    IN champ_origin7 VARCHAR(50),
    IN champ_origin8 VARCHAR(50),
    IN champ_origin9 VARCHAR(50),
    IN champ_origin10 VARCHAR(50),
    IN champ_origin11 VARCHAR(50),
    IN champ_origin12 VARCHAR(50),
    IN champ_origin13 VARCHAR(50),
    IN champ_origin14 VARCHAR(50),
    IN champ_origin15 VARCHAR(50))
BEGIN
    CREATE TABLE origins (
        name VARCHAR(50) NOT NULL,
        cost INT,
        origin VARCHAR(50),
        className1 VARCHAR(50),
        className2 VARCHAR(50)
    );

    INSERT INTO origins (name, cost, origin, className1, className2)
    SELECT name, cost, origin, className1, className2
    FROM Champions
    WHERE origin = champ_origin1;

    IF champ_origin2 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin2;
    END IF;

     IF champ_origin3 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin3;
    END IF;

     IF champ_origin4 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin4;
    END IF;

     IF champ_origin5 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin5;
    END IF;

     IF champ_origin6 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin6;
    END IF;

     IF champ_origin7 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin7;
    END IF;

     IF champ_origin8 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin8;
    END IF;

     IF champ_origin9 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin9;
    END IF;

     IF champ_origin10 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin10;
    END IF;

     IF champ_origin11 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin11;
    END IF;

     IF champ_origin12 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin12;
    END IF;

     IF champ_origin13 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin13;
    END IF;

     IF champ_origin14 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin14;
    END IF;

     IF champ_origin15 IS NOT NULL THEN
        INSERT INTO origins (name, cost, origin, className1, className2)
        SELECT name, cost, origin, className1, className2
        FROM Champions
        WHERE origin = champ_origin15;
    END IF;

    SELECT * FROM origins;

    DROP TABLE origins;
END //
DELIMITER ;
