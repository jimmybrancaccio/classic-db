-- https://tbc.wowhead.com/search?q=Venom%20Bottle#objects
-- they all are questgiver for quest 2933 , atm only o=142702 is it and a few of them are not spawned (yet?)
DELETE FROM gameobject_questrelation WHERE quest = 2933;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(142702, 2933),
(142703, 2933),
(142704, 2933),
(142705, 2933),
(142706, 2933),
(142707, 2933),
(142708, 2933), -- spawned
(142709, 2933), -- spawned
(142710, 2933), -- spawned
(142711, 2933), -- spawned
(142712, 2933),
(142713, 2933),
(142714, 2933);

-- Based on https://github.com/cmangos/wotlk-db/commit/7edad132b26736dbd0d55deb6b32f5eebee0c00b#diff-3aa019d07b40b6864afc1ca6cc04636a9d3120c797439b9f13fb1570594e7b17R118
DELETE FROM `gameobject` WHERE `id` BETWEEN 142702 AND 142714; -- req level 40 horde ~26/hour seems better then 7/h
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`) VALUES
(190852, 142702, 0, -42.5312, -2481.28, 119.151, 2.94086, -0.416004, 0.113211, 0.893777, 0.123641),
(190853, 142703, 0, -38.592, -2468.76, 121.659, 3.78737, 0.0935359, -0.0466347, -0.944858, 0.310355),
(190854, 142704, 0, -38.4722, -2468.8, 121.807, 5.97776, 0.290411, 0.583498, -0.276992, 0.706022),
(190855, 142705, 0, -43.7708, -2481.39, 118.982, 3.14159, 0, 0, -1, 0),
(190856, 142706, 0, -43.8073, -2480.73, 118.917, 3.14159, 0, 0, -1, 0),
(190857, 142707, 0, -38.7292, -2468.43, 121.504, 3.14255, 0.0610456, 0.00870991, -0.998096, 0.00100662),
(190858, 142708, 0, -15.0868, -2789.53, 123.974, 0.916285, 0.705321, 0.172728, -0.672002, 0.145263),
(190859, 142709, 0, -14.8472, -2789, 123.862, 4.2237, 0, 0, -0.857166, 0.51504),
(190860, 142710, 0, -14.1372, -2789.71, 123.862, 3.14159, 0, 0, -1, 0),
(190861, 142711, 0, -15.0243, -2789.39, 123.862, 3.14159, 0, 0, -1, 0),
(190862, 142712, 0, -15.9653, -2789.68, 123.862, 3.14159, 0, 0, -1, 0),
(190863, 142713, 0, -14.6562, -2460.39, 122.163, 3.14159, 0, 0, -1, 0),
(190864, 142714, 0, -15.1615, -2460.22, 122.175, 3.1417, -0.086678, -0.104131, -0.990737, 0.00916097);
UPDATE `gameobject` SET `spawntimesecsmin` = 1800, `spawntimesecsmax` = 3600, `animprogress` = 100, `state` = 1 WHERE `id` BETWEEN 142702 AND 142714;-- 7200, 7200, 100, 1

