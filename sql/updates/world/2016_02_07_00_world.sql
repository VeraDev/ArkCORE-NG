

update gossip_menu_option set OptionBroadcastTextID=49850 where menu_id=12550 and id=0;
update gossip_menu_option set OptionBroadcastTextID=49850 where menu_id=12551 and id=0;

update gossip_menu_option set OptionBroadcastTextID=49849 where menu_id=12549 and id=1;
update gossip_menu_option set OptionBroadcastTextID=49849 where menu_id=12550 and id=1;

update gossip_menu_option set OptionBroadcastTextID=49848 where menu_id=12549 and id=0;
update gossip_menu_option set OptionBroadcastTextID=49848 where menu_id=12551 and id=1;

UPDATE quest_template SET Method=2, Flags=8200 WHERE Id=4295;

UPDATE locales_quest SET EndText_loc3="" WHERE Id=4295;

UPDATE quest_template SET Method=2, RequiredMinRepFaction=59, RequiredMinRepValue=1, Flags=8200, SpecialFlags=1 WHERE Id in (6642, 6643, 6644, 6645, 6646);

delete from npc_spellclick_spells where npc_entry=46974 and spell_id=74089;
delete from npc_spellclick_spells where npc_entry=40536 and spell_id=74089;
delete from npc_spellclick_spells where npc_entry=36756 and spell_id=69262;
delete from npc_spellclick_spells where npc_entry=35111 and spell_id=66778;
delete from npc_spellclick_spells where npc_entry=35257 and spell_id=67032;
delete from npc_spellclick_spells where npc_entry=42548 and spell_id=79276;
delete from npc_spellclick_spells where npc_entry=42673 and spell_id=79545;
delete from npc_spellclick_spells where npc_entry=42671 and spell_id=79568;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, cast_flags, user_type) VALUES
(46974, 74089, 1, 0),
(40536, 74089, 1, 0),
(36756, 69262, 1, 0),
(35111, 66778, 1, 0),
(35257, 67032, 1, 0),
(42548, 79276, 1, 0),
(42673, 79545, 1, 0),
(42671, 79568, 1, 0);

delete from vehicle_template_accessory where entry in (72546, 52812, 39839, 33778);
INSERT INTO vehicle_template_accessory (entry, accessory_entry, seat_id, minion, description, summontype, summontimer) VALUES
(72546, 72554, 0, 0, "Kor'kron Grunt - Mezlik", 6, 30000), -- Kor'kron Grunt - Mezlik
(52812, 52810, 0, 0, "Toy Cart - Toy Cart Bunny", 6, 30000), -- Toy Cart - Toy Cart Bunny
(39839, 39838, 0, 0, "Twilight Stormwaker - Twilight Stormwaker", 6, 30000), -- Twilight Stormwaker - Twilight Stormwaker
(33778, 34244, 0, 0, "Tournament Hippogryph - Jean Pierre Poulain", 6, 30000); -- Tournament Hippogryph - Jean Pierre Poulain

delete from creature_text where entry=28776 and groupid=0 and id=0;
delete from creature_text where entry=35198 and groupid=2 and id=0;
delete from creature_text where entry=72545 and groupid=0 and id=0;
delete from creature_text where entry=9156 and groupid=0 and id=0;
delete from creature_text where entry=72501 and groupid=0 and id=0;
delete from creature_text where entry=44853 and groupid=0 and id=0;
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, BroadcastTextId, comment) VALUES
(28776, 0, 0, "Welcome!", 12, 0, 100, 3, 0, 0, 32807, "Elizabeth Ross to Player"),
(35198, 2, 0, "Keep your machines away from me, $r! You'll be cleansed from this land like the weeds you are!", 14, 0, 100, 0, 0, 0, 35481, "Talrendis Ancient to Player"),
(72545, 0, 0, "Garrosh demands the wealth you've accumulated.  You will give me access to your vaults!", 12, 0, 100, 25, 0, 0, 74886, "Mokvar the Treasurer"),
(9156, 0, 0, "Your reign of terror ends now!  Face your doom mortals!", 14, 0, 100, 0, 0, 0, 4699, "Ambassador Flamelash to Player"),
(72501, 0, 0, "How dare you set foot in our city!", 12, 1, 100, 0, 0, 0, 31684, "Kor'kron Guard to Player"),
(44853, 0, 0, "I... I can't! I won't!", 12, 0, 100, 274, 0, 0, 74888, "Branzlit to Mokvar the Treasurer");

