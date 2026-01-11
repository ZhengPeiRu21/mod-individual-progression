/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (7431, 7455);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(7428, 7429, 7430, 7432, 7433, 7434, 7436, 7437, 7438, 7439, 7440, 7441, 7442, 7443, 7444, 7445, 7446, 7447, 7448, 7449, 7450, 7451, 7452, 7453, 7454, 7456, 7457, 7458, 7459, 
7460, 7461, 7462, 7463, 7523, 7524, 10684, 10196, 10198, 10199, 10200, 10201, 10659, 10662, 10663, 10664, 10737, 10738, 10741, 10806, 10807, 10916, 14372);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(7428, 7429, 7430, 7431, 7432, 7433, 7434, 7436, 7437, 7438, 7439, 7440, 7441, 7442, 7443, 7444, 7445, 7446, 7447, 7448, 7449, 7450, 7451, 7452, 7453, 7454, 7455, 7456, 7457, 7458, 7459, 
7460, 7461, 7462, 7463, 7523, 7524, 10684, 10196, 10198, 10199, 10200, 10201, 10659, 10660, 10661, 10662, 10663, 10664, 10737, 10738, 10741, 10806, 10807, 10916, 14372);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(7428, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4200, 11800, 0, 5, 11, 18368, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Frostmaul Giant - Within 0-5 Range - Cast Strike'),
(7428, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6100, 14100, 0, 8, 11, 18670, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Frostmaul Giant - Within 0-8 Range - Cast Knock Away'),
(7429, 0, 0, 0, 2, 0, 100, 0, 0, 70, 10000, 12000, 0, 0, 11, 9616, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Frostmaul Preserver - Between 0-70% Health - Cast Wild Regeneration'),
--
(7430, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Frostsaber Cub - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7432, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 11, 30991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Frostsaber Stalker - Out of Combat - Cast Stealth'),
(7433, 0, 0, 0, 0, 0, 100, 0, 7000, 9000, 16000, 21000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Frostsaber Huntress - Within 0-5 Range - Cast Rend'),
(7433, 0, 1, 2, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 15716, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Frostsaber Huntress - Between 0-50% Health - Cast Enrage (No Repeat)'),
(7433, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Frostsaber Huntress - On Enrage - Say Line 0'),
(7434, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 15716, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Frostsaber Pride Watcher - Between 0-50% Health - Cast Enrage (No Repeat)'),
(7434, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Frostsaber Pride Watcher - On Enrage - Say Line 0'),
--
(7436, 0, 0, 0, 0, 0, 100, 0, 1700, 1900, 16700, 16900, 0, 0, 11, 11977, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Cobalt Scalebane - In Combat - Cast Rend'),
(7436, 0, 1, 0, 105, 0, 100, 0, 0, 0, 17000, 21000, 0, 5, 11, 15655, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Cobalt Scalebane - Target Casting - Cast Shield Slam'),
(7436, 0, 2, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 6713, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Cobalt Scalebane - Within 0-5 Range - Cast Disarm'),
(7437, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Cobalt Mageweaver - Out of Combat - Cast Frost Armor'),
(7437, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15043, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Cobalt Mageweaver - In Combat - Cast Frostbolt'),
--
(7438, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Ursa   - Out of Combat - Cast Winterfall Firewater'),
(7439, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Shaman - Out of Combat - Cast Winterfall Firewater'),
(7439, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Winterfall Shaman - In Combat - Cast Lightning Bolt'),
(7439, 0, 2, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 13585, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Winterfall Shaman - In Combat - Cast Lightning Shield'),
(7439, 0, 3, 0, 74, 0, 100, 0, 0, 0, 15000, 30000, 50, 40, 11, 11431, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Winterfall Shaman - Friendly Between 0-50% Health - Cast Healing Touch'),
(7440, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Den Watcher - Out of Combat - Cast Winterfall Firewater'),
(7441, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Totemic - Out of Combat - Cast Winterfall Firewater'),
(7441, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 55000, 65000, 0, 0, 11, 15786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Winterfall Totemic - In Combat - Cast Earthbind Totem'),
(7441, 0, 2, 0, 0, 0, 100, 0, 12000, 14000, 20000, 30000, 0, 0, 11, 15787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Totemic - In Combat - Cast Moonflare Totem'),
(7442, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Winterfall Pathfinder - Out of Combat - Cast Winterfall Firewater'),
(7442, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Winterfall Pathfinder - Outside 30 Range - Start Combat Movement'),
(7442, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Winterfall Pathfinder - Within 5-30 Range - Stop Combat Movement'),
(7442, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Winterfall Pathfinder - Within 0-5 Range - Start Combat Movement'),
(7442, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Winterfall Pathfinder - Within 5-30 Range - Cast Shoot'),
(7442, 0, 5, 0, 0, 0, 100, 0, 0, 0, 30000, 35000, 0, 0, 11, 16498, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,          'Winterfall Pathfinder - In Combat - Cast Faerie Fire'),
--
(7443, 0, 0, 0, 9, 0, 60, 0, 0, 0, 12000, 12000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shardtooth Mauler - Within 0-5 Range - Cast Maul'),
(7444, 0, 0, 0, 0, 0, 75, 0, 5000, 5000, 25000, 25000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Shardtooth Bear   - Within 0-5 Range - Cast Tendon Rip'),
(7445, 0, 0, 0, 9, 0, 60, 0, 0, 0, 12000, 12000, 0, 5, 11, 15971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Elder Shardtooth  - Within 0-5 Range - Cast Demoralizing Roar'),
(7446, 0, 0, 0, 9, 0, 80, 1, 0, 0, 8000, 8000, 0, 5, 11, 3150, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Rabid Shardtooth  - Within 0-5 Range - Cast Rabies'),
--
(7447, 0, 0, 0, 0, 0, 100, 0, 0, 0, 7000, 10000, 0, 0, 11, 16552, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Fledgling Chillwind - In Combat - Cast Venom Spit'),
(7448, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 15850, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Chillwind Chimaera - On Aggro - Cast Chilled'),
(7448, 0, 1, 0, 0, 0, 100, 0, 8000, 13000, 12000, 15000, 0, 0, 11, 15797, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Chillwind Chimaera - In Combat - Cast Lightning Breath'),
(7449, 0, 0, 0, 0, 0, 75, 0, 5000, 15000, 30000, 45000, 0, 0, 11, 3132, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Chillwind Ravager - In Combat - Cast Chilling Breath'),
(7449, 0, 1, 2, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Chillwind Ravager - Between 0-25% Health - Cast Enrage (No Repeat)'),
(7449, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Chillwind Ravager - On Enrage - Say Line 0'),
--
(7450, 0, 0, 0, 0, 0, 100, 0, 7000, 21000, 26000, 29000, 0, 0, 11, 15848, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Ragged Owlbeast - Within 0-5 Range - Cast Festering Rash'),
(7451, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 18000, 0, 5, 11, 13443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Raging Owlbeast - Within 0-5 Range - Cast Rend'),
(7451, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Raging Owlbeast - Between 0-30% Health - Cast Enrage (No Repeat)'),
(7451, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Raging Owlbeast - On Enrage - Say Line 0'),
(7452, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Crazed Owlbeast - Between 0-30% Health - Cast Enrage (No Repeat)'),
(7452, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Crazed Owlbeast - On Enrage - Say Line 0'),
(7453, 0, 0, 0, 0, 0, 100, 0, 7000, 11000, 15000, 18000, 0, 0, 11, 15798, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Moontouched Owlbeast - In Combat - Cast Moonfire'),
(7453, 0, 1, 0, 74, 0, 100, 0, 0, 0, 20000, 32000, 50, 40, 11, 12160, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Moontouched Owlbeast - Friendly Between 0-50% Health - Cast Rejuvenation'),
(7454, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Berserk Owlbeast - In Combat - Cast Enrage'),
(7454, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Berserk Owlbeast - On Enrage - Say Line 0'),
--
(7456, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 3589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Winterspring Screecher - Within 0-5 Range - Cast Deafening Screech'),
(7457, 0, 0, 0, 9, 0, 100, 0, 0, 0, 3000, 6000, 0, 5, 11, 3604, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Rogue Ice Thistle - Within 0-5 Range - Cast Tendon Rip'),
(7458, 0, 0, 0, 0, 0, 100, 0, 2700, 3400, 11900, 16000, 0, 0, 11, 15878, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Ice Thistle Yeti - In Combat - Cast Ice Blast'), -- https://www.youtube.com/watch?v=x9_z8n7EUDI
(7458, 0, 1, 0, 9, 0, 100, 0, 0, 0, 3000, 6000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Ice Thistle Yeti - Within 0-5 Range - Cast Tendon Rip'), -- https://www.youtube.com/watch?v=2iGn9QuVk9o
(7459, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 15, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Ice Thistle Matriarch - Within 0-15 Range - Cast Rushing Charge (No Repeat)'),
(7459, 0, 1, 0, 0, 0, 100, 0, 2700, 3400, 11900, 16000, 0, 0, 11, 15878, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Ice Thistle Matriarch - In Combat - Cast Ice Blast'), -- https://www.youtube.com/watch?v=9dxKOzgS9bY
(7460, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 15, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Ice Thistle Patriarch - Within 0-15 Range - Cast Rushing Charge (No Repeat)'),
(7460, 0, 1, 0, 0, 0, 100, 0, 1000, 7000, 10000, 20000, 0, 0, 11, 3131, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Ice Thistle Patriarch - Within 0-5 Range - Cast Frost Breath'),
--
(7461, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 30, 11, 17883, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Hederine Initiate - Within 0-30 Range - Cast Immolate'),
(7461, 0, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 0, 0, 11, 15232, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Hederine Initiate - In Combat - Cast Shadow Bolt'),
(7461, 0, 2, 0, 0, 0, 100, 0, 0, 60000, 60000, 120000, 0, 0, 11, 15859, 32, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,     'Hederine Initiate - In Combat - Cast Dominate Mind'),
(7462, 0, 0, 0, 9, 0, 100, 0, 0, 0, 16500, 17400, 0, 5, 11, 13738, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Hederine Manastalker - Within 0-5 Range - Cast Rend'),
(7462, 0, 1, 0, 0, 0, 100, 0, 2400, 2600, 6200, 6400, 0, 0, 11, 15980, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Hederine Manastalker - In Combat - Cast Mana Burn'),
(7463, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 17547, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hederine Slayer - In Combat - Cast Mortal Strike'),
(7463, 0, 1, 0, 12, 0, 100, 0, 0, 20, 30000, 35000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,           'Hederine Slayer - Target Between 0-20% Health - Cast Execute'),
--
(7523, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Suffering Highborne  - On Data Set 1 1 - Set Faction 124'),
(7523, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Suffering Highborne  - On Data Set 2 2 - Set Faction 21'),
(7523, 0, 4, 0, 0, 0, 100, 0, 0, 0, 13000, 20000, 0, 0, 11, 14868, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,          'Suffering Highborne  - Within 0-30 Range - Cast Curse of Agony'),
(7524, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Anguished Highborne  - On Data Set 1 1 - Set Faction 124'),
(7524, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Anguished Highborne  - On Data Set 2 2 - Set Faction 21'),
(7524, 0, 4, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 0, 30, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anguished Highborne  - Within 0-30 Range - Cast Mind Blast'),
(10684, 0, 0, 0, 20, 0, 100, 0, 5248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Remorseful Highborne - On Quest Tormented by the Past Finished - Say Line 0'),
(10684, 0, 1, 0, 9, 0, 100, 0, 0, 0, 2000, 2000, 0, 30, 11, 17194, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Remorseful Highborne - Within 0-30 Range - Cast Mind Blast'),
--
(10196, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 13000, 18000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'General Colbatann - In Combat - Cast Battle Shout'),
(10196, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'General Colbatann - Within 0-5 Range - Cast Sunder Armor'),
(10196, 0, 2, 0, 9, 0, 100, 0, 0, 0, 20000, 25000, 0, 5, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'General Colbatann - Within 0-5 Range - Cast Demoralizing Shout'), -- https://www.youtube.com/watch?v=aVTFtrtXROc
(10198, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 15284, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Kashoch the Reaver - Within 0-5 Range - Cast Cleave'),
(10199, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Grizzle Snowpaw - Out of Combat - Cast Winterfall Firewater'),
(10199, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 12000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Grizzle Snowpaw - In Combat - Cast Maul'),
(10199, 0, 2, 0, 0, 0, 100, 0, 6000, 7000, 14000, 17000, 0, 0, 11, 12548, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Grizzle Snowpaw - In Combat - Cast Frost Shock'),
(10200, 0, 0, 0, 2, 0, 100, 0, 0, 60, 15000, 21000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,           'Rak shiri - Between 0-60% Health - Cast Terrify'),
(10200, 0, 1, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rak shiri - Between 0-30% Health - Cast Enrage'),
(10200, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Rak shiri - On Enrage - Say Line 0'),
(10201, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 12000, 25000, 0, 0, 11, 17146, 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,    'Lady Hederine - In Combat - Cast Shadow Word: Pain'),
(10201, 0, 1, 0, 0, 0, 100, 0, 14000, 28000, 24000, 30000, 0, 0, 11, 7645, 32, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,  'Lady Hederine - In Combat - Cast Dominate Mind'),
(10201, 0, 2, 0, 0, 0, 100, 0, 9000, 15000, 16000, 21000, 0, 0, 11, 12096, 32, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Lady Hederine - In Combat - Cast Fear'),
--
(10659, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Cobalt Whelp - On Aggro - Set Phase Random Between 1-2'),
(10659, 0, 1, 2, 0, 1, 100, 0, 3000, 3000, 15000, 20000, 0, 0, 11, 15089, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Cobalt Whelp - In Combat - Cast Frost Shock (Phase 1)'),
(10659, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cobalt Whelp - On Cast - Set Phase Random Between 1-2'),
(10659, 0, 3, 4, 0, 2, 100, 0, 3000, 3000, 15000, 20000, 0, 0, 11, 13443, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Cobalt Whelp - In Combat - Cast Rend (Phase 2'),
(10659, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cobalt Whelp - On Cast - Set Phase Random Between 1-2'),
(10660, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9672, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Cobalt Broodling - In Combat - Cast Frostbolt'),
(10660, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 17008, 257, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 'Cobalt Broodling - Within 0-10 Range - Cast Drain Mana'),
(10661, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 5000, 15000, 0, 0, 11, 16340, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Spell Eater - Within 0-5 Range - Cast Frost Breath'),
--
(10662, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34304, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Spellmaw - On Respawn - Cast Damage Immunity: Arcane'),
(10662, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 60000, 63000, 0, 0, 11, 16099, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Spellmaw - Within 0-5 Range - Cast Frost Breath'),
(10662, 0, 2, 0, 0, 0, 100, 0, 8000, 8000, 18000, 21000, 0, 0, 11, 17012, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Spellmaw - In Combat - Cast Devour Magic'),
(10663, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34304, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Manaclaw - On Respawn - Cast Damage Immunity: Arcane'),
(10663, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 60000, 63000, 0, 0, 11, 16099, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Manaclaw - Within 0-5 Range - Cast Frost Breath'),
(10664, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34304, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scryer - On Respawn - Cast Damage Immunity: Arcane'),
(10664, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 23000, 33000, 0, 0, 11, 16099, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Scryer - Within 0-5 Range - Cast Frost Breath'),
(10664, 0, 2, 0, 0, 0, 100, 0, 6000, 6000, 15000, 20000, 0, 0, 11, 12738, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Scryer - In Combat - Cast Amplify Damage'),
--
(10737, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 10000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - In Combat - Cast Terrifying Roar '),
(10737, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 22000, 27000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Shy-Rotam - Within 0-5 Range - Cast Rend'),
(10737, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 15000, 20000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,          'Shy-Rotam - Within 0-5 Range - Cast Tendon Rip'),
(10737, 0, 3, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 12, 10741, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 8074.84, -3840, 690.061, 4.6, 'Shy-Rotam - Between 0-50% health - Summon Creature Sian-Rotam (No Repeat)'),
--
(10738, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'High Chief Winterfall - Out of Combat - Cast Winterfall Firewater'),
(10738, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'High Chief Winterfall - Within 0-5 Range - Cast Maul'),
(10738, 0, 2, 0, 0, 0, 100, 0, 0, 9000, 9000, 13000, 0, 0, 11, 12548, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'High Chief Winterfall - In Combat - Cast Frost Shock'),
(10738, 0, 3, 0, 0, 0, 100, 0, 9000, 14000, 16000, 21000, 0, 0, 11, 8364, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'High Chief Winterfall - In Combat - Cast Blizzard'),
(10741, 0, 0, 0, 0, 0, 100, 0, 10000, 15000, 10000, 15000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Sian-Rotam - In Combat - Cast Terrifying Roar '),
(10741, 0, 1, 0, 0, 0, 100, 0, 3000, 8000, 23000, 28000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Sian-Rotam - Within 0-5 Range - Cast Rend'),
(10741, 0, 2, 0, 0, 0, 100, 0, 6000, 12000, 16000, 22000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Sian-Rotam - Within 0-5 Range - Cast Tendon Rip'),
(10806, 0, 0, 0, 0, 0, 60, 0, 5000, 9000, 16000, 24000, 0, 0, 11, 15971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Ursius - In Combat - Cast Demoralizing Roar'),
(10806, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Ursius - Within 0-5 Range - Cast Maul'),
(10807, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 12000, 15000, 0, 0, 11, 16552, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Brumeran - On Aggro - Cast Venom Spit'),
(10807, 0, 1, 0, 0, 0, 100, 0, 8000, 13000, 12000, 15000, 0, 0, 11, 15797, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Brumeran - In Combat - Cast Lightning Breath'),
(10807, 0, 2, 3, 2, 0, 100, 0, 0, 20, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Brumeran - Between 0-20% Health - Cast Enrage'),
(10807, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Brumeran - On Enrage - Say Line 0'),
--
(10916, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Winterfall Runner - Out of Combat - Cast Winterfall Firewater'),
(10916, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Winterfall Runner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(14372, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Winterfall Ambusher - On Respawn - Cast Winterfall Firewater');


-- update Respawn Times and Movement
UPDATE `creature` SET `spawntimesecs` = 115200, `MovementType` = 1, `Wander_distance` = 5 WHERE `id1` = 10201; -- Lady Hederine
UPDATE `creature` SET `spawntimesecs` = 37800,  `MovementType` = 1, `Wander_distance` = 5 WHERE `id1` = 10196; -- General Colbatann
UPDATE `creature` SET `spawntimesecs` = 75600                                             WHERE `id1` = 10198; -- Kashoch the Reaver


DELETE FROM `creature_text` WHERE `CreatureID` IN (7451, 7454, 10200);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(7451,  0, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Raging Owlbeast enrage at 30%'),
(7454,  0, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Berserk Owlbeast enrage at 30%'),
(10200, 0, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Rak shiri enrage at 30%');
