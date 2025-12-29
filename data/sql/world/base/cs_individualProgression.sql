DELETE FROM `command` WHERE `name` IN ('individualProgression set', 'ip set', 'ip setbot', 'ip get', 'ip view', 'ip tele');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('ip set', 2, 'Syntax: .ip set $progressionLevel\nSets the player to the given progression level.'),
('ip setbot', 0, 'Syntax: .ip setbot\nSets all bots in the group to your progression level.'),
('ip get', 0, 'Syntax: .ip get\nShows your or your targets current progression level.'),
('ip tele', 2, 'Syntax: .ip tele $location\nTeleports the player to the given location.');
