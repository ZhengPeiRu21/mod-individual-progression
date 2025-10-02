DELETE FROM `command` WHERE `name` IN ('individualProgression set', 'ip set', 'ip get', 'ip view', 'ip tele');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('individualprogression set', 2, 'Syntax: .individualprogression set $player $progressionLevel\n Sets the player to the given progression level.'),
('ip set', 2, 'Syntax: .ip set $player $progressionLevel\n Sets the player to the given progression level.'),
('ip get', 0, 'Syntax: .ip get $player Shows your or your targets current progression level.'),
('ip view', 0, 'Syntax: .ip view $player Shows your or your targets current progression level.'),
('ip tele', 2, 'Syntax: .ip tele $player $location\n Teleports the player to the given location.');
