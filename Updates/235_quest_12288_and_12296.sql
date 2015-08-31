-- Blue Sky Logging Grounds

-- q.12288 'Overwhelmed!' -- horde
DELETE FROM dbscripts_on_spell WHERE id = 48812;
-- q.12296 'Life or Death' -- Alliance
DELETE FROM dbscripts_on_spell WHERE id = 48845;
  
-- Wounded Skirmisher & Wounded Westfall Infantry - they're wounded - not aggressive
UPDATE creature_template SET UnitFlags = 512 WHERE Entry IN (27463,27482);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27463);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27482);
DELETE FROM creature_template_addon WHERE entry IN (27463,27482);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27463,0,8,1,1,0,0,NULL),
(27482,0,8,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 104181;
UPDATE creature SET spawntimesecs = 120 WHERE id = 27463;
UPDATE creature SET spawntimesecs = 120 WHERE id = 27482;

-- missing spawns
-- Wounded Skirmisher 
DELETE FROM creature  WHERE guid BETWEEN 44340 AND 44347;
DELETE FROM creature_addon WHERE guid BETWEEN 44340 AND 44347;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(44340,27463,571,1,1,0,0,4142.41,-3019.99,285.239,3.23352,120,0,0,9940,0,0,0),
(44341,27463,571,1,1,0,0,4017.43,-2833.86,279.32,1.8778,120,0,0,9940,0,0,0),
-- Wounded Westfall Infantry
(44342,27482,571,1,1,0,0,4207.22,-3003.51,282.771,3.17932,120,0,0,9940,3387,0,0),
(44343,27482,571,1,1,0,0,4126.14,-2944.9,282.311,2.51947,120,0,0,9940,3387,0,0),
(44344,27482,571,1,1,0,0,4091.4,-2861.47,283.9,2.32936,120,0,0,10282,3466,0,0),
(44345,27482,571,1,1,0,0,4169.54,-2904.81,281.763,4.55053,120,0,0,10282,3466,0,0),
(44346,27482,571,1,1,0,0,4231.25,-2966.08,282.449,4.43822,120,0,0,9940,3387,0,0),
-- Broken-down Shredder
(44347,27354,571,1,1,0,0,4098.64,-2829.87,285.394,3.65989,25,0,0,4920,0,0,0);
-- missing pool added
DELETE FROM pool_creature WHERE guid = 44347 AND pool_entry = 25481;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(44347,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 5');


-- correct MovementType will be set by quest script
-- Wounded Skirmisher -- #14
DELETE FROM creature_movement WHERE id IN (44340,44341,102453,102469,102464,102466,102454,102462,102459,102461,102455,102460,102467,102456,44346,44342,104181,104190,44345,44343,104185,104187,44344,104188,104189,104184,104182); 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(44340, 1, 4142.41,-3019.99,285.239, 2000, 2746301, 3.23352, 0, 0),
(44340, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(44341, 1, 4017.43,-2833.86,279.32, 2000, 2746301, 1.8778, 0, 0),
(44341, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102453, 1, 4230.5,-2982.41,283.434, 2000, 2746301, 0.38631, 0, 0),
(102453, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102469, 1, 4183.3,-2934.44,283.114, 2000, 2746301, 5.63741, 0, 0),
(102469, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102464, 1, 4167.19,-2968.62,283.27, 2000, 2746301, -1.79852, 0, 0),
(102464, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102466, 1, 4142.65,-2919.83,281.385, 2000, 2746301, -1.21211, 0, 0),
(102466, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102454, 1, 4110.93,-2883.57,280.429, 2000, 2746301, 5.37592, 0, 0),
(102454, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102462, 1, 4074.38,-2940.38,276.122, 2000, 2746301, -0.252544, 0, 0),
(102462, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102459, 1, 4073.33,-2906.89,278.332, 2000, 2746301, 6.10865, 0, 0),
(102459, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102461, 1, 4071.18,-2886.01,281.6, 2000, 2746301, 5.8294, 0, 0),
(102461, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102455, 1, 4123.8,-2835.11,284.196, 2000, 2746301, 0.610865, 0, 0),
(102455, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102460, 1, 4085.95,-2846.31,286.589, 2000, 2746301, 2.94961, 0, 0),
(102460, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102467, 1, 4057.32,-2822.2,288.962, 2000, 2746301, 3.4383, 0, 0),
(102467, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
(102456, 1, 4000.98,-2847.93,273.325, 2000, 2746301, 6.03884, 0, 0),
(102456, 2, 4184.81,-2908.39,280.222, 2000, 2746302, 0, 0, 0),
-- Wounded Westfall Infantry -- #
(44346, 1, 4231.25,-2966.08,282.449, 2000, 2748201, 4.43822, 0, 0),
(44346, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44342, 1, 4207.22,-3003.51,282.771, 2000, 2748201, 3.17932, 0, 0),
(44342, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104190, 1, 4184.69,-2980.58,284.83, 2000, 2748201, 3.54302, 0, 0),
(104190, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104181, 1, 4173.72,-2932.61,283.362, 2000, 2748201, 2.76104, 0, 0),
(104181, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44345, 1, 4169.54,-2904.81,281.763, 2000, 2748201, 4.55053, 0, 0),
(44345, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44343, 1, 4126.14,-2944.9,282.311, 2000, 2748201, 2.51947, 0, 0),
(44343, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104185, 1, 4096.38,-2901.66,280.065, 2000, 2748201, 0.942478, 0, 0),
(104185, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104187, 1, 4065.72,-2897.43,280.652, 2000, 2748201, 4.41568, 0, 0),
(104187, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(44344, 1, 4091.4,-2861.47,283.9, 2000, 2748201, 2.32936, 0, 0),
(44344, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104189, 1, 4118.52,-2838.18,285.096, 2000, 2748201, 0.872665, 0, 0),
(104189, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104188, 1, 4086.66,-2822.89,287.166, 2000, 2748201, 1.62316, 0, 0),
(104188, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104184, 1, 4061.91,-2848.54,285.016, 2000, 2748201, 3.76991, 0, 0),
(104184, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0),
(104182, 1, 3995.66,-2843.98,272.487, 2000, 2748201, 0.122173, 0, 0),
(104182, 2, 4044.81,-2938.7,275.457, 2000, 2748202, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2746301,2746302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2746301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2746301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2746302,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2746302,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2748201,2748202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2748201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2748201,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2748202,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2748202,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');