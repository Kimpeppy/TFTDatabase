-- CREATE TABLE items
CREATE TABLE items (
    item_name VARCHAR(50) PRIMARY KEY,
    item_description TEXT NOT NULL,
    component_1 VARCHAR(50),
    component_2 VARCHAR(50),
    isUnique BIT,
    isEmblems BIT,
    isComponent BIT,
    isCraftable BIT,
    info VARCHAR(255)
);


INSERT INTO items (item_name, item_description, component_1, component_2, isUnique, isEmblems, isComponent, isCraftable, info)
VALUES
    -- Components
    ('B.F. Sword', 'Attack Damage Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Recurve Bow', 'Attack Speed Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Needlessly Large Rod', 'Ability Power Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Tear of the Goddess', 'Mana Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Chain Vest', 'Armor Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Negatron Cloak', 'Magic Resist Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Giant''s Belt', 'Health Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Sparring Gloves', 'Critical Strike Chance Increase', NULL, NULL, 0, 0, 1, 0, NULL),
    ('Spatula', 'Enables special item combinations', NULL, NULL, 1, 0, 1, 0, NULL),

    -- Craftable Emblems
    ('Emo Emblem', 'The holder joins the Emo band.', 'Spatula', 'Tear of the Goddess', 1, 1, 0, 1, NULL),
    ('Heartsteel Emblem', 'The holder joins the Heartsteel band.', 'TFT_Item_Spatula', 'TFT_Item_GiantsBelt', 1, 1, 0, 1, NULL),
    ('Pentakill Emblem', 'The holder joins the Pentakill band.', 'TFT_Item_Spatula', 'TFT_Item_ChainVest', 1, 1, 0, 1, NULL),
    ('K/DA Emblem', 'The holder joins the K/DA band.', 'TFT_Item_NeedlesslyLargeRod', 'TFT_Item_Spatula', 1, 1, 0, 1, NULL),
    ('Jazz Emblem', 'The holder joins the Jazz band.', 'TFT_Item_NegatronCloak', 'TFT_Item_Spatula', 1, 1, 0, 1, NULL),
    ('8-bit Emblem', 'The holder joins the 8-bit band.', 'TFT_Item_Spatula', 'TFT_Item_RecurveBow', 1, 1, 0, 1, NULL),
    ('True Damage Emblem', 'The holder joins the True Damage band.', 'TFT_Item_Spatula', 'TFT_Item_BFSword', 1, 1, 0, 1, NULL),
    ('Punk Emblem', 'The holder joins the Punk band.', 'TFT_Item_SparringGloves', 'TFT_Item_Spatula', 1, 1, 0, 1, NULL),

    -- NonCraftable Emblems
    ('Crowd Diver Emblem', 'The holder gains the Crowd Diver trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Sentinel Emblem', 'The holder gains the Sentinel trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Guardian Emblem', 'The holder gains the Guardian trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Superfan Emblem', 'The holder gains the Superfan trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Hyperpop Emblem', 'The holder joins the Hyperpop band.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Disco Emblem', 'The holder joins the Disco band.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Big Shot Emblem', 'The holder gains the Big Shot trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Bruiser Emblem', 'The holder gains the Bruiser trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Rapidfire Emblem', 'The holder gains the Rapidfire trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Country Emblem', 'The holder joins the Country band.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Edgelord Emblem', 'The holder gains the Edgelord trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Mosher Emblem', 'The holder gains the Mosher trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Spellweaver Emblem', 'The holder gains the Spellweaver trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Executioner Emblem', 'The holder gains the Executioner trait.', NULL, NULL, 1, 1, 0, 0, NULL),
    ('Dazzler Emblem', 'The holder gains the Dazzler trait.', NULL, NULL, 1, 1, 0, 0, NULL),

    -- Craftable Items
    ('Rabadon''s Deathcap', 'Deal ability power bonus damage', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Infinity Edge', 'Abilities can critically strike', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Protector''s Vow', 'Gain a shield at health threshold', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Redemption', 'Heal allies within one hex', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Thiefs Gloves', 'Equip 2 random items each round', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Guinsoo''s RageBlade', 'Attacks grant attack speed', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Ionic Spark', 'Shred enemies nearby', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Sterak''s Gage', 'Give health and attack at low health', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Dragon''s Claw', 'Heal every interval', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Guardbreaker', 'Gain damage buff after attacking a shield', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Gargoyle Stoneplate', 'Gain armor and magic resistance for each enemy targeting the holder', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Bramble Vest', 'Deal damage to enemies attacking the holder', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Giant Slayer', 'Deal more damage to enemies with more than 1600 health', NULL, NULL, 0, 0, 0, 1, NULL),
    ('Red Buff', 'Deal burn damage', NULL, NULL, 0, 0, 0, 1, NULL),
    
    

    



    


