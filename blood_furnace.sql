SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- A basic SAI for 'Blood Furnace' to get through the door to Broggok.
-- 
-- Database: `world`
--

-- --------------------------------------------------------

--
-- Table: `smart_scripts`
--

CREATE TABLE IF NOT EXISTS `smart_scripts` (
  `entryorguid` int(11) NOT NULL,
  `source_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link` smallint(5) unsigned NOT NULL DEFAULT '0',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_phase_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_chance` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `event_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param5` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param6` int(10) unsigned NOT NULL DEFAULT '0',
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_o` float NOT NULL DEFAULT '0',
  `comment` text NOT NULL COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Inserting data into `smart_scripts`
--
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` = 17398;
DELETE FROM smart_scripts WHERE entryorguid IN  (-85712,-85717,-85719,-85724);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-85724, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22299, 0, 0, 0, 0, 0, 0, 'Blood Furnace - First Cell'),
(-85719, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22297, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Second Cell'),
(-85717, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22298, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Third Cell'),
(-85712, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22296, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Fourth Cell');

CREATE TABLE IF NOT EXISTS `gameobject_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DELETE FROM gameobject_scripts WHERE
id = 150441;

--
-- Inserting data into `gameobject_scripts`
--

INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(150441, 3, 11, 22295, 0, 0, 0, 0, 0, 0);
