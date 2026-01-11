/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(10381, 10382, 10383, 10390, 10391, 10393, 10394, 10398, 10400, 10405, 10406, 10407, 10408, 10409, 10412, 10413, 10414, 10416, 10417, 10418, 10419, 
10420, 10421, 10422, 10423, 10424, 10425, 10426, 10437, 10438, 10439, 10463, 10464, 10516, 10558, 10809, 10811, 10812, 10997, 11032, 11043, 16387);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(10381, 10382, 10383, 10390, 10391, 10393, 10394, 10398, 10400, 10405, 10406, 10407, 10408, 10409, 10412, 10413, 10414, 10416, 10417, 10418, 10419, 
10420, 10421, 10422, 10423, 10424, 10425, 10426, 10437, 10438, 10439, 10463, 10464, 10516, 10558, 10809, 10811, 10812, 10997, 11032, 11043, 16387);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(10381, 0, 0, 0, 0, 0, 100, 0, 4400, 10200, 5800, 13800, 0, 0, 11, 13446, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Ravaged Cadaver - Within 0-5 Range - Cast Strike'),
(10381, 0, 1, 2, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16324, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ravaged Cadaver - On Death - Cast Summon Broken Cadaver'),
(10381, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Ravaged Cadaver - On Death - Say Line 0'),
(10382, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16142, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Mangled Cadaver - On Respawn - Cast Cadaver Worms'),
(10383, 0, 0, 0, 0, 0, 100, 1, 4000, 8000, 0, 0, 0, 0, 11, 16141, 2, 7, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Broken Cadaver - On Update - Cast Exploding Cadaver'),
--
(10390, 0, 0, 1, 60, 0, 100, 769, 0, 0, 0, 0, 0, 0, 31, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Skeletal Guardian - On Update - Set Phase Random Between 1-3 (No Repeat)'),
(10390, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Skeletal Guardian - On Update - Flag reset 0 (No Repeat)'),
(10390, 0, 2, 0, 1, 1, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 13787, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Skeletal Guardian - Out of Combat - Cast Demon Armor (Phase 1)'),
(10390, 0, 3, 0, 0, 1, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Skeletal Guardian - In Combat - Cast Shadow Bolt (Phase 1)'),
(10390, 0, 4, 0, 0, 2, 100, 0, 5000, 11000, 17000, 24500, 0, 0, 11, 8364, 1, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Skeletal Guardian - In Combat - Cast Blizzard (Phase 2)'),
(10390, 0, 5, 0, 0, 2, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Skeletal Guardian - In Combat - Cast Frostbolt (Phase 2)'),
(10390, 0, 6, 0, 106, 3, 100, 0, 0, 0, 13000, 24500, 0, 8, 11, 11975, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Skeletal Guardian - Within 0-8 Range - Cast Arcane Explosion (Phase 3)'),
(10390, 0, 7, 0, 0, 3, 100, 0, 0, 0, 2000, 3500, 0, 0, 11, 37361, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Skeletal Guardian - In Combat - Cast Arcane Bolt (Phase 3)'),
(10391, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 29651, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Skeletal Berserker - On Reset - Cast Dual Wield'),
(10391, 0, 1, 0, 0, 0, 100, 0, 5100, 7900, 5900, 16500, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Skeletal Berserker - Within 0-5 Range - Cast Strike'),
(10391, 0, 2, 0, 9, 0, 100, 0, 0, 0, 10000, 19000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Skeletal Berserker - Within 0-5 Range - Cast Hamstring'),
(10391, 0, 3, 0, 0, 0, 100, 0, 7000, 12000, 12000, 16000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Skeletal Berserker - Within 0-5 Range - Cast Cleave'),
(10391, 0, 4, 0, 9, 0, 100, 0, 0, 0, 21000, 30000, 0, 5, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Skeletal Berserker - Within 0-5 Range - Cast Demoralizing Shout'),
--
(10393, 0, 0, 0, 37, 0, 80, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Skul - On AI Init - Despawn'),
(10393, 0, 1, 0, 1, 0, 100, 0, 1000, 3000, 900000, 900000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Skul - Out of Combat - Cast Frost Armor'),
(10393, 0, 2, 0, 0, 0, 80, 0, 0, 0, 2000, 2000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Skul - In Combat - Cast Frostbolt'),
(10393, 0, 3, 0, 0, 0, 50, 0, 6000, 8000, 16000, 20000, 0, 0, 11, 15499, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skul - In Combat - Cast Frost Shock'),
(10393, 0, 4, 0, 0, 0, 40, 0, 9000, 11000, 9000, 11000, 0, 0, 11, 15230, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skul - In Combat - Cast Arcane Bolt'),
(10394, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 5000, 8000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Black Guard Sentry - Within 0-5 Range - Cast Cleave'),
(10394, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 6000, 0, 20, 11, 17439, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Black Guard Sentry - Within 0-20 Range - Cast Shadow Shock'),
--
(10398, 0, 0, 0, 1, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 11, 12380, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Thuzadin Shadowcaster - Out of Combat - Cast Shadow Channeling'),
(10398, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15232, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Thuzadin Shadowcaster - In Combat - Cast Shadow Bolt'),
(10398, 0, 2, 0, 0, 0, 100, 0, 4000, 6000, 20000, 25000, 0, 0, 11, 11443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Thuzadin Shadowcaster - In Combat - Cast Cripple'),
(10398, 0, 3, 0, 0, 0, 100, 0, 7000, 12000, 15000, 20000, 0, 0, 11, 16429, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Thuzadin Shadowcaster - In Combat - Cast Piercing Shadow'),
(10400, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12420, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Thuzadin Necromancer - Out of Combat - Cast Summon Skeletal Servant'),
(10400, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thuzadin Necromancer - On Aggro - Cast Bone Armor'),
(10400, 0, 2, 0, 0, 0, 100, 0, 3000, 10000, 15000, 20000, 0, 0, 11, 16430, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,   'Thuzadin Necromancer - Within 0-10 Range - Cast Soul Tap'),
--
(10405, 0, 0, 0, 0, 0, 100, 0, 3000, 10000, 20000, 30000, 0, 0, 11, 16458, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Plague Ghoul - In Combat - Cast Ghoul Plague'),
(10405, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6300, 10100, 0, 5, 11, 40505, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Plague Ghoul - Within 0-5 Range - Cast Cleave'),
(10405, 0, 2, 3, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Plague Ghoul - Between Health 0-30% - Cast Enrage'),
(10405, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Plague Ghoul - On Enrage - Say Line 0'),
(10406, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 16000, 0, 5, 11, 16172, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Ghoul Ravener - Within 0-5 Range - Cast Head Crack'),
(10406, 0, 1, 0, 0, 0, 100, 0, 7000, 7000, 8000, 8000, 0, 0, 11, 16553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Ghoul Ravener - In Combat - Cast Ravenous Claw'),
(10406, 0, 2, 0, 1, 0, 100, 0, 3000, 6000, 8000, 12000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Ghoul Ravener - Out of Combat - Play Emote 1'),
(10407, 0, 1, 0, 9, 0, 100, 0, 0, 0, 18000, 25000, 0, 5, 11, 13738, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Fleshflayer Ghoul - Within 0-5 Range - Cast Rend'),
(10407, 0, 2, 0, 1, 0, 100, 0, 3000, 7000, 8000, 12000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Fleshflayer Ghoul - Out of Combat - Play Emote 1'),
--
(10408, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 12000, 0, 5, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Rockwing Gargoyle - Within 0-5 Range - Cast Sunder Armor'),
(10409, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 6596, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Rockwing Screecher - On Aggro - Play Sound 6596 (No Repeat)'),
(10409, 0, 1, 0, 9, 0, 100, 0, 0, 0, 18000, 30000, 0, 0, 11, 13730, 32, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Rockwing Screecher - Within 0-5 Range - Cast Demoralizing Shout'),
(10409, 0, 2, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 5, 11, 8715, 0, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Rockwing Screecher - Within 0-5 Range - Cast Terrifying Howl'),
(10409, 0, 3, 0, 0, 0, 100, 0, 1000, 1000, 7000, 11000, 0, 0, 11, 16997, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Rockwing Screecher - In Combat - Cast Gargoyle Strike'),
(10412, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 20, 11, 15471, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Crypt Crawler - Within 0-20 Range - Cast Enveloping Web'),
(10413, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16428, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Crypt Beast - On Reset - Cast Virulent Poison Proc'),
(10413, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 20, 11, 4962, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Crypt Beast - In Combat - Cast Encasing Webs'),
--
(10414, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16345, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Patchwork Horror - On Respawn - Cast Disease Cloud'),
(10414, 0, 2, 0, 0, 0, 100, 0, 7000, 14000, 7000, 15000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,   'Patchwork Horror - Within 0-10 Range - Cast Knock Away'),
(10416, 0, 1, 2, 0, 0, 100, 512, 5000, 5000, 15000, 15000, 0, 0, 11, 16809, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Bile Spewer - In Combat - Cast Spawn Bile Slime'),
(10416, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bile Spewer - On Spawn Bile Slime - Say Line 0'),
(10416, 0, 3, 4, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16865, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bile Spewer - On Death - Cast Spawn Bile Slimes'),
(10416, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bile Spewer - On Death - Say Line 1'),
(10416, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12787, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bile Spewer - On Respawn - Cast Thrash Proc'),
(10417, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Venom Belcher - On Respawn - Cast Slowing Poison Proc'),
(10417, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 15000, 15000, 0, 0, 11, 16866, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Venom Belcher - In Combat - Cast Venom Pit'),
--
(10418, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Crimson Guardsman - Within Range 8-25yd - Cast Shield Charge'),
(10418, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 15000, 15000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Guardsman - In Combat - Cast Disarm'),
(10418, 0, 2, 0, 105, 0, 100, 0, 4000, 4000, 8000, 8000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Guardsman - Victim Casting - Cast Shield Bash'),
(10418, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Guardsman - Between 0-15% Health - Flee For Assist'),
(10419, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Crimson Conjuror - In Combat - Cast Frostbolt'),
(10419, 0, 1, 0, 0, 0, 100, 0, 2000, 4000, 5000, 12000, 0, 0, 11, 17195, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Conjuror - In Combat - Cast Scorch'),
(10419, 0, 2, 0, 106, 0, 100, 0, 0, 0, 15000, 21000, 0, 8, 11, 12674, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Crimson Conjuror - Within 0-8 Range - Cast Frost Nova'),
(10419, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 21000, 25000, 0, 0, 11, 17162, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Conjuror - In Combat - Cast Summon Water Elemental'),
(10419, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Conjuror - Between 0-15% Health - Flee For Assist'),
(10420, 0, 0, 0, 14, 0, 100, 0, 3000, 30, 17000, 21000, 0, 0, 11, 17138, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Initiate - Friendly Missing Health - Cast Flash Heal'),
(10420, 0, 1, 0, 14, 0, 100, 0, 2000, 30, 14000, 19000, 0, 0, 11, 8362, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Initiate - Friendly Missing Health - Cast Renew'),
(10420, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 17194, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Crimson Initiate - In Combat - Cast Mind Blast'),
(10420, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Initiate - Between 0-15% Health - Flee For Assist'),
(10421, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 120000, 120000, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Crimson Defender - In Combat - Cast Devotion Aura'),
(10421, 0, 1, 0, 14, 0, 100, 0, 3000, 40, 18000, 25000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Defender - Friendly Missing Health - Cast Holy Light'),
(10421, 0, 2, 0, 9, 0, 100, 0, 0, 0, 16000, 25000, 0, 8, 11, 13005, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Crimson Defender - Within 0-8 Range - Cast Hammer of Justice'),
(10421, 0, 3, 0, 0, 0, 100, 0, 17000, 25000, 21000, 30000, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Crimson Defender - In Combat - Cast Divine Shield'),
(10421, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Defender - Between 0-15% Health - Flee For Assist'),
(10422, 0, 0, 0, 1, 0, 100, 0, 1000, 3000, 900000, 900000, 0, 0, 11, 17150, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Crimson Sorcerer - Out of Combat - Cast Arcane Might'),
(10422, 0, 1, 0, 1, 0, 100, 0, 1000, 3000, 900000, 900000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Crimson Sorcerer - Out of Combat - Cast Frost Armor'),
(10422, 0, 2, 0, 0, 0, 80, 0, 0, 0, 1000, 3000, 0, 0, 11, 15230, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Crimson Sorcerer - In Combat - Cast Arcane Bolt'),
(10422, 0, 3, 0, 0, 0, 100, 0, 5000, 6000, 8000, 10000, 0, 0, 11, 14145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Sorcerer - In Combat - Cast Fire Blast'),
(10422, 0, 4, 0, 0, 0, 100, 0, 7000, 14000, 21000, 26000, 0, 0, 11, 13323, 32, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,  'Crimson Sorcerer - In Combat - Cast Polymorph'),
(10422, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Sorcerer - Between 0-15% Health - Flee For Assist'),
(10423, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 5000, 5000, 0, 0, 11, 15238, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Crimson Priest - In Combat - Cast Holy Smite'),
(10423, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 15586, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Crimson Priest - Between 0-50% Health - Cast Heal'), -- https://www.youtube.com/watch?v=3yAOdhlXotw
(10423, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 15000, 15000, 0, 0, 11, 17142, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Priest - In Combat - Cast Holy Fire'),
(10423, 0, 3, 0, 2, 0, 100, 0, 15000, 15000, 45000, 45000, 0, 0, 11, 17139, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Crimson Priest - In Combat - Cast Power Word: Shield'),
(10423, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Priest - Between 0-15% Health - Flee For Assist'),
(10424, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Crimson Gallant - On Respawn - Cast Retribution Aura'),
(10424, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9100, 9100, 0, 5, 11, 14518, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Crimson Gallant - Within 0-5 Range - Cast Crusader Strike'),
(10424, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 10000, 16000, 0, 0, 11, 17143, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Crimson Gallant - Within 0-5 Range - Cast Holy Strike'),
(10424, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Gallant - Between 0-15% Health - Flee For Assist'),
(10425, 0, 0, 0, 106, 0, 100, 0, 0, 0, 9000, 14000, 0, 8, 11, 15253, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Crimson Battle Mage - In Combat - Cast Arcane Explosion'),
(10425, 0, 1, 0, 0, 0, 100, 0, 8000, 15000, 13000, 17000, 0, 10, 11, 17145, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Crimson Battle Mage - In Combat - Cast Blast Wave'),
(10425, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Battle Mage - Between 0-15% Health - Flee For Assist'),
(10426, 0, 0, 0, 0, 0, 100, 0, 0, 0, 9000, 14000, 0, 0, 11, 15785, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,         'Crimson Inquisitor - In Combat - Cast Mana Burn'),
(10426, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 16000, 0, 20, 11, 17165, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Crimson Inquisitor - In Combat - Cast Mind Flay'),
(10426, 0, 2, 0, 0, 0, 100, 0, 6000, 11000, 21000, 27000, 0, 0, 11, 17146, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Crimson Inquisitor - In Combat - Cast Shadow Word: Pain'),
(10426, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17151, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Crimson Inquisitor - Out of Combat - Cast Shadow Barrier'),
(10426, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Inquisitor - Between 0-15% Health - Flee For Assist'),
-- https://github.com/vmangos/core/blob/development/src/scripts/eastern_kingdoms/eastern_plaguelands/stratholme/boss_nerubenkan.cpp
(10437, 0, 0, 0, 0, 0, 100, 0, 7000, 10000, 10000, 15000, 0, 0, 11, 4962, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,    'Nerub enkan - In Combat - Cast Encasing Webs'),
(10437, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 15000, 20000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Nerub enkan - In Combat - Cast Pierce Armor'), -- https://www.youtube.com/watch?v=2SIKU9GZFWQ
(10437, 0, 2, 0, 0, 0, 100, 0, 3000, 3000, 6000, 10000, 0, 0, 11, 31602, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Nerub enkan - In Combat - Cast Crypt Scarabs'),
(10437, 0, 3, 0, 0, 0, 100, 0, 10000, 10000, 20000, 20000, 0, 0, 11, 17235, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Nerub enkan - In Combat - Cast Raide Undead Scarab'),
(10437, 0, 4, 0, 6, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Nerub enkan - On Death - Set Instance Data 2 to 1 (Normal Dungeon)'),
-- https://github.com/vmangos/core/blob/development/src/scripts/eastern_kingdoms/eastern_plaguelands/stratholme/boss_maleki_the_pallid.cpp
(10438, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 3500, 4500, 0, 0, 11, 17503, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Maleki the Pallid - In Combat - Cast Frostbolt'),
(10438, 0, 1, 0, 0, 0, 100, 0, 12000, 12000, 20000, 25000, 0, 0, 11, 16869, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Maleki the Pallid - In Combat - Cast Ice Tomb'),
(10438, 0, 2, 0, 0, 0, 100, 0, 4000, 4000, 12000, 18000, 0, 0, 11, 17238, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Maleki the Pallid - In Combat - Cast Drain Life'),
(10438, 0, 3, 0, 6, 0, 100, 2, 0, 0, 0, 0, 0, 0, 34, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Maleki the Pallid - On Death - Set Instance Data 3 to 1 (Normal Dungeon)'),
-- https://github.com/vmangos/core/blob/development/src/scripts/eastern_kingdoms/eastern_plaguelands/stratholme/boss_ramstein_the_gorger.cpp
(10439, 0, 0, 0, 25, 0, 100, 769, 0, 0, 0, 0, 0, 0, 80, 1043900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Ramstein the Gorger - On Reset - Run Script'),
(10439, 0, 1, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 15088, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Ramstein the Gorger - On Reset - Cast Flurry'),
(10439, 0, 2, 0, 0, 0, 100, 0, 12000, 12000, 10000, 12000, 0, 0, 11, 17307, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0, 'Ramstein the Gorger - Within 0-10 Range - Cast Knockout'),
(10439, 0, 3, 0, 0, 0, 100, 0, 3000, 3000, 7000, 12000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Ramstein the Gorger - In Combat - Cast Trample'),
--
(10463, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 3000, 0, 0, 11, 16868, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shrieking Banshee - In Combat - Cast Banshee Wail'),
(10463, 0, 1, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 3589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shrieking Banshee - Within 0-5 Range - Cast Deafening Screech'),
(10464, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 20000, 27000, 0, 0, 11, 19645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Wailing Banshee - In Combat - Cast Anti-Magic Shield'),
(10464, 0, 1, 0, 0, 0, 100, 0, 0, 0, 12000, 15000, 0, 0, 11, 17105, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,          'Wailing Banshee - Within 0-30 Range - Cast Banshee Curse'),
--
(10516, 0, 0, 0, 37, 0, 80, 512, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'The Unforgiven - On AI Init - Set Invisible'),
(10516, 0, 1, 2, 4, 0, 100, 769, 0, 0, 0, 0, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'The Unforgiven - On Aggro - Set Visible'),
(10516, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 12, 10387, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0,                'The Unforgiven - On Aggro - Summon Creature'),
(10516, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 12, 10387, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, -3, 0, 0, 0,               'The Unforgiven - On Aggro - Summon Creature'),
(10516, 0, 4, 5, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 12, 10387, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -3, 0, 0,               'The Unforgiven - On Aggro - Summon Creature'),
(10516, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 12, 10387, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0,                'The Unforgiven - On Aggro - Summon Creature'),
(10516, 0, 6, 0, 0, 0, 100, 0, 6000, 10000, 11000, 14000, 0, 0, 11, 14907, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'The Unforgiven - In Combat - Cast Frost Nova'),
(10516, 0, 7, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16331, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'The Unforgiven - On Reset - Cast Incorporeal Defense'),
--
(10558, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Hearthsinger Forresten - Outside 30 Range - Start Combat Movement'),
(10558, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hearthsinger Forresten - Within 5-30 Range - Stop Combat Movement'),
(10558, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Hearthsinger Forresten - Within 0-5 Range - Start Combat Movement'),
(10558, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 5, 30, 11, 16100, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Hearthsinger Forresten - Within 5-30 Range - Cast Shoot'),
(10558, 0, 4, 0, 0, 0, 100, 0, 9000, 14000, 9000, 14000, 0, 0, 11, 14443, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,   'Hearthsinger Forresten - Within 5-30 Range - Cast Multi-Shot'),
(10558, 0, 5, 0, 0, 0, 100, 0, 3000, 5000, 12000, 19000, 0, 0, 11, 16244, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Hearthsinger Forresten - In Combat - Cast Demoralizing Shout'),
(10558, 0, 6, 0, 0, 0, 100, 0, 7000, 9000, 20000, 25000, 0, 0, 11, 16798, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,    'Hearthsinger Forresten - In Combat - Cast Enchanting Lullaby'),
(10558, 0, 7, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16331, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Hearthsinger Forresten - On Respawn - Cast Incorporeal Defense'),
(10558, 0, 8, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hearthsinger Forresten - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(10809, 0, 0, 0, 37, 0, 50, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Stonespine - On AI Init - Despawn'),
(10809, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 14331, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Stonespine - Within 0-5 Range - Cast Vicious Rend'),
--
(10811, 0, 0, 0, 0, 0, 100, 0, 13000, 16000, 15000, 18000, 0, 0, 11, 17293, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Archivist Galford - In Combat - Cast Burning Winds'),
(10811, 0, 1, 0, 0, 0, 100, 0, 3000, 10000, 10000, 12000, 0, 0, 11, 17366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Archivist Galford - In Combat - Cast Fire Nova'), -- https://www.youtube.com/watch?v=gIC5OEz75BY
(10811, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 15000, 25000, 0, 0, 11, 17274, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Archivist Galford - In Combat - Cast Pyroblast'), -- https://www.youtube.com/watch?v=3yAOdhlXotw
-- https://github.com/vmangos/core/blob/development/src/scripts/eastern_kingdoms/eastern_plaguelands/stratholme/boss_dathrohan_balnazzar.cpp
(10812, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Grand Crusader Dathrohan - On Aggro - Say Line 0'),
(10812, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Grand Crusader Dathrohan - On Aggro - Set Event Phase'),
(10812, 0, 2, 0, 0, 1, 100, 0, 12000, 12000, 15000, 15000, 0, 0, 11, 17281, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Grand Crusader Dathrohan - Within 0-5 Range - Cast Crusader Strike'), 
(10812, 0, 3, 0, 0, 1, 100, 0, 8000, 8000, 12000, 12000, 0, 0, 11, 17286, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Grand Crusader Dathrohan - In Combat - Cast Crusader Hammer'),
(10812, 0, 4, 0, 0, 1, 100, 0, 18000, 18000, 15000, 15000, 0, 0, 11, 17284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Grand Crusader Dathrohan - Within 0-5 Range - Cast Holy Strike'),
(10812, 0, 5, 6, 2, 1, 100, 513, 0, 40, 0, 0, 0, 0, 11, 17288, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Grand Crusader Dathrohan - Between 0-40% Health - Cast Balnazzar Transform'),
(10812, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 67, 1, 1500, 1500, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Grand Crusader Dathrohan - Between 0-40% Health - Create Timed Event'),
(10812, 0, 7, 8, 59, 1, 100, 512, 1, 0, 0, 0, 0, 0, 36, 10813, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Grand Crusader Dathrohan - On Timed Event - Update Entry'),
(10812, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Grand Crusader Dathrohan - On Timed Event - Set Event Phase'),
(10812, 0, 9, 0, 0, 2, 100, 1, 1000, 1000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Grand Crusader Dathrohan - In Combat - Balnazzar Say Line 1'),
(10812, 0, 10, 0, 0, 2, 100, 0, 3000, 3000, 11000, 11000, 0, 0, 11, 17399, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Grand Crusader Dathrohan - In Combat - Cast Shadow Shock'),
(10812, 0, 11, 0, 0, 2, 100, 0, 6000, 6000, 15000, 20000, 0, 0, 11, 17287, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Grand Crusader Dathrohan - In Combat - Cast Mind Blast'),
(10812, 0, 12, 0, 0, 2, 100, 0, 12000, 12000, 20000, 20000, 0, 0, 11, 13704, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Grand Crusader Dathrohan - In Combat - Cast Psychic Scream'),
(10812, 0, 13, 0, 0, 2, 100, 0, 9000, 9000, 15000, 15000, 0, 0, 11, 12098, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,   'Grand Crusader Dathrohan - In Combat - Cast Sleep'),
(10812, 0, 14, 0, 0, 2, 100, 0, 18000, 18000, 25000, 30000, 0, 0, 11, 15690, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0, 'Grand Crusader Dathrohan - In Combat - Cast Mind Control'), -- does this work?
(10812, 0, 15, 16, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Grand Crusader Dathrohan - On Death - Balnazzar Say Line 2'),
(10812, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Grand Crusader Dathrohan - On Death - Summon Creature Group'),
(10812, 0, 17, 0, 1, 0, 100, 513, 0, 0, 0, 0, 0, 0, 36, 10812, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Grand Crusader Dathrohan - Out of Combat - Update Entry'),
-- https://github.com/vmangos/core/blob/development/src/scripts/eastern_kingdoms/eastern_plaguelands/stratholme/boss_cannon_master_willey.cpp
(10997, 0, 0, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Cannon Master Willey - In Combat - Cast Knock Away'),
(10997, 0, 1, 0, 105, 0, 100, 0, 5000, 10000, 12000, 18000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,  'Cannon Master Willey - In Combat - Cast Pummel'),
(10997, 0, 2, 0, 0, 0, 100, 0, 5000, 6000, 20000, 20000, 0, 0, 11, 17279, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Cannon Master Willey - In Combat - Cast Summon Crimson Rifleman'),
(10997, 0, 3, 4, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17279, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cannon Master Willey - On Death - Cast Summon Crimson Rifleman'),
(10997, 0, 4, 5, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17279, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Cannon Master Willey - On Death - Cast Summon Crimson Rifleman'),
(10997, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17279, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Cannon Master Willey - On Death - Cast Summon Crimson Rifleman'),
(10997, 0, 6, 0, 21, 0, 100, 512, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 15, 176215, 50, 0, 0, 0, 0, 0, 0,             'Cannon Master Willey - On Reached Home - Respawn Target'),
--
(11032, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 8, 11, 12734, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Malor the Zealous - Within 0-8 Range - Cast Ground Smash'),
(11032, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 16172, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Malor the Zealous - In Combat - Cast Head Crack'),
(11032, 0, 2, 0, 2, 0, 100, 0, 0, 20, 9000, 13000, 0, 0, 11, 15493, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Malor the Zealous - Between Health 0-20% - Cast Holy Light'),
(11032, 0, 3, 0, 14, 0, 100, 0, 2500, 40, 14000, 17000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Malor the Zealous - Friendly Missing 2500 Health - Cast Holy Light'),
(11032, 0, 4, 0, 2, 0, 100, 1, 0, 10, 0, 0, 0, 0, 11, 10310, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Malor the Zealous - Between Health 0-10% - Cast Lay on Hands'),
--
(11043, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Crimson Monk - On Aggro - Say Line 0'),
(11043, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Crimson Monk - On Respawn - Cast Dual Wield'),
(11043, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Crimson Monk - On Respawn - Cast Thrash Proc'),
(11043, 0, 3, 0, 105, 0, 100, 0, 0, 0, 8000, 10000, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Crimson Monk - Victim Casting - Cast Kick'),
(11043, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Crimson Monk - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(16387, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28340, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Atiesh - On Reset - Cast Unholy Aura'),
(16387, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 13000, 18000, 0, 0, 11, 19729, 0, 0, 0, 0, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0,    'Atiesh - In Combat - Cast Shadow Bolt'),
(16387, 0, 2, 0, 0, 0, 100, 0, 15000, 15000, 15000, 25000, 0, 0, 11, 28352, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Atiesh - In Combat - Cast Breath of Sargeras'), -- trigger curse spell 28342
(16387, 0, 3, 4, 8, 0, 100, 0, 676, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Atiesh - On Disarm - Say Line 0'),
(16387, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 28355, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Atiesh - On Disarm - Cast Reaper of Souls DND'), -- drop sword on ground
(16387, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Atiesh - On Disarm - Set Sheath Melee');


DELETE FROM `creature_text` WHERE `CreatureID` = 16387;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(16387, 0, 0, '%s drops it\'s weapon.', 16, 0, 100, 0, 0, 0, 12338, 0, 'Atiesh');

DELETE FROM `spell_script_names` WHERE `spell_id` = 28352;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28352, 'spell_atiesh_breath_of_sargeras');

DELETE FROM `gameobject_template` WHERE `entry` = 181207;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, 
`Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, 
`Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(181207, 3, 4175, 'Runed Demonic Blade', '', '', '', 1, 93, 622736, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 622736;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(622736, 22736, 0, 100, 0, 1, 0, 1, 1, 'Andonisus Reaper of Souls');


/* fix rare loot drop rates  */
UPDATE `creature_loot_template` SET `Chance` = 1    WHERE `entry` = 10398 AND `item` = 16697; -- Thuzadin Shadowcaster - Dreadmist Belt
UPDATE `creature_loot_template` SET `Chance` = 1    WHERE `entry` = 10398 AND `item` = 16702; -- Thuzadin Necromancer - Devout Bracers
UPDATE `creature_loot_template` SET `Chance` = 1    WHERE `entry` = 10400 AND `item` = 16697; -- Thuzadin Necromancer - Devout Bracers
UPDATE `creature_loot_template` SET `Chance` = 1    WHERE `entry` = 10400 AND `item` = 16702; -- Thuzadin Necromancer - Dreadmist Belt
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10406 AND `item` = 16681; -- Ghoul Ravener - Beaststalker's Bindings
UPDATE `creature_loot_template` SET `Chance` = 1.5  WHERE `entry` = 10407 AND `item` = 16681; -- Fleshflayer Ghoul - Beaststalker's Bindings
UPDATE `creature_loot_template` SET `Chance` = 2.25 WHERE `entry` = 10408 AND `item` = 16723; -- Rockwing Gargoyle - Lightforge Belt
UPDATE `creature_loot_template` SET `Chance` = 2.25 WHERE `entry` = 10409 AND `item` = 16723; -- Rockwing Gargoyle - Lightforge Belt
UPDATE `creature_loot_template` SET `Chance` = 1.25 WHERE `entry` = 10412 AND `item` = 16671; -- Crypt Crawler - Bindings of Elements
UPDATE `creature_loot_template` SET `Chance` = 1.5  WHERE `entry` = 10413 AND `item` = 16671; -- Crypt Beast - Bindings of Elements
UPDATE `creature_loot_template` SET `Chance` = 3    WHERE `entry` = 10414 AND `item` = 16736; -- Patchwork Horror - Belt of Valor
UPDATE `creature_loot_template` SET `Chance` = 2.25 WHERE `entry` = 10416 AND `item` = 16736; -- Bile Spewer - Belt of Valor
UPDATE `creature_loot_template` SET `Chance` = 2.25 WHERE `entry` = 10417 AND `item` = 16736; -- Venom Belcher - Belt of Valor
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10418 AND `item` = 16723; -- Crimson Guardsman - Lightforge Belt
UPDATE `creature_loot_template` SET `Chance` = 2    WHERE `entry` = 10420 AND `item` = 16697; -- Crimson Initiate - Devout Bracers
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10421 AND `item` = 16681; -- Crimson Defender - Beaststalker's Bindings
UPDATE `creature_loot_template` SET `Chance` = 2    WHERE `entry` = 10422 AND `item` = 16685; -- Crimson Sorcerer - Magister's Belt
UPDATE `creature_loot_template` SET `Chance` = 4    WHERE `entry` = 10423 AND `item` = 16697; -- Crimson Priest - Devout Bracers
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10424 AND `item` = 16723; -- Crimson Gallant - Lightforge Belt
UPDATE `creature_loot_template` SET `Chance` = 3    WHERE `entry` = 10425 AND `item` = 16685; -- Crimson Battle Mage - Magister's Belt
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10426 AND `item` = 16714; -- Crimson Inquisitor - Wildheart Bracers
UPDATE `creature_loot_template` SET `Chance` = 1.5  WHERE `entry` = 10463 AND `item` = 16714; -- Shrieking Banshee - Wildheart Bracers
UPDATE `creature_loot_template` SET `Chance` = 1.75 WHERE `entry` = 10464 AND `item` = 16714; -- Wailing Banshee - Wildheart Bracers
UPDATE `creature_loot_template` SET `Chance` = 3    WHERE `entry` = 11043 AND `item` = 16671; -- Crimson Monk - Bindings of Elements

-- stratholme living side, 3 doors not locked that should require the scarlet key
UPDATE gameobject_template SET `Data1` = 299 WHERE `entry` IN (175967, 175968, 176194);
UPDATE gameobject_template_addon SET `flags` = 34 WHERE `entry` IN (175967, 175968, 176194);

-- service gate should open and close, but not lock itself again. I can't get this to work, so I'm keeping the gate open. (old Data2 value was 3000)
UPDATE `gameobject_template` SET `Data2` = 0 WHERE `entry` = 175368; 

-- Gargoyles
SET @CGUID    := 329000;  -- creature guid
SET @WPID     := 3290000; -- waypoint ID

DELETE FROM `creature_addon` WHERE `guid` = 53854; -- remove old data, we creating new creatures

DELETE FROM `creature` WHERE `id1` IN (10408, 10409, 10809);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(52147,    10809, 0, 0, 329, 0, 0, 1, 1, 0, 4058.86, -3530.33, 122.247, 0, 86400, 0, 1, 15260, 0, 2, 0, 0, 0, '', 0, 0, NULL), -- Stonespine
--
(@CGUID+1, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 3858.25, -3683.23, 142.775, 3.83062, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+2, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 3833.23, -3711.21, 142.181, 4.14354, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+3, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 4006.21, -3544.49, 123.429, 0.052646, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+4, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 3861.04, -3561.72, 139.48, 1.89164, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+5, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 3817.84, -3639.02, 146.269, 0.771651, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+6, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 3972.44, -3562.87, 126.106, 3.67678, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+7, 10408, 0, 0, 329, 0, 0, 1, 1, 0, 4058.86, -3530.33, 122.247, 0, 86400, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+11, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 3858.25, -3683.23, 142.775, 3.83062, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+12, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 3833.23, -3711.21, 142.181, 4.14354, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+13, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 4006.21, -3544.49, 123.429, 0.052646, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+14, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 3861.04, -3561.72, 139.48, 1.89164, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+15, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 3817.84, -3639.02, 146.269, 0.771651, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+16, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 3972.44, -3562.87, 126.106, 3.67678, 1800, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+17, 10409, 0, 0, 329, 0, 0, 1, 1, 0, 4058.86, -3530.33, 122.247, 0, 86400, 0, 1, 8097, 0, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 601021 AND 601027;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(@CGUID+1,  601021, 0, 'Rockwing Gargoyle'),
(@CGUID+11, 601021, 0, 'Rockwing Screecher'),
(@CGUID+2,  601022, 0, 'Rockwing Gargoyle'),
(@CGUID+12, 601022, 0, 'Rockwing Screecher'),
(@CGUID+3,  601023, 0, 'Rockwing Gargoyle'),
(@CGUID+13, 601023, 0, 'Rockwing Screecher'),
(@CGUID+4,  601024, 0, 'Rockwing Gargoyle'),
(@CGUID+14, 601024, 0, 'Rockwing Screecher'),
(@CGUID+5,  601025, 0, 'Rockwing Gargoyle'),
(@CGUID+15, 601025, 0, 'Rockwing Screecher'),
(@CGUID+6,  601026, 0, 'Rockwing Gargoyle'),
(@CGUID+16, 601026, 0, 'Rockwing Screecher'),
(@CGUID+7,  601027, 0, 'Rockwing Gargoyle'),
(@CGUID+17, 601027, 0, 'Rockwing Screecher');

DELETE FROM `pool_template` WHERE `entry` BETWEEN 601021 AND 601027;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601021, 1, 'Rockwing Gargoyle or Screecher'),
(601022, 1, 'Rockwing Gargoyle or Screecher'),
(601023, 1, 'Rockwing Gargoyle or Screecher'),
(601024, 1, 'Rockwing Gargoyle or Screecher'),
(601025, 1, 'Rockwing Gargoyle or Screecher'),
(601026, 1, 'Rockwing Gargoyle or Screecher'),
(601027, 1, 'Rockwing Gargoyle or Screecher');

DELETE FROM `creature_addon` WHERE `guid` = 52147;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+17;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(52147, 521470, 0, 0, 0, 0, 0, NULL),
--
(@CGUID+1,  @WPID+10, 0, 0, 0, 0, 0, NULL),
(@CGUID+2,  @WPID+20, 0, 0, 0, 0, 0, NULL),
(@CGUID+3,  @WPID+30, 0, 0, 0, 0, 0, NULL),
(@CGUID+4,  @WPID+40, 0, 0, 0, 0, 0, NULL),
(@CGUID+5,  @WPID+50, 0, 0, 0, 0, 0, NULL),
(@CGUID+6,  @WPID+60, 0, 0, 0, 0, 0, NULL),
(@CGUID+7,  @WPID+70, 0, 0, 0, 0, 0, NULL),
--
(@CGUID+11, @WPID+10, 0, 0, 0, 0, 0, NULL),
(@CGUID+12, @WPID+20, 0, 0, 0, 0, 0, NULL),
(@CGUID+13, @WPID+30, 0, 0, 0, 0, 0, NULL),
(@CGUID+14, @WPID+40, 0, 0, 0, 0, 0, NULL),
(@CGUID+15, @WPID+50, 0, 0, 0, 0, 0, NULL),
(@CGUID+16, @WPID+60, 0, 0, 0, 0, 0, NULL),
(@CGUID+17, @WPID+70, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (521470, @WPID+10, @WPID+20, @WPID+30, @WPID+40, @WPID+50, @WPID+60, @WPID+70);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(521470, 1, 4034.63, -3522.79, 121.984, NULL, 0, 1, 0, 100, 0), -- Stonespine
(521470, 2, 4011.73, -3544.6, 123.323, NULL, 0, 1, 0, 100, 0),
(521470, 3, 4004.57, -3561.6, 125.813, NULL, 0, 1, 0, 100, 0),
(521470, 4, 4001.47, -3584.37, 128.775, NULL, 0, 1, 0, 100, 0),
(521470, 5, 3992.75, -3616.82, 129.582, NULL, 0, 1, 0, 100, 0),
(521470, 6, 3977.86, -3632.36, 130.21, NULL, 0, 1, 0, 100, 0),
(521470, 7, 3955.9, -3645.68, 134.636, NULL, 0, 1, 0, 100, 0),
(521470, 8, 3941.33, -3647.64, 138.761, NULL, 0, 1, 0, 100, 0),
(521470, 9, 3908.15, -3672.52, 138.977, NULL, 0, 1, 0, 100, 0),
(521470, 10, 3879.03, -3680.38, 142.306, NULL, 0, 1, 0, 100, 0),
(521470, 11, 3857.21, -3682.06, 142.894, NULL, 0, 1, 0, 100, 0),
(521470, 12, 3840.66, -3667.58, 144.413, NULL, 0, 1, 0, 100, 0),
(521470, 13, 3831.58, -3635.96, 146.268, NULL, 0, 1, 0, 100, 0),
(521470, 14, 3838.78, -3608.24, 145.114, NULL, 0, 1, 0, 100, 0),
(521470, 15, 3853.1, -3582.58, 142.621, NULL, 0, 1, 0, 100, 0),
(521470, 16, 3865.07, -3561.98, 138.698, NULL, 0, 1, 0, 100, 0),
(521470, 17, 3891.76, -3545.74, 137.553, NULL, 0, 1, 0, 100, 0),
(521470, 18, 3865.07, -3561.98, 138.698, NULL, 0, 1, 0, 100, 0),
(521470, 19, 3853.1, -3582.58, 142.621, NULL, 0, 1, 0, 100, 0),
(521470, 20, 3838.78, -3608.24, 145.114, NULL, 0, 1, 0, 100, 0),
(521470, 21, 3831.58, -3635.96, 146.268, NULL, 0, 1, 0, 100, 0),
(521470, 22, 3840.66, -3667.58, 144.413, NULL, 0, 1, 0, 100, 0),
(521470, 23, 3857.13, -3682.07, 142.898, NULL, 0, 1, 0, 100, 0),
(521470, 24, 3879.03, -3680.38, 142.306, NULL, 0, 1, 0, 100, 0),
(521470, 25, 3908.15, -3672.52, 138.977, NULL, 0, 1, 0, 100, 0),
(521470, 26, 3941.33, -3647.64, 138.761, NULL, 0, 1, 0, 100, 0),
(521470, 27, 3955.9, -3645.68, 134.636, NULL, 0, 1, 0, 100, 0),
(521470, 28, 3977.86, -3632.36, 130.21, NULL, 0, 1, 0, 100, 0),
(521470, 29, 3992.75, -3616.82, 129.582, NULL, 0, 1, 0, 100, 0),
(521470, 30, 4001.47, -3584.37, 128.775, NULL, 0, 1, 0, 100, 0),
(521470, 31, 4004.57, -3561.6, 125.813, NULL, 0, 1, 0, 100, 0),
(521470, 32, 4011.73, -3544.6, 123.323, NULL, 0, 1, 0, 100, 0),
(521470, 33, 4034.63, -3522.79, 121.984, NULL, 0, 1, 0, 100, 0),
(521470, 34, 4058.86, -3530.33, 122.247, NULL, 0, 1, 0, 100, 0),
--
(@WPID+10, 1, 3916.48, -3667.52, 137.975, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 2, 3892.44, -3678.49, 141.398, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 3, 3876.82, -3681.06, 142.505, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 4, 3857.7, -3675.37, 143.627, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 5, 3844.01, -3685.72, 143.353, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 6, 3838.72, -3702.62, 142.462, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 7, 3829.82, -3716.55, 141.906, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 8, 3838.72, -3702.62, 142.462, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 9, 3844.01, -3685.72, 143.353, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 10, 3857.53, -3675.49, 143.616, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 11, 3876.82, -3681.06, 142.505, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 12, 3892.44, -3678.49, 141.398, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 13, 3916.48, -3667.52, 137.975, NULL, 0, 1, 0, 100, 0),
(@WPID+10, 14, 3955.46, -3644, 134.226, NULL, 0, 1, 0, 100, 0),
--
(@WPID+20, 1, 4040.32, -3519.08, 121.648, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 2, 4024.39, -3520.04, 122.008, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 3, 4017.72, -3540.07, 122.868, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 4, 4009.29, -3557.34, 125.133, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 5, 4001.14, -3574.83, 127.515, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 6, 3997.41, -3601.48, 129.139, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 7, 3990.57, -3623.25, 130.038, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 8, 3967.96, -3640.87, 132.965, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 9, 3939.73, -3649.16, 139.24, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 10, 3967.96, -3640.87, 132.965, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 11, 3990.57, -3623.25, 130.038, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 12, 3997.41, -3601.48, 129.139, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 13, 4001.14, -3574.83, 127.515, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 14, 4009.29, -3557.34, 125.133, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 15, 4017.72, -3540.07, 122.868, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 16, 4024.39, -3520.04, 122.008, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 17, 4040.32, -3519.08, 121.648, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 18, 4052.77, -3521.18, 121.658, NULL, 0, 1, 0, 100, 0),
--
(@WPID+30, 1, 4006.21, -3544.49, 123.396, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 2, 4041.11, -3522.29, 121.885, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 3, 4062.12, -3531.17, 122.287, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 4, 4035.81, -3528.73, 122.434, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 5, 4019.32, -3528.23, 122.116, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 6, 4006.2, -3556.55, 124.907, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 7, 3989.48, -3588.79, 127.585, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 8, 3976.52, -3585.48, 127.689, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 9, 3964.56, -3568.54, 127.845, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 10, 3960.29, -3557.21, 128.604, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 11, 3989.23, -3554.6, 124.741, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 12, 4003.15, -3565.29, 126.291, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 13, 3994.24, -3598.02, 128.735, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 14, 3997.83, -3617.91, 128.965, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 15, 4004.64, -3629.83, 129.634, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 16, 3982.11, -3631.74, 130.273, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 17, 3962.18, -3642.44, 133.307, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 18, 3982.11, -3631.74, 130.273, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 19, 4004.64, -3629.83, 129.634, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 20, 3997.83, -3617.91, 128.965, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 21, 3994.24, -3598.02, 128.735, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 22, 4003.15, -3565.29, 126.291, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 23, 3989.23, -3554.6, 124.741, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 24, 3960.2, -3556.98, 128.617, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 25, 3964.56, -3568.54, 127.845, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 26, 3976.52, -3585.48, 127.689, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 27, 3989.48, -3588.79, 127.585, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 28, 4006.2, -3556.55, 124.907, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 29, 4019.32, -3528.23, 122.116, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 30, 4035.81, -3528.73, 122.434, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 31, 4062.12, -3531.17, 122.287, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 32, 4041.11, -3522.29, 121.885, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 33, 4006.21, -3544.49, 123.396, NULL, 0, 1, 0, 100, 0),
(@WPID+30, 34, 3983.61, -3545.68, 124.881, NULL, 0, 1, 0, 100, 0),
--
(@WPID+40, 1, 3867.77, -3680.02, 142.945, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 2, 3844.07, -3688.32, 143.129, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 3, 3829.27, -3653.29, 145.492, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 4, 3821.82, -3635.05, 146.268, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 5, 3839.66, -3599.7, 144.332, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 6, 3859.1, -3579.14, 141.919, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 7, 3883.77, -3545.47, 137.77, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 8, 3859.1, -3579.14, 141.919, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 9, 3839.66, -3599.7, 144.332, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 10, 3821.78, -3634.98, 146.277, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 11, 3829.27, -3653.29, 145.492, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 12, 3844.07, -3688.32, 143.129, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 13, 3867.77, -3680.02, 142.945, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 14, 3901.58, -3681.78, 141.155, NULL, 0, 1, 0, 100, 0),
--
(@WPID+50, 1, 3876.98, -3543.29, 137.965, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 2, 3863.6, -3578.26, 141.375, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 3, 3849.27, -3602.1, 143.58, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 4, 3841.89, -3614.96, 145.062, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 5, 3833.57, -3623.72, 145.408, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 6, 3812.11, -3644.59, 146.623, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 7, 3833.57, -3623.72, 145.408, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 8, 3841.7, -3615.15, 145.073, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 9, 3849.18, -3602.26, 143.598, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 10, 3863.6, -3578.26, 141.375, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 11, 3876.98, -3543.3, 137.963, NULL, 0, 1, 0, 100, 0),
(@WPID+50, 12, 3872.04, -3522.9, 138.361, NULL, 0, 1, 0, 100, 0),
--
(@WPID+60, 1, 3825.59, -3637.62, 146.268, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 2, 3830.99, -3654.65, 145.407, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 3, 3843.04, -3672.38, 144.175, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 4, 3835.62, -3701.87, 142.634, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 5, 3858.74, -3682.83, 142.819, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 6, 3877.29, -3702.88, 142.773, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 7, 3884.24, -3677.16, 141.819, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 8, 3900.02, -3672.84, 139.377, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 9, 3884.24, -3677.16, 141.819, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 10, 3877.29, -3702.88, 142.773, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 11, 3858.74, -3682.83, 142.819, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 12, 3835.62, -3701.87, 142.634, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 13, 3843.04, -3672.38, 144.175, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 14, 3830.99, -3654.65, 145.407, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 15, 3825.59, -3637.62, 146.268, NULL, 0, 1, 0, 100, 0),
(@WPID+60, 16, 3825.66, -3613.04, 145.322, NULL, 0, 1, 0, 100, 0),
--
(@WPID+70, 1, 4034.63, -3522.79, 121.984, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 2, 4011.73, -3544.6, 123.323, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 3, 4004.57, -3561.6, 125.813, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 4, 4001.47, -3584.37, 128.775, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 5, 3992.75, -3616.82, 129.582, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 6, 3977.86, -3632.36, 130.21, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 7, 3955.9, -3645.68, 134.636, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 8, 3941.33, -3647.64, 138.761, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 9, 3908.15, -3672.52, 138.977, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 10, 3879.03, -3680.38, 142.306, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 11, 3857.21, -3682.06, 142.894, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 12, 3840.66, -3667.58, 144.413, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 13, 3831.58, -3635.96, 146.268, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 14, 3838.78, -3608.24, 145.114, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 15, 3853.1, -3582.58, 142.621, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 16, 3865.07, -3561.98, 138.698, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 17, 3891.76, -3545.74, 137.553, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 18, 3865.07, -3561.98, 138.698, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 19, 3853.1, -3582.58, 142.621, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 20, 3838.78, -3608.24, 145.114, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 21, 3831.58, -3635.96, 146.268, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 22, 3840.66, -3667.58, 144.413, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 23, 3857.13, -3682.07, 142.898, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 24, 3879.03, -3680.38, 142.306, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 25, 3908.15, -3672.52, 138.977, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 26, 3941.33, -3647.64, 138.761, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 27, 3955.9, -3645.68, 134.636, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 28, 3977.86, -3632.36, 130.21, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 29, 3992.75, -3616.82, 129.582, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 30, 4001.47, -3584.37, 128.775, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 31, 4004.57, -3561.6, 125.813, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 32, 4011.73, -3544.6, 123.323, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 33, 4034.63, -3522.79, 121.984, NULL, 0, 1, 0, 100, 0),
(@WPID+70, 34, 4058.86, -3530.33, 122.247, NULL, 0, 1, 0, 100, 0);
