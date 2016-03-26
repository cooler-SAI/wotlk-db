-- Bloodmyst Isle 

-- Nazzivian
-- duplicates removed + missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM creature_addon WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM creature_movement WHERE id IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM game_event_creature WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM game_event_creature_data WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM creature_battleground WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
DELETE FROM creature_linking WHERE guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551) 
OR master_guid IN (86541,86545,86544,86542,86553,86539,86548,86549,86540,86550,86543,86547,86546,86551);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86541,17338,530,1,1,0,971,-2344.83,-11386.9,31.2929,4.27092,300,10,0,300,0,0,1),
(86545,17337,530,1,1,0,0,-2353.21,-11325.1,27.9423,4.64398,300,0,0,247,0,0,0),
(86544,17337,530,1,1,0,0,-2448.43,-11218.7,24.2863,5.7404,300,0,0,247,0,0,0),
(86542,17339,530,1,1,0,0,-2361.39,-11148.2,15.7467,1.75517,300,10,0,219,537,0,1),
(86553,17339,530,1,1,0,0,-2343.57,-11331.6,27.9519,4.00908,300,0,0,263,710,0,2);

-- Update
UPDATE creature SET position_x = -2347.824219, position_y = -11363.384766, position_z = 27.942247, orientation = 1.895, spawndist = 0, MovementType = 0 WHERE guid = 62369;
UPDATE creature SET position_x = -2571.970459, position_y = -11343.209961, position_z = 25.304287, spawndist = 10, MovementType = 1 WHERE guid = 62370;
UPDATE creature SET position_x = -2551.867188, position_y = -11275.340820, position_z = 36.856060, spawndist = 10, MovementType = 1 WHERE guid = 62391;
UPDATE creature SET position_x = -2442.700684, position_y = -11346.622070, position_z = 30.975761, spawndist = 10, MovementType = 1 WHERE guid = 62356;
UPDATE creature SET position_x = -2331.138184, position_y = -11346.259766, position_z = 30.188799, spawndist = 10, MovementType = 1 WHERE guid = 62388;
UPDATE creature SET position_x = -2394.431396, position_y = -11369.132813, position_z = 30.477755, spawndist = 10, MovementType = 1 WHERE guid = 62387;
UPDATE creature SET position_x = -2418.719727, position_y = -11211.605469, position_z = 24.287613, spawndist = 0, MovementType = 0 WHERE guid = 62399;
UPDATE creature SET position_x = -2476.131348, position_y = -11252.391602, position_z = 28.754663 WHERE guid = 62358;
UPDATE creature SET position_x = -2510.596924, position_y = -11405.423828, position_z = 39.383987 WHERE guid = 62371;
UPDATE creature SET position_x = -2474.837158, position_y = -11339.492188, position_z = 33.152016 WHERE guid = 62390;
UPDATE creature SET position_x = -2437.940186, position_y = -11347.955078, position_z = 30.266029 WHERE guid = 62356;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (62394,62357,62404,62368,62403,62397,62399,62396,62365,62366,62382,62372,62389,62355,62378,62382,62373,62379);

