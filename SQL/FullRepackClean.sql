/*
DayZ Epoch 1.0.5
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `character_data`
-- ----------------------------

CREATE TABLE IF NOT EXISTS `Character_DATA` (
  `CharacterID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Alive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Generation` int(11) unsigned NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) unsigned NOT NULL DEFAULT '0',
  `DistanceFoot` int(11) NOT NULL DEFAULT '0',
  `Duration` int(11) NOT NULL DEFAULT '0',
  `CurrentState` varchar(200) NOT NULL DEFAULT '[]',
  `KillsH` int(11) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) unsigned NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Infected` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive` (`Alive`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for `object_data`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `Object_DATA` (
  `ObjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(24) NOT NULL DEFAULT '0',
  `Instance` int(11) unsigned NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(512) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  PRIMARY KEY (`ObjectID`),
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Instance`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of object_data
-- ----------------------------

-- ----------------------------
-- Table structure for `player_data`
-- ----------------------------

CREATE TABLE IF NOT EXISTS `Player_DATA` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '0',
  `PlayerName` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT 'Null',
  `PlayerMorality` int(11) NOT NULL DEFAULT '0',
  `PlayerSex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of player_data
-- ----------------------------

-- ----------------------------
-- Table structure for `player_login`
-- ----------------------------

CREATE TABLE IF NOT EXISTS `Player_LOGIN` (
  `LoginID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL,
  `CharacterID` int(11) unsigned NOT NULL DEFAULT '0',
  `Datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of player_login
-- ----------------------------

--
-- Table structure for table `server_traders`
--

DROP TABLE IF EXISTS `server_traders`;
CREATE TABLE IF NOT EXISTS `server_traders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(128) NOT NULL,
  `instance` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `static` text,
  `desc` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `server_traders`
--

INSERT INTO `server_traders` VALUES(1, 'CIV_EuroMan01_EP1', 11, 'friendly', NULL, 'Weapons Trader - Bash');
INSERT INTO `server_traders` VALUES(2, 'Rocker4', 11, 'friendly', NULL, 'Weapons Trader - Klen');
INSERT INTO `server_traders` VALUES(3, 'Woodlander3', 11, 'friendly', NULL, 'Parts Trader - Bash');
INSERT INTO `server_traders` VALUES(4, 'Woodlander1', 11, 'friendly', '', 'Parts Trader - Klen');
INSERT INTO `server_traders` VALUES(5, 'RU_WorkWoman1', 11, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Klen');
INSERT INTO `server_traders` VALUES(6, 'RU_WorkWoman5', 11, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Bash');
INSERT INTO `server_traders` VALUES(7, 'Rita_Ensler_EP1', 11, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Stary');
INSERT INTO `server_traders` VALUES(8, 'CIV_EuroMan02_EP1', 11, 'friendly', '', 'Ammo Trader - Bash');
INSERT INTO `server_traders` VALUES(9, 'RU_Citizen3', 11, 'friendly', '', 'Ammo Trader - Klen');
INSERT INTO `server_traders` VALUES(10, 'Pilot_EP1', 11, 'neutral', '', 'Ammo Trader - Stary');
INSERT INTO `server_traders` VALUES(11, 'Worker3', 11, 'friendly', '', 'Auto Trader - Bash');
INSERT INTO `server_traders` VALUES(12, 'Profiteer4', 11, 'friendly', '', 'Auto Trader - Klen');
INSERT INTO `server_traders` VALUES(13, 'Dr_Hladik_EP1', 11, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Doctor - Bash');
INSERT INTO `server_traders` VALUES(14, 'Doctor', 11, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Doctor - Klen');
INSERT INTO `server_traders` VALUES(15, 'RU_Functionary1', 11, 'friendly', '', 'Hero Traders');
INSERT INTO `server_traders` VALUES(16, 'RU_Villager3', 11, 'neutral', '', 'Boat Trader');
INSERT INTO `server_traders` VALUES(17, 'TK_CIV_Takistani04_EP1', 11, 'neutral', '', 'High End Weapons');
INSERT INTO `server_traders` VALUES(18, 'RU_Citizen4', 11, 'neutral', '', 'Wholesaler - Solnichniy');
INSERT INTO `server_traders` VALUES(19, 'RU_Citizen1', 11, 'neutral', '', 'Wholesaler - Balota');
INSERT INTO `server_traders` VALUES(20, 'Functionary1', 1, 'friendly', '', 'Hero Traders');
INSERT INTO `server_traders` VALUES(21, 'RU_Profiteer3', 1, 'neutral', '', 'High End Weapons - Khush');
INSERT INTO `server_traders` VALUES(22, 'Profiteer1', 1, 'neutral', '', 'High End Ammo - Khush');
INSERT INTO `server_traders` VALUES(23, 'RU_Sportswoman5', 1, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Khush');
INSERT INTO `server_traders` VALUES(24, 'TK_CIV_Takistani05_EP1', 1, 'friendly', '', 'Parts Trader - Khush');
INSERT INTO `server_traders` VALUES(25, 'Dr_Annie_Baker_EP1', 1, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Doctor - Khush');
INSERT INTO `server_traders` VALUES(26, 'Woodlander2', 1, 'friendly', '', 'Auto Trader - Khush');
INSERT INTO `server_traders` VALUES(27, 'TK_CIV_Takistani03_EP1', 1, 'friendly', '', 'Car Parts - Nur');
INSERT INTO `server_traders` VALUES(28, 'TK_CIV_Takistani06_EP1', 1, 'friendly', '', 'Weapons Trader - Nur');
INSERT INTO `server_traders` VALUES(29, 'TK_CIV_Takistani04_EP1', 1, 'friendly', '', 'Ammo Trader - Nur');
INSERT INTO `server_traders` VALUES(30, 'TK_CIV_Woman03_EP1', 1, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Nur');
INSERT INTO `server_traders` VALUES(31, 'TK_CIV_Woman02_EP1', 1, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Doctor - Nur');
INSERT INTO `server_traders` VALUES(32, 'RU_Profiteer2', 1, 'friendly', '', 'Auto Trader - Garm');
INSERT INTO `server_traders` VALUES(33, 'TK_CIV_Takistani02_EP1', 1, 'friendly', '', 'Car Parts - Garm');
INSERT INTO `server_traders` VALUES(34, 'RU_Damsel4', 1, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Can Trader - Garm');
INSERT INTO `server_traders` VALUES(35, 'RU_Woodlander3', 1, 'neutral', '', 'Wholesaler - South');
INSERT INTO `server_traders` VALUES(36, 'RU_Citizen4', 1, 'neutral', '', 'Wholesaler - North');
INSERT INTO `server_traders` VALUES(37, 'RU_Pilot', 1, 'neutral', '', 'Airplane Dealer');
INSERT INTO `server_traders` VALUES(38, 'RU_Worker1', 6, 'neutral', '', 'Whiskey''s Parts Shop');
INSERT INTO `server_traders` VALUES(39, 'Dr_Annie_Baker_EP1', 6, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Melly''s Medical');
INSERT INTO `server_traders` VALUES(40, 'CIV_EuroWoman01_EP1', 6, 'friendly', '', 'Alejandria''s General Supplies');
INSERT INTO `server_traders` VALUES(41, 'ibr_lingorman2s', 6, 'neutral', '', 'Blivion''s Wholesale Items');
INSERT INTO `server_traders` VALUES(42, 'Worker2', 6, 'friendly', '', 'Axle''s Repair Shop');
INSERT INTO `server_traders` VALUES(43, 'TK_CIV_Woman03_EP1', 6, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Stella''s General Goods');
INSERT INTO `server_traders` VALUES(44, 'ibr_lingorman3s', 6, 'neutral', '', 'Clive''s Wholesale');
INSERT INTO `server_traders` VALUES(45, 'ibr_lingorman5s', 6, 'neutral', '', 'Big Bob''s Boats');
INSERT INTO `server_traders` VALUES(46, 'ibr_lingorman4s', 6, 'friendly', '', 'Juan''s Tour Boats');
INSERT INTO `server_traders` VALUES(47, 'ibr_lingorman2', 6, 'friendly', '', 'Jd''z Armed Boats');
INSERT INTO `server_traders` VALUES(48, 'Citizen2_EP1', 6, 'friendly', '', 'Green''s Quality Cars');
INSERT INTO `server_traders` VALUES(49, 'Worker1', 6, 'friendly', '', 'Lyle''s Parts');
INSERT INTO `server_traders` VALUES(50, 'RU_Madam3', 6, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Bag Lady Gina');
INSERT INTO `server_traders` VALUES(51, 'Pilot', 6, 'friendly', '', 'Chip''s Choppers');
INSERT INTO `server_traders` VALUES(52, 'CIV_EuroMan02_EP1', 6, 'friendly', '', 'Jim''s Ammo');
INSERT INTO `server_traders` VALUES(53, 'CIV_EuroMan01_EP1', 6, 'friendly', '', 'Joe''s Weapons');
INSERT INTO `server_traders` VALUES(54, 'ibr_lingorman7s', 6, 'friendly', '', 'Rodger''s 4x4');
INSERT INTO `server_traders` VALUES(55, 'Damsel3', 6, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Tina''s Tarts');
INSERT INTO `server_traders` VALUES(56, 'Rocker4', 6, 'friendly', '', 'Sly''s Moto');
INSERT INTO `server_traders` VALUES(57, 'Worker4', 6, 'neutral', '', 'Jim''s Used Cars');
INSERT INTO `server_traders` VALUES(58, 'ibr_lingorman7', 6, 'neutral', '', 'Chucks Weapons');
INSERT INTO `server_traders` VALUES(59, 'ibr_lingorman5', 6, 'neutral', '', 'Buck''s Shot');
INSERT INTO `server_traders` VALUES(60, 'Citizen3_EP1', 6, 'neutral', '', 'Santo''s Wholesale');
INSERT INTO `server_traders` VALUES(61, 'ibr_lingorman6', 6, 'friendly', '', 'Tire Guy');
INSERT INTO `server_traders` VALUES(62, 'ibr_lingorman6s', 6, 'friendly', '', 'Raul''s Parts');
INSERT INTO `server_traders` VALUES(63, 'TK_CIV_Woman02_EP1', 6, 'neutral', '', 'Samish Shop');
INSERT INTO `server_traders` VALUES(64, 'Pilot_EP1', 6, 'friendly', '', 'AWOL''s Planes');
INSERT INTO `server_traders` VALUES(65, 'TK_CIV_Worker01_EP1', 6, 'friendly', '', 'Rommelo''s Raceway');
INSERT INTO `server_traders` VALUES(66, 'RU_Doctor', 6, 'neutral', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Mad Scientist ');
INSERT INTO `server_traders` VALUES(67, 'TK_CIV_Woman02_EP1', 4, 'neutral', '', 'Farhah''s General Supplies');
INSERT INTO `server_traders` VALUES(68, 'TK_CIV_Takistani05_EP1', 4, 'neutral', '', 'Akwhell''s Vehicles');
INSERT INTO `server_traders` VALUES(69, 'TK_CIV_Takistani03_EP1', 4, 'neutral', '', 'Amjad''s Ammunition');
INSERT INTO `server_traders` VALUES(70, 'TK_CIV_Takistani02_EP1', 4, 'neutral', '', 'Hassan''s Weapons');
INSERT INTO `server_traders` VALUES(71, 'CIV_EuroMan01_EP1', 4, 'friendly', '', 'Dan''s Parts');
INSERT INTO `server_traders` VALUES(72, 'CIV_EuroMan02_EP1', 4, 'friendly', '', 'Darren''s Auto');
INSERT INTO `server_traders` VALUES(73, 'Dr_Hladik_EP1', 4, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Dr. House');
INSERT INTO `server_traders` VALUES(74, 'CIV_EuroWoman01_EP1', 4, 'friendly', '', 'Heather''s General Supplies');
INSERT INTO `server_traders` VALUES(76, 'Worker1', 4, 'friendly', '', 'Greg''s Ammunition');
INSERT INTO `server_traders` VALUES(77, 'Tanny_PMC', 4, 'friendly', '', 'Joe''s Weapons');
INSERT INTO `server_traders` VALUES(78, 'Profiteer4', 4, 'friendly', '', 'Steven''s Hero Shop');
INSERT INTO `server_traders` VALUES(79, 'GUE_Worker2', 13, 'friendly', '', 'Pete''s Armed Choppers');
INSERT INTO `server_traders` VALUES(80, 'Soldier_Sniper_KSVK_PMC', 13, 'friendly', '', 'Jacks Weapons');
INSERT INTO `server_traders` VALUES(81, 'Soldier_GL_PMC', 13, 'friendly', '', 'Robby''s Ammo Dump');
INSERT INTO `server_traders` VALUES(82, 'GUE_Soldier_Pilot', 13, 'friendly', '', 'Hanz Unarmed Choppers');
INSERT INTO `server_traders` VALUES(83, 'GUE_Woodlander3', 13, 'friendly', '', 'Scott''s Repair Shop');
INSERT INTO `server_traders` VALUES(84, 'Worker4', 13, 'neutral', '', 'Capt. Yak');
INSERT INTO `server_traders` VALUES(85, 'Reynolds_PMC', 13, 'neutral', '', 'Wholesaler Reynolds');
INSERT INTO `server_traders` VALUES(86, 'Soldier_Sniper_PMC', 13, 'friendly', '', 'Chucks Hero Shop');
INSERT INTO `server_traders` VALUES(87, 'GUE_Soldier_3', 13, 'friendly', '', 'Tom''s Armed Vehicles');
INSERT INTO `server_traders` VALUES(88, 'RU_Doctor', 13, 'friendly', '', 'Dr. Hammond');
INSERT INTO `server_traders` VALUES(89, 'Doctor', 13, 'friendly', '', 'Bones');
INSERT INTO `server_traders` VALUES(90, 'UN_CDF_Soldier_Pilot_EP1', 13, 'friendly', '', 'Murdock''s Planes');
INSERT INTO `server_traders` VALUES(91, 'RU_Worker4', 13, 'neutral', '', 'Sven''s Parts');
INSERT INTO `server_traders` VALUES(92, 'RU_Woodlander4', 13, 'neutral', '', 'Slav''s Vehicles');
INSERT INTO `server_traders` VALUES(93, 'Citizen3', 13, 'neutral', '', 'Trin''s General Supplies');
INSERT INTO `server_traders` VALUES(94, 'RU_Damsel5', 13, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Melissa''s General Supplies');
INSERT INTO `server_traders` VALUES(95, 'Dr_Hladik_EP1', 13, 'neutral', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Dr. Vu');
INSERT INTO `server_traders` VALUES(96, 'GUE_Commander', 13, 'neutral', '', 'Gabriel''s Weapons');
INSERT INTO `server_traders` VALUES(97, 'GUE_Soldier_CO', 13, 'neutral', '', 'Cohaagen''s Ammunition');
INSERT INTO `server_traders` VALUES(98, 'Profiteer2_EP1', 13, 'neutral', '', 'Chad''s Armed Boats');
INSERT INTO `server_traders` VALUES(99, 'RU_Farmwife5', 13, 'neutral', '', 'Mrs. Doubtfire');
INSERT INTO `server_traders` VALUES(100, 'GUE_Woodlander1', 13, 'neutral', '', 'Dante''s Bandit Choppers');
INSERT INTO `server_traders` VALUES(101, 'RU_Worker1', 13, 'neutral', '', 'Javon''s Parts');
INSERT INTO `server_traders` VALUES(102, 'GUE_Soldier_2', 13, 'neutral', '', 'Wholesaler Darren');
INSERT INTO `server_traders` VALUES(103, 'Worker2', 11, 'neutral', '', 'Airplane Dealer');
INSERT INTO `server_traders` VALUES(104, 'GUE_Villager4', 15, 'friendly', '', 'Bastions Parts Supplies');
INSERT INTO `server_traders` VALUES(105, 'RU_Farmwife4', 15, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Alda''s General Supplies');
INSERT INTO `server_traders` VALUES(106, 'RU_Farmwife3', 15, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Carole''s General Supplies');
INSERT INTO `server_traders` VALUES(107, 'Dr_Hladik_EP1', 15, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Dr. Zoidberg');
INSERT INTO `server_traders` VALUES(108, 'CIV_Contractor2_BAF', 15, 'friendly', '', 'High End Ammo');
INSERT INTO `server_traders` VALUES(109, 'Soldier_Sniper_PMC', 15, 'friendly', '', 'High End Weapons');
INSERT INTO `server_traders` VALUES(110, 'GUE_Soldier_Pilot', 15, 'friendly', '', 'Rutahn''s Vehicles.');
INSERT INTO `server_traders` VALUES(111, 'GUE_Soldier_2', 15, 'neutral', '', 'Rhven''s Weapons');
INSERT INTO `server_traders` VALUES(112, 'GUE_Soldier_1', 15, 'neutral', '', 'Merkaba''s Ammo');
INSERT INTO `server_traders` VALUES(113, 'GUE_Soldier_CO', 15, 'neutral', '', 'Robsyah''s Choppers');
INSERT INTO `server_traders` VALUES(114, 'GUE_Woodlander2', 15, 'friendly', '', 'Popeye''s Boats ');
INSERT INTO `server_traders` VALUES(115, 'GUE_Soldier_Crew', 15, 'neutral', '', 'Aaron''s Vehicles');
INSERT INTO `server_traders` VALUES(116, 'Woodlander2', 15, 'neutral', '', 'Staven''s Repair Shop');
INSERT INTO `server_traders` VALUES(117, 'UN_CDF_Soldier_MG_EP1', 15, 'friendly', '', 'Larz''s Wholesale');
INSERT INTO `server_traders` VALUES(118, 'UN_CDF_Soldier_EP1', 15, 'friendly', '', 'Dateu''s Wholesale');
INSERT INTO `server_traders` VALUES(119, 'Tanny_PMC', 15, 'hero', '', 'Tanner''s Hero Supplies');
INSERT INTO `server_traders` VALUES(120, 'UN_CDF_Soldier_Pilot_EP1', 15, 'friendly', '', 'Piloted Vehicles');
INSERT INTO `server_traders` VALUES(121, 'GUE_Soldier_Pilot', 16, 'friendly', '', 'AWOL''s Airfield');
INSERT INTO `server_traders` VALUES(122, 'UN_CDF_Soldier_MG_EP1', 16, 'neutral', '', 'West''s Wholesaler');
INSERT INTO `server_traders` VALUES(123, 'GUE_Soldier_Medic', 16, 'neutral', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Neutral Medic');
INSERT INTO `server_traders` VALUES(124, 'GUE_Woodlander1', 16, 'neutral', '', 'Stavz Ammo');
INSERT INTO `server_traders` VALUES(125, 'GUE_Commander', 16, 'neutral', '', 'Stevhn''s Weapons');
INSERT INTO `server_traders` VALUES(126, 'Tanny_PMC', 16, 'hero', '', 'Trevors Hero Supplies.');
INSERT INTO `server_traders` VALUES(127, 'BAF_Soldier_AMG_W', 16, 'friendly', '', 'Roberts Ammo');
INSERT INTO `server_traders` VALUES(128, 'BAF_Soldier_AAA_DDPM', 16, 'friendly', '', 'Drakes Weapons');
INSERT INTO `server_traders` VALUES(129, 'GUE_Soldier_3', 16, 'neutral', '', 'Brians Vehicles');
INSERT INTO `server_traders` VALUES(130, 'GUE_Soldier_1', 16, 'neutral', '', 'Sam''s Boats');
INSERT INTO `server_traders` VALUES(131, 'BAF_Pilot_MTP', 16, 'hero', '', 'Darren''s Hero Vehicles');
INSERT INTO `server_traders` VALUES(132, 'GUE_Soldier_Sab', 16, 'neutral', '', 'Green''s Air Vehicles');
INSERT INTO `server_traders` VALUES(133, 'US_Soldier_Medic_EP1', 16, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Perry''s Medical');
INSERT INTO `server_traders` VALUES(134, 'CZ_Special_Forces_MG_DES_EP1', 16, 'friendly', '', 'Kypex''s Vehicles');
INSERT INTO `server_traders` VALUES(135, 'Damsel5', 16, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Melly''s General Supplies');
INSERT INTO `server_traders` VALUES(136, 'GUE_Woodlander3', 16, 'friendly', '', 'Jim''s Repair/Building Supplies');
INSERT INTO `server_traders` VALUES(137, 'UN_CDF_Soldier_AAT_EP1', 16, 'neutral', '', 'South West Wholesaler');
INSERT INTO `server_traders` VALUES(138, 'RU_Farmwife1', 16, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'Bertha''s General Supplies');
INSERT INTO `server_traders` VALUES(139, 'Citizen2_EP1', 16, 'neutral', '', 'Rocky''s Parts/Building Supplies');
INSERT INTO `server_traders` VALUES(140, 'CIV_Contractor1_BAF', 6, 'neutral', '', 'Jeeves');
INSERT INTO `server_traders` VALUES(141, 'GUE_Soldier_MG', 11, 'neutral', '', 'Black Market - Olsha');
INSERT INTO `server_traders` VALUES(142, 'TK_GUE_Soldier_Sniper_EP1', 1, 'neutral', '', 'Apu Nahasapeemapetilon Black Market');
INSERT INTO `server_traders` VALUES(143, 'Tanny_PMC', 17, 'hero', '', 'Hero Vendor');
INSERT INTO `server_traders` VALUES(144, 'US_Delta_Force_AR_EP1', 17, 'friendly', '', 'Ammunition Friendly');
INSERT INTO `server_traders` VALUES(145, 'BAF_Soldier_AAR_DDPM', 17, 'friendly', '', 'Weapons Friendly');
INSERT INTO `server_traders` VALUES(146, 'Drake', 17, 'friendly', '', 'Friendly Vehicles');
INSERT INTO `server_traders` VALUES(147, 'Damsel2', 17, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'General Store');
INSERT INTO `server_traders` VALUES(148, 'GUE_Soldier_MG', 17, 'neutral', '', 'Weapons neutral');
INSERT INTO `server_traders` VALUES(149, 'GUE_Soldier_GL', 17, 'neutral', '', 'Ammunition Neutral');
INSERT INTO `server_traders` VALUES(150, 'TK_GUE_Soldier_5_EP1', 17, 'neutral', '', 'Neutral Building/Parts');
INSERT INTO `server_traders` VALUES(151, 'GUE_Soldier_2', 17, 'hostile', '', 'Bandit Trader');
INSERT INTO `server_traders` VALUES(152, 'Soldier_Sniper_PMC', 17, 'neutral', '', 'Aircraft Dealer');
INSERT INTO `server_traders` VALUES(153, 'GUE_Soldier_3', 17, 'neutral', '', 'Vehicles Neutral');
INSERT INTO `server_traders` VALUES(154, 'Soldier_GL_M16A2_PMC', 17, 'neutral', '', 'Black Market Vendor');
INSERT INTO `server_traders` VALUES(155, 'UN_CDF_Soldier_Crew_EP1', 17, 'friendly', '', 'Friendly Building/Parts');
INSERT INTO `server_traders` VALUES(156, 'UN_CDF_Soldier_Pilot_EP1', 17, 'friendly', '', 'Friendly Vehicles 2');
INSERT INTO `server_traders` VALUES(157, 'GUE_Worker2', 17, 'friendly', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'General Store 2');
INSERT INTO `server_traders` VALUES(158, 'Dr_Annie_Baker_EP1', 17, 'friendly', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Medical Supplies');
INSERT INTO `server_traders` VALUES(159, 'Soldier_MG_PKM_PMC', 17, 'friendly', '', 'Weapons friendly 2');
INSERT INTO `server_traders` VALUES(160, 'Soldier_MG_PMC', 17, 'friendly', '', 'Ammunition friendly 2');
INSERT INTO `server_traders` VALUES(161, 'GUE_Soldier_CO', 17, 'neutral', '', 'East Wholesaler');
INSERT INTO `server_traders` VALUES(162, 'Farmwife4', 17, 'neutral', '["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]', 'General Store 3');
INSERT INTO `server_traders` VALUES(163, 'FR_Sykes', 17, 'neutral', '', 'West Wholesaler');
INSERT INTO `server_traders` VALUES(164, 'GUE_Villager4', 17, 'neutral', '', 'Boat Vendor');
INSERT INTO `server_traders` VALUES(165, 'TK_CIV_Takistani04_EP1', 17, 'neutral', '', 'Weapons neutral 2');
INSERT INTO `server_traders` VALUES(166, 'Pilot_EP1', 17, 'neutral', '', 'Ammunition Neutral 2');
INSERT INTO `server_traders` VALUES(167, 'RU_Profiteer4', 17, 'neutral', '', 'Vehicles Neutral 2');
INSERT INTO `server_traders` VALUES(168, 'Woodlander3', 17, 'neutral', '', 'Neutral Building/Parts');
INSERT INTO `server_traders` VALUES(169, 'Dr_Hladik_EP1', 17, 'neutral', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Medical Supplies 2');
INSERT INTO `server_traders` VALUES(170, 'Doctor', 17, 'neutral', '["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]', 'Medical Supplies 3');
INSERT INTO `server_traders` VALUES(171, 'HouseWife1', 17, 'neutral', '', 'Boat Trader 2');
INSERT INTO `server_traders` VALUES(172, 'Citizen3_EP1', 17, 'neutral', '', 'Wholesale 3');
INSERT INTO `server_traders` VALUES(173, 'ibr_lingorman6', 17, 'friendly', '', 'Friendly Building/parts 2');
INSERT INTO `server_traders` VALUES(174, 'ibr_lingorman6s', 17, 'friendly', '', 'Friendly Building/Parts 3');
INSERT INTO `server_traders` VALUES(175, 'TK_CIV_Woman02_EP1', 17, 'neutral', '', 'General Store 4');
INSERT INTO `server_traders` VALUES(176, 'Damsel3', 17, 'friendly', '', 'General Store 5');

-- --------------------------------------------------------

--
-- Table structure for table `Traders_DATA`
--

DROP TABLE IF EXISTS `Traders_DATA`;
CREATE TABLE IF NOT EXISTS `Traders_DATA` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL COMMENT '[Class Name,1 = CfgMagazines | 2 = Vehicle | 3 = Weapon]',
  `qty` int(8) NOT NULL COMMENT 'amount in stock available to buy',
  `buy` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `sell` varchar(255) NOT NULL COMMENT '[[Qty,Class,Type],]',
  `order` int(2) NOT NULL DEFAULT '0' COMMENT '# sort order for addAction menu',
  `tid` int(8) NOT NULL COMMENT 'Trader Menu ID',
  `afile` varchar(64) NOT NULL DEFAULT 'trade_items',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7575 ;

--
-- Dumping data for table `Traders_DATA`
--

INSERT INTO `Traders_DATA` VALUES(4996, '["Skin_CZ_Special_Forces_GL_DES_EP1_DZ",1]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(4999, '["Skin_Drake_Light_DZ",1]', 254, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5002, '["Skin_Soldier_Sniper_PMC_DZ",1]', 241, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5003, '["Skin_FR_OHara_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5004, '["Skin_FR_Rodriguez_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5005, '["Skin_CZ_Soldier_Sniper_EP1_DZ",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5006, '["Skin_Graves_Light_DZ",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5007, '["G36_C_SD_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5008, '["M4A1_AIM_SD_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5012, '["FN_FAL_ANPVS4",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5016, '["30Rnd_556x45_StanagSD",1]', 238, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 478, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5019, '["ArmoredSUV_PMC_DZE",2]', 5, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 479, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5020, '["Pickup_PK_TK_GUE_EP1_DZE",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 479, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5022, '["Offroad_DSHKM_Gue_DZE",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 479, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5026, '["30Rnd_556x45_Stanag",1]', 251, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 480, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5027, '["20Rnd_762x51_FNFAL",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 480, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5028, '["100Rnd_762x51_M240",1]', 241, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 481, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5029, '["200Rnd_556x45_M249",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 481, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5030, '["100Rnd_762x54_PK",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 481, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5031, '["20Rnd_762x51_DMR",1]', 294, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 482, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5032, '["10Rnd_762x54_SVD",1]', 270, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 482, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5036, '["30rnd_9x19_MP5",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5037, '["30Rnd_9x19_MP5SD",1]', 251, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5038, '["30Rnd_9x19_UZI",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5039, '["64Rnd_9x19_SD_Bizon",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5040, '["30Rnd_9x19_UZI_SD",1]', 239, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5041, '["20Rnd_B_765x17_Ball",1]', 255, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 483, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5042, '["15Rnd_9x19_M9",1]', 252, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5043, '["15Rnd_9x19_M9SD",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5044, '["17Rnd_9x19_glock17",1]', 252, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5045, '["6Rnd_45ACP",1]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5046, '["7Rnd_45ACP_1911",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5047, '["8Rnd_9x18_Makarov",1]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5048, '["8Rnd_9x18_MakarovSD",1]', 248, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 484, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5049, '["G36A_camo",3]', 254, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5050, '["G36C",3]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5051, '["G36C_camo",3]', 252, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5052, '["G36K_camo",3]', 251, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5054, '["M16A2",3]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5055, '["M16A2GL",3]', 252, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5056, '["M16A4_ACG",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5057, '["M4A1",3]', 252, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5059, '["M4A1_HWS_GL_camo",3]', 249, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5060, '["M4A3_CCO_EP1",3]', 251, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5061, '["M4A1_Aim",3]', 252, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5063, '["M249_EP1_DZ",3]', 253, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 486, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5064, '["M240_DZ",3]', 251, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 486, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5065, '["Mk_48_DZ",3]', 249, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 486, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5066, '["Pecheneg_DZ",3]', 251, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 486, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5067, '["SVD_CAMO",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5069, '["M40A3",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5070, '["M14_EP1",3]', 252, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5072, '["bizon_silenced",3]', 251, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5073, '["UZI_EP1",3]', 254, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5074, '["Sa61_EP1",3]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5075, '["MP5A5",3]', 250, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5076, '["UZI_SD_EP1",3]', 248, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5077, '["MP5SD",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 488, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5078, '["M9SD",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5079, '["glock17_EP1",3]', 252, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5080, '["Colt1911",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5081, '["M9",3]', 250, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5082, '["MakarovSD",3]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5083, '["revolver_gold_EP1",3]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5088, '["HMMWV_M1035_DES_EP1",2]', 12, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5089, '["HMMWV_Ambulance",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5090, '["HMMWV_Ambulance_CZ_DES_EP1",2]', 11, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5091, '["HMMWV_DES_EP1",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5092, '["GAZ_Vodnik_MedEvac",2]', 11, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5093, '["KamazRefuel_DZ",2]', 13, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 492, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5094, '["MtvrRefuel_DES_EP1_DZ",2]', 9, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 492, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5095, '["UralRefuel_TK_EP1_DZ",2]', 11, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 492, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5096, '["V3S_Refuel_TK_GUE_EP1_DZ",2]', 9, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 492, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5097, '["CH_47F_EP1_DZE",2]', 15, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5098, '["UH1H_DZE",2]', 18, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5099, '["Mi17_DZE",2]', 19, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5100, '["UH60M_EP1_DZE",2]', 9, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5101, '["UH1Y_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5116, '["DZ_Patrol_Pack_EP1",2]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5117, '["CZ_VestPouch_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5118, '["DZ_ALICE_Pack_EP1",2]', 249, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5119, '["DZ_Assault_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5120, '["DZ_Backpack_EP1",2]', 243, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5121, '["DZ_British_ACU",2]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5122, '["DZ_CivilBackpack_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5123, '["DZ_Czech_Vest_Puch",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5124, '["DZ_TK_Assault_Pack_EP1",2]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5125, '["DZ_TerminalPack_EP1",2]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5126, '["DZ_GunBag_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 496, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5127, '["Skin_Rocker2_DZ",1]', 0, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5128, '["Skin_SurvivorW2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5129, '["Skin_Functionary1_EP1_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5131, '["Skin_Haris_Press_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5132, '["Skin_Priest_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5135, '["Skin_SurvivorWpink_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5136, '["Skin_SurvivorWurban_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5137, '["Skin_SurvivorWcombat_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5138, '["Skin_SurvivorWdesert_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5139, '["Skin_Survivor2_DZ",1]', 265, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5145, '["ItemSodaCoke",1]', 230, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5146, '["ItemSodaPepsi",1]', 215, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5150, '["ItemSodaMdew",1]', 272, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5155, '["ItemSodaR4z0r",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5156, '["ItemWaterbottleUnfilled",1]', 251, '[3,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5201, '["ItemSandbag",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5202, '["ItemTankTrap",1]', 240, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5203, '["ItemTentOld",1]', 234, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5205, '["ItemWire",1]', 253, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5206, '["30m_plot_kit",1]', 244, '[6,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5207, '["ItemCorrugated",1]', 247, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5208, '["ItemPole",1]', 240, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5210, '["ItemJerrycan",1]', 248, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5211, '["ItemJerrycanEmpty",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5212, '["PartEngine",1]', 189, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5213, '["PartVRotor",1]', 246, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5214, '["PartWheel",1]', 246, '[2,"ItemGoldBar",1]', '[2,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5215, '["PartGlass",1]', 239, '[1,"ItemGoldBar",1]', '[1,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5216, '["PartGeneric",1]', 237, '[2,"ItemGoldBar",1]', '[6,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5217, '["ItemCompass",3]', 251, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5218, '["Binocular",3]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5219, '["Binocular_Vector",3]', 257, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5220, '["ItemEtool",3]', 253, '[9,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5221, '["ItemFlashlight",3]', 258, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5222, '["ItemFlashlightRed",3]', 252, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5223, '["ItemGPS",3]', 263, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5224, '["ItemHatchet_DZE",3]', 246, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5225, '["ItemKnife",3]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5226, '["ItemMap",3]', 247, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5227, '["ItemMatchbox_DZE",3]', 246, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5228, '["ItemToolbox",3]', 239, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5229, '["ItemWatch",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5230, '["NVGoggles",3]', 253, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5264, '["AN2_DZ",2]', 21, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5265, '["C130J_US_EP1",2]', 11, '[4,"ItemBriefcase100oz",1]', '[2,"ItemBriefcase100oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5266, '["MV22_DZ",2]', 29, '[5,"ItemBriefcase100oz",1]', '[2,"ItemBriefcase100oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5272, '["Mi17_Civilian_DZ",2]', 11, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5273, '["AH6X_DZ",2]', 10, '[6,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5274, '["MH6J_DZ",2]', 0, '[8,"ItemGoldBar10oz",1]', '[4,"ItemGoldBar10oz",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5275, '["CSJ_GyroC",2]', 0, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5276, '["CSJ_GyroCover",2]', 11, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5277, '["CSJ_GyroP",2]', 9, '[5,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5278, '["Skoda",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5279, '["SkodaBlue",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5280, '["SkodaGreen",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5281, '["SkodaRed",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5282, '["VolhaLimo_TK_CIV_EP1",2]', 7, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5283, '["Volha_1_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5284, '["Volha_2_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5285, '["VWGolf",2]', 7, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5286, '["car_hatchback",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5287, '["car_sedan",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5288, '["GLT_M300_LT",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5289, '["GLT_M300_ST",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5290, '["Lada1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5291, '["Lada1_TK_CIV_EP1",2]', 12, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5292, '["Lada2",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5293, '["Lada2_TK_CIV_EP1",2]', 8, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5294, '["LadaLM",2]', 10, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 520, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5337, '["Saiga12K",3]', 275, '[5,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5338, '["m8_compact",3]', 258, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5339, '["m8_sharpshooter",3]', 261, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5340, '["m8_holo_sd",3]', 254, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5341, '["m8_carbine",3]', 262, '[5,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5342, '["M24_des_EP1",3]', 257, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5344, '["VSS_vintorez",3]', 253, '[3,"ItemGoldBar10oz",1]', '[4,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5345, '["SVD_des_EP1",3]', 255, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5346, '["SVD",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5348, '["20Rnd_9x39_SP5_VSS",1]', 250, '[3,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5349, '["8Rnd_B_Beneli_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5350, '["20Rnd_762x51_SB_SCAR",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5351, '["8Rnd_B_Beneli_Pellets",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5352, '["8Rnd_B_Saiga12_74Slug",1]', 262, '[5,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5353, '["8Rnd_B_Saiga12_Pellets",1]', 250, '[5,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5354, '["20Rnd_B_765x17_Ball",1]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5355, '["10Rnd_762x54_SVD",1]', 253, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5356, '["5Rnd_762x51_M24",1]', 256, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5357, '["30Rnd_556x45_Stanag",1]', 272, '[5,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5358, '["20Rnd_762x51_FNFAL",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5366, '["HandGrenade_west",1]', 259, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 529, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5367, '["PipeBomb",1]', 232, '[4,"ItemBriefcase100oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 529, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5368, '["ItemSandbag",1]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5369, '["ItemTankTrap",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5370, '["ItemTentOld",1]', 248, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5371, '["ItemVault",1]', 241, '[1,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5372, '["ItemWire",1]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5373, '["30m_plot_kit",1]', 243, '[6,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5374, '["ItemCorrugated",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5375, '["ItemPole",1]', 249, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5376, '["ItemJerrycan",1]', 251, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5377, '["ItemJerrycanEmpty",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5378, '["PartEngine",1]', 274, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5379, '["PartVRotor",1]', 244, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5380, '["PartWheel",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5381, '["PartGlass",1]', 234, '[1,"ItemGoldBar",1]', '[1,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5382, '["PartGeneric",1]', 242, '[2,"ItemGoldBar",1]', '[6,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5383, '["ItemCompass",3]', 251, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5384, '["Binocular",3]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5385, '["Binocular_Vector",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5386, '["ItemEtool",3]', 249, '[9,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5387, '["ItemFlashlight",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5388, '["ItemFlashlightRed",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5389, '["ItemGPS",3]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5390, '["ItemHatchet_DZE",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5391, '["ItemKnife",3]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5392, '["ItemMap",3]', 251, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5393, '["ItemMatchbox_DZE",3]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5394, '["ItemToolbox",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5395, '["ItemWatch",3]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5396, '["NVGoggles",3]', 242, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5409, '["Pickup_PK_GUE_DZE",2]', 11, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 534, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5410, '["Pickup_PK_INS_DZE",2]', 13, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 534, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5411, '["hilux1_civil_3_open_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5412, '["datsun1_civil_3_open",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5413, '["hilux1_civil_1_open",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5414, '["datsun1_civil_2_covered",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5415, '["datsun1_civil_1_open",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5416, '["hilux1_civil_2_covered",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 535, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5420, '["MMT_Civ",2]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 536, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(5421, '["Old_bike_TK_INS_EP1",2]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 536, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(5422, '["TT650_Civ",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5423, '["TT650_Ins",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5424, '["TT650_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5425, '["ATV_CZ_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5426, '["ATV_US_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5427, '["M1030_US_DES_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5428, '["Old_moto_TK_Civ_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5436, '["DZ_Patrol_Pack_EP1",2]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5437, '["CZ_VestPouch_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5438, '["DZ_ALICE_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5439, '["DZ_Assault_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5440, '["DZ_Backpack_EP1",2]', 244, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5441, '["DZ_British_ACU",2]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5442, '["DZ_CivilBackpack_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(5475, '["ItemAntibiotic",1]', 261, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5476, '["ItemBandage",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5477, '["ItemBloodbag",1]', 243, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5478, '["ItemEpinephrine",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5479, '["ItemHeatPack",1]', 250, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5480, '["ItemMorphine",1]', 246, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5481, '["ItemPainkiller",1]', 248, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 541, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5482, '["HandChemBlue",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5483, '["HandChemGreen",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5484, '["HandChemRed",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5485, '["FlareGreen_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5486, '["FlareWhite_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5487, '["HandRoadFlare",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 542, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5488, '["SmokeShell",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 543, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5489, '["SmokeShellGreen",1]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 543, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5490, '["SmokeShellRed",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 543, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5555, '["bulk_15Rnd_9x19_M9SD",1]', 249, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5556, '["bulk_17Rnd_9x19_glock17",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5557, '["bulk_30Rnd_556x45_StanagSD",1]', 249, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5558, '["bulk_30Rnd_9x19_MP5SD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5564, '["Smallboat_1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5565, '["Smallboat_2",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5566, '["Zodiac",2]', 9, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5567, '["Fishing_Boat",2]', 11, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5568, '["PBX",2]', 11, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5569, '["RHIB",2]', 7, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 558, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(5616, '["VWGolf",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 560, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5617, '["HMMWV_DZ",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5619, '["HMMWV_M998A2_SOV_DES_EP1_DZE",2]', 9, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5621, '["HMMWV_M1151_M2_CZ_DES_EP1_DZE",2]', 6, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5622, '["LandRover_Special_CZ_EP1_DZE",2]', 11, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5623, '["LandRover_MG_TK_EP1_DZE",2]', 10, '[6,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5624, '["UAZ_MG_TK_EP1_DZE",2]', 12, '[6,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5625, '["GAZ_Vodnik_DZE",2]', 9, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 562, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5626, '["Ikarus",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 563, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5627, '["Ikarus_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 563, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5630, '["S1203_TK_CIV_EP1",2]', 9, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 563, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5631, '["S1203_ambulance_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 563, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5643, '["hilux1_civil_3_open_EP1",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5644, '["datsun1_civil_3_open",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5645, '["hilux1_civil_1_open",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5646, '["datsun1_civil_2_covered",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5647, '["datsun1_civil_1_open",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5648, '["hilux1_civil_2_covered",2]', 7, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 495, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5652, '["Ural_CDF",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5653, '["Ural_TK_CIV_EP1",2]', 13, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5654, '["Ural_UN_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5655, '["V3S_Open_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5656, '["V3S_Open_TK_EP1",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5657, '["Kamaz",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5658, '["MTVR_DES_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5664, '["SUV_TK_CIV_EP1",2]', 6, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5665, '["SUV_Blue",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5666, '["SUV_Charcoal",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5667, '["SUV_Green",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5668, '["SUV_Orange",2]', 13, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5669, '["SUV_Pink",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5670, '["SUV_Red",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5671, '["SUV_Silver",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5672, '["SUV_White",2]', 12, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5673, '["SUV_Yellow",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5674, '["SUV_Camo",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5675, '["UAZ_CDF",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5676, '["UAZ_INS",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5677, '["UAZ_RU",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5678, '["UAZ_Unarmed_TK_CIV_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5679, '["UAZ_Unarmed_TK_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5680, '["UAZ_Unarmed_UN_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 565, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5681, '["SUV_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5682, '["SUV_Blue",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5683, '["SUV_Charcoal",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5684, '["SUV_Green",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5685, '["SUV_Orange",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5686, '["SUV_Pink",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5687, '["SUV_Red",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5688, '["SUV_Silver",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5689, '["SUV_White",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5690, '["SUV_Yellow",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5691, '["SUV_Camo",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5692, '["UAZ_CDF",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5693, '["UAZ_INS",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5694, '["UAZ_RU",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5695, '["UAZ_Unarmed_TK_CIV_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5696, '["UAZ_Unarmed_TK_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5697, '["UAZ_Unarmed_UN_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 568, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5713, '["Ural_CDF",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5714, '["Ural_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5715, '["Ural_UN_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5716, '["V3S_Open_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5717, '["V3S_Open_TK_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5718, '["Kamaz",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5719, '["MTVR_DES_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5737, '["CH_47F_EP1_DZE",2]', 10, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5738, '["UH1H_DZE",2]', 11, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5739, '["Mi17_DZE",2]', 12, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5740, '["UH60M_EP1_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5741, '["UH1Y_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5742, '["ArmoredSUV_PMC_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 534, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5749, '["Pickup_PK_TK_GUE_EP1_DZE",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 534, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5751, '["Offroad_DSHKM_Gue_DZE",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 534, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5754, '["HMMWV_M998A2_SOV_DES_EP1_DZE",2]', 12, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5755, '["HMMWV_M1151_M2_CZ_DES_EP1_DZE",2]', 9, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5756, '["LandRover_Special_CZ_EP1_DZE",2]', 10, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5757, '["LandRover_MG_TK_EP1_DZE",2]', 10, '[6,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5758, '["UAZ_MG_TK_EP1_DZE",2]', 10, '[6,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5759, '["GAZ_Vodnik_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 569, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5786, '["GNT_C185U",2]', 11, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5788, '["GNT_C185",2]', 14, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5789, '["GNT_C185R",2]', 21, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5790, '["GNT_C185C",2]', 9, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 517, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5801, '["SCAR_H_LNG_Sniper_SD",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5802, '["BAF_LRR_scoped",3]', 248, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5809, '["15Rnd_W1866_Slug",1]', 257, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5810, '["2Rnd_shotgun_74Pellets",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5811, '["2Rnd_shotgun_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5812, '["8Rnd_B_Beneli_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5813, '["8Rnd_B_Beneli_Pellets",1]', 253, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5815, '["Quiver",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5816, '["Winchester1866",3]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5817, '["MR43",3]', 250, '[1,"ItemSilverBar10oz",1]', '[8,"ItemSilverBar",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5818, '["Crossbow_DZ",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5819, '["M1014",3]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5820, '["Remington870_lamp",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(5838, '["30Rnd_556x45_StanagSD",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 577, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5859, '["VWGolf",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 578, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5860, '["ItemSodaRbull",1]', 278, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5861, '["ItemSodaOrangeSherbet",1]', 310, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 498, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5862, '["FoodCanBakedBeans",1]', 240, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5863, '["FoodCanFrankBeans",1]', 245, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5864, '["FoodCanPasta",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5865, '["FoodCanSardines",1]', 245, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5866, '["FoodMRE",1]', 245, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5867, '["FoodPistachio",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5868, '["FoodNutmix",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 579, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5869, '["FoodbaconCooked",1]', 249, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5870, '["FoodbeefCooked",1]', 247, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5871, '["FoodchickenCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5872, '["FoodmuttonCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5873, '["FoodrabbitCooked",1]', 234, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5874, '["ItemTroutCooked",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5875, '["ItemSeaBassCooked",1]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5876, '["ItemTunaCooked",1]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 580, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(5931, '["Skoda",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5932, '["SkodaBlue",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5933, '["SkodaGreen",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5934, '["SkodaRed",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5935, '["VolhaLimo_TK_CIV_EP1",2]', 5, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5936, '["Volha_1_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5937, '["Volha_2_TK_CIV_EP1",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5938, '["VWGolf",2]', 9, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5939, '["car_hatchback",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5940, '["car_sedan",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5941, '["GLT_M300_LT",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5942, '["GLT_M300_ST",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5943, '["Lada1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5944, '["Lada1_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5945, '["Lada2",2]', 12, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5946, '["Lada2_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5947, '["LadaLM",2]', 11, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 585, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5948, '["Ural_CDF",2]', 6, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5949, '["Ural_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5950, '["Ural_UN_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5951, '["V3S_Open_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5952, '["V3S_Open_TK_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5953, '["Kamaz",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5954, '["MTVR_DES_EP1",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5960, '["MMT_Civ",2]', 246, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 587, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(5961, '["Old_bike_TK_INS_EP1",2]', 249, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 587, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(5962, '["TT650_Civ",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5963, '["TT650_Ins",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5964, '["TT650_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5965, '["ATV_CZ_EP1",2]', 7, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5966, '["ATV_US_EP1",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5967, '["M1030_US_DES_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5968, '["Old_moto_TK_Civ_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5969, '["Ikarus",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 588, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5970, '["Ikarus_TK_CIV_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 588, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5971, '["S1203_TK_CIV_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 588, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5972, '["S1203_ambulance_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 588, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5984, '["KamazRefuel_DZ",2]', 11, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 589, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5985, '["MtvrRefuel_DES_EP1_DZ",2]', 8, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 589, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5986, '["UralRefuel_TK_EP1_DZ",2]', 11, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 589, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5987, '["V3S_Refuel_TK_GUE_EP1_DZ",2]', 9, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 589, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5988, '["hilux1_civil_3_open_EP1",2]', 5, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5989, '["datsun1_civil_3_open",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5990, '["hilux1_civil_1_open",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5991, '["datsun1_civil_2_covered",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5992, '["datsun1_civil_1_open",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5993, '["hilux1_civil_2_covered",2]', 7, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 590, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5997, '["SUV_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5998, '["SUV_Blue",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(5999, '["SUV_Charcoal",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6000, '["SUV_Green",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6001, '["SUV_Orange",2]', 7, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6002, '["SUV_Pink",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6003, '["SUV_Red",2]', 11, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6004, '["SUV_Silver",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6005, '["SUV_White",2]', 11, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6006, '["SUV_Yellow",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6007, '["SUV_Camo",2]', 3, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6008, '["UAZ_CDF",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6009, '["UAZ_INS",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6010, '["UAZ_RU",2]', 14, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6011, '["UAZ_Unarmed_TK_CIV_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6012, '["UAZ_Unarmed_TK_EP1",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6013, '["UAZ_Unarmed_UN_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 591, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6014, '["Ikarus",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 592, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6015, '["Ikarus_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 592, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6016, '["S1203_TK_CIV_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 592, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6017, '["S1203_ambulance_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 592, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6047, '["VWGolf",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 593, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6069, '["KamazRefuel_DZ",2]', 10, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 595, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6070, '["MtvrRefuel_DES_EP1_DZ",2]', 9, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 595, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6071, '["UralRefuel_TK_EP1_DZ",2]', 10, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 595, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6072, '["V3S_Refuel_TK_GUE_EP1_DZ",2]', 10, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 595, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6085, '["HMMWV_M1035_DES_EP1",2]', 8, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6086, '["HMMWV_Ambulance",2]', 11, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6087, '["HMMWV_Ambulance_CZ_DES_EP1",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6088, '["HMMWV_DES_EP1",2]', 11, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6089, '["GAZ_Vodnik_MedEvac",2]', 12, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6090, '["HMMWV_DZ",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6091, '["HMMWV_M1035_DES_EP1",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6092, '["HMMWV_Ambulance",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6093, '["HMMWV_Ambulance_CZ_DES_EP1",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6094, '["HMMWV_DES_EP1",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6095, '["GAZ_Vodnik_MedEvac",2]', 10, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6096, '["HMMWV_DZ",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6097, '["Skoda",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6098, '["SkodaBlue",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6099, '["SkodaGreen",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6100, '["SkodaRed",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6101, '["VolhaLimo_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6102, '["Volha_1_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6103, '["Volha_2_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6104, '["VWGolf",2]', 10, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6105, '["car_hatchback",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6106, '["car_sedan",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6107, '["GLT_M300_LT",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6108, '["GLT_M300_ST",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6109, '["Lada1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6110, '["Lada1_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6111, '["Lada2",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6112, '["Lada2_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6113, '["LadaLM",2]', 10, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 600, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6114, '["Pickup_PK_GUE_DZE",2]', 7, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 479, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6115, '["Pickup_PK_INS_DZE",2]', 7, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 479, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6118, '["Sa58P_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6119, '["Sa58V_CCO_EP1",3]', 252, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6120, '["Sa58V_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6121, '["Sa58V_RCO_EP1",3]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6122, '["AKS_74_kobra",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6123, '["AKS_74_U",3]', 255, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6124, '["AK_47_M",3]', 251, '[8,"ItemGoldBar",1]', '[6,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6125, '["AK_74",3]', 255, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6126, '["10x_303",1]', 255, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 573, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6127, '["Makarov",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6128, '["revolver_EP1",3]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 489, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6129, '["LeeEnfield",3]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 574, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6130, '["huntingrifle",3]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6131, '["M4SPR",3]', 251, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6132, '["SVD",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6133, '["SVD_des_EP1",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6134, '["M24",3]', 253, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6135, '["M24_des_EP1",3]', 251, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 487, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6136, '["ItemSodaCoke",1]', 247, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6137, '["ItemSodaPepsi",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6138, '["ItemSodaMdew",1]', 254, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6139, '["ItemSodaR4z0r",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6140, '["ItemWaterbottleUnfilled",1]', 250, '[3,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6141, '["ItemSodaRbull",1]', 256, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6142, '["ItemSodaOrangeSherbet",1]', 266, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 601, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6143, '["FN_FAL",3]', 251, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6144, '["30Rnd_545x39_AK",1]', 256, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 480, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6145, '["30Rnd_762x39_AK47",1]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 480, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6146, '["5Rnd_762x51_M24",1]', 258, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 482, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6147, '["5x_22_LR_17_HMR",1]', 254, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 482, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6148, '["G36A_camo",3]', 255, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6149, '["G36C",3]', 254, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6150, '["G36C_camo",3]', 258, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6151, '["G36K_camo",3]', 256, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6152, '["M16A2",3]', 256, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6153, '["M16A2GL",3]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6154, '["M16A4_ACG",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6155, '["M4A1",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6156, '["M4A1_HWS_GL_camo",3]', 251, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6157, '["M4A3_CCO_EP1",3]', 253, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6158, '["M4A1_Aim",3]', 251, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6159, '["Sa58P_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6160, '["Sa58V_CCO_EP1",3]', 253, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6161, '["Sa58V_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6162, '["Sa58V_RCO_EP1",3]', 255, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6163, '["AKS_74_kobra",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6164, '["AKS_74_U",3]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6165, '["AK_47_M",3]', 253, '[8,"ItemGoldBar",1]', '[6,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6166, '["AK_74",3]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6167, '["FN_FAL",3]', 252, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6168, '["M249_EP1_DZ",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 603, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6169, '["M240_DZ",3]', 256, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 603, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6170, '["Mk_48_DZ",3]', 249, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 603, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6171, '["Pecheneg_DZ",3]', 256, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 603, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6172, '["bizon_silenced",3]', 252, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6173, '["UZI_EP1",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6174, '["Sa61_EP1",3]', 258, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6175, '["MP5A5",3]', 251, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6176, '["UZI_SD_EP1",3]', 249, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6177, '["MP5SD",3]', 253, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 604, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6178, '["SVD_CAMO",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6179, '["M40A3",3]', 251, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6180, '["M14_EP1",3]', 251, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6181, '["huntingrifle",3]', 257, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6182, '["M4SPR",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6183, '["SVD",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6184, '["SVD_des_EP1",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6185, '["M24",3]', 256, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6186, '["M24_des_EP1",3]', 251, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 605, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6187, '["M9SD",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6188, '["glock17_EP1",3]', 253, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6189, '["Colt1911",3]', 249, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6190, '["M9",3]', 252, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6191, '["MakarovSD",3]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6192, '["revolver_gold_EP1",3]', 252, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6193, '["Makarov",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6194, '["revolver_EP1",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 606, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6195, '["Winchester1866",3]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6196, '["MR43",3]', 252, '[1,"ItemSilverBar10oz",1]', '[8,"ItemSilverBar",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6197, '["Crossbow_DZ",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6198, '["M1014",3]', 253, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6199, '["Remington870_lamp",3]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6200, '["LeeEnfield",3]', 257, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 607, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6201, '["MMT_Civ",2]', 249, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 608, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(6202, '["Old_bike_TK_INS_EP1",2]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 608, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(6203, '["TT650_Civ",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6204, '["TT650_Ins",2]', 8, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6205, '["TT650_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6206, '["ATV_CZ_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6207, '["ATV_US_EP1",2]', 6, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6208, '["M1030_US_DES_EP1",2]', 8, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6209, '["Old_moto_TK_Civ_EP1",2]', 7, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6211, '["30Rnd_556x45_Stanag",1]', 312, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 609, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6212, '["20Rnd_762x51_FNFAL",1]', 252, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 609, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6213, '["30Rnd_545x39_AK",1]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 609, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6214, '["30Rnd_762x39_AK47",1]', 262, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 609, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6215, '["100Rnd_762x51_M240",1]', 240, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 610, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6216, '["200Rnd_556x45_M249",1]', 251, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 610, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6217, '["100Rnd_762x54_PK",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 610, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6218, '["15Rnd_9x19_M9",1]', 258, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6219, '["15Rnd_9x19_M9SD",1]', 245, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6220, '["17Rnd_9x19_glock17",1]', 257, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6221, '["6Rnd_45ACP",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6222, '["7Rnd_45ACP_1911",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6223, '["8Rnd_9x18_Makarov",1]', 256, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6224, '["8Rnd_9x18_MakarovSD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 611, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6225, '["30rnd_9x19_MP5",1]', 255, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6226, '["30Rnd_9x19_MP5SD",1]', 252, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6227, '["30Rnd_9x19_UZI",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6228, '["64Rnd_9x19_SD_Bizon",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6229, '["30Rnd_9x19_UZI_SD",1]', 246, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6230, '["20Rnd_B_765x17_Ball",1]', 254, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 612, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6231, '["15Rnd_W1866_Slug",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6232, '["2Rnd_shotgun_74Pellets",1]', 254, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6233, '["2Rnd_shotgun_74Slug",1]', 256, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6234, '["8Rnd_B_Beneli_74Slug",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6235, '["8Rnd_B_Beneli_Pellets",1]', 247, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6236, '["WoodenArrow",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6237, '["Quiver",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6238, '["10x_303",1]', 259, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 613, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6239, '["20Rnd_762x51_DMR",1]', 322, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 614, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6240, '["10Rnd_762x54_SVD",1]', 295, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 614, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6242, '["5Rnd_762x51_M24",1]', 281, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 614, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6243, '["5x_22_LR_17_HMR",1]', 262, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 614, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6244, '["G36A_camo",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6245, '["G36C",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6246, '["G36C_camo",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6247, '["G36K_camo",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6248, '["M16A2",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6249, '["M16A2GL",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6250, '["M16A4_ACG",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6251, '["M4A1",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6252, '["M4A1_HWS_GL_camo",3]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6253, '["M4A3_CCO_EP1",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6254, '["M4A1_Aim",3]', 250, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6255, '["Sa58P_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6256, '["Sa58V_CCO_EP1",3]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6257, '["Sa58V_EP1",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6258, '["Sa58V_RCO_EP1",3]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6259, '["AKS_74_kobra",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6260, '["AKS_74_U",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6261, '["AK_47_M",3]', 250, '[8,"ItemGoldBar",1]', '[6,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6262, '["AK_74",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6263, '["FN_FAL",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6264, '["M249_EP1_DZ",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 616, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6265, '["M240_DZ",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 616, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6266, '["Mk_48_DZ",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 616, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6267, '["Pecheneg_DZ",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 616, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6268, '["M9SD",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6269, '["glock17_EP1",3]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6270, '["Colt1911",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6271, '["M9",3]', 250, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6272, '["MakarovSD",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6273, '["revolver_gold_EP1",3]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6274, '["Makarov",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6275, '["revolver_EP1",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 617, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6276, '["bizon_silenced",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6277, '["UZI_EP1",3]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6278, '["Sa61_EP1",3]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6279, '["MP5A5",3]', 250, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6280, '["UZI_SD_EP1",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6281, '["MP5SD",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 618, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6282, '["SVD_CAMO",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6283, '["M40A3",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6284, '["M14_EP1",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6285, '["huntingrifle",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6286, '["M4SPR",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6287, '["SVD",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6288, '["SVD_des_EP1",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6289, '["M24",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6290, '["M24_des_EP1",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 619, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6291, '["Winchester1866",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6292, '["MR43",3]', 250, '[1,"ItemSilverBar10oz",1]', '[8,"ItemSilverBar",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6293, '["Crossbow_DZ",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6294, '["M1014",3]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6295, '["Remington870_lamp",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6296, '["LeeEnfield",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 620, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6298, '["30Rnd_556x45_Stanag",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 621, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6299, '["20Rnd_762x51_FNFAL",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 621, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6300, '["30Rnd_545x39_AK",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 621, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6301, '["30Rnd_762x39_AK47",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 621, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6302, '["100Rnd_762x51_M240",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 622, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6303, '["200Rnd_556x45_M249",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 622, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6304, '["100Rnd_762x54_PK",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 622, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6305, '["15Rnd_W1866_Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6306, '["2Rnd_shotgun_74Pellets",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6307, '["2Rnd_shotgun_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6308, '["8Rnd_B_Beneli_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6309, '["8Rnd_B_Beneli_Pellets",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6310, '["WoodenArrow",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6311, '["Quiver",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6312, '["10x_303",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 623, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6313, '["20Rnd_762x51_DMR",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 624, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6314, '["10Rnd_762x54_SVD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 624, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6316, '["5Rnd_762x51_M24",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 624, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6317, '["5x_22_LR_17_HMR",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 624, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6318, '["15Rnd_9x19_M9",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6319, '["15Rnd_9x19_M9SD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6320, '["17Rnd_9x19_glock17",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6321, '["6Rnd_45ACP",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6322, '["7Rnd_45ACP_1911",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6323, '["8Rnd_9x18_Makarov",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6324, '["8Rnd_9x18_MakarovSD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 625, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6325, '["30rnd_9x19_MP5",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6326, '["30Rnd_9x19_MP5SD",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6327, '["30Rnd_9x19_UZI",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6328, '["64Rnd_9x19_SD_Bizon",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6329, '["30Rnd_9x19_UZI_SD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6330, '["20Rnd_B_765x17_Ball",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 626, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6332, '["FN_FAL",3]', 249, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6333, '["Mk_48_DZ",3]', 249, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6334, '["M240_DZ",3]', 251, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 477, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6335, '["G36_C_SD_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6336, '["M4A1_AIM_SD_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6337, '["FN_FAL_ANPVS4",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6338, '["SCAR_H_LNG_Sniper_SD",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6339, '["BAF_LRR_scoped",3]', 250, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6340, '["FN_FAL",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6341, '["Mk_48_DZ",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6342, '["M240_DZ",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 627, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6344, '["Skin_Rocker1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6345, '["Skin_Rocker3_DZ",1]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6346, '["Skin_RU_Policeman_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6347, '["Skin_Pilot_EP1_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6348, '["Skin_Rocker4_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6349, '["Skin_Rocker2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6350, '["Skin_SurvivorW2_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6351, '["Skin_Functionary1_EP1_DZ",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6352, '["Skin_Haris_Press_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6353, '["Skin_Priest_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6354, '["Skin_SurvivorWpink_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6355, '["Skin_SurvivorWurban_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6356, '["Skin_SurvivorWcombat_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6357, '["Skin_SurvivorWdesert_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6358, '["Skin_Survivor2_DZ",1]', 258, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6359, '["Skin_Rocker1_DZ",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6360, '["Skin_Rocker3_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6361, '["Skin_RU_Policeman_DZ",1]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6362, '["Skin_Pilot_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6363, '["Skin_Rocker4_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6364, '["FoodCanBakedBeans",1]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6365, '["FoodCanFrankBeans",1]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6366, '["FoodCanPasta",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6367, '["FoodCanSardines",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6368, '["FoodMRE",1]', 244, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6369, '["FoodPistachio",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6370, '["FoodNutmix",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 629, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6371, '["FoodbaconCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6372, '["FoodbeefCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6373, '["FoodchickenCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6374, '["FoodmuttonCooked",1]', 252, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6375, '["FoodrabbitCooked",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6376, '["ItemTroutCooked",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6377, '["ItemSeaBassCooked",1]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6378, '["ItemTunaCooked",1]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 630, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6379, '["Skin_Rocker2_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6380, '["Skin_SurvivorW2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6381, '["Skin_Functionary1_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6382, '["Skin_Haris_Press_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6383, '["Skin_Priest_DZ",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6384, '["Skin_SurvivorWpink_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6385, '["Skin_SurvivorWurban_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6386, '["Skin_SurvivorWcombat_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6387, '["Skin_SurvivorWdesert_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6388, '["Skin_Survivor2_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6389, '["Skin_Rocker1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6390, '["Skin_Rocker3_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6391, '["Skin_RU_Policeman_DZ",1]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6392, '["Skin_Pilot_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6393, '["Skin_Rocker4_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6394, '["DZ_Patrol_Pack_EP1",2]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6395, '["CZ_VestPouch_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6396, '["DZ_ALICE_Pack_EP1",2]', 249, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6397, '["DZ_Assault_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6398, '["DZ_Backpack_EP1",2]', 249, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6399, '["DZ_British_ACU",2]', 248, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6400, '["DZ_CivilBackpack_EP1",2]', 251, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6401, '["DZ_Czech_Vest_Puch",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6402, '["DZ_TK_Assault_Pack_EP1",2]', 251, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6403, '["DZ_TerminalPack_EP1",2]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6404, '["DZ_GunBag_EP1",2]', 251, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 632, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6405, '["ItemSodaCoke",1]', 241, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6406, '["ItemSodaPepsi",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6407, '["ItemSodaMdew",1]', 253, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6408, '["ItemSodaR4z0r",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6409, '["ItemWaterbottleUnfilled",1]', 250, '[3,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6410, '["ItemSodaRbull",1]', 257, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6411, '["ItemSodaOrangeSherbet",1]', 273, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 633, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6412, '["FoodbaconCooked",1]', 248, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6413, '["FoodbeefCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6414, '["FoodchickenCooked",1]', 249, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6415, '["FoodmuttonCooked",1]', 247, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6416, '["FoodrabbitCooked",1]', 249, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6417, '["ItemTroutCooked",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6418, '["ItemSeaBassCooked",1]', 249, '[3,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6419, '["ItemTunaCooked",1]', 248, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 634, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6420, '["FoodCanBakedBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6421, '["FoodCanFrankBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6422, '["FoodCanPasta",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6423, '["FoodCanSardines",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6424, '["FoodMRE",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6425, '["FoodPistachio",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6426, '["FoodNutmix",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 635, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6427, '["bulk_ItemSandbag",1]', 244, '[2,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6429, '["bulk_15Rnd_9x19_M9SD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6430, '["bulk_17Rnd_9x19_glock17",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6431, '["bulk_30Rnd_556x45_StanagSD",1]', 249, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6432, '["bulk_30Rnd_9x19_MP5SD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6433, '["bulk_ItemSandbag",1]', 250, '[2,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6434, '["Skin_Soldier_Bodyguard_AA12_PMC_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6435, '["Skin_Camo1_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6436, '["Skin_Rocket_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6437, '["Skin_Sniper1_DZ",1]', 247, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6438, '["Skin_Soldier1_DZ",1]', 254, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6439, '["Skin_Soldier_TL_PMC_DZ",1]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 476, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6440, '["Skin_Bandit1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6441, '["Skin_Bandit2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6442, '["Skin_GUE_Commander_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6443, '["Skin_GUE_Soldier_2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6444, '["Skin_GUE_Soldier_CO_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6445, '["Skin_GUE_Soldier_Crew_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6446, '["Skin_GUE_Soldier_Sniper_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6447, '["Skin_Ins_Soldier_GL_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6448, '["Skin_TK_INS_Soldier_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6449, '["Skin_TK_INS_Warlord_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6450, '["Skin_BanditW1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6451, '["Skin_BanditW2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 575, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6452, '["G36A_camo",3]', 257, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6453, '["G36C",3]', 254, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6454, '["G36C_camo",3]', 257, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6455, '["G36K_camo",3]', 254, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6456, '["M16A2",3]', 256, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6457, '["M16A2GL",3]', 256, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6458, '["M16A4_ACG",3]', 252, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6459, '["M4A1",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6460, '["M4A1_HWS_GL_camo",3]', 255, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6461, '["M4A3_CCO_EP1",3]', 256, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6462, '["M4A1_Aim",3]', 259, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6463, '["Sa58P_EP1",3]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6464, '["Sa58V_CCO_EP1",3]', 255, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6465, '["Sa58V_EP1",3]', 254, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6466, '["Sa58V_RCO_EP1",3]', 255, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6467, '["AKS_74_kobra",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6468, '["AKS_74_U",3]', 252, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6469, '["AK_47_M",3]', 254, '[8,"ItemGoldBar",1]', '[6,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6470, '["AK_74",3]', 263, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6471, '["FN_FAL",3]', 255, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6472, '["M249_EP1_DZ",3]', 251, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 638, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6473, '["M240_DZ",3]', 258, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 638, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6474, '["Mk_48_DZ",3]', 253, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 638, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6475, '["Pecheneg_DZ",3]', 251, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 638, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6483, '["SVD_CAMO",3]', 255, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6484, '["M40A3",3]', 255, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6485, '["M14_EP1",3]', 252, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6486, '["huntingrifle",3]', 254, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6487, '["M4SPR",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6488, '["SVD",3]', 255, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6489, '["SVD_des_EP1",3]', 255, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6490, '["M24",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6491, '["M24_des_EP1",3]', 252, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 640, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6492, '["Winchester1866",3]', 256, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6493, '["MR43",3]', 253, '[1,"ItemSilverBar10oz",1]', '[8,"ItemSilverBar",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6494, '["Crossbow_DZ",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6495, '["M1014",3]', 251, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6496, '["Remington870_lamp",3]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6497, '["LeeEnfield",3]', 254, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 641, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6498, '["bizon_silenced",3]', 252, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6499, '["UZI_EP1",3]', 253, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6500, '["Sa61_EP1",3]', 256, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6501, '["MP5A5",3]', 256, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6502, '["UZI_SD_EP1",3]', 252, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6503, '["MP5SD",3]', 252, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 642, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6505, '["30Rnd_556x45_Stanag",1]', 259, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 643, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6506, '["20Rnd_762x51_FNFAL",1]', 253, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 643, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6507, '["30Rnd_545x39_AK",1]', 259, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 643, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6508, '["30Rnd_762x39_AK47",1]', 256, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 643, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6509, '["100Rnd_762x51_M240",1]', 260, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 644, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6510, '["200Rnd_556x45_M249",1]', 257, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 644, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6511, '["100Rnd_762x54_PK",1]', 246, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 644, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6520, '["15Rnd_9x19_M9",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6521, '["15Rnd_9x19_M9SD",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6522, '["17Rnd_9x19_glock17",1]', 248, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6523, '["6Rnd_45ACP",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6524, '["7Rnd_45ACP_1911",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6525, '["8Rnd_9x18_Makarov",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6526, '["8Rnd_9x18_MakarovSD",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 646, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6527, '["20Rnd_762x51_DMR",1]', 309, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 647, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6528, '["10Rnd_762x54_SVD",1]', 276, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 647, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6530, '["5Rnd_762x51_M24",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 647, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6531, '["5x_22_LR_17_HMR",1]', 254, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 647, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6532, '["30rnd_9x19_MP5",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6533, '["30Rnd_9x19_MP5SD",1]', 251, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6534, '["30Rnd_9x19_UZI",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6535, '["64Rnd_9x19_SD_Bizon",1]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6536, '["30Rnd_9x19_UZI_SD",1]', 245, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6537, '["20Rnd_B_765x17_Ball",1]', 258, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 648, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6538, '["15Rnd_W1866_Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6539, '["2Rnd_shotgun_74Pellets",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6540, '["2Rnd_shotgun_74Slug",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6541, '["8Rnd_B_Beneli_74Slug",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6542, '["8Rnd_B_Beneli_Pellets",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6543, '["WoodenArrow",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6544, '["Quiver",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6545, '["10x_303",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 649, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6546, '["MMT_Civ",2]', 249, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 650, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(6547, '["Old_bike_TK_INS_EP1",2]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 650, 'trade_any_bicycle');
INSERT INTO `Traders_DATA` VALUES(6548, '["TT650_Civ",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6549, '["TT650_Ins",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6550, '["TT650_TK_CIV_EP1",2]', 12, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6551, '["ATV_CZ_EP1",2]', 8, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6552, '["ATV_US_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6553, '["M1030_US_DES_EP1",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6554, '["Old_moto_TK_Civ_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6555, '["Ikarus",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 651, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6556, '["Ikarus_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 651, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6557, '["S1203_TK_CIV_EP1",2]', 11, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 651, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6558, '["S1203_ambulance_EP1",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 651, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6588, '["VWGolf",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 652, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6589, '["Ural_CDF",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6590, '["Ural_TK_CIV_EP1",2]', 13, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6591, '["Ural_UN_EP1",2]', 13, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6592, '["V3S_Open_TK_CIV_EP1",2]', 15, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6593, '["V3S_Open_TK_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6594, '["Kamaz",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6595, '["MTVR_DES_EP1",2]', 5, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6622, '["KamazRefuel_DZ",2]', 13, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 655, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6623, '["MtvrRefuel_DES_EP1_DZ",2]', 9, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 655, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6624, '["UralRefuel_TK_EP1_DZ",2]', 11, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 655, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6625, '["V3S_Refuel_TK_GUE_EP1_DZ",2]', 15, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 655, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6638, '["HMMWV_M1035_DES_EP1",2]', 13, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6639, '["HMMWV_Ambulance",2]', 10, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6640, '["HMMWV_Ambulance_CZ_DES_EP1",2]', 12, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6641, '["HMMWV_DES_EP1",2]', 15, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6642, '["GAZ_Vodnik_MedEvac",2]', 15, '[1,"ItemBriefcase100oz",1]', '[5,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6643, '["HMMWV_DZ",2]', 14, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6644, '["hilux1_civil_3_open_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6645, '["datsun1_civil_3_open",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6646, '["hilux1_civil_1_open",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6647, '["datsun1_civil_2_covered",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6648, '["datsun1_civil_1_open",2]', 12, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6649, '["hilux1_civil_2_covered",2]', 9, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 659, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6653, '["Skoda",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6654, '["SkodaBlue",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6655, '["SkodaGreen",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6656, '["SkodaRed",2]', 12, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6657, '["VolhaLimo_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6658, '["Volha_1_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6659, '["Volha_2_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6660, '["VWGolf",2]', 9, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6661, '["car_hatchback",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6662, '["car_sedan",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6663, '["GLT_M300_LT",2]', 11, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6664, '["GLT_M300_ST",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6665, '["Lada1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6666, '["Lada1_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6667, '["Lada2",2]', 10, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6668, '["Lada2_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6669, '["LadaLM",2]', 10, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 660, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6670, '["SUV_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6671, '["SUV_Blue",2]', 12, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6672, '["SUV_Charcoal",2]', 7, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6673, '["SUV_Green",2]', 8, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6674, '["SUV_Orange",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6675, '["SUV_Pink",2]', 11, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6676, '["SUV_Red",2]', 7, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6677, '["SUV_Silver",2]', 12, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6678, '["SUV_White",2]', 9, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6679, '["SUV_Yellow",2]', 10, '[2,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6680, '["SUV_Camo",2]', 6, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6681, '["UAZ_CDF",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6682, '["UAZ_INS",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6683, '["UAZ_RU",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6684, '["UAZ_Unarmed_TK_CIV_EP1",2]', 10, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6685, '["UAZ_Unarmed_TK_EP1",2]', 11, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6686, '["UAZ_Unarmed_UN_EP1",2]', 12, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 661, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(6687, '["ItemSandbag",1]', 197, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6688, '["ItemTankTrap",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6689, '["ItemTentOld",1]', 236, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6690, '["ItemWire",1]', 245, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6691, '["30m_plot_kit",1]', 241, '[6,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6695, '["ItemCompass",3]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6696, '["Binocular",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6697, '["Binocular_Vector",3]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6698, '["ItemEtool",3]', 251, '[9,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6699, '["ItemFlashlight",3]', 254, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6700, '["ItemFlashlightRed",3]', 251, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6701, '["ItemGPS",3]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6702, '["ItemHatchet_DZE",3]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6703, '["ItemKnife",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6704, '["ItemMap",3]', 249, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6705, '["ItemMatchbox_DZE",3]', 247, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6706, '["ItemToolbox",3]', 245, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6707, '["ItemWatch",3]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6708, '["NVGoggles",3]', 245, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6709, '["ItemJerrycan",1]', 248, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6710, '["ItemJerrycanEmpty",1]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6711, '["PartEngine",1]', 226, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6712, '["PartVRotor",1]', 249, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6713, '["PartWheel",1]', 249, '[2,"ItemGoldBar",1]', '[2,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6714, '["PartGlass",1]', 240, '[1,"ItemGoldBar",1]', '[1,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6715, '["PartGeneric",1]', 236, '[2,"ItemGoldBar",1]', '[6,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6716, '["ItemAntibiotic",1]', 256, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6717, '["ItemBandage",1]', 239, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6718, '["ItemBloodbag",1]', 263, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6719, '["ItemEpinephrine",1]', 255, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6720, '["ItemHeatPack",1]', 253, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6721, '["ItemMorphine",1]', 274, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6722, '["ItemPainkiller",1]', 250, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 665, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6723, '["HandChemBlue",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6724, '["HandChemGreen",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6725, '["HandChemRed",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6726, '["FlareGreen_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6727, '["FlareWhite_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6728, '["HandRoadFlare",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 666, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6736, '["SmokeShell",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 668, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6737, '["SmokeShellGreen",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 668, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6738, '["SmokeShellRed",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 668, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6739, '["HandChemBlue",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6740, '["HandChemGreen",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6741, '["HandChemRed",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6742, '["FlareGreen_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6743, '["FlareWhite_M203",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6744, '["HandRoadFlare",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 669, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6745, '["ItemAntibiotic",1]', 249, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6746, '["ItemBandage",1]', 232, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6747, '["ItemBloodbag",1]', 247, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6748, '["ItemEpinephrine",1]', 249, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6749, '["ItemHeatPack",1]', 250, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6750, '["ItemMorphine",1]', 246, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6751, '["ItemPainkiller",1]', 246, '[1,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 670, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6752, '["SmokeShell",1]', 253, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 671, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6753, '["SmokeShellGreen",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 671, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6754, '["SmokeShellRed",1]', 251, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 671, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6755, '["Smallboat_1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6756, '["Smallboat_2",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6757, '["Zodiac",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6758, '["Fishing_Boat",2]', 13, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6759, '["PBX",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6760, '["RHIB",2]', 13, '[4,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 673, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(6761, '["M9SD",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6762, '["glock17_EP1",3]', 251, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6763, '["Colt1911",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6764, '["M9",3]', 250, '[1,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6765, '["MakarovSD",3]', 253, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6766, '["revolver_gold_EP1",3]', 251, '[3,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6767, '["Makarov",3]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6768, '["revolver_EP1",3]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 674, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6777, '["bulk_15Rnd_9x19_M9SD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6778, '["bulk_17Rnd_9x19_glock17",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6779, '["bulk_30Rnd_556x45_StanagSD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6780, '["bulk_30Rnd_9x19_MP5SD",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6781, '["bulk_ItemSandbag",1]', 250, '[2,"ItemGoldBar10oz",1]', '[2,"ItemGoldBar10oz",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6790, '["ItemJerrycan",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6791, '["ItemJerrycanEmpty",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6792, '["PartEngine",1]', 250, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6793, '["PartVRotor",1]', 250, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6794, '["PartWheel",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6795, '["PartGlass",1]', 250, '[1,"ItemGoldBar",1]', '[1,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6796, '["PartGeneric",1]', 250, '[2,"ItemGoldBar",1]', '[6,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6797, '["ItemSandbag",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6798, '["ItemTankTrap",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6799, '["ItemTentOld",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6800, '["ItemVault",1]', 250, '[1,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6801, '["ItemWire",1]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6802, '["30m_plot_kit",1]', 250, '[6,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6803, '["ItemCorrugated",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6804, '["ItemPole",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6805, '["ItemCompass",3]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6806, '["Binocular",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6807, '["Binocular_Vector",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6808, '["ItemEtool",3]', 250, '[9,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6809, '["ItemFlashlight",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6810, '["ItemFlashlightRed",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6811, '["ItemGPS",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6812, '["ItemHatchet_DZE",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6813, '["ItemKnife",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6814, '["ItemMap",3]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6815, '["ItemMatchbox_DZE",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6816, '["ItemToolbox",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6817, '["ItemWatch",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6818, '["NVGoggles",3]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6819, '["ItemSandbag",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6820, '["ItemTankTrap",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6821, '["ItemTentOld",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6822, '["ItemVault",1]', 250, '[1,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6823, '["ItemWire",1]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6824, '["30m_plot_kit",1]', 250, '[6,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6825, '["ItemCorrugated",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6826, '["ItemPole",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6827, '["ItemCompass",3]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6828, '["Binocular",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6829, '["Binocular_Vector",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6830, '["ItemEtool",3]', 250, '[9,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6831, '["ItemFlashlight",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6832, '["ItemFlashlightRed",3]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6833, '["ItemGPS",3]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6834, '["ItemHatchet_DZE",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6835, '["ItemKnife",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6836, '["ItemMap",3]', 250, '[6,"ItemSilverBar",1]', '[3,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6837, '["ItemMatchbox_DZE",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6838, '["ItemToolbox",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6839, '["ItemWatch",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6840, '["NVGoggles",3]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6841, '["ItemJerrycan",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6842, '["ItemJerrycanEmpty",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6843, '["PartEngine",1]', 250, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6844, '["PartVRotor",1]', 250, '[5,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6845, '["PartWheel",1]', 250, '[2,"ItemGoldBar",1]', '[2,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6846, '["PartGlass",1]', 250, '[1,"ItemGoldBar",1]', '[1,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6847, '["PartGeneric",1]', 250, '[2,"ItemGoldBar",1]', '[6,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6848, '["Skin_Rocker2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6849, '["Skin_SurvivorW2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6850, '["Skin_Functionary1_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6851, '["Skin_Haris_Press_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6852, '["Skin_Priest_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6853, '["Skin_SurvivorWpink_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6854, '["Skin_SurvivorWurban_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6855, '["Skin_SurvivorWcombat_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6856, '["Skin_SurvivorWdesert_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6857, '["Skin_Survivor2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6858, '["Skin_Rocker1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6859, '["Skin_Rocker3_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6860, '["Skin_RU_Policeman_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6861, '["Skin_Pilot_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6862, '["Skin_Rocker4_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6863, '["ItemSodaCoke",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6864, '["ItemSodaPepsi",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6865, '["ItemSodaMdew",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6866, '["ItemSodaR4z0r",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6867, '["ItemWaterbottleUnfilled",1]', 250, '[3,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6868, '["ItemSodaRbull",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6869, '["ItemSodaOrangeSherbet",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 684, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6870, '["DZ_Patrol_Pack_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6871, '["CZ_VestPouch_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6872, '["DZ_ALICE_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6873, '["DZ_Assault_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6874, '["DZ_Backpack_EP1",2]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6875, '["DZ_British_ACU",2]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6876, '["DZ_CivilBackpack_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6877, '["DZ_Czech_Vest_Puch",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6878, '["DZ_TK_Assault_Pack_EP1",2]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6879, '["DZ_TerminalPack_EP1",2]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6880, '["DZ_GunBag_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 685, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6881, '["FoodbaconCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6882, '["FoodbeefCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6883, '["FoodchickenCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6884, '["FoodmuttonCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6885, '["FoodrabbitCooked",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6886, '["ItemTroutCooked",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6887, '["ItemSeaBassCooked",1]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6888, '["ItemTunaCooked",1]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 686, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6889, '["FoodCanBakedBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6890, '["FoodCanFrankBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6891, '["FoodCanPasta",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6892, '["FoodCanSardines",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6893, '["FoodMRE",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6894, '["FoodPistachio",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6895, '["FoodNutmix",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 687, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6896, '["DZ_Patrol_Pack_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6897, '["CZ_VestPouch_EP1",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6898, '["DZ_ALICE_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6899, '["DZ_Assault_Pack_EP1",2]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6900, '["DZ_Backpack_EP1",2]', 250, '[8,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6901, '["DZ_British_ACU",2]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6902, '["DZ_CivilBackpack_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[4,"ItemGoldBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6903, '["DZ_Czech_Vest_Puch",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6904, '["DZ_TK_Assault_Pack_EP1",2]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6905, '["DZ_TerminalPack_EP1",2]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6906, '["DZ_GunBag_EP1",2]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 688, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(6907, '["Skin_Rocker2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6908, '["Skin_SurvivorW2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6909, '["Skin_Functionary1_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6910, '["Skin_Haris_Press_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6911, '["Skin_Priest_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6912, '["Skin_SurvivorWpink_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6913, '["Skin_SurvivorWurban_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6914, '["Skin_SurvivorWcombat_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6915, '["Skin_SurvivorWdesert_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6916, '["Skin_Survivor2_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6917, '["Skin_Rocker1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6918, '["Skin_Rocker3_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6919, '["Skin_RU_Policeman_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6920, '["Skin_Pilot_EP1_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6921, '["Skin_Rocker4_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6922, '["FoodbaconCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6923, '["FoodbeefCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6924, '["FoodchickenCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6925, '["FoodmuttonCooked",1]', 250, '[4,"ItemSilverBar",1]', '[2,"ItemSilverBar",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6926, '["FoodrabbitCooked",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6927, '["ItemTroutCooked",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemSilverBar10oz",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6928, '["ItemSeaBassCooked",1]', 250, '[3,"ItemGoldBar",1]', '[2,"ItemSilverBar10oz",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6929, '["ItemTunaCooked",1]', 250, '[4,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 690, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6930, '["ItemSodaCoke",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6931, '["ItemSodaPepsi",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6932, '["ItemSodaMdew",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6933, '["ItemSodaR4z0r",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6934, '["ItemWaterbottleUnfilled",1]', 250, '[3,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6935, '["ItemSodaRbull",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6936, '["ItemSodaOrangeSherbet",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 691, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6937, '["FoodCanBakedBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6938, '["FoodCanFrankBeans",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6939, '["FoodCanPasta",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6940, '["FoodCanSardines",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6941, '["FoodMRE",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6942, '["FoodPistachio",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6943, '["FoodNutmix",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 692, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6944, '["ItemVault",1]', 244, '[1,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6945, '["ItemCrowbar",3]', 233, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6946, '["ItemMachete",3]', 252, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6947, '["ItemFishingPole",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 510, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(6948, '["ItemTentDomed",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6949, '["ItemTentDomed2",1]', 248, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6950, '["ItemLightBulb",1]', 251, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6951, '["ItemGenerator",1]', 260, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 508, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6960, '["ItemTentDomed",1]', 248, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6961, '["ItemTentDomed2",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6962, '["ItemLightBulb",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6963, '["ItemGenerator",1]', 252, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 530, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6971, '["ItemVault",1]', 239, '[1,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6972, '["ItemTentDomed",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6973, '["ItemTentDomed2",1]', 247, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6974, '["ItemLightBulb",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6975, '["ItemGenerator",1]', 254, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 662, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6984, '["ItemTentDomed",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6985, '["ItemTentDomed2",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6986, '["ItemLightBulb",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6987, '["ItemGenerator",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 678, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6996, '["ItemTentDomed",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6997, '["ItemTentDomed2",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6998, '["ItemLightBulb",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(6999, '["ItemGenerator",1]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 680, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7014, '["ItemCrowbar",3]', 235, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7015, '["ItemMachete",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7016, '["ItemFishingPole",3]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 532, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7031, '["ItemCrowbar",3]', 238, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7032, '["ItemMachete",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7033, '["ItemFishingPole",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 663, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7048, '["ItemCrowbar",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7049, '["ItemMachete",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7050, '["ItemFishingPole",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 679, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7065, '["ItemCrowbar",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7066, '["ItemMachete",3]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7067, '["ItemFishingPole",3]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 681, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7068, '["JetSkiYanahui_Case_Red",2]', 9, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7069, '["JetSkiYanahui_Case_Yellow",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7070, '["JetSkiYanahui_Case_Green",2]', 9, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7071, '["JetSkiYanahui_Case_Blue",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 557, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7077, '["JetSkiYanahui_Case_Red",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7078, '["JetSkiYanahui_Case_Yellow",2]', 11, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7079, '["JetSkiYanahui_Case_Green",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7080, '["JetSkiYanahui_Case_Blue",2]', 10, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 672, 'trade_any_boat');
INSERT INTO `Traders_DATA` VALUES(7081, '["PartFueltank",1]', 239, '[2,"ItemGoldBar",1]', '[5,"ItemSilverBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7089, '["PartFueltank",1]', 252, '[2,"ItemGoldBar",1]', '[5,"ItemSilverBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7097, '["PartFueltank",1]', 250, '[2,"ItemGoldBar",1]', '[5,"ItemSilverBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7105, '["PartFueltank",1]', 250, '[2,"ItemGoldBar",1]', '[5,"ItemSilverBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7106, '["tractor",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 587, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7116, '["tractor",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 536, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7126, '["tractor",2]', 12, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 650, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7136, '["tractor",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 608, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7144, '["PartFueltank",1]', 250, '[2,"ItemGoldBar",1]', '[5,"ItemSilverBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7145, '["5Rnd_86x70_L115A1",1]', 223, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 478, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7148, '["LandRover_CZ_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7149, '["LandRover_TK_CIV_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 491, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7150, '["30Rnd_762x39_SA58",1]', 248, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 609, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7155, '["30Rnd_762x39_SA58",1]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 621, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7160, '["30Rnd_762x39_SA58",1]', 255, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 643, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7165, '["30Rnd_762x39_SA58",1]', 244, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 480, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7172, '["LandRover_CZ_EP1",2]', 13, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7173, '["LandRover_TK_CIV_EP1",2]', 9, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 598, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7180, '["LandRover_CZ_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7181, '["LandRover_TK_CIV_EP1",2]', 10, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 599, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7188, '["LandRover_CZ_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7189, '["LandRover_TK_CIV_EP1",2]', 11, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 658, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7190, '["1Rnd_HE_M203",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 529, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7191, '["ItemFuelBarrel",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7192, '["ItemFuelBarrelEmpty",1]', 253, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 509, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7201, '["ItemFuelBarrel",1]', 249, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7202, '["ItemFuelBarrelEmpty",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 531, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7211, '["ItemFuelBarrel",1]', 248, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7212, '["ItemFuelBarrelEmpty",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 664, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7221, '["ItemFuelBarrel",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7222, '["ItemFuelBarrelEmpty",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 677, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7231, '["ItemFuelBarrel",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7232, '["ItemFuelBarrelEmpty",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 682, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7233, '["bulk_ItemTankTrap",1]', 239, '[1,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7240, '["bulk_ItemTankTrap",1]', 250, '[1,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7241, '["bulk_ItemWire",1]', 247, '[3,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7242, '["bulk_PartGeneric",1]', 247, '[6,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7250, '["DZ_Czech_Vest_Puch",2]', 250, '[2,"ItemSilverBar",1]', '[1,"ItemSilverBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(7251, '["DZ_TK_Assault_Pack_EP1",2]', 249, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(7252, '["DZ_TerminalPack_EP1",2]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(7253, '["DZ_GunBag_EP1",2]', 252, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 538, 'trade_backpacks');
INSERT INTO `Traders_DATA` VALUES(7254, '["Skin_SurvivorW3_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 628, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7270, '["Skin_SurvivorW3_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 497, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7302, '["Skin_SurvivorW3_DZ",1]', 251, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 631, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7318, '["Skin_SurvivorW3_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 683, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7334, '["Skin_SurvivorW3_DZ",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 689, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7342, '["bulk_PartGeneric",1]', 243, '[6,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7348, '["bulk_ItemTankTrap",1]', 250, '[1,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7349, '["bulk_ItemWire",1]', 250, '[3,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7350, '["bulk_PartGeneric",1]', 250, '[6,"ItemSilverBar10oz",1]', '[6,"ItemSilverBar10oz",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7355, '["100Rnd_762x51_M240",1]', 240, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 478, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7356, '["20Rnd_762x51_FNFAL",1]', 233, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 478, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7357, '["20Rnd_762x51_SB_SCAR",1]', 242, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 478, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7358, '["5Rnd_86x70_L115A1",1]', 250, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 577, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7359, '["100Rnd_762x51_M240",1]', 250, '[2,"ItemGoldBar",1]', '[1,"ItemGoldBar",1]', 0, 577, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7360, '["20Rnd_762x51_FNFAL",1]', 250, '[4,"ItemSilverBar10oz",1]', '[2,"ItemSilverBar10oz",1]', 0, 577, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7361, '["20Rnd_762x51_SB_SCAR",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 577, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7362, '["BAF_L85A2_RIS_SUSAT",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7363, '["BAF_L85A2_RIS_Holo",3]', 251, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 485, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7364, '["BAF_L85A2_RIS_SUSAT",3]', 251, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7365, '["BAF_L85A2_RIS_Holo",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 602, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7366, '["BAF_L85A2_RIS_SUSAT",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7367, '["BAF_L85A2_RIS_Holo",3]', 250, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 615, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7368, '["BAF_L85A2_RIS_SUSAT",3]', 255, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7369, '["BAF_L85A2_RIS_Holo",3]', 253, '[6,"ItemGoldBar",1]', '[3,"ItemGoldBar",1]', 0, 637, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7370, '["V3S_Civ",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7371, '["V3S_RA_TK_GUE_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7373, '["V3S_TK_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7374, '["UralCivil_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7375, '["UralCivil2_DZE",2]', 1, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7376, '["KamazOpen_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7384, '["V3S_Civ",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7385, '["V3S_RA_TK_GUE_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7386, '["V3S_TK_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7387, '["UralCivil_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7388, '["UralCivil2_DZE",2]', 1, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7389, '["KamazOpen_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7397, '["V3S_Civ",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7398, '["V3S_RA_TK_GUE_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7399, '["V3S_TK_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7400, '["UralCivil_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7401, '["UralCivil2_DZE",2]', 1, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7402, '["KamazOpen_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7410, '["V3S_Civ",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7411, '["V3S_RA_TK_GUE_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7412, '["V3S_TK_EP1_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7413, '["UralCivil_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7414, '["UralCivil2_DZE",2]', 1, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7415, '["KamazOpen_DZE",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7416, '["MTVR",2]', 0, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 653, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7417, '["MtvrRefuel_DZ",2]', 0, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 655, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7431, '["MTVR",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 586, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7445, '["MTVR",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 570, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7473, '["MTVR",2]', 1, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 564, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7474, '["MtvrRefuel_DZ",2]', 0, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 589, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7479, '["MtvrRefuel_DZ",2]', 1, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 595, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7489, '["MtvrRefuel_DZ",2]', 1, '[7,"ItemGoldBar10oz",1]', '[3,"ItemGoldBar10oz",1]', 0, 492, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7490, '["CinderBlocks",1]', 235, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7491, '["PartPlywoodPack",1]', 193, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7492, '["MortarBucket",1]', 246, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7493, '["PartPlankPack",1]', 200, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7494, '["CinderBlocks",1]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7495, '["PartPlywoodPack",1]', 122, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7496, '["MortarBucket",1]', 249, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7497, '["PartPlankPack",1]', 149, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 636, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7498, '["CinderBlocks",1]', 50, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7499, '["PartPlywoodPack",1]', 200, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7500, '["MortarBucket",1]', 50, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7501, '["PartPlankPack",1]', 200, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 675, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7502, '["100Rnd_556x45_BetaCMag",1]', 252, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7503, '["75Rnd_545x39_RPK",1]', 257, '[3,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7504, '["64Rnd_9x19_Bizon",1]', 254, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7505, '["5Rnd_127x108_KSVK",1]', 252, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 527, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7506, '["100Rnd_556x45_BetaCMag",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 453, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7507, '["75Rnd_545x39_RPK",1]', 250, '[3,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 453, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7508, '["64Rnd_9x19_Bizon",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 453, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7509, '["5Rnd_127x108_KSVK",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 453, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7510, '["100Rnd_556x45_BetaCMag",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 456, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7511, '["75Rnd_545x39_RPK",1]', 250, '[3,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 456, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7512, '["64Rnd_9x19_Bizon",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 456, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7513, '["5Rnd_127x108_KSVK",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 456, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7514, '["100Rnd_556x45_BetaCMag",1]', 250, '[6,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 460, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7515, '["75Rnd_545x39_RPK",1]', 250, '[3,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 460, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7516, '["64Rnd_9x19_Bizon",1]', 250, '[1,"ItemSilverBar10oz",1]', '[5,"ItemSilverBar",1]', 0, 460, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7517, '["5Rnd_127x108_KSVK",1]', 250, '[2,"ItemSilverBar10oz",1]', '[1,"ItemSilverBar10oz",1]', 0, 460, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7518, '["M8_SAW",3]', 258, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7519, '["MG36",3]', 253, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7520, '["RPK_74",3]', 260, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7521, '["M60A4_EP1_DZE",3]', 258, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7522, '["m240_scoped_EP1_DZE",3]', 257, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7523, '["M249_m145_EP1_DZE",3]', 260, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7524, '["MG36_camo",3]', 256, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7525, '["bizon",3]', 260, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7526, '["M4A1_HWS_GL_SD_Camo",3]', 248, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7527, '["KSVK_DZE",3]', 255, '[3,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 526, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7528, '["M8_SAW",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7529, '["MG36",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7530, '["RPK_74",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7531, '["M60A4_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7532, '["m240_scoped_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7533, '["M249_m145_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7534, '["MG36_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7535, '["bizon",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7536, '["M4A1_HWS_GL_SD_Camo",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7537, '["KSVK_DZE",3]', 250, '[3,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 452, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7538, '["M8_SAW",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7539, '["MG36",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7540, '["RPK_74",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7541, '["M60A4_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7542, '["m240_scoped_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7543, '["M249_m145_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7544, '["MG36_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7545, '["bizon",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7546, '["M4A1_HWS_GL_SD_Camo",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7547, '["KSVK_DZE",3]', 250, '[3,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 455, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7548, '["M8_SAW",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7549, '["MG36",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7550, '["RPK_74",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7551, '["M60A4_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7552, '["m240_scoped_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7553, '["M249_m145_EP1_DZE",3]', 250, '[2,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7554, '["MG36_camo",3]', 250, '[1,"ItemGoldBar10oz",1]', '[6,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7555, '["bizon",3]', 250, '[1,"ItemGoldBar10oz",1]', '[5,"ItemGoldBar",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7556, '["M4A1_HWS_GL_SD_Camo",3]', 250, '[2,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7557, '["KSVK_DZE",3]', 250, '[3,"ItemGoldBar10oz",1]', '[1,"ItemGoldBar10oz",1]', 0, 459, 'trade_weapons');
INSERT INTO `Traders_DATA` VALUES(7558, '["HandGrenade_east",1]', 257, '[4,"ItemGoldBar",1]', '[2,"ItemGoldBar",1]', 0, 529, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7565, '["bulk_ItemWire",1]', 250, '[3,"ItemSilverBar10oz",1]', '[3,"ItemSilverBar10oz",1]', 0, 555, 'trade_items');
INSERT INTO `Traders_DATA` VALUES(7571, '["BAF_Merlin_DZE",2]', 261, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 519, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7573, '["MH60S_DZE",2]', 10, '[4,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT INTO `Traders_DATA` VALUES(7574, '["MH60S_DZE",2]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `trader_tids`
--

DROP TABLE IF EXISTS `trader_tids`;
CREATE TABLE IF NOT EXISTS `trader_tids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `trader` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=693 ;

--
-- Dumping data for table `trader_tids`
--

INSERT INTO `trader_tids` VALUES(1, 'Sidearm', 1);
INSERT INTO `trader_tids` VALUES(2, 'Rifles', 1);
INSERT INTO `trader_tids` VALUES(3, 'Shotguns and Single-shot', 1);
INSERT INTO `trader_tids` VALUES(4, 'Sidearm', 2);
INSERT INTO `trader_tids` VALUES(5, 'Rifles', 2);
INSERT INTO `trader_tids` VALUES(6, 'Shotguns and Single-shot', 2);
INSERT INTO `trader_tids` VALUES(7, 'Vehicle Parts', 3);
INSERT INTO `trader_tids` VALUES(8, 'Building Supplies', 3);
INSERT INTO `trader_tids` VALUES(11, 'Vehicle Parts', 4);
INSERT INTO `trader_tids` VALUES(12, 'Building Supplies', 4);
INSERT INTO `trader_tids` VALUES(13, 'Food and Drinks', 5);
INSERT INTO `trader_tids` VALUES(14, 'Backpacks', 5);
INSERT INTO `trader_tids` VALUES(15, 'Toolbelt Items', 5);
INSERT INTO `trader_tids` VALUES(16, 'Clothes', 5);
INSERT INTO `trader_tids` VALUES(17, 'Food and Drinks', 6);
INSERT INTO `trader_tids` VALUES(18, 'Backpacks', 6);
INSERT INTO `trader_tids` VALUES(19, 'Toolbelt Items', 6);
INSERT INTO `trader_tids` VALUES(20, 'Clothes', 6);
INSERT INTO `trader_tids` VALUES(21, 'Food and Drinks', 7);
INSERT INTO `trader_tids` VALUES(22, 'Backpacks', 7);
INSERT INTO `trader_tids` VALUES(23, 'Toolbelt Items', 7);
INSERT INTO `trader_tids` VALUES(24, 'Clothes', 7);
INSERT INTO `trader_tids` VALUES(25, 'Sidearm Ammo', 8);
INSERT INTO `trader_tids` VALUES(26, 'Rifle Ammo', 8);
INSERT INTO `trader_tids` VALUES(27, 'Shotguns and Single-shot', 8);
INSERT INTO `trader_tids` VALUES(28, 'Sidearm Ammo', 9);
INSERT INTO `trader_tids` VALUES(29, 'Rifle Ammo', 9);
INSERT INTO `trader_tids` VALUES(30, 'Shotguns and Single-shot', 9);
INSERT INTO `trader_tids` VALUES(31, 'Assault Rifle Ammo', 10);
INSERT INTO `trader_tids` VALUES(32, 'Machine Gun Ammo', 10);
INSERT INTO `trader_tids` VALUES(33, 'Sniper Rifle Ammo', 10);
INSERT INTO `trader_tids` VALUES(34, 'Cars', 11);
INSERT INTO `trader_tids` VALUES(35, 'Trucks Unarmed', 11);
INSERT INTO `trader_tids` VALUES(36, 'SUV', 11);
INSERT INTO `trader_tids` VALUES(37, 'Vans', 11);
INSERT INTO `trader_tids` VALUES(38, 'Bikes and ATV', 11);
INSERT INTO `trader_tids` VALUES(39, 'Helicopter Unarmed', 11);
INSERT INTO `trader_tids` VALUES(40, 'Military Unarmed', 11);
INSERT INTO `trader_tids` VALUES(41, 'Trucks Armed', 12);
INSERT INTO `trader_tids` VALUES(42, 'UAZ', 12);
INSERT INTO `trader_tids` VALUES(43, 'Helicopter Armed', 12);
INSERT INTO `trader_tids` VALUES(44, 'Military Armed', 12);
INSERT INTO `trader_tids` VALUES(45, 'Fuel Trucks', 12);
INSERT INTO `trader_tids` VALUES(46, 'Heavy Armor Unarmed', 12);
INSERT INTO `trader_tids` VALUES(47, 'Medical Supplies', 13);
INSERT INTO `trader_tids` VALUES(48, 'Chem-lites/Flares', 13);
INSERT INTO `trader_tids` VALUES(49, 'Smoke Grenades', 13);
INSERT INTO `trader_tids` VALUES(50, 'Medical Supplies', 14);
INSERT INTO `trader_tids` VALUES(51, 'Chem-lites/Flares', 14);
INSERT INTO `trader_tids` VALUES(52, 'Smoke Grenades', 14);
INSERT INTO `trader_tids` VALUES(53, 'Clothes', 15);
INSERT INTO `trader_tids` VALUES(54, 'Boats Unarmed', 16);
INSERT INTO `trader_tids` VALUES(55, 'Boats Armed', 16);
INSERT INTO `trader_tids` VALUES(57, 'Assault Rifle', 17);
INSERT INTO `trader_tids` VALUES(58, 'Machine Gun', 17);
INSERT INTO `trader_tids` VALUES(59, 'Sniper Rifle', 17);
INSERT INTO `trader_tids` VALUES(60, 'Explosives', 17);
INSERT INTO `trader_tids` VALUES(63, 'Vehicle Parts', 38);
INSERT INTO `trader_tids` VALUES(64, 'Building Supplies', 38);
INSERT INTO `trader_tids` VALUES(65, 'Medical Supplies', 39);
INSERT INTO `trader_tids` VALUES(66, 'Clothes', 39);
INSERT INTO `trader_tids` VALUES(67, 'Chem lights/Flares', 39);
INSERT INTO `trader_tids` VALUES(68, 'Smoke Grenades', 39);
INSERT INTO `trader_tids` VALUES(70, 'Food/Drink', 40);
INSERT INTO `trader_tids` VALUES(72, 'Backpacks', 40);
INSERT INTO `trader_tids` VALUES(73, 'Clothes', 40);
INSERT INTO `trader_tids` VALUES(74, 'Toolbelt Items', 40);
INSERT INTO `trader_tids` VALUES(76, 'Vehicle Parts', 42);
INSERT INTO `trader_tids` VALUES(77, 'Building Supplies', 42);
INSERT INTO `trader_tids` VALUES(78, 'Demolition Supplies', 42);
INSERT INTO `trader_tids` VALUES(79, 'Food/Drink', 43);
INSERT INTO `trader_tids` VALUES(80, 'Backpacks', 43);
INSERT INTO `trader_tids` VALUES(81, 'Clothes', 43);
INSERT INTO `trader_tids` VALUES(82, 'Toolbelt Items', 43);
INSERT INTO `trader_tids` VALUES(85, 'Fishing boats', 45);
INSERT INTO `trader_tids` VALUES(86, 'PBX', 45);
INSERT INTO `trader_tids` VALUES(87, 'Tour boats', 46);
INSERT INTO `trader_tids` VALUES(88, 'PBX', 46);
INSERT INTO `trader_tids` VALUES(89, 'Armed Boats', 47);
INSERT INTO `trader_tids` VALUES(90, 'Tracked Vehicles', 48);
INSERT INTO `trader_tids` VALUES(91, 'Armed Vehicles', 48);
INSERT INTO `trader_tids` VALUES(92, 'Fuel Trucks', 48);
INSERT INTO `trader_tids` VALUES(93, 'Armored Vehicles', 48);
INSERT INTO `trader_tids` VALUES(94, 'Vehicle Parts', 49);
INSERT INTO `trader_tids` VALUES(95, 'Building Supplies', 49);
INSERT INTO `trader_tids` VALUES(96, 'Food/Drink', 50);
INSERT INTO `trader_tids` VALUES(97, 'Backpacks', 50);
INSERT INTO `trader_tids` VALUES(98, 'Toolbelt Items', 50);
INSERT INTO `trader_tids` VALUES(99, 'Clothes', 50);
INSERT INTO `trader_tids` VALUES(100, 'Armed Choppers', 51);
INSERT INTO `trader_tids` VALUES(101, 'Unarmed Choppers', 51);
INSERT INTO `trader_tids` VALUES(102, 'Pistol Ammo', 52);
INSERT INTO `trader_tids` VALUES(103, 'Assault Ammo', 52);
INSERT INTO `trader_tids` VALUES(104, 'Heavy Ammo', 52);
INSERT INTO `trader_tids` VALUES(105, 'Sniper Ammo', 52);
INSERT INTO `trader_tids` VALUES(106, 'Pistols', 53);
INSERT INTO `trader_tids` VALUES(107, 'Assault Rifles', 53);
INSERT INTO `trader_tids` VALUES(108, 'Heavy Machine Guns', 53);
INSERT INTO `trader_tids` VALUES(109, 'Sniper Rifles', 53);
INSERT INTO `trader_tids` VALUES(110, 'Offroad Trucks', 54);
INSERT INTO `trader_tids` VALUES(111, 'Food/Drinks', 55);
INSERT INTO `trader_tids` VALUES(112, 'Clothes', 55);
INSERT INTO `trader_tids` VALUES(113, 'ATV''s', 56);
INSERT INTO `trader_tids` VALUES(114, 'Dirt Bikes', 56);
INSERT INTO `trader_tids` VALUES(115, 'Trucks Armed', 57);
INSERT INTO `trader_tids` VALUES(116, 'Trucks Unarmed', 57);
INSERT INTO `trader_tids` VALUES(117, 'Cars', 57);
INSERT INTO `trader_tids` VALUES(118, 'Waggons', 57);
INSERT INTO `trader_tids` VALUES(119, 'Bus', 57);
INSERT INTO `trader_tids` VALUES(120, 'SUV''s', 48);
INSERT INTO `trader_tids` VALUES(121, 'Pistols', 58);
INSERT INTO `trader_tids` VALUES(122, 'Assault Rifles', 58);
INSERT INTO `trader_tids` VALUES(123, 'Sniper Rifles', 58);
INSERT INTO `trader_tids` VALUES(124, 'Pistol Ammo', 59);
INSERT INTO `trader_tids` VALUES(125, 'Assault Ammo', 59);
INSERT INTO `trader_tids` VALUES(126, 'Sniper Ammo', 59);
INSERT INTO `trader_tids` VALUES(128, 'Vehicle Parts', 61);
INSERT INTO `trader_tids` VALUES(129, 'Vehicle Parts', 62);
INSERT INTO `trader_tids` VALUES(130, 'Clothes', 20);
INSERT INTO `trader_tids` VALUES(131, 'Weapons', 20);
INSERT INTO `trader_tids` VALUES(132, 'Vehicles', 20);
INSERT INTO `trader_tids` VALUES(133, 'Assault Rifle', 21);
INSERT INTO `trader_tids` VALUES(134, 'Machine Gun', 21);
INSERT INTO `trader_tids` VALUES(135, 'Sniper Rifle', 21);
INSERT INTO `trader_tids` VALUES(136, 'Explosives', 21);
INSERT INTO `trader_tids` VALUES(137, 'Assault Rifle Ammo', 22);
INSERT INTO `trader_tids` VALUES(138, 'Machine Gun Ammo', 22);
INSERT INTO `trader_tids` VALUES(139, 'Sniper Rifle Ammo', 22);
INSERT INTO `trader_tids` VALUES(140, 'Food and Drinks', 23);
INSERT INTO `trader_tids` VALUES(141, 'Backpacks', 23);
INSERT INTO `trader_tids` VALUES(142, 'Toolbelt Items', 23);
INSERT INTO `trader_tids` VALUES(143, 'Clothes', 23);
INSERT INTO `trader_tids` VALUES(144, 'Vehicle Parts', 24);
INSERT INTO `trader_tids` VALUES(145, 'Building Supplies', 24);
INSERT INTO `trader_tids` VALUES(146, 'Medical Supplies', 25);
INSERT INTO `trader_tids` VALUES(147, 'Chem-lites/Flares', 25);
INSERT INTO `trader_tids` VALUES(148, 'Smoke Grenades', 25);
INSERT INTO `trader_tids` VALUES(149, 'Trucks Armed', 26);
INSERT INTO `trader_tids` VALUES(150, 'UAZ', 26);
INSERT INTO `trader_tids` VALUES(151, 'Helicopter Armed', 26);
INSERT INTO `trader_tids` VALUES(152, 'Military Armed', 26);
INSERT INTO `trader_tids` VALUES(153, 'Fuel Trucks', 26);
INSERT INTO `trader_tids` VALUES(154, 'Heavy Armor Unarmed', 26);
INSERT INTO `trader_tids` VALUES(155, 'Vehicle Parts', 27);
INSERT INTO `trader_tids` VALUES(156, 'Building Supplies', 27);
INSERT INTO `trader_tids` VALUES(157, 'Sidearm', 28);
INSERT INTO `trader_tids` VALUES(158, 'Rifles', 28);
INSERT INTO `trader_tids` VALUES(159, 'Shotguns and Single-shot', 28);
INSERT INTO `trader_tids` VALUES(160, 'Sidearm Ammo', 29);
INSERT INTO `trader_tids` VALUES(161, 'Rifle Ammo', 29);
INSERT INTO `trader_tids` VALUES(162, 'Shotguns and Single-shot', 29);
INSERT INTO `trader_tids` VALUES(163, 'Food and Drinks', 30);
INSERT INTO `trader_tids` VALUES(164, 'Backpacks', 30);
INSERT INTO `trader_tids` VALUES(165, 'Toolbelt Items', 30);
INSERT INTO `trader_tids` VALUES(166, 'Clothes', 30);
INSERT INTO `trader_tids` VALUES(167, 'Medical Supplies', 31);
INSERT INTO `trader_tids` VALUES(168, 'Chem-lites/Flares', 31);
INSERT INTO `trader_tids` VALUES(169, 'Smoke Grenades', 31);
INSERT INTO `trader_tids` VALUES(170, 'Cars', 32);
INSERT INTO `trader_tids` VALUES(171, 'Trucks Unarmed', 32);
INSERT INTO `trader_tids` VALUES(172, 'SUV', 32);
INSERT INTO `trader_tids` VALUES(173, 'Buses and Vans', 32);
INSERT INTO `trader_tids` VALUES(174, 'Bikes and ATV', 32);
INSERT INTO `trader_tids` VALUES(175, 'Helicopter Unarmed', 32);
INSERT INTO `trader_tids` VALUES(176, 'Military Unarmed', 32);
INSERT INTO `trader_tids` VALUES(177, 'Vehicle Parts', 33);
INSERT INTO `trader_tids` VALUES(178, 'Building Supplies', 33);
INSERT INTO `trader_tids` VALUES(179, 'Food and Drinks', 34);
INSERT INTO `trader_tids` VALUES(180, 'Backpacks', 34);
INSERT INTO `trader_tids` VALUES(181, 'Toolbelt Items', 34);
INSERT INTO `trader_tids` VALUES(182, 'Clothes', 34);
INSERT INTO `trader_tids` VALUES(185, 'Airplanes', 37);
INSERT INTO `trader_tids` VALUES(186, 'Weapons', 15);
INSERT INTO `trader_tids` VALUES(187, 'Vehicles', 15);
INSERT INTO `trader_tids` VALUES(188, 'Food/Drinks', 63);
INSERT INTO `trader_tids` VALUES(189, 'Backpacks', 63);
INSERT INTO `trader_tids` VALUES(190, 'Toolbelt Items', 63);
INSERT INTO `trader_tids` VALUES(191, 'Clothes', 63);
INSERT INTO `trader_tids` VALUES(192, 'Cargo Planes', 64);
INSERT INTO `trader_tids` VALUES(193, 'Medical Supplies', 66);
INSERT INTO `trader_tids` VALUES(194, 'Cars', 65);
INSERT INTO `trader_tids` VALUES(195, 'Food/Drinks', 67);
INSERT INTO `trader_tids` VALUES(196, 'Backpacks', 67);
INSERT INTO `trader_tids` VALUES(197, 'Toolbelt Items', 67);
INSERT INTO `trader_tids` VALUES(198, 'Clothes', 67);
INSERT INTO `trader_tids` VALUES(199, 'Cars', 68);
INSERT INTO `trader_tids` VALUES(200, 'Trucks Unarmed', 68);
INSERT INTO `trader_tids` VALUES(201, 'Trucks Armed', 68);
INSERT INTO `trader_tids` VALUES(202, 'Military Unarmed', 68);
INSERT INTO `trader_tids` VALUES(203, 'UAZ', 68);
INSERT INTO `trader_tids` VALUES(204, 'Helicopters Unarmed', 68);
INSERT INTO `trader_tids` VALUES(205, 'Pistol Ammo', 69);
INSERT INTO `trader_tids` VALUES(206, 'Rifle Ammo', 69);
INSERT INTO `trader_tids` VALUES(207, 'Heavy Ammo', 69);
INSERT INTO `trader_tids` VALUES(208, 'Sniper Ammo', 69);
INSERT INTO `trader_tids` VALUES(209, 'Pistols', 70);
INSERT INTO `trader_tids` VALUES(210, 'Rifles', 70);
INSERT INTO `trader_tids` VALUES(211, 'Heavy Machine Guns', 70);
INSERT INTO `trader_tids` VALUES(212, 'Sniper Rifles', 70);
INSERT INTO `trader_tids` VALUES(213, 'Vehicle Parts', 71);
INSERT INTO `trader_tids` VALUES(214, 'Building Supplies', 71);
INSERT INTO `trader_tids` VALUES(215, 'Explosives', 71);
INSERT INTO `trader_tids` VALUES(216, 'Armored Vehicles', 72);
INSERT INTO `trader_tids` VALUES(217, 'SUV', 72);
INSERT INTO `trader_tids` VALUES(218, 'ATV/Motorcycles ', 72);
INSERT INTO `trader_tids` VALUES(219, 'Bus/Van/Bikes', 72);
INSERT INTO `trader_tids` VALUES(220, 'Armed Choppers', 72);
INSERT INTO `trader_tids` VALUES(221, 'Medical Supplies', 73);
INSERT INTO `trader_tids` VALUES(222, 'Chemlights/Flares', 73);
INSERT INTO `trader_tids` VALUES(223, 'Smoke Grenades', 73);
INSERT INTO `trader_tids` VALUES(224, 'Food/Drinks', 74);
INSERT INTO `trader_tids` VALUES(225, 'Backpacks', 74);
INSERT INTO `trader_tids` VALUES(226, 'Toolbelt Items', 74);
INSERT INTO `trader_tids` VALUES(227, 'Clothes', 74);
INSERT INTO `trader_tids` VALUES(228, 'Pistol Ammo', 76);
INSERT INTO `trader_tids` VALUES(229, 'Rifle Ammo', 76);
INSERT INTO `trader_tids` VALUES(230, 'Heavy Ammo', 76);
INSERT INTO `trader_tids` VALUES(231, 'Sniper Ammo', 76);
INSERT INTO `trader_tids` VALUES(232, 'Pistols', 77);
INSERT INTO `trader_tids` VALUES(233, 'Rifles', 77);
INSERT INTO `trader_tids` VALUES(234, 'Heavy Machine Guns', 77);
INSERT INTO `trader_tids` VALUES(235, 'Sniper Rifles', 77);
INSERT INTO `trader_tids` VALUES(236, 'Clothes', 78);
INSERT INTO `trader_tids` VALUES(237, 'Weapons', 78);
INSERT INTO `trader_tids` VALUES(238, 'Vehicles', 78);
INSERT INTO `trader_tids` VALUES(239, 'Armed Choppers', 79);
INSERT INTO `trader_tids` VALUES(241, 'Assault Rifle', 80);
INSERT INTO `trader_tids` VALUES(242, 'Pistols', 80);
INSERT INTO `trader_tids` VALUES(243, 'Heavy Machine Guns', 80);
INSERT INTO `trader_tids` VALUES(244, 'Sniper Rifles', 80);
INSERT INTO `trader_tids` VALUES(245, 'Assault Ammo', 81);
INSERT INTO `trader_tids` VALUES(246, 'Pistol Ammo', 81);
INSERT INTO `trader_tids` VALUES(247, 'Heavy Ammo', 81);
INSERT INTO `trader_tids` VALUES(248, 'Sniper Rifle Ammo', 81);
INSERT INTO `trader_tids` VALUES(249, 'Helicopter Unarmed', 82);
INSERT INTO `trader_tids` VALUES(250, 'Building Supplies', 83);
INSERT INTO `trader_tids` VALUES(251, 'PBX', 84);
INSERT INTO `trader_tids` VALUES(254, 'Boats Unarmed', 84);
INSERT INTO `trader_tids` VALUES(257, 'Clothes', 86);
INSERT INTO `trader_tids` VALUES(258, 'Weapons', 86);
INSERT INTO `trader_tids` VALUES(259, 'Military Armed', 87);
INSERT INTO `trader_tids` VALUES(260, 'Toolbelt Items', 83);
INSERT INTO `trader_tids` VALUES(261, 'Vehicle Parts', 83);
INSERT INTO `trader_tids` VALUES(262, 'Medical Supplies', 88);
INSERT INTO `trader_tids` VALUES(264, 'Chem-lites/Flares', 88);
INSERT INTO `trader_tids` VALUES(265, 'Smoke Grenades', 88);
INSERT INTO `trader_tids` VALUES(266, 'Medical Supplies', 89);
INSERT INTO `trader_tids` VALUES(267, 'Chem-lites/Flares', 89);
INSERT INTO `trader_tids` VALUES(268, 'Airplanes', 90);
INSERT INTO `trader_tids` VALUES(269, 'Smoke Grenades', 89);
INSERT INTO `trader_tids` VALUES(270, 'Building Supplies', 91);
INSERT INTO `trader_tids` VALUES(271, 'Vehicle Parts', 91);
INSERT INTO `trader_tids` VALUES(272, 'Cars', 92);
INSERT INTO `trader_tids` VALUES(273, 'Bus/Van/Bikes', 92);
INSERT INTO `trader_tids` VALUES(274, 'Trucks Unarmed', 92);
INSERT INTO `trader_tids` VALUES(275, 'Trucks Armed', 92);
INSERT INTO `trader_tids` VALUES(276, 'Backpacks', 93);
INSERT INTO `trader_tids` VALUES(277, 'Food/Drinks', 93);
INSERT INTO `trader_tids` VALUES(278, 'Food and Drinks', 93);
INSERT INTO `trader_tids` VALUES(279, 'Toolbelt Items', 93);
INSERT INTO `trader_tids` VALUES(280, 'Backpacks', 94);
INSERT INTO `trader_tids` VALUES(281, 'Clothes', 94);
INSERT INTO `trader_tids` VALUES(282, 'Food and Drinks', 94);
INSERT INTO `trader_tids` VALUES(283, 'Toolbelt Items', 94);
INSERT INTO `trader_tids` VALUES(284, 'Medical Supplies', 95);
INSERT INTO `trader_tids` VALUES(285, 'Assault Rifle', 96);
INSERT INTO `trader_tids` VALUES(286, 'Pistols', 96);
INSERT INTO `trader_tids` VALUES(287, 'Sniper Rifles', 96);
INSERT INTO `trader_tids` VALUES(288, 'Assault Rifle Ammo', 97);
INSERT INTO `trader_tids` VALUES(289, 'Pistol Ammo', 97);
INSERT INTO `trader_tids` VALUES(290, 'Boats Armed', 98);
INSERT INTO `trader_tids` VALUES(291, 'Backpacks', 99);
INSERT INTO `trader_tids` VALUES(292, 'Armed Choppers', 100);
INSERT INTO `trader_tids` VALUES(293, 'Helicopter Unarmed', 100);
INSERT INTO `trader_tids` VALUES(294, 'Building Supplies', 101);
INSERT INTO `trader_tids` VALUES(295, 'Vehicle Parts', 101);
INSERT INTO `trader_tids` VALUES(297, 'Safes', 86);
INSERT INTO `trader_tids` VALUES(298, 'Food/Drinks', 99);
INSERT INTO `trader_tids` VALUES(299, 'Toolbelt Items', 99);
INSERT INTO `trader_tids` VALUES(300, 'Fuel Trucks', 87);
INSERT INTO `trader_tids` VALUES(301, 'Clothes', 99);
INSERT INTO `trader_tids` VALUES(302, 'Sniper Rifle Ammo', 97);
INSERT INTO `trader_tids` VALUES(303, 'Airplanes', 103);
INSERT INTO `trader_tids` VALUES(304, 'ATV/Motorcycles ', 92);
INSERT INTO `trader_tids` VALUES(305, 'UAZ', 92);
INSERT INTO `trader_tids` VALUES(306, 'Military Unarmed', 87);
INSERT INTO `trader_tids` VALUES(307, 'SUV', 92);
INSERT INTO `trader_tids` VALUES(308, 'Military Unarmed', 48);
INSERT INTO `trader_tids` VALUES(309, 'Vehicle Parts', 104);
INSERT INTO `trader_tids` VALUES(310, 'Building Supplies', 104);
INSERT INTO `trader_tids` VALUES(311, 'Toolbelt Items', 104);
INSERT INTO `trader_tids` VALUES(312, 'Food/Drinks', 105);
INSERT INTO `trader_tids` VALUES(313, 'Clothes', 105);
INSERT INTO `trader_tids` VALUES(314, 'Backpacks', 105);
INSERT INTO `trader_tids` VALUES(315, 'Food/Drinks', 106);
INSERT INTO `trader_tids` VALUES(316, 'Clothes', 106);
INSERT INTO `trader_tids` VALUES(317, 'Backpacks', 106);
INSERT INTO `trader_tids` VALUES(318, 'Medical Supplies', 107);
INSERT INTO `trader_tids` VALUES(319, 'Chem lights/Flares', 107);
INSERT INTO `trader_tids` VALUES(320, 'Pistol Ammo', 108);
INSERT INTO `trader_tids` VALUES(321, 'Rifle Ammo', 108);
INSERT INTO `trader_tids` VALUES(322, 'LMG Ammo', 108);
INSERT INTO `trader_tids` VALUES(323, 'Sniper Ammo', 108);
INSERT INTO `trader_tids` VALUES(324, 'SMG Ammo', 108);
INSERT INTO `trader_tids` VALUES(325, 'Pistols', 109);
INSERT INTO `trader_tids` VALUES(326, 'Assault Rifles', 109);
INSERT INTO `trader_tids` VALUES(327, 'Light Machine Guns', 109);
INSERT INTO `trader_tids` VALUES(328, 'Sniper Rifles', 109);
INSERT INTO `trader_tids` VALUES(330, 'Helicopter Unarmed', 110);
INSERT INTO `trader_tids` VALUES(331, 'Helicopter Armed', 110);
INSERT INTO `trader_tids` VALUES(332, 'Armored Vehicles', 110);
INSERT INTO `trader_tids` VALUES(333, 'Fuel Trucks', 110);
INSERT INTO `trader_tids` VALUES(334, 'URALs', 110);
INSERT INTO `trader_tids` VALUES(335, 'Land Rovers', 110);
INSERT INTO `trader_tids` VALUES(336, 'Pistols', 111);
INSERT INTO `trader_tids` VALUES(337, 'Assault Rifles', 111);
INSERT INTO `trader_tids` VALUES(338, 'Sniper Rifles', 111);
INSERT INTO `trader_tids` VALUES(339, 'Pistol Ammo', 112);
INSERT INTO `trader_tids` VALUES(340, 'Rifle Ammo', 112);
INSERT INTO `trader_tids` VALUES(341, 'LMG Ammo', 112);
INSERT INTO `trader_tids` VALUES(342, 'Sniper Ammo', 112);
INSERT INTO `trader_tids` VALUES(343, 'Helicopter Unarmed', 113);
INSERT INTO `trader_tids` VALUES(344, 'Armed Chopper', 113);
INSERT INTO `trader_tids` VALUES(345, 'Cars', 113);
INSERT INTO `trader_tids` VALUES(346, 'Motorcycles/ATV''s', 113);
INSERT INTO `trader_tids` VALUES(347, 'Boats Unarmed', 114);
INSERT INTO `trader_tids` VALUES(348, 'Boats Armed', 114);
INSERT INTO `trader_tids` VALUES(349, 'ATV/Motorcycles ', 115);
INSERT INTO `trader_tids` VALUES(350, 'Cars', 115);
INSERT INTO `trader_tids` VALUES(351, 'Bus/Van/Bikes', 115);
INSERT INTO `trader_tids` VALUES(352, 'SUV', 115);
INSERT INTO `trader_tids` VALUES(353, 'Trucks Armed', 115);
INSERT INTO `trader_tids` VALUES(354, 'Trucks Unarmed', 115);
INSERT INTO `trader_tids` VALUES(355, 'UAZ', 115);
INSERT INTO `trader_tids` VALUES(356, 'Vehicle Parts', 116);
INSERT INTO `trader_tids` VALUES(357, 'Building Supplies', 116);
INSERT INTO `trader_tids` VALUES(358, 'Toolbelt Items', 116);
INSERT INTO `trader_tids` VALUES(361, 'Weapons', 119);
INSERT INTO `trader_tids` VALUES(362, 'Vehicles', 119);
INSERT INTO `trader_tids` VALUES(363, 'Clothes', 119);
INSERT INTO `trader_tids` VALUES(364, 'Ammunition', 119);
INSERT INTO `trader_tids` VALUES(365, 'Safes', 119);
INSERT INTO `trader_tids` VALUES(366, 'Shotguns and Single-shot', 111);
INSERT INTO `trader_tids` VALUES(367, 'Shotguns and Single-shot Ammo', 112);
INSERT INTO `trader_tids` VALUES(368, 'Sub Machine Guns', 109);
INSERT INTO `trader_tids` VALUES(369, 'Sniper Ammo', 8);
INSERT INTO `trader_tids` VALUES(370, 'Sniper Rifles', 1);
INSERT INTO `trader_tids` VALUES(372, 'Sniper Ammo', 9);
INSERT INTO `trader_tids` VALUES(374, 'Pistol Ammo', 10);
INSERT INTO `trader_tids` VALUES(375, 'Sniper Rifles', 2);
INSERT INTO `trader_tids` VALUES(376, 'Sub Machine Guns', 2);
INSERT INTO `trader_tids` VALUES(377, 'SMG Ammo', 9);
INSERT INTO `trader_tids` VALUES(378, 'SMG Ammo', 10);
INSERT INTO `trader_tids` VALUES(379, 'Sub Machine Guns', 17);
INSERT INTO `trader_tids` VALUES(380, 'Sub Machine Guns', 21);
INSERT INTO `trader_tids` VALUES(381, 'SMG Ammo', 22);
INSERT INTO `trader_tids` VALUES(382, 'Sniper Rifles', 28);
INSERT INTO `trader_tids` VALUES(383, 'Sniper Ammo', 29);
INSERT INTO `trader_tids` VALUES(384, 'Pistols', 21);
INSERT INTO `trader_tids` VALUES(385, 'Pistol Ammo', 22);
INSERT INTO `trader_tids` VALUES(386, 'Airplanes', 120);
INSERT INTO `trader_tids` VALUES(388, 'Attack Choppers', 120);
INSERT INTO `trader_tids` VALUES(389, 'Airplanes', 121);
INSERT INTO `trader_tids` VALUES(391, 'Medical Supplies', 123);
INSERT INTO `trader_tids` VALUES(392, 'LMG Ammo', 124);
INSERT INTO `trader_tids` VALUES(393, 'Pistol Ammo', 124);
INSERT INTO `trader_tids` VALUES(394, 'Rifle Ammo', 124);
INSERT INTO `trader_tids` VALUES(395, 'Shotguns and Single-shot Ammo', 124);
INSERT INTO `trader_tids` VALUES(396, 'Sniper Ammo', 124);
INSERT INTO `trader_tids` VALUES(397, 'Light Machine Guns', 125);
INSERT INTO `trader_tids` VALUES(398, 'Pistols', 125);
INSERT INTO `trader_tids` VALUES(399, 'Assault Rifles', 125);
INSERT INTO `trader_tids` VALUES(400, 'Shotguns and Single-shot', 125);
INSERT INTO `trader_tids` VALUES(401, 'Sniper Rifles', 125);
INSERT INTO `trader_tids` VALUES(402, 'Ammunition', 126);
INSERT INTO `trader_tids` VALUES(403, 'Weapons', 126);
INSERT INTO `trader_tids` VALUES(404, 'Clothes', 126);
INSERT INTO `trader_tids` VALUES(405, 'Vehicles', 126);
INSERT INTO `trader_tids` VALUES(406, 'Safes', 126);
INSERT INTO `trader_tids` VALUES(407, 'LMG Ammo', 127);
INSERT INTO `trader_tids` VALUES(408, 'Pistol Ammo', 127);
INSERT INTO `trader_tids` VALUES(409, 'Rifle Ammo', 127);
INSERT INTO `trader_tids` VALUES(410, 'SMG Ammo', 127);
INSERT INTO `trader_tids` VALUES(411, 'Sniper Ammo', 127);
INSERT INTO `trader_tids` VALUES(412, 'Light Machine Guns', 128);
INSERT INTO `trader_tids` VALUES(413, 'Pistols', 128);
INSERT INTO `trader_tids` VALUES(414, 'Assault Rifles', 128);
INSERT INTO `trader_tids` VALUES(415, 'Sub Machine Guns', 128);
INSERT INTO `trader_tids` VALUES(416, 'Sniper Rifles', 128);
INSERT INTO `trader_tids` VALUES(417, 'Bus/Van/Bikes', 129);
INSERT INTO `trader_tids` VALUES(418, 'ATV/Motorcycles ', 129);
INSERT INTO `trader_tids` VALUES(419, 'Cars', 129);
INSERT INTO `trader_tids` VALUES(420, 'Trucks Armed', 129);
INSERT INTO `trader_tids` VALUES(421, 'UAZ', 129);
INSERT INTO `trader_tids` VALUES(422, 'Boats Unarmed', 130);
INSERT INTO `trader_tids` VALUES(423, 'Boats Armed', 130);
INSERT INTO `trader_tids` VALUES(424, 'Vehicles', 131);
INSERT INTO `trader_tids` VALUES(425, 'Attack Choppers', 131);
INSERT INTO `trader_tids` VALUES(426, 'Airplanes', 132);
INSERT INTO `trader_tids` VALUES(427, 'Medical Supplies', 133);
INSERT INTO `trader_tids` VALUES(428, 'Cars', 134);
INSERT INTO `trader_tids` VALUES(429, 'Fuel Trucks', 134);
INSERT INTO `trader_tids` VALUES(430, 'Chem lights/Flares', 133);
INSERT INTO `trader_tids` VALUES(431, 'SUV', 134);
INSERT INTO `trader_tids` VALUES(432, 'URALs', 134);
INSERT INTO `trader_tids` VALUES(433, 'Armored Vehicles', 134);
INSERT INTO `trader_tids` VALUES(434, 'Land Rovers', 134);
INSERT INTO `trader_tids` VALUES(435, 'Food/Drinks', 135);
INSERT INTO `trader_tids` VALUES(436, 'Backpacks', 135);
INSERT INTO `trader_tids` VALUES(437, 'Clothes', 135);
INSERT INTO `trader_tids` VALUES(438, 'Vehicle Parts', 136);
INSERT INTO `trader_tids` VALUES(439, 'Building Supplies', 136);
INSERT INTO `trader_tids` VALUES(440, 'Toolbelt Items', 136);
INSERT INTO `trader_tids` VALUES(442, 'Food/Drinks', 138);
INSERT INTO `trader_tids` VALUES(443, 'Chem lights/Flares', 123);
INSERT INTO `trader_tids` VALUES(444, 'Backpacks', 138);
INSERT INTO `trader_tids` VALUES(445, 'Clothes', 138);
INSERT INTO `trader_tids` VALUES(446, 'Vehicle Parts', 139);
INSERT INTO `trader_tids` VALUES(447, 'Building Supplies', 139);
INSERT INTO `trader_tids` VALUES(448, 'Toolbelt Items', 139);
INSERT INTO `trader_tids` VALUES(449, 'Armed Chopper', 121);
INSERT INTO `trader_tids` VALUES(450, 'Helicopter Unarmed', 121);
INSERT INTO `trader_tids` VALUES(451, 'Helicopter Unarmed', 132);
INSERT INTO `trader_tids` VALUES(452, 'Black Market Weapons', 140);
INSERT INTO `trader_tids` VALUES(453, 'Black Market Ammo', 140);
INSERT INTO `trader_tids` VALUES(454, 'Pistols', 17);
INSERT INTO `trader_tids` VALUES(455, 'Black Market Weapons', 141);
INSERT INTO `trader_tids` VALUES(456, 'Black Market Ammo', 141);
INSERT INTO `trader_tids` VALUES(457, 'Ammunition', 15);
INSERT INTO `trader_tids` VALUES(458, 'Ammunition', 20);
INSERT INTO `trader_tids` VALUES(459, 'Black Market Weapons', 142);
INSERT INTO `trader_tids` VALUES(460, 'Black Market Ammo', 142);
INSERT INTO `trader_tids` VALUES(461, 'URALs', 11);
INSERT INTO `trader_tids` VALUES(462, 'Explosives', 141);
INSERT INTO `trader_tids` VALUES(463, 'Backpacks', 141);
INSERT INTO `trader_tids` VALUES(464, 'Clothing', 141);
INSERT INTO `trader_tids` VALUES(466, 'BMW', 131);
INSERT INTO `trader_tids` VALUES(471, 'Mid Size Cars', 11);
INSERT INTO `trader_tids` VALUES(473, 'Cargo Trucks', 11);
INSERT INTO `trader_tids` VALUES(474, 'Buses', 11);
INSERT INTO `trader_tids` VALUES(475, 'Cargo Vans', 11);
INSERT INTO `trader_tids` VALUES(476, 'Clothes', 143);
INSERT INTO `trader_tids` VALUES(477, 'Weapons', 143);
INSERT INTO `trader_tids` VALUES(478, 'Ammunition', 143);
INSERT INTO `trader_tids` VALUES(479, 'Trucks Armed', 143);
INSERT INTO `trader_tids` VALUES(480, 'Assault Rifle Ammo', 144);
INSERT INTO `trader_tids` VALUES(481, 'Light Machine Gun Ammo', 144);
INSERT INTO `trader_tids` VALUES(482, 'Sniper Rifle Ammo', 144);
INSERT INTO `trader_tids` VALUES(483, 'Submachine Gun Ammo', 144);
INSERT INTO `trader_tids` VALUES(484, 'Pistol Ammo', 144);
INSERT INTO `trader_tids` VALUES(485, 'Assault Rifle', 145);
INSERT INTO `trader_tids` VALUES(486, 'Light Machine Gun', 145);
INSERT INTO `trader_tids` VALUES(487, 'Sniper Rifle', 145);
INSERT INTO `trader_tids` VALUES(488, 'Submachine Guns', 145);
INSERT INTO `trader_tids` VALUES(489, 'Pistols', 145);
INSERT INTO `trader_tids` VALUES(491, 'Military Unarmed', 146);
INSERT INTO `trader_tids` VALUES(492, 'Fuel Trucks', 146);
INSERT INTO `trader_tids` VALUES(493, 'Helicopter Armed', 143);
INSERT INTO `trader_tids` VALUES(495, 'Trucks', 146);
INSERT INTO `trader_tids` VALUES(496, 'Backpacks', 147);
INSERT INTO `trader_tids` VALUES(497, 'Clothes', 147);
INSERT INTO `trader_tids` VALUES(498, 'Drinks', 147);
INSERT INTO `trader_tids` VALUES(508, 'Building Supplies', 150);
INSERT INTO `trader_tids` VALUES(509, 'Vehicle Parts', 150);
INSERT INTO `trader_tids` VALUES(510, 'Toolbelt Items', 150);
INSERT INTO `trader_tids` VALUES(512, 'Helicopter Armed', 151);
INSERT INTO `trader_tids` VALUES(517, 'Airplanes', 152);
INSERT INTO `trader_tids` VALUES(519, 'Helicopter Unarmed', 152);
INSERT INTO `trader_tids` VALUES(520, 'Used Cars', 153);
INSERT INTO `trader_tids` VALUES(526, 'Black Market Weapons', 154);
INSERT INTO `trader_tids` VALUES(527, 'Black Market Ammo', 154);
INSERT INTO `trader_tids` VALUES(529, 'Explosives', 154);
INSERT INTO `trader_tids` VALUES(530, 'Building Supplies', 155);
INSERT INTO `trader_tids` VALUES(531, 'Vehicle Parts', 155);
INSERT INTO `trader_tids` VALUES(532, 'Toolbelt Items', 155);
INSERT INTO `trader_tids` VALUES(534, 'Trucks Armed', 151);
INSERT INTO `trader_tids` VALUES(535, 'Trucks Unarmed', 156);
INSERT INTO `trader_tids` VALUES(536, 'Bikes and ATV', 156);
INSERT INTO `trader_tids` VALUES(538, 'Backpacks', 157);
INSERT INTO `trader_tids` VALUES(541, 'Medical Supplies', 158);
INSERT INTO `trader_tids` VALUES(542, 'Chem-lites/Flares', 158);
INSERT INTO `trader_tids` VALUES(543, 'Smoke Grenades', 158);
INSERT INTO `trader_tids` VALUES(555, 'Wholesale', 161);
INSERT INTO `trader_tids` VALUES(557, 'Boats Unarmed', 164);
INSERT INTO `trader_tids` VALUES(558, 'Boats Armed', 164);
INSERT INTO `trader_tids` VALUES(562, 'Military Armed', 143);
INSERT INTO `trader_tids` VALUES(563, 'Buses and Vans', 146);
INSERT INTO `trader_tids` VALUES(564, 'Cargo Trucks', 146);
INSERT INTO `trader_tids` VALUES(565, 'Utility Vehicles', 146);
INSERT INTO `trader_tids` VALUES(568, 'Utility Vehicles', 156);
INSERT INTO `trader_tids` VALUES(569, 'Military Armed', 151);
INSERT INTO `trader_tids` VALUES(570, 'Cargo Trucks', 156);
INSERT INTO `trader_tids` VALUES(573, 'Shotguns and Single-shot Ammo', 144);
INSERT INTO `trader_tids` VALUES(574, 'Shotguns and Single-shot', 145);
INSERT INTO `trader_tids` VALUES(575, 'Clothing', 151);
INSERT INTO `trader_tids` VALUES(577, 'Ammunition', 151);
INSERT INTO `trader_tids` VALUES(579, 'Packaged Food', 147);
INSERT INTO `trader_tids` VALUES(580, 'Cooked Meats', 147);
INSERT INTO `trader_tids` VALUES(585, 'Used Cars', 146);
INSERT INTO `trader_tids` VALUES(586, 'Cargo Trucks', 153);
INSERT INTO `trader_tids` VALUES(587, 'Bikes and ATV', 153);
INSERT INTO `trader_tids` VALUES(588, 'Buses and Vans', 153);
INSERT INTO `trader_tids` VALUES(589, 'Fuel Trucks', 153);
INSERT INTO `trader_tids` VALUES(590, 'Trucks', 153);
INSERT INTO `trader_tids` VALUES(591, 'Utility Vehicles', 153);
INSERT INTO `trader_tids` VALUES(592, 'Buses and Vans', 156);
INSERT INTO `trader_tids` VALUES(595, 'Fuel Trucks', 156);
INSERT INTO `trader_tids` VALUES(598, 'Military Unarmed', 153);
INSERT INTO `trader_tids` VALUES(599, 'Military Unarmed', 156);
INSERT INTO `trader_tids` VALUES(600, 'Used Cars', 156);
INSERT INTO `trader_tids` VALUES(601, 'Drinks', 157);
INSERT INTO `trader_tids` VALUES(602, 'Assault Rifle', 148);
INSERT INTO `trader_tids` VALUES(603, 'Light Machine Gun', 148);
INSERT INTO `trader_tids` VALUES(604, 'Submachine Guns', 148);
INSERT INTO `trader_tids` VALUES(605, 'Sniper Rifle', 148);
INSERT INTO `trader_tids` VALUES(606, 'Pistols', 148);
INSERT INTO `trader_tids` VALUES(607, 'Shotguns and Single-shot', 148);
INSERT INTO `trader_tids` VALUES(608, 'Bikes and ATV', 146);
INSERT INTO `trader_tids` VALUES(609, 'Assault Rifle Ammo', 149);
INSERT INTO `trader_tids` VALUES(610, 'Light Machine Gun Ammo', 149);
INSERT INTO `trader_tids` VALUES(611, 'Pistol Ammo', 149);
INSERT INTO `trader_tids` VALUES(612, 'Submachine Gun Ammo', 149);
INSERT INTO `trader_tids` VALUES(613, 'Shotguns and Single-shot Ammo', 149);
INSERT INTO `trader_tids` VALUES(614, 'Sniper Rifle Ammo', 149);
INSERT INTO `trader_tids` VALUES(615, 'Assault Rifle', 159);
INSERT INTO `trader_tids` VALUES(616, 'Light Machine Gun', 159);
INSERT INTO `trader_tids` VALUES(617, 'Pistols', 159);
INSERT INTO `trader_tids` VALUES(618, 'Submachine Guns', 159);
INSERT INTO `trader_tids` VALUES(619, 'Sniper Rifle', 159);
INSERT INTO `trader_tids` VALUES(620, 'Shotguns and Single-shot', 159);
INSERT INTO `trader_tids` VALUES(621, 'Assault Rifle Ammo', 160);
INSERT INTO `trader_tids` VALUES(622, 'Light Machine Gun Ammo', 160);
INSERT INTO `trader_tids` VALUES(623, 'Shotguns and Single-shot Ammo', 160);
INSERT INTO `trader_tids` VALUES(624, 'Sniper Rifle Ammo', 160);
INSERT INTO `trader_tids` VALUES(625, 'Pistol Ammo', 160);
INSERT INTO `trader_tids` VALUES(626, 'Submachine Gun Ammo', 160);
INSERT INTO `trader_tids` VALUES(627, 'Weapons', 151);
INSERT INTO `trader_tids` VALUES(628, 'Clothes', 157);
INSERT INTO `trader_tids` VALUES(629, 'Packaged Food', 157);
INSERT INTO `trader_tids` VALUES(630, 'Cooked Meats', 157);
INSERT INTO `trader_tids` VALUES(631, 'Clothes', 162);
INSERT INTO `trader_tids` VALUES(632, 'Backpacks', 162);
INSERT INTO `trader_tids` VALUES(633, 'Drinks', 162);
INSERT INTO `trader_tids` VALUES(634, 'Cooked Meats', 162);
INSERT INTO `trader_tids` VALUES(635, 'Packaged Food', 162);
INSERT INTO `trader_tids` VALUES(636, 'Wholesale', 163);
INSERT INTO `trader_tids` VALUES(637, 'Assault Rifle', 165);
INSERT INTO `trader_tids` VALUES(638, 'Light Machine Gun', 165);
INSERT INTO `trader_tids` VALUES(640, 'Sniper Rifle', 165);
INSERT INTO `trader_tids` VALUES(641, 'Shotguns and Single-shot', 165);
INSERT INTO `trader_tids` VALUES(642, 'Submachine Guns', 165);
INSERT INTO `trader_tids` VALUES(643, 'Assault Rifle Ammo', 166);
INSERT INTO `trader_tids` VALUES(644, 'Light Machine Gun Ammo', 166);
INSERT INTO `trader_tids` VALUES(646, 'Pistol Ammo', 166);
INSERT INTO `trader_tids` VALUES(647, 'Sniper Rifle Ammo', 166);
INSERT INTO `trader_tids` VALUES(648, 'Submachine Gun Ammo', 166);
INSERT INTO `trader_tids` VALUES(649, 'Shotguns and Single-shot Ammo', 166);
INSERT INTO `trader_tids` VALUES(650, 'Bikes and ATV', 167);
INSERT INTO `trader_tids` VALUES(651, 'Buses and Vans', 167);
INSERT INTO `trader_tids` VALUES(653, 'Cargo Trucks', 167);
INSERT INTO `trader_tids` VALUES(655, 'Fuel Trucks', 167);
INSERT INTO `trader_tids` VALUES(658, 'Military Unarmed', 167);
INSERT INTO `trader_tids` VALUES(659, 'Trucks', 167);
INSERT INTO `trader_tids` VALUES(660, 'Used Cars', 167);
INSERT INTO `trader_tids` VALUES(661, 'Utility Vehicles', 167);
INSERT INTO `trader_tids` VALUES(662, 'Building Supplies', 168);
INSERT INTO `trader_tids` VALUES(663, 'Toolbelt Items', 168);
INSERT INTO `trader_tids` VALUES(664, 'Vehicle Parts', 168);
INSERT INTO `trader_tids` VALUES(665, 'Medical Supplies', 169);
INSERT INTO `trader_tids` VALUES(666, 'Chem-lites/Flares', 169);
INSERT INTO `trader_tids` VALUES(668, 'Smoke Grenades', 169);
INSERT INTO `trader_tids` VALUES(669, 'Chem-lites/Flares', 170);
INSERT INTO `trader_tids` VALUES(670, 'Medical Supplies', 170);
INSERT INTO `trader_tids` VALUES(671, 'Smoke Grenades', 170);
INSERT INTO `trader_tids` VALUES(672, 'Boats Unarmed', 171);
INSERT INTO `trader_tids` VALUES(673, 'Boats Armed', 171);
INSERT INTO `trader_tids` VALUES(674, 'Pistols', 165);
INSERT INTO `trader_tids` VALUES(675, 'Wholesale', 172);
INSERT INTO `trader_tids` VALUES(677, 'Vehicle Parts', 173);
INSERT INTO `trader_tids` VALUES(678, 'Building Supplies', 173);
INSERT INTO `trader_tids` VALUES(679, 'Toolbelt Items', 173);
INSERT INTO `trader_tids` VALUES(680, 'Building Supplies', 174);
INSERT INTO `trader_tids` VALUES(681, 'Toolbelt Items', 174);
INSERT INTO `trader_tids` VALUES(682, 'Vehicle Parts', 174);
INSERT INTO `trader_tids` VALUES(683, 'Clothes', 175);
INSERT INTO `trader_tids` VALUES(684, 'Drinks', 175);
INSERT INTO `trader_tids` VALUES(685, 'Backpacks', 175);
INSERT INTO `trader_tids` VALUES(686, 'Cooked Meats', 175);
INSERT INTO `trader_tids` VALUES(687, 'Packaged Food', 175);
INSERT INTO `trader_tids` VALUES(688, 'Backpacks', 176);
INSERT INTO `trader_tids` VALUES(689, 'Clothes', 176);
INSERT INTO `trader_tids` VALUES(690, 'Cooked Meats', 176);
INSERT INTO `trader_tids` VALUES(691, 'Drinks', 176);
INSERT INTO `trader_tids` VALUES(692, 'Packaged Food', 176);

--
-- 1.0.5.1 updates
--

DELETE FROM `Traders_DATA` WHERE `item` = '["ItemFuelBarrelEmpty",1]';
INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["ItemFuelBarrelEmpty",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 675, 'trade_items');
INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["ItemFuelBarrelEmpty",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 636, 'trade_items');
INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["ItemFuelBarrelEmpty",1]', 250, '[1,"ItemGoldBar",1]', '[5,"ItemSilverBar10oz",1]', 0, 555, 'trade_items');

INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["CH53_DZE",1]', 6, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 493, 'trade_any_vehicle');
INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["CH53_DZE",1]', 10, '[3,"ItemBriefcase100oz",1]', '[2,"ItemBriefcase100oz",1]', 0, 512, 'trade_any_vehicle');
INSERT IGNORE INTO `Traders_DATA` VALUES (NULL, '["BAF_Merlin_DZE",1]', 10, '[2,"ItemBriefcase100oz",1]', '[1,"ItemBriefcase100oz",1]', 0, 519, 'trade_any_vehicle');


UPDATE `Traders_DATA` SET `item` = '["C130J_US_EP1_DZ",2]' WHERE `item` = '["C130J_US_EP1",2]';

--
-- Normalize trader stock
--

UPDATE `Traders_DATA` SET `qty` = '10' WHERE `afile` = 'trade_items';
UPDATE `Traders_DATA` SET `qty` = '10' WHERE `afile` = 'trade_weapons';
UPDATE `Traders_DATA` SET `qty` = '10' WHERE `afile` = 'trade_backpacks';
UPDATE `Traders_DATA` SET `qty` = '2' WHERE `afile` = 'trade_any_vehicle';
UPDATE `Traders_DATA` SET `qty` = '2' WHERE `afile` = 'trade_any_boat';
UPDATE `Traders_DATA` SET `qty` = '10' WHERE `afile` = 'trade_any_bicycle';

--
-- Multi Character
--

ALTER TABLE `Character_DATA` ADD COLUMN `Slot` TINYINT UNSIGNED NOT NULL DEFAULT 1 AFTER `PlayerUID`;

--
-- Recommended sql events
--

--
-- http://dayzepoch.com/wiki/index.php?title=Server_Installation_Instructions_Extended
--

-- ----------------------------
-- Function structure for FindVehicleKeysCount
-- ----------------------------
DROP FUNCTION IF EXISTS `FindVehicleKeysCount`;
DELIMITER ;;
CREATE FUNCTION `FindVehicleKeysCount`(`keyId` INT) RETURNS int(11)
BEGIN
    DECLARE totalKeys INT DEFAULT 0;
    DECLARE keyName VARCHAR(32) DEFAULT "";
    DECLARE keysInChar INT DEFAULT 0;
    DECLARE keysInObj INT DEFAULT 0;

    SET keyName = (CASE
        WHEN `keyId` < 2501 THEN CONCAT('ItemKeyGreen', `keyId`)
        WHEN `keyId` < 5001 THEN CONCAT('ItemKeyRed', `keyId` - 2500)
        WHEN `keyId` < 7501 THEN CONCAT('ItemKeyBlue', `keyId` - 5000)
        WHEN `keyId` < 10001 THEN CONCAT('ItemKeyYellow', `keyId` - 7500)
        WHEN `keyId` < 12501 THEN CONCAT('ItemKeyBlack', `keyId` - 10000)
        ELSE 'ERROR'
    END);

    SET keysInChar = (SELECT COUNT(*) FROM `Character_DATA` WHERE `Alive` = '1' AND (`Inventory` LIKE CONCAT('%', keyName, '%') OR `Backpack` LIKE CONCAT('%', keyName, '%')));
    SET keysInObj = (SELECT COUNT(*) FROM `Object_DATA` WHERE `Inventory` LIKE CONCAT('%', keyName, '%'));

    RETURN (keysInChar + keysInObj);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for DeleteNonKeyVehicles
-- Example usage: SELECT DeleteNonKeyVehicles();
-- ----------------------------
DROP FUNCTION IF EXISTS `DeleteNonKeyVehicles`;
DELIMITER ;;
CREATE FUNCTION `DeleteNonKeyVehicles`() RETURNS int(11)
BEGIN
	DELETE FROM
		`Object_DATA`
	WHERE
		`Object_DATA`.`CharacterID` <> 0
		AND `Object_DATA`.`CharacterID` <= 12500
		AND `Object_DATA`.`Classname` NOT LIKE 'Tent%'
		AND `Object_DATA`.`Classname` NOT LIKE '%Locked'
		AND `Object_DATA`.`Classname` NOT LIKE 'Land%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Cinder%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Wood%'
		AND `Object_DATA`.`Classname` NOT LIKE 'Metal%'
		AND `Object_DATA`.`Classname` NOT LIKE '%Storage%'
		AND `Object_DATA`.`Classname` NOT IN ('OutHouse_DZ', 'GunRack_DZ', 'WorkBench_DZ', 'Sandbag1_DZ', 'FireBarrel_DZ', 'DesertCamoNet_DZ', 'StickFence_DZ', 'LightPole_DZ', 'DeerStand_DZ', 'ForestLargeCamoNet_DZ', 'Plastic_Pole_EP1_DZ', 'Hedgehog_DZ', 'FuelPump_DZ', 'Fort_RazorWire', 'SandNest_DZ', 'ForestCamoNet_DZ', 'Fence_corrugated_DZ', 'CanvasHut_DZ', 'Generator_DZ')
		AND FindVehicleKeysCount(Object_DATA.CharacterID) = 0;

	RETURN ROW_COUNT();
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for removeDamagedVehicles
-- ----------------------------
DROP EVENT IF EXISTS `removeDamagedVehicles`;
DELIMITER ;;
CREATE EVENT `removeDamagedVehicles` ON SCHEDULE EVERY 1 DAY COMMENT 'Removes damaged vehicles' DO DELETE FROM `Object_DATA` WHERE Damage = 1
;;
DELIMITER ;

-- ----------------------------
-- Event structure for removeObjectEmpty
-- ----------------------------
DROP EVENT IF EXISTS `removeObjectEmpty`;
DELIMITER ;;
CREATE EVENT `removeObjectEmpty` ON SCHEDULE EVERY 1 DAY COMMENT 'Removes abandoned storage objects and vehicles' DO DELETE FROM `Object_DATA` WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 14 DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 24 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') OR (`Inventory` = '[[[],[]],[[],[]],[[],[]]]') )
;;
DELIMITER ;

-- ----------------------------
-- Event structure for removeObjectOld
-- ----------------------------
DROP EVENT IF EXISTS `removeObjectOld`;
DELIMITER ;;
CREATE EVENT `removeObjectOld` ON SCHEDULE EVERY 1 DAY COMMENT 'Removes old objects and vehicles' DO DELETE FROM `Object_DATA` WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 24 DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 42 DAY)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for setDamageOnAge
-- ----------------------------
DROP EVENT IF EXISTS `setDamageOnAge`;
DELIMITER ;;
CREATE EVENT `setDamageOnAge` ON SCHEDULE EVERY 1 DAY COMMENT 'This sets damage on a wall so that it can be maintained' DO UPDATE `Object_DATA` SET `Damage`=0.1 WHERE `ObjectUID` <> 0 AND `CharacterID` <> 0 AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') )
;;
DELIMITER ;

-- ----------------------------
-- Event structure for updateStockDaily
-- ----------------------------
DROP EVENT IF EXISTS `updateStockDaily`;
DELIMITER ;;
CREATE EVENT `updateStockDaily` ON SCHEDULE EVERY 1 DAY COMMENT 'Updates out of stock vendors' DO UPDATE `Traders_DATA` SET qty=10 WHERE qty=0 AND afile<>'trade_any_vehicle' AND afile<>'trade_any_boat'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for UnlockNonKeyVehicles
-- ----------------------------
DROP EVENT IF EXISTS `UnlockNonKeyVehicles`;
DELIMITER ;;
CREATE EVENT `UnlockNonKeyVehicles` ON SCHEDULE EVERY 1 DAY DO UPDATE
			`Object_DATA`
		SET
			`Object_DATA`.`CharacterID` = 0
		WHERE
			`Object_DATA`.`CharacterID` <> 0
			AND `Object_DATA`.`CharacterID` <= 12500
			AND `Object_DATA`.`Classname` NOT LIKE 'Tent%'
			AND `Object_DATA`.`Classname` NOT LIKE '%Locked'
			AND `Object_DATA`.`Classname` NOT LIKE 'Land%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Cinder%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Wood%'
			AND `Object_DATA`.`Classname` NOT LIKE 'Metal%'
			AND `Object_DATA`.`Classname` NOT LIKE '%Storage%'
			AND `Object_DATA`.`Classname` NOT IN ('OutHouse_DZ', 'GunRack_DZ', 'WorkBench_DZ', 'Sandbag1_DZ', 'FireBarrel_DZ', 'DesertCamoNet_DZ', 'StickFence_DZ', 'LightPole_DZ', 'DeerStand_DZ', 'ForestLargeCamoNet_DZ', 'Plastic_Pole_EP1_DZ', 'Hedgehog_DZ', 'FuelPump_DZ', 'Fort_RazorWire', 'SandNest_DZ', 'ForestCamoNet_DZ', 'Fence_corrugated_DZ', 'CanvasHut_DZ', 'Generator_DZ')
			AND FindVehicleKeysCount(Object_DATA.CharacterID) = 0
;;
DELIMITER ;