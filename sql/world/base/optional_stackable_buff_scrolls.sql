/* These changes remove exclusivity from the buff scrolls, and make them stackable.
This restores behavior to vanilla where players were able to buff themselves with multiple buff scrolls
*/
-- Set first_spell_id as rank 2 to bypass core check for exclusivity
UPDATE `spell_ranks` SET `first_spell_id`=8094 WHERE `first_spell_id`=8091;
UPDATE `spell_ranks` SET `first_spell_id`=8097 WHERE `first_spell_id`=8096;
UPDATE `spell_ranks` SET `first_spell_id`=8100 WHERE `first_spell_id`=8099;
UPDATE `spell_ranks` SET `first_spell_id`=8113 WHERE `first_spell_id`=8112;
UPDATE `spell_ranks` SET `first_spell_id`=8116 WHERE `first_spell_id`=8115;
UPDATE `spell_ranks` SET `first_spell_id`=8119 WHERE `first_spell_id`=8118;
