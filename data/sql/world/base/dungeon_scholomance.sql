/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(10469, 10470, 10471, 10472, 10477, 10478, 10485, 10486, 10487, 10488, 10489, 10491, 10495, 10498, 10499, 10500, 10678, 11257, 11551, 11622, 11636, 11637, 14511);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(10469, 10470, 10471, 10472, 10477, 10478, 10485, 10486, 10487, 10488, 10489, 10491, 10495, 10498, 10499, 10500, 10678, 11257, 11551, 11622, 11636, 11637, 14511);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(10469, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15043, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Scholomance Adept - In Combat - Cast Frostbolt'),
(10469, 0, 1, 0, 0, 0, 100, 0, 7000, 18000, 9000, 15000, 0, 0, 11, 15244, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Scholomance Adept - In Combat - Cast Cone of Cold'),
(10469, 0, 2, 0, 0, 0, 100, 0, 7000, 20000, 12000, 25000, 0, 0, 11, 15499, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Adept - In Combat - Cast Frost Shock'),
(10469, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scholomance Adept - Between 0-15% Health - Flee For Assist'),
(10470, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Scholomance Neophyte - In Combat - Cast Shadow Bolt'),
(10470, 0, 1, 0, 0, 0, 100, 0, 1000, 11000, 19000, 24000, 0, 0, 11, 12542, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,   'Scholomance Neophyte - In Combat - Cast Fear'),
(10470, 0, 2, 0, 0, 0, 100, 0, 8000, 16000, 8000, 16000, 0, 0, 11, 17165, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Neophyte - In Combat - Cast Mind Flay'),
(10471, 0, 0, 0, 1, 0, 100, 1, 1000, 5000, 0, 0, 0, 0, 11, 16592, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Scholomance Acolyte - Out of Combat - Cast Shadowform'),
(10471, 0, 1, 0, 0, 0, 100, 0, 4000, 18000, 8000, 16000, 0, 0, 11, 17615, 256, 0, 0, 0, 0, 5, 20, 0, 1, 0, 0, 0, 0, 0,  'Scholomance Acolyte - In Combat - Cast Mana Burn'),
(10471, 0, 2, 0, 0, 0, 100, 0, 5000, 13000, 5000, 18000, 0, 0, 11, 11443, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Scholomance Acolyte - In Combat - Cast Cripple'),
(10471, 0, 3, 0, 0, 0, 100, 0, 2000, 11000, 11000, 19000, 0, 0, 11, 17165, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Acolyte - In Combat - Cast Mind Flay'),
(10471, 0, 4, 0, 14, 0, 100, 0, 2000, 40, 6400, 12400, 0, 0, 11, 17613, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Scholomance Acolyte - Friendly Missing Health - Cast Dark Mending'),
(10472, 0, 0, 0, 0, 0, 100, 0, 1000, 7000, 60000, 60000, 0, 0, 11, 16431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Scholomance Occultist - In Combat - Cast Bone Armor'),
(10472, 0, 1, 0, 105, 0, 100, 0, 0, 0, 10000, 20000, 0, 30, 11, 15122, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Scholomance Occultist - Victim Casting - Cast Counterspell'),
(10472, 0, 2, 0, 0, 0, 100, 0, 2000, 10000, 11000, 17000, 0, 0, 11, 17228, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Occultist - In Combat - Cast Shadow Bolt Volley'),
(10472, 0, 3, 0, 0, 0, 100, 0, 6000, 15000, 13000, 21000, 0, 0, 11, 17243, 320, 0, 0, 0, 0, 5, 20, 0, 1, 0, 0, 0, 0, 0, 'Scholomance Occultist - In Combat - Cast Drain Mana'),
(10477, 0, 0, 0, 0, 0, 100, 0, 4000, 16000, 10000, 16000, 0, 0, 11, 14887, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Necromancer - In Combat - Cast Shadow Bolt Volley'),
(10477, 0, 1, 0, 0, 0, 100, 0, 1000, 25000, 60000, 60000, 0, 0, 11, 12020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Necromancer - In Combat - Cast Call of the Graves'),
(10477, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 11000, 15000, 0, 0, 11, 17616, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Necromancer - In Combat - Cast Corpse Explosion'),
(10477, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scholomance Necromancer - Between 0-15% Health - Flee For Assist'),
--
(10478, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11838, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Splintered Skeleton - In Combat - Cast Hate to Zero'),
(10485, 0, 0, 0, 0, 0, 100, 0, 1000, 8000, 17000, 33000, 0, 0, 11, 12021, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Risen Aberration - In Combat - Cast Fixate'),
(10485, 0, 1, 2, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 7743, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Risen Aberration - On Reset - Cast Immunity Shadow'),
(10485, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 7940, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Risen Aberration - On Reset - Cast Immunity Frost'),
(10485, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 7941, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Risen Aberration - On Reset - Cast Immunity Nature'),
(10485, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 7942, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Risen Aberration - On Reset - Cast Immunity Fire'),
(10486, 0, 0, 0, 0, 0, 100, 0, 12000, 17000, 10000, 33000, 0, 0, 11, 14516, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Risen Warrior - Within 0-5 Range - Cast Strike'),
(10486, 0, 1, 0, 0, 0, 100, 0, 7000, 28000, 13000, 25000, 0, 0, 11, 16509, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Risen Warrior - Within 0-5 Range - Cast Rend'),
(10486, 0, 2, 0, 0, 0, 100, 0, 2000, 10000, 11000, 17000, 0, 0, 11, 11428, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Risen Warrior - In Combat - Cast Knock Down'),
(10486, 0, 3, 0, 9, 0, 100, 0, 0, 0, 10000, 32000, 0, 5, 11, 15588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Risen Warrior - In Combat - Cast Thunderclap'),
(10487, 0, 0, 0, 0, 0, 100, 0, 0, 3000, 5000, 9000, 0, 0, 11, 17439, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Risen Protector - In Combat - Cast Shadow Shock'),
(10487, 0, 1, 0, 0, 0, 100, 0, 0, 0, 4310, 10600, 0, 0, 11, 6726, 0, 0, 0, 0, 0, 5, 20, 0, 1, 0, 0, 0, 0, 0,            'Risen Protector - In Combat - Cast Silence'),
(10487, 0, 2, 0, 0, 0, 100, 0, 4000, 15000, 9000, 19000, 0, 0, 11, 15654, 32, 1, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Risen Protector - In Combat - Cast Shadow Word: Pain'),
(10488, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Risen Construct - In Combat - Cast Thrash'),
(10488, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Risen Construct - In Combat - Cast Frenzy (No Repeat)'),
(10488, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Risen Construct - On Frenzy - Say Line 0'),
(10488, 0, 3, 0, 0, 0, 100, 0, 5000, 13000, 11000, 19000, 0, 0, 11, 16169, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Risen Construct - Within 0-5 Range - Cast Arcing Smash'),
    
(10489, 0, 0, 0, 0, 0, 100, 0, 1700, 9400, 12800, 27800, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Risen Guard - Within 0-5 Range - Cast Shield Slam'),
(10489, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Risen Guard - Within 0-5 Range - Cast Sunder Armor'),
(10491, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 4000, 9000, 0, 0, 11, 16431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Risen Bonewarder - In Combat - Cast Bone Armor'),
(10491, 0, 1, 0, 0, 0, 100, 0, 9000, 15000, 9000, 15000, 0, 0, 11, 17715, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Risen Bonewarder - In Combat - Cast Consuming Shadows'),
(10491, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 12000, 15000, 0, 0, 11, 17620, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Risen Bonewarder - In Combat - Cast Drain Life'),
(10495, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12627, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Diseased Ghoul - On Reset - Cast Disease Cloud'),
(10495, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8247, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Diseased Ghoul - On Reset - Cast Wandering Plague'),
(10495, 0, 2, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17742, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Diseased Ghoul - On Death - Cast Cloud of Disease'),
--
(10498, 0, 0, 0, 0, 0, 100, 0, 3300, 5300, 12000, 16300, 0, 0, 11, 12528, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Spectral Tutor - In Combat - Cast Silence'),
(10498, 0, 1, 2, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 17651, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Spectral Tutor - Between 0-40% Health - Cast Image Projection'),
(10498, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17653, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spectral Tutor - Between 0-40% Health - Cast Summon Spectral Projections'),
(10498, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Spectral Tutor - Between 0-40% Health - Set Event Phase'),
(10498, 0, 4, 0, 0, 1, 100, 512, 8000, 8000, 10000, 10000, 0, 0, 11, 17652, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Spectral Tutor - In Combat - Cast Image Projection'),
(10498, 0, 5, 0, 0, 0, 100, 0, 4200, 19100, 8600, 26400, 0, 0, 11, 17630, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,  'Spectral Tutor - In Combat - Cast Mana Burn'),
(10499, 0, 0, 0, 0, 0, 100, 0, 1000, 9000, 9000, 15000, 0, 0, 11, 17631, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Spectral Researcher - In Combat - Cast Wail of Souls'),
(10499, 0, 1, 0, 0, 0, 100, 0, 0, 0, 5300, 12400, 0, 0, 11, 17630, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,         'Spectral Researcher - In Combat - Cast Mana Burn'),
(10500, 0, 0, 0, 14, 0, 100, 0, 2000, 40, 5900, 9700, 0, 0, 11, 17633, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Spectral Teacher - Friendly Missing 2000 Health - Cast Arcane Focus'),
(10500, 0, 1, 0, 0, 0, 100, 0, 11000, 22000, 20000, 30000, 0, 0, 11, 8994, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,   'Spectral Teacher - In Combat - Cast Banish'),
(10500, 0, 2, 0, 0, 0, 100, 0, 0, 0, 5500, 11400, 0, 0, 11, 17630, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,         'Spectral Teacher - In Combat - Cast Mana Burn'),
--
(10678, 0, 0, 0, 0, 0, 100, 0, 1000, 8000, 4000, 9000, 0, 0, 11, 17745, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Plagued Hatchling - In Combat - Cast Diseased Spit'),
(11257, 0, 0, 0, 0, 0, 100, 0, 4000, 10000, 10000, 21000, 0, 0, 11, 17145, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Handler - In Combat - Cast Blast Wave'),
(11257, 0, 1, 0, 0, 0, 100, 0, 3000, 19000, 10000, 33000, 0, 0, 11, 15244, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Scholomance Handler - Within 0-10 Range - Cast Cone of Cold'),
(11257, 0, 2, 0, 0, 0, 100, 0, 4000, 14000, 6000, 19000, 0, 0, 11, 10833, 0, 1, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Scholomance Handler - Within 0-5 Range - Cast Arcane Blast'),
(11551, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Necrofiend - On Reset - Cast Deadly Poison'),
(11551, 0, 1, 0, 0, 0, 100, 0, 6000, 13000, 10000, 17000, 0, 0, 11, 15474, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Necrofiend - In Combat - Cast Web Explosion'),
(11622, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 10000, 17000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Rattlegore - Within 0-5 Range - Cast Knock Away'),
(11622, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 7000, 11000, 0, 0, 11, 18368, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Rattlegore - Within 0-5 Range - Cast Strike'),
(11622, 0, 2, 3, 0, 0, 100, 0, 15000, 21000, 13000, 19000, 0, 0, 11, 16727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Rattlegore - In Combat - Cast War Stomp'),
(11622, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 13, 0, 100, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Rattlegore - On Knockdown - Reset Aggro'),
--
(11636, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Servant of Weldon Barov - On Aggro - Say Line 0'),
(11637, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Servant of Alexi Barov  - On Aggro - Say Line 0'),
(14511, 0, 0, 0, 0, 0, 100, 0, 0, 1000, 3000, 4500, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0,        'Shadowed Spirit - In Combat - Cast Shadow Bolt'),
(14511, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 15000, 17000, 0, 0, 11, 15245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Shadowed Spirit - In Combat - Cast Shadow Bolt Volley'),
(14511, 0, 2, 0, 0, 0, 100, 0, 1000, 6000, 8000, 12000, 0, 0, 11, 22575, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,     'Shadowed Spirit - In Combat - Cast Shadow Shock'),
(14511, 0, 3, 0, 0, 0, 100, 0, 5000, 15000, 30000, 30000, 0, 0, 11, 22417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadowed Spirit - In Combat - Cast Shadow Shield'),
(14511, 0, 4, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,               'Shadowed Spirit - Out of Combat - Attack Start'),
(14511, 0, 5, 0, 8, 0, 100, 0, 20271, 0, 15000, 15000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowed Spirit - On Spell Hit - Say Line 0');


-- Darkmaster Gandling - fix his shout message not displaying
UPDATE `creature_text` SET `TextRange` = 1 WHERE `CreatureID` = 1853;

DELETE FROM `creature_text` WHERE `CreatureID` IN (11636, 11637);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(11636, 0, 0, 'I don\'t get paid enough for this!', 12, 0, 100, 0, 0, 0, 7150, 0,    'Servant of Weldon Barov'),
(11636, 0, 1, 'Time to take out the trash!', 12, 0, 100, 0, 0, 0, 7151,  0,          'Servant of Weldon Barov'),
(11636, 0, 2, 'I\'m going to dust you into oblivion!', 12, 0, 100, 0, 0, 0, 7152, 0, 'Servant of Weldon Barov'),
(11636, 0, 3, 'How dare you?!', 12, 0, 100, 0, 0, 0, 7153,  0,                       'Servant of Weldon Barov'),
(11636, 0, 4, 'Spot of tea, gov\'na?', 12, 0, 100, 0, 0, 0, 7154, 0,                 'Servant of Weldon Barov'),
--
(11637, 0, 0, 'I don\'t get paid enough for this!', 12, 0, 100, 0, 0, 0, 7150, 0,    'Servant of Alexi Barov'),
(11637, 0, 1, 'Time to take out the trash!', 12, 0, 100, 0, 0, 0, 7151,  0,          'Servant of Alexi Barov'),
(11637, 0, 2, 'I\'m going to dust you into oblivion!', 12, 0, 100, 0, 0, 0, 7152, 0, 'Servant of Alexi Barov'),
(11637, 0, 3, 'How dare you?!', 12, 0, 100, 0, 0, 0, 7153,  0,                       'Servant of Alexi Barov'),
(11637, 0, 4, 'Spot of tea, gov\'na?', 12, 0, 100, 0, 0, 0, 7154, 0,                 'Servant of Alexi Barov');