-- gameobjects
-- missing added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (14226,15092,20849,20858,21779,21780,21781,21782,22049,22304,25060,43231,50481,66127,44724,44725,30705,30695);
DELETE FROM game_event_gameobject WHERE guid IN (14226,15092,20849,20858,21779,21780,21781,21782,22049,22304,25060,43231,50481,66127,44724,44725,30705,30695);
DELETE FROM gameobject_battleground WHERE guid IN (14226,15092,20849,20858,21779,21780,21781,21782,22049,22304,25060,43231,50481,66127,44724,44725,30705,30695);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
( 14226, 185047, 530, 1,1,-2546.8, -11313.7, 23.0865, 6.224954, 0, 0, -0.02911186, 0.9995762, 300, 255, 1),
( 15092, 181806, 530, 1,1,-2542.07, -11328.1, 22.867, 3.909541, 0, 0, -0.9271832, 0.3746083, 300, 255, 1),
( 20849, 185046, 530, 1,1,-2522.58, -11257.1, 36.0554, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 20858, 182019, 530, 1,1,-2501.26, -11254.3, 36.1665, 4.763061, 0, 0, -0.6889668, 0.724793, 300, 255, 1),
( 21779, 185044, 530, 1,1,-2434.27, -11308.3, 28.4662, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 21780, 185045, 530, 1,1,-2474.97, -11399.5, 37.1029, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 21781, 185042, 530, 1,1,-2357.58, -11343.9, 27.8311, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 21782, 185043, 530, 1,1,-2432.31, -11223.9, 23.2413, 6.002131, 0, 0, -0.1400652, 0.9901423, 300, 255, 1),
( 22049, 182017, 530, 1,1,-2415.85, -11209.3, 24.2867, 4.355584, 0, 0, -0.8213654, 0.5704024, 300, 255, 1),
( 22304, 182027, 530, 1,1,-2314.98, -11161.1, 13.7754, 4.129125, 0, 0, -0.8805542, 0.4739454, 300, 255, 1),
( 25060, 185040, 530, 1,1,-2324.6, -11177.5, 13.831, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 43231, 182016, 530, 1,1,-2308.39, -11272.7, 38.2228, 5.852986, 0, 0, -0.2134447, 0.9769552, 300, 255, 1),
( 50481, 182532, 530, 1,1,-2309.82, -11265.8, 36.0304, 3.106652, 0, 0, 0.9998474, 0.01746928, 300, 255, 1), 
( 66127, 182015, 530, 1,1,-2307.57, -11258.4, 38.0939, 3.174276, 0, 0, -0.9998665, 0.01634102, 300, 255, 1),
( 44724, 185041, 530, 1,1,-2524.64, -11143.4, 16.698, 0.3559894, 0, 0, 0.1770563, 0.9842007, 300, 255, 1),
( 44725, 182212, 530, 1,1,-2300.7, -11265.7, 36.1111, 2.87448, 0, 0, 0.999847, 0.0174693, 300, 255, 1);

-- Tzerak
UPDATE creature SET position_x = -2542.234375, position_y = -11328.796875, position_z = 22.867491, orientation = 0.662011, spawndist = 10, MovementType = 2, spawntimesecs = 120 WHERE guid = 84399;
DELETE FROM creature_movement WHERE id = 84399;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17528;
DELETE FROM creature_movement_template WHERE entry = 17528;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17528,1,-2542.23,-11328.79,22.867491, 1000, 1752801,0.662011, 0, 0),
(17528,2,-2524.86,-11312.4,25.5424, 0, 0,0.744478, 0, 0),
(17528,3,-2516.88,-11305,29.4704, 0, 0,0.677719, 0, 0),
(17528,4,-2504.32,-11295.3,32.0184, 0, 0,0.65023, 0, 0),
(17528,5,-2484.1,-11275.5,33.354, 0, 0,0.269311, 0, 0),
(17528,6,-2470.59,-11269.7,30.1162, 0, 0,6.10089, 0, 0),
(17528,7,-2434.22,-11274.3,30.9809, 0, 0,6.17158, 0, 0),
(17528,8,-2417.37,-11278,30.3146, 0, 0,5.76946, 0, 0),
(17528,9,-2407.49,-11286,33.2194, 0, 0,5.37048, 0, 0),
(17528,10,-2395.33,-11298.7,29.1992, 0, 0,0.555987, 0, 0),
(17528,11,-2384.19,-11290,31.0475, 0, 0,0.697358, 0, 0),
(17528,12,-2359.67,-11270.9,28.8272, 0, 0,0.223689, 0, 0),
(17528,13,-2347.69,-11268.9,30.022, 0, 0,0.0964549, 0, 0),
(17528,14,-2315.89,-11266.3,35.8439, 2000, 0,0.0846741, 0, 0),
(17528,15,-2315.89,-11266.3,35.8439, 120000, 1752802,3.01264, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1752801 AND 1752802; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1752801,1,0,0,0,0,0,0,2000000847,0,0,0,0,0,0,0,''),
(1752802,1,18,120000,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry = 2000000847;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000847,'Fools! Weaklings! Tzerak has no need of your assistance!',0,1,0,0,NULL);

-- Waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (62392,62361,62395,62398,62385,62384,62400,62374,86553,62363,62393);
DELETE FROM creature_movement WHERE id IN (62392,62361,62395,62398,62385,62384,62400,62374,86553,62363,62393);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(62392,1,-2521.73,-11261.4,36.1656, 30000, 0,1.7332, 0, 0),
(62392,2,-2522.38,-11282,36.231, 300000, 0,1.13446, 0, 0),
-- #2
(62361,1,-2380.99,-11345,28.0672, 150000, 0,6.26573, 0, 0),
(62361,2,-2360.98,-11344.1,27.9434, 30000, 0,6.18013, 0, 0),
(62361,3,-2380.99,-11345,28.0672, 150000, 0,6.26573, 0, 0),
-- #3
(62395,1,-2448.85,-11322.6,30.4971, 50000, 0,0.907571, 0, 0),
(62395,2,-2436.76,-11310.8,28.9112, 30000, 0,0.686272, 0, 0),
(62395,3,-2448.85,-11322.6,30.4971, 250000, 0,0.907571, 0, 0),
-- #4
(62398,1,-2461.01,-11392.8,37.3679, 60000, 0,4.08407, 0, 0),
(62398,2,-2471.12,-11398,37.3497, 30000, 0,3.41946, 0, 0),
(62398,3,-2461.01,-11392.8,37.3679, 240000, 0,4.08407, 0, 0),
-- #5
(62385,1,-2519.93,-11124.8,16.9338, 100000, 0,4.79965, 0, 0),
(62385,2,-2523.45,-11140,16.8102, 30000, 0,4.45305, 0, 0),
(62385,3,-2519.93,-11124.8,16.9338, 180000, 0,4.79965, 0, 0),
-- #6
(62384,1,-2314.89,-11196.5,14.0951, 180000, 0,2.09439, 0, 0),
(62384,2,-2322.53,-11181.1,13.9421, 30000, 0,2.20995, 0, 0),
(62384,3,-2314.89,-11196.5,14.0951, 120000, 0,2.09439, 0, 0),
-- #7
(62400,1,-2346.76,-11178.5,14.0671, 160000, 0,5.70723, 0, 0),
(62400,2,-2328.47,-11177.5,13.9423, 50000, 0,6.18407, 0, 0),
(62400,3,-2346.76,-11178.5,14.0671, 140000, 0,5.70723, 0, 0),
-- #8
(62374,1,-2425.44,-11239.8,24.389, 40000, 0,2.33874, 0, 0),
(62374,2,-2430.69,-11227.7,23.4846, 30000, 0,2.01753, 0, 0),
(62374,3,-2425.44,-11239.8,24.389, 260000, 0,2.33874, 0, 0),
-- #9
(86553,1,-2353.93,-11333,27.943, 0, 0,2.78071, 0, 0),
(86553,2,-2364.02,-11327.4,29.3191, 0, 0,2.19009, 0, 0),
(86553,3,-2371.96,-11311.4,30.9758, 0, 0,1.67566, 0, 0),
(86553,4,-2372.19,-11292.7,29.5011, 0, 0,1.48323, 0, 0),
(86553,5,-2366.11,-11280.6,28.7965, 0, 0,0.805436, 0, 0),
(86553,6,-2354.5,-11273.3,29.0002, 0, 0,0.216387, 0, 0),
(86553,7,-2341.81,-11271.6,31.4523, 0, 0,6.26395, 0, 0),
(86553,8,-2324.29,-11270.9,35.0695, 10000, 0,0.30121, 0, 0),
(86553,9,-2341.56,-11271.5,31.4977, 0, 0,3.16556, 0, 0),
(86553,10,-2354.04,-11273.1,29.0531, 0, 0,3.4483, 0, 0),
(86553,11,-2366.18,-11280.8,28.7965, 0, 0,4.06013, 0, 0),
(86553,12,-2372.21,-11293.1,29.552, 0, 0,4.52743, 0, 0),
(86553,13,-2372.13,-11310.8,31.0631, 0, 0,4.99081, 0, 0),
(86553,14,-2364.45,-11326.7,29.4491, 0, 0,5.39136, 0, 0),
(86553,15,-2353.82,-11333,27.9423, 0, 0,6.02281, 0, 0),
(86553,16,-2346.63,-11333.6,27.9571, 0, 0,0.668747, 0, 0),
(86553,17,-2343.57,-11331.6,27.9519, 300000, 0,4.00908, 0, 0),
-- #10
(62363,1,-2417.53,-11219.3,24.298, 0, 0,3.83202, 0, 0),
(62363,2,-2420.09,-11224.6,24.2207, 0, 0,4.58285, 0, 0),
(62363,3,-2417.4,-11234.2,24.287, 0, 0,5.35254, 0, 0),
(62363,4,-2407.2,-11243.3,25.2017, 0, 0,5.6392, 0, 0),
(62363,5,-2384.96,-11255.4,28.4475, 0, 0,5.79235, 0, 0),
(62363,6,-2365.68,-11262.6,28.6973, 0, 0,6.03975, 0, 0),
(62363,7,-2350.64,-11264.9,29.9547, 0, 0,6.2361, 0, 0),
(62363,8,-2327.79,-11264.1,34.9404, 10000, 0,0.0864284, 0, 0),
(62363,9,-2349.93,-11264.9,30.0943, 0, 0,3.14163, 0, 0),
(62363,10,-2365.42,-11262.5,28.7001, 0, 0,2.85496, 0, 0),
(62363,11,-2384.81,-11255.5,28.4646, 0, 0,2.71751, 0, 0),
(62363,12,-2406.78,-11243.7,25.2684, 0, 0,2.56436, 0, 0),
(62363,13,-2417.21,-11234.5,24.289, 0, 0,2.3523, 0, 0),
(62363,14,-2420.1,-11225.2,24.2164, 0, 0,1.70435, 0, 0),
(62363,15,-2418.02,-11219.3,24.2921, 0, 0,0.344823, 0, 0),
(62363,16,-2413.14,-11217.1,24.4672, 300000, 0,3.40339, 0, 0),
-- #11
(62393,1,-2525.62,-11248.4,36.167, 0, 0,5.98869, 0, 0),
(62393,2,-2516.71,-11251.2,36.167, 0, 0,5.89052, 0, 0),
(62393,3,-2504.22,-11260.2,36.167, 0, 0,5.65097, 0, 0),
(62393,4,-2487.4,-11265.7,33.7935, 0, 0,6.03189, 0, 0),
(62393,5,-2473.42,-11269.1,30.2829, 0, 0,6.05938, 0, 0),
(62393,6,-2448.13,-11275.2,29.8481, 0, 0,6.10257, 0, 0),
(62393,7,-2422.05,-11279.3,29.9044, 0, 0,6.13791, 0, 0),
(62393,8,-2406.46,-11281.8,32.759, 0, 0,2.6226e-05, 0, 0),
(62393,9,-2380.68,-11277.7,29.0944, 0, 0,0.212084, 0, 0),
(62393,10,-2357.97,-11269.4,28.8948, 0, 0,0.116265, 0, 0),
(62393,11,-2329.64,-11267.7,34.2848, 15000, 0,0.0769952, 0, 0),
(62393,12,-2358.23,-11269.7,28.8781, 0, 0,3.35996, 0, 0),
(62393,13,-2380.33,-11277.9,29.0908, 0, 0,3.37959, 0, 0),
(62393,14,-2395.13,-11282,30.7833, 0, 0,3.08507, 0, 0),
(62393,15,-2406.13,-11281.8,32.7515, 0, 0,2.99868, 0, 0),
(62393,16,-2417.89,-11280.1,30.0178, 0, 0,2.99868, 0, 0),
(62393,17,-2446.36,-11275.3,29.9164, 0, 0,2.95941, 0, 0),
(62393,18,-2470.62,-11269.9,30.1313, 0, 0,2.9759, 0, 0),
(62393,19,-2485.65,-11266.4,33.2662, 0, 0,2.85338, 0, 0),
(62393,20,-2503.47,-11260.9,36.1658, 0, 0,2.62797, 0, 0),
(62393,21,-2517.11,-11250.9,36.1658, 0, 0,2.77327, 0, 0),
(62393,22,-2527.37,-11249.6,36.1658, 0, 0,3.32697, 0, 0),
(62393,23,-2542.37,-11253,36.2131, 300000, 0,6.14356, 0, 0);