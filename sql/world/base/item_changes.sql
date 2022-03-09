-- Restore rep requirement to Mantle of the Dawn
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=6 WHERE entry IN (18169, 18170, 18171, 18172, 18173);
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=7 WHERE entry=18182;