DELETE FROM `command` WHERE `name` IN ('ip set', 'ip setbot', 'ip get', 'ip view', 'ip tele');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('ip set', 2, 'Syntax: .ip set $progressionLevel\n Sets the player to the given progression level.'),
('ip setbot', 0, 'Syntax: .ip setbot $progressionLevel\n Sets the bot to the given progression level.'),
('ip get', 0, 'Syntax: .ip get Shows your or your targets current progression level.'),
('ip view', 0, 'Syntax: .ip view Shows your or your targets current progression level.'),
('ip tele', 2, 'Syntax: .ip tele $location\n Teleports the player to the given location.');