DELETE FROM creature_equip_template WHERE (entry=72546 AND id=1) OR (entry=72546 AND id=4) OR (entry=72546 AND id=3) OR (entry=72515 AND id=1) OR (entry=72546 AND id=2)  OR (entry=72501 AND id=2) OR (entry=42650 AND id=2);
DELETE FROM creature_equip_template WHERE (entry=72619 AND id=1) OR (entry=62197 AND id=1);
INSERT INTO creature_equip_template (entry, id, itemEntry1, itemEntry2, itemEntry3) VALUES
(72546, 1, 5289, 0, 97695), -- Kor'kron Grunt
(72546, 2, 61969, 0, 97695), -- Kor'kron Grunt
(72546, 3, 57012, 0, 97695), -- Kor'kron Grunt
(72546, 4, 0, 0, 97695), -- Kor'kron Grunt
(72515, 1, 45123, 0, 0), -- Orgrimmar Peon
(72501, 2, 4568, 1906, 2507), -- Kor'kron Guard
(42650, 2, 1903, 0, 0), -- Goblin Siegeworker
(72619, 1, 32604, 0, 0), -- Goblin Siegeworker
(62197, 1, 0, 0, 30128); -- Goblin Siegeworker

UPDATE creature_equip_template SET itemEntry1=2827 WHERE (entry=46709 AND id=1); -- 0

