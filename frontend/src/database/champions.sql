CREATE TABLE champions (
    name VARCHAR(50) NOT NULL,
    cost INT,
    origin VARCHAR(50),
    className1 VARCHAR(50),
    className2 VARCHAR(50)
);

-- One Cost
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Annie', 1, 'Emo', 'Spellweaver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Corki', 1, '8-Bit', 'Big Shot', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Evelynn', 1, 'K/DA', 'Crowd Diver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Jinx', 1, 'Punk', 'RapidFire', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('KSante', 1, 'HEARTSTEEL', 'Sentinel', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Kennen', 1, 'True Damage', 'Guardian', 'Superfan');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Lillia', 1, 'K/DA', 'Sentinel', 'Superfan');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Nami', 1, 'Disco', 'Dazzler', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Olaf', 1, 'Pentakill', 'Bruiser', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Tahm Kench', 1, 'Country', 'Bruiser', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Taric', 1, 'Disco', 'Guardian', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Vi', 1, 'Punk', 'Mosher', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Yasuo', 1, 'True Damage', 'Edgelord', NULL);

-- Two Cost
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Aphelios', 2, 'HEARTSTEEL', 'Rapidfire', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Bard', 2, 'Jazz', 'Dazzler', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Garen', 2, '8-Bit', 'Sentinel', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Gnar', 2, 'Pentakill', 'Mosher', 'Superfan');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Gragas', 2, 'Disco', 'Bruiser', 'Spellweaver');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Jax', 2, 'EDM', 'Mosher', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Kaisa', 2, 'K/DA', 'Big Shot', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Katarina', 2, 'Country', 'Crowd Diver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Kayle', 2, 'Pentakill', 'Edgelord', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Pantheon', 2, 'Punk', 'Guardian', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Senna', 2, 'True Damage', 'Rapidfire', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Seraphine', 2, 'K/DA', 'Spellweaver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Twitch', 2, 'Punk', 'Executioner', NULL);

-- Three Cost
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Amumu', 3, 'Emo', 'Guardian', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Ekko', 3, 'True Damage', 'Sentinel', 'Spellweaver');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Lulu', 3, 'Hyperpop', 'Spellweaver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Mordekaiser', 3, 'Pentakill', 'Sentinel', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Miss Fortune', 3, 'Jazz', 'Big Shot', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Neeko', 3, 'K/DA', 'Guardian', 'Superfan');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Riven', 3, '8-Bit', 'Edgelord', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Samira', 3, 'Country', 'Executioner', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Sett', 3, 'Heartsteel', 'Bruiser', 'Mosher');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Urgot', 3, 'Country', 'Mosher', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Vex', 3, 'Emo', 'Executioner', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Yone', 3, 'Heartsteel', 'Crowd Diver', 'Edgelord');

-- Four Cost
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Ahri', 4, 'K/DA', 'Spellweaver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Akali', 4, 'K/DA', 'Executioner', 'BreakOut');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Akali', 4, 'True Damage', 'Executioner', 'BreakOut');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Blitzcrank', 4, 'Disco', 'Sentinel', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Caitlyn', 4, '8-Bit', 'Rapidfire', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Ezreal', 4, 'Heartsteel', 'Big Shot', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Karthus', 4, 'Pentakill', 'Executioner', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Poppy', 4, 'Emo', 'Mosher', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Thresh', 4, 'Country', 'Guardian', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Twisted Fate', 4, 'Disco', 'Dazzler', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Viego', 4, 'Pentakill', 'Edgelord', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Zac', 4, 'EDM', 'Bruiser', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Zed', 4, 'EDM', 'Crowd Diver', NULL);

-- Five Cost
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Illaoi', 5, 'ILLBEATS', 'Bruiser', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Jhin', 5, 'Maestro', 'Big Shot', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Kayn', 5, 'Heartsteel', 'Wildcard', 'Edgelord');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Lucian', 5, 'Jazz', 'Rapidfire', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Qiyana', 5, 'True Damage', 'Crowd Diver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Sona', 5, 'Mixmaster', 'Spellweaver', NULL);
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Yorick', 5, 'Pentakill', 'Mosher', 'Guardian');
INSERT INTO champions (name, cost, origin, className1, className2) VALUES ('Ziggs', 5, 'Hyperpop', 'Dazzler', NULL);
