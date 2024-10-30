/* These changes remove exclusivity from the buff scrolls, and make them stackable.
This restores behavior to vanilla where players were able to buff themselves with multiple buff scrolls */
DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (8118, 8099, 8112, 8096, 8115, 8091);
