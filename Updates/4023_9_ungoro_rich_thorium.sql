
DELETE FROM `gameobject_spawn_entry` WHERE (`guid` IN (17506, 17507, 17508, 18311, 18313, 18318, 18319, 18326, 18363, 18364, 18376, 18377, 18381, 18389, 18394));

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(10027, '175404', '0', '0', '0'),
(10027, '2047', '0', '0', '5'),

(10028, '175404', '0', '0', '0'),
(10028, '2047', '0', '0', '5'),

(10029, '175404', '0', '0', '0'),
(10029, '2047', '0', '0', '5');
