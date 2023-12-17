-- CREATE TABLE champion_abilities
CREATE TABLE champion_abilities (
    champion_name VARCHAR(50) PRIMARY KEY,
    ability VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

-- One Cost Champions Abilities
INSERT INTO champion_abilities (champion_name, ability, description) VALUES 
('Annie', 'Summon: Tibbers', 'Annie summons her bear Tibbers to the field, dealing area-of-effect damage to enemies.'),
('Corki', 'Phosphorus Bomb', 'Corki throws a bomb at a target location, dealing damage and revealing the area.'),
('Evelynn', 'Last Caress', 'Evelynn dashes to a location and executes enemies in the area, resetting upon takedown.'),
('Jinx', 'Switcheroo!', 'Jinx switches between her minigun and rocket launcher, each with its own attack style.'),
('KSante', 'Charge!', 'KSante charges forward, knocking up and stunning enemies in his path.'),
('Kennen', 'Thundering Shuriken', 'Kennen throws a shuriken, dealing damage and applying a Mark of the Storm.'),
('Lillia', 'Lullaby', 'Lillia puts nearby enemies to sleep, reducing their attack speed.'),
('Nami', 'Aqua Prison', 'Nami sends a bubble to a target area, stunning and damaging enemies hit.'),
('Olaf', 'Ragnarok', 'Olaf goes berserk, gaining attack speed and becoming immune to crowd control.'),
('Tahm Kench', 'Tongue Lash', 'Tahm Kench lashes out with his tongue, slowing and damaging the first enemy hit.'),
('Taric', 'Starlight''s Touch', 'Taric heals himself and all nearby allies, with bonus healing based on missing health.'),
('Vi', 'Assault and Battery', 'Vi targets an enemy champion, charging towards them and knocking them up.'),
('Yasuo', 'Last Breath', 'Yasuo blinks to a nearby airborne enemy, dealing damage and suspending them in the air.');

-- Two Cost Champions Abilities
INSERT INTO champion_abilities (champion_name, ability, description) VALUES 
('Aphelios', 'Moonlight Vigil', 'Aphelios unleashes a barrage of moonlit attacks with his current weapon.'),
('Bard', 'Cosmic Binding', 'Bard fires a burst of energy, stunning the first enemy champion hit and damaging nearby enemies.'),
('Garen', 'Judgment', 'Garen spins rapidly, dealing damage to nearby enemies and reducing incoming damage.'),
('Gnar', 'GNAR!', 'Gnar transforms, gaining bonus health and access to new abilities.'),
('Gragas', 'Barrel Roll', 'Gragas rolls his cask to a location, exploding upon impact and slowing enemies hit.'),
('Jax', 'Counter Strike', 'Jax enters a defensive stance, dodging all incoming basic attacks and abilities for a short duration.'),
('Kaisa', 'Killer Instinct', 'Kaisa dashes to a target location, shielding herself and gaining attack speed.'),
('Katarina', 'Death Lotus', 'Katarina spins in place, throwing daggers at multiple nearby enemies.'),
('Kayle', 'Divine Judgment', 'Kayle unleashes her divine powers, becoming ranged and gaining bonus attack speed.'),
('Pantheon', 'Comet Spear', 'Pantheon hurls his spear, damaging and slowing the first enemy hit.'),
('Senna', 'Dawning Shadow', 'Senna fires a global beam that heals allies and damages enemies.'),
('Seraphine', 'High Note', 'Seraphine projects a captivating force, damaging and charming enemies in a line.'),
('Twitch', 'Spray and Pray', 'Twitch gains attack damage and attacks in a line, piercing through enemies.');

-- Three Cost Champions Abilities
INSERT INTO champion_abilities (champion_name, ability, description) VALUES 
('Amumu', 'Curse of the Sad Mummy', 'Amumu releases his pent-up energy, damaging and stunning nearby enemies.'),
('Lux', 'Final Spark', 'Lux fires a giant laser, dealing damage to all enemies in a line.'),
('Miss Fortune', 'Bullet Time', 'Miss Fortune channels a barrage of bullets, damaging all enemies in front of her.'),
('Neeko', 'Pop Blossom', 'Neeko leaps into the air, dealing damage and stunning enemies in the area.'),
('Riven', 'Wind Slash', 'Riven unleashes a wave of energy, damaging and executing enemies below a certain health threshold.'),
('Samira', 'Inferno Trigger', 'Samira unleashes a flurry of shots, dealing damage to surrounding enemies.'),
('Sett', 'Show Stopper', 'Sett grabs an enemy champion, suplexing them and damaging nearby enemies.'),
('Twisted Fate', 'Destiny', 'Twisted Fate reveals all enemy champions and teleports to a target location.'),
('Urgot', 'Fear Beyond Death', 'Urgot fires a drill, suppressing and executing the first enemy champion hit.'),
('Vex', 'Doomed Shadow', 'Vex releases her inner darkness, fearing and damaging nearby enemies.');

-- Four Cost Champions Abilities
INSERT INTO champion_abilities (champion_name, ability, description) VALUES 
('Ahri', 'Spirit Rush', 'Ahri dashes, damaging and charming enemies she passes through.'),
('Blitzcrank', 'Rocket Grab', 'Blitzcrank extends his arm, pulling the first enemy hit towards him.'),
('Caitlyn', 'Ace in the Hole', 'Caitlyn locks onto an enemy champion, firing a high-damage shot from a long range.'),
('Karthus', 'Requiem', 'Karthus channels, damaging all enemy champions on the map.'),
('Poppy', 'Keeper''s Verdict', 'Poppy swings her hammer, knocking away and damaging enemies hit.'),
('Senna', 'Dawning Shadow', 'Senna fires a global beam that heals allies and damages enemies.'),
('Sett', 'The Show Goes On', 'Sett gains a shield and bonus attack speed, with additional effects on low-health enemies.'),
('Viego', 'Heartbreaker', 'Viego dashes and stabs a nearby enemy, damaging and possessing them if they die.'),
('Zac', 'Let''s Bounce!', 'Zac leaps into the air, knocking up and slowing enemies in the area.'),
('Zed', 'Death Mark', 'Zed marks an enemy champion and dashes to them, dealing damage based on the mark.');

-- Five Cost Champions Abilities
INSERT INTO champion_abilities (champion_name, ability, description) VALUES 
('Illaoi', 'Leap of Faith', 'Illaoi leaps into the air, slamming down and summoning tentacles that attack enemies.'),
('Jhin', 'Curtain Call', 'Jhin locks onto and executes enemies in a line, with the final shot dealing bonus damage.'),
('Kayn', 'Reaping Slash', 'Kayn slashes through enemies, dealing damage and knocking them up.'),
('Lucian', 'Dance of Arrows', 'Lucian dashes around, firing shots and gaining attack speed for a duration.'),
('Qiyana', 'Supreme Display of Talent', 'Qiyana dashes and knocks up enemies in a line, dealing damage based on her element.'),
('Sona', 'Crescendo', 'Sona plays a powerful chord, stunning enemies and granting allies bonus movement speed.'),
('Yorick', 'Eulogy of the Isles', 'Yorick raises the dead, summoning Mist Walkers and a powerful Revenant.'),
('Ziggs', 'Mega Inferno Bomb', 'Ziggs throws a massive bomb, dealing area-of-effect damage upon impact.');
