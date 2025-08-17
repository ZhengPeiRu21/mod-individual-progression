/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2925, 2929);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2639, 2653, 2658, 2659, 2686, 2707, 2926, 2928, 4466, 4467, 8215, 8218);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2639, 2653, 2658, 2659, 2686, 2707, 2925, 2926, 2928, 2929, 4466, 4467, 8215, 8218);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2639, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Vilebranch Axe Thrower - Outside 30 Range - Start Combat Movement'),
(2639, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Vilebranch Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(2639, 0, 2, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Vilebranch Axe Thrower - Within 0-5 Range - Start Combat Movement'),
(2639, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Axe Thrower - Within 5-30 Range - Cast Throw'),
(2639, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2653, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherbark Sadist - On Reset - Cast Battle Stance'),
(2653, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Witherbark Sadist - Within 0-5 Range - Cast Heroic Strike'),
(2653, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Witherbark Sadist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2658, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Razorbeak Gryphon - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Razorbeak Skylord - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 12000, 16000, 0, 0, 11, 11019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Razorbeak Skylord - In Combat - Cast Wing Flap'),
(2686, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11018, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherbark Broodguard - On Death - Summon Witherbark Bloodlings'),
(2707, 0, 0, 0, 9, 0, 100, 0, 8000, 8000, 15000, 25000, 0, 5, 11, 3609, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadra - Within 0-5 Range - Cast Paralyzing Poison'),
(2707, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadra - On Reset - Cast Poison Proc'),
(2926, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 5, 11, 7367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Silvermane Stalker - Within 0-5 Range - Cast Infected Bite'),
(2926, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Silvermane Stalker - Out of Combat - Cast Sneak'),
(2928, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 3252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Primitive Owlbeast - Within 0-5 Range - Cast Shred'),
(4466, 0, 0, 0, 12, 0, 100, 0, 0, 20, 18000, 26000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Vilebranch Scalper - Target Between 0-20% Health - Cast Execute'),
(4466, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Scalper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4467, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Soothsayer - In Combat - Cast Lightning Bolt'),
(4467, 0, 1, 0, 2, 0, 100, 0, 0, 40, 13000, 16000, 0, 0, 11, 10395, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Vilebranch Soothsayer - Between 0-40% Health - Cast Healing Wave'),
(4467, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Vilebranch Soothsayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8215, 0, 0, 0, 0, 0, 100, 0, 3000, 12000, 9000, 14000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Grimungous - In Combat - Cast Trample'),
(8215, 0, 1, 0, 0, 0, 100, 0, 14000, 20000, 14000, 20000, 0, 0, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grimungous - In Combat - Cast War Stomp'),
(8218, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Witherheart the Stalker - On Reset - Cast Sneak'),
(8218, 0, 1, 0, 67, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Witherheart the Stalker - On Behind Target - Cast Backstab');


-- Troll Necklace Bounty quest should be for Alliance only
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 2880;

-- Shadra incorrect display scale and missing smart AI
UPDATE `creature_template_model` SET `DisplayScale` = 5  WHERE `CreatureID` = 2707;