delete from creature_model_info where modelid in (48761, 48766, 48765, 50471, 50470, 46132, 46940, 48642, 48641, 48620, 48640, 48621, 49051, 48552, 46131, 49052, 42386, 42385, 47231, 50164, 42387, 42388, 48636, 50162, 50161, 49049, 49050, 42384, 43722, 43724, 43725, 47982, 43726, 44740, 45106, 43719, 45862, 46986, 43718, 45170, 45319, 45863, 45320, 39637, 47465, 46093, 43669, 45865, 43720, 43717, 48637, 48638, 48639, 45950, 45441, 45909, 47453, 47456);
INSERT INTO creature_model_info (modelid, bounding_radius, combat_reach, gender, modelid_other_gender) VALUES
(48761, 0.465, 1.875, 0, 0), -- 48761
(48766, 0.295, 1.875, 1, 0), -- 48766
(48765, 0.465, 1.875, 0, 0), -- 48765
(50471, 0.558, 2.25, 0, 0), -- 50471
(50470, 0.354, 2.25, 1, 0), -- 50470
(46132, 0.306, 1.5, 1, 0), -- 46132
(46940, 0.325, 0.975, 2, 0), -- 46940
(48642, 0.236, 1.5, 1, 0), -- 48642
(48641, 0.372, 1.5, 0, 0), -- 48641
(48620, 0.295, 1.875, 1, 0), -- 48620
(48640, 0.372, 1.5, 0, 0), -- 48640
(48621, 0.465, 1.875, 0, 0), -- 48621
(49051, 0.2596, 1.65, 1, 0), -- 49051
(48552, 0.35, 1.5, 2, 0), -- 48552
(46131, 0.306, 1.5, 1, 0), -- 46131
(49052, 0.2596, 1.65, 1, 0), -- 49052
(42386, 0.372, 1.5, 0, 0), -- 42386
(42385, 0.372, 1.5, 0, 0), -- 42385
(47231, 0.255, 0.85, 0, 0), -- 47231
(50164, 0.4012, 2.55, 1, 0), -- 50164
(42387, 0.306, 1.5, 0, 0), -- 42387
(42388, 0.306, 1.5, 1, 0), -- 42388
(48636, 0.372, 1.5, 0, 0), -- 48636
(50162, 0.6324, 2.55, 0, 0), -- 50162
(50161, 0.6324, 2.55, 0, 0), -- 50161
(49049, 0.4092, 1.65, 0, 0), -- 49049
(49050, 0.4092, 1.65, 0, 0), -- 49050
(42384, 0.372, 1.5, 0, 0), -- 42384
(43722, 1.6, 2.4, 2, 0), -- 43722
(43724, 1.6, 2.4, 2, 0), -- 43724
(43725, 1.6, 2.4, 2, 0), -- 43725
(47982, 0.347222, 1.5, 0, 0), -- 47982
(43726, 1.6, 2.4, 2, 0), -- 43726
(44740, 0.347222, 1.5, 0, 0), -- 44740
(45106, 0.347222, 1.5, 0, 0), -- 45106
(43719, 1.6, 2.4, 2, 0), -- 43719
(45862, 0.347222, 1.5, 0, 0), -- 45862
(46986, 0.105, 0.3, 2, 0), -- 46986
(43718, 1.6, 2.4, 2, 0), -- 43718
(45170, 0.9, 0.9, 1, 0), -- 45170
(45319, 1, 1, 0, 0), -- 45319
(45863, 0.347222, 1.5, 0, 0), -- 45863
(45320, 1, 1, 0, 0), -- 45320
(39637, 0.3819442, 1.65, 0, 0), -- 39637
(47465, 0.347222, 1.5, 0, 0), -- 47465
(46093, 0.347222, 1.5, 1, 0), -- 46093
(43669, 0.9, 0.9, 1, 0), -- 43669
(45865, 0.347222, 1.5, 0, 0), -- 45865
(43720, 1.6, 2.4, 2, 0), -- 43720
(43717, 1.6, 2.4, 2, 0), -- 43717
(48637, 0.372, 1.5, 0, 0), -- 48637
(48638, 0.236, 1.5, 1, 0), -- 48638
(48639, 0.236, 1.5, 1, 0), -- 48639
(45950, 1.1112, 1.6, 2, 0), -- 45950
(45441, 1.8057, 2.6, 2, 0), -- 45441
(45909, 0.2805, 0.225, 2, 0), -- 45909
(47453, 0.306, 1.5, 0, 0), -- 47453
(47456, 0.3366, 1.65, 0, 0); -- 47456

delete from creature_template_addon where entry in (7554, 51512, 47579, 45817, 45815);
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras) VALUES
(7554, 0, 0, 50331648, 1, 0, ''), -- 7554 (Snowy Owl)
(51512, 0, 0, 0, 257, 0, ''), -- 51512 (Mirla Silverblaze)
(47579, 0, 0, 0, 257, 0, ''), -- 47579 (Dariness the Learned)
(45817, 0, 0, 0, 257, 0, ''), -- 45817 (Hierophant Theodora Mulvadania)
(45815, 0, 0, 0, 257, 0, ''); -- 45815 (Shadowmage Vivian Lagrave)

UPDATE creature_template_addon SET bytes2=257 WHERE entry=32600; -- 0
UPDATE creature_template_addon SET bytes2=257 WHERE entry=32597; -- 0
UPDATE creature_template_addon SET bytes2=257 WHERE entry=32598; -- 0
UPDATE creature_template_addon SET bytes2=257 WHERE entry=29548; -- 0

DELETE FROM quest_poi WHERE (questId=31013 AND id=0) OR (questId=32249 AND id=0);
INSERT INTO quest_poi (questId, id, objIndex, mapid, WorldMapAreaId, FloorId, unk3, unk4) VALUES
(31013, 0,  0,   1, 321, 12, 0, 0), -- The Horde Way
(32249, 0, -1, 870, 857,  1, 0, 0); -- Meet the Scout

update creature set spawndist=0, MovementType=2 where guid=151058;
delete from creature_addon where guid=151058;
insert into creature_addon values
(151058, 1510580, 0, 0, 0, 0, "");

