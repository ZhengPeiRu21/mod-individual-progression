DELETE FROM `command` WHERE `name` IN ('ip get', 'ip set', 'ip setbot', 'ip setrep', 'ip tele');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('ip get', 0, 'Syntax: .ip get\nShows your or your targets current progression level.'),
('ip set', 2, 'Syntax: .ip set $progressionLevel\nSets the player to the given progression level.'),
('ip setbot', 0, 'Syntax: .ip setbot\nSets all bots in the group to your progression level.'),
('ip setrep', 0, 'Syntax: .ip setrep\nSets your reputation of certain factions to the same value as the character that has the highest value on your account.'),
('ip tele', 2, 'Syntax: .ip tele $location\nTeleports the player to the given location.');