delete from waypoint_data where id=1510580;
insert into waypoint_data value
(1510580, 1, 888.6021, -178.1376, -42.9578,  0, 0, 0, 0, 100, 0),
(1510580, 2, 886.7257, -174.8425, -42.70667, 0, 0, 0, 0, 100, 0),
(1510580, 3, 878.5311, -179.5731, -42.95621, 0, 0, 0, 0, 100, 0);

delete from creature_text where entry=9499;
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, BroadcastTextId, comment) VALUES
(9499, 0, 0, "Try the boar! It's my new recipe!", 12, 0, 100, 0, 0, 0, 5310, "Plugger Spazzring says"),
(9499, 1, 0, "Enjoy! You won't find better ale anywhere!", 12, 0, 100, 0, 0, 0, 5308, "Plugger Spazzring says"),
(9499, 2, 0, "Drink up! There's more where that came from!", 12, 0, 100, 0, 0, 0, 5307, "Plugger Spazzring says"),
(9499, 3, 0, "Have you tried the Dark Iron Ale? It's the best!", 12, 0, 100, 0, 0, 0, 5309, "Plugger Spazzring says"),
(9499, 4, 0, "Hey! Get away from that!", 14, 0, 100, 0, 0, 0, 5053, "Plugger Spazzring yells"),
(9499, 5, 0, "What are you doing over there?", 14, 0, 100, 0, 0, 0, 5054, "Plugger Spazzring yells"),
(9499, 6, 0, "No stealing the goods!", 14, 0, 100, 0, 0, 0, 5055, "Plugger Spazzring yells"),
(9499, 7, 0, "That's it! You're going down!", 14, 0, 100, 0, 0, 0, 5060, "Plugger Spazzring yells"),
(9499, 8, 0, "Hey, my pockets were picked!", 14, 0, 100, 0, 0, 0, 5266, "Plugger Spazzring yells"),
(9499, 9, 0, "That's it! No more beer until this mess is sorted out!", 14, 0, 100, 0, 0, 0, 5267, "Plugger Spazzring yells");

delete from creature_text where entry=9545 and groupid in (1, 2, 3, 4) and id=0;
insert into creature_text values
(9545, 1, 0, "Hey!  What's gives?", 12, 0, 100, 0, 0, 0, 5262, "Grim Patron say"),
(9545, 2, 0, "You'll pay for that!", 12, 0, 100, 0, 0, 0, 5263, "Grim Patron say"),
(9545, 3, 0, "Oh, now I'm pissed!", 12, 0, 100, 0, 0, 0, 5264, "Grim Patron say"),
(9545, 4, 0, "No!	No!", 12, 0, 100, 0, 0, 0, 5265, "Grim Patron say");

delete from creature_text where entry=9547 and groupid in (1, 2, 3, 4) and id=0;
insert into creature_text values
(9547, 1, 0, "Hey!  What's gives?", 12, 0, 100, 0, 0, 0, 5262, "Guzzling Patron say"),
(9547, 2, 0, "You'll pay for that!", 12, 0, 100, 0, 0, 0, 5263, "Guzzling Patron say"),
(9547, 3, 0, "Oh, now I'm pissed!", 12, 0, 100, 0, 0, 0, 5264, "Guzzling Patron say"),
(9547, 4, 0, "No!	No!", 12, 0, 100, 0, 0, 0, 5265, "Guzzling Patron say");

delete from creature_text where entry=9554 and groupid in (1, 2, 3, 4) and id=0;
insert into creature_text values
(9554, 1, 0, "Hey!  What's gives?", 12, 0, 100, 0, 0, 0, 5262, "Hammered Patron say"),
(9554, 2, 0, "You'll pay for that!", 12, 0, 100, 0, 0, 0, 5263, "Hammered Patron say"),
(9554, 3, 0, "Oh, now I'm pissed!", 12, 0, 100, 0, 0, 0, 5264, "Hammered Patron say"),
(9554, 4, 0, "No!	No!", 12, 0, 100, 0, 0, 0, 5265, "Hammered Patron say");


