UPDATE PseudoYields SET DefaultValue ='1' WHERE PseudoYieldType ='PSEUDOYIELD_GPP_SCIENTIST';
-----------------------------------------------
-- Make Camps keep Forest
-----------------------------------------------
--INSERT INTO Improvement_ValidFeatures (ImprovementType,		FeatureType) VALUES
--									  ('IMPROVEMENT_CAMP',	'FEATURE_FOREST');

UPDATE GlobalParameters SET Value ='5' WHERE Name ='COMBAT_POPULATION_PER_STRENGTH';
UPDATE GlobalParameters SET Value ='5' WHERE Name ='COMBAT_GARRISON_MILITIA_MODIFIER';

-----------------------------------------------
-- Increase lake size 
-----------------------------------------------
UPDATE GlobalParameters SET Value ='14' WHERE Name ='LAKE_MAX_AREA_SIZE'; 

-----------------------------------------------
-- Adjust Start Gold 
-----------------------------------------------
UPDATE StartEras SET Gold = Round(Gold * 10, 0); 

-----------------------------------------------
-- Ajust Population from Water 
-----------------------------------------------
UPDATE GlobalParameters SET Value ='3' WHERE Name ='CITY_AMENITIES_FOR_FREE';
UPDATE GlobalParameters SET Value ='1' WHERE Name ='CITY_POP_PER_AMENITY';
UPDATE GlobalParameters SET Value ='4' WHERE Name ='CITY_POPULATION_RIVER_LAKE';
UPDATE GlobalParameters SET Value ='1' WHERE Name ='CITY_POPULATION_NO_WATER';
UPDATE GlobalParameters SET Value ='2' WHERE Name ='CITY_POPULATION_COAST';
UPDATE GlobalParameters SET Value ='4' WHERE Name ='CITY_POPULATION_AQUEDUCT_MIN';
 
-----------------------------------------------
-- Ajust Start distances 
-----------------------------------------------
UPDATE GlobalParameters SET Value ='8' WHERE Name ='START_DISTANCE_MINOR_CIVILIZATION';
UPDATE GlobalParameters SET Value ='12' WHERE Name ='START_DISTANCE_MAJOR_CIVILIZATION'; 

-----------------------------------------------
-- Increase damage from city capture 
-----------------------------------------------
UPDATE GlobalParameters SET Value ='75' WHERE Name = 'CITY_CAPTURED_DAMAGE_PERCENTAGE';
 
-----------------------------------------------
-- Update Urban Defenses
-----------------------------------------------
UPDATE ModifierArguments SET Value ='450' WHERE ModifierId ='CIVIL_ENGINEERING_URBAN_DEFENSES';

-----------------------------------------------
-- Unit Upgrade Costs
-----------------------------------------------
UPDATE GlobalParameters SET Value ='85' WHERE Name ='UPGRADE_NET_PRODUCTION_PERCENT_COST';

-----------------------------------------------
-- Embark unit changes
-----------------------------------------------
UPDATE Technologies SET EmbarkUnitType='UNIT_BUILDER'	WHERE TechnologyType ='TECH_Exploration';
UPDATE Technologies SET EmbarkUnitType='UNIT_SETTLER'	WHERE TechnologyType ='TECH_SAILING';
UPDATE Technologies SET EmbarkUnitType='UNIT_SCOUT'		WHERE TechnologyType ='TECH_CELESTIAL_NAVIGATION';

------------------------------------------------------------
-- Increase Machine Gun and Slinger Range
------------------------------------------------------------
UPDATE Units SET Range ='2' WHERE UnitType ='UNIT_SLINGER';
UPDATE Units SET Range ='2' WHERE UnitType ='UNIT_MACHINE_GUN';

------------------------------------------------------------
-- National Wonder Changes
------------------------------------------------------------
INSERT INTO Feature_YieldChanges (FeatureType, YieldType, YieldChange) VALUES ('FEATURE_CRATER_LAKE', 'YIELD_FOOD', '2');
INSERT INTO Feature_YieldChanges (FeatureType, YieldType, YieldChange) VALUES ('FEATURE_DEAD_SEA', 'YIELD_FOOD', '1');

------------------------------------------------------------
-- Reduce Science per Pop by 30% & Culture per Pop by 10%
------------------------------------------------------------
UPDATE GlobalParameters SET Value ='40' WHERE Name ='SCIENCE_PERCENTAGE_YIELD_PER_POP';
UPDATE GlobalParameters SET Value ='20' WHERE Name ='CULTURE_PERCENTAGE_YIELD_PER_POP';

------------------------------------------------------------
-- Reduce Science and Culture from City States
------------------------------------------------------------
UPDATE ModifierArguments SET Value = '1' WHERE ModifierID ='MINOR_CIV_SCIENTIFIC_YIELD_FOR_CAPITAL' AND Name ='Amount';
UPDATE ModifierArguments SET Value = '1' WHERE ModifierID ='MINOR_CIV_SCIENTIFIC_YIELD_FOR_CAMPUS' AND Name ='Amount';
UPDATE ModifierArguments SET Value = '1' WHERE ModifierID ='MINOR_CIV_CULTURAL_YIELD_FOR_CAPITAL' AND Name ='Amount';
UPDATE ModifierArguments SET Value = '1' WHERE ModifierID ='MINOR_CIV_CULTURAL_YIELD_FOR_THEATER_DISTRICT' AND Name ='Amount';

------------------------------------------------------------
-- Reduce Great Work Culture
------------------------------------------------------------
UPDATE GreatWork_YieldChanges SET YieldChange = '2' WHERE YieldType = 'YIELD_CULTURE' AND YieldChange ='3';
UPDATE GreatWork_YieldChanges SET YieldChange = '3' WHERE YieldType = 'YIELD_CULTURE' AND YieldChange ='4';

------------------------------------------------------------
-- Reduce Monument Culture
------------------------------------------------------------
UPDATE Building_YieldChanges SET YieldChange ='1' WHERE BuildingType ='BUILDING_MONUMENT' AND YieldType ='YIELD_CULTURE';

-----------------------------------------------
-- Barbarians
-----------------------------------------------
--UPDATE GlobalParameters SET Value ='2' WHERE Name ='BARBARIAN_CAMP_MAX_PER_MAJOR_CIV';
UPDATE GlobalParameters SET Value ='6' WHERE Name ='BARBARIAN_CAMP_MINIMUM_DISTANCE_CITY';
UPDATE GlobalParameters SET Value ='2' WHERE Name ='EXPERIENCE_BARB_SOFT_CAP';
UPDATE GlobalParameters SET Value ='3' WHERE Name ='EXPERIENCE_MAX_BARB_LEVEL';
UPDATE BarbarianTribes SET DefenderTag ='CLASS_HEAVY_CHARIOT' WHERE TribeType ='TRIBE_CAVALRY';
UPDATE BarbarianTribes SET SiegeTag ='CLASS_HEAVY_CAVALRY' WHERE TribeType ='TRIBE_CAVALRY';
UPDATE BarbarianTribes SET DefenderTag ='CLASS_MELEE' WHERE TribeType ='TRIBE_MELEE';
UPDATE BarbarianTribes SET DefenderTag ='CLASS_MELEE' WHERE TribeType ='TRIBE_NAVAL';
UPDATE BarbarianTribes SET RaidingBoldness ='15';
UPDATE BarbarianTribes SET CityAttackBoldness ='30';
UPDATE GlobalParameters SET Value ='70' WHERE Name ='BARBARIAN_TECH_PERCENT';
UPDATE GlobalParameters SET Value ='5' WHERE Name ='BARBARIAN_NUM_RANDOM_UNIT_CHOICES';
UPDATE GlobalParameters SET Value ='3' WHERE Name ='BARBARIAN_CAMP_ODDS_OF_NEW_CAMP_SPAWNING';
UPDATE Technologies SET BarbarianFree ='1' WHERE TechnologyType ='TECH_MASONRY';

------------------------------------------------------------
-- Make the area adjacent to an Oasis worth settling
------------------------------------------------------------
INSERT INTO Feature_AdjacentYields (FeatureType, YieldType, YieldChange) VALUES ('FEATURE_OASIS', 'YIELD_FOOD', '2');

-----------------------------------------------
-- Technology cost
-----------------------------------------------
UPDATE Technologies SET Cost = Round(71 * 1.01, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='1';
UPDATE Technologies SET Cost = Round(182 * 1.02, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='2';
UPDATE Technologies SET Cost = Round(414 * 1.03, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='3';
UPDATE Technologies SET Cost = Round(534 * 1.04, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='4';

UPDATE Technologies SET Cost = Round(669 * 1.15, 0)		WHERE EraType ='ERA_CLASSICAL'		AND Tier ='1';
UPDATE Technologies SET Cost = Round(924 * 1.16, 0)		WHERE EraType ='ERA_CLASSICAL'		AND Tier ='2';
UPDATE Technologies SET Cost = Round(1195 * 1.17, 0)	WHERE EraType ='ERA_CLASSICAL'		AND Tier ='3';
UPDATE Technologies SET Cost = Round(1305 * 1.18, 0)	WHERE EraType ='ERA_CLASSICAL'		AND Tier ='4';

UPDATE Technologies SET Cost = Round(1491 * 1.19, 0)	WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='1';
UPDATE Technologies SET Cost = Round(1835 * 1.20, 0)	WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='2';
UPDATE Technologies SET Cost = Round(2043 * 1.21, 0)	WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='3';
UPDATE Technologies SET Cost = Round(2343 * 1.22, 0)	WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='4';

UPDATE Technologies SET Cost = Round(2882 * 1.23, 0)	WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='1';
UPDATE Technologies SET Cost = Round(3261 * 1.24, 0)	WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='2';
UPDATE Technologies SET Cost = Round(3870 * 1.25, 0)	WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='3';
UPDATE Technologies SET Cost = Round(4370 * 1.26, 0)	WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='4';

UPDATE Technologies SET Cost = Round(5112 * 1.27, 0)	WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='1';
UPDATE Technologies SET Cost = Round(6010 * 1.28, 0)	WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='2';
UPDATE Technologies SET Cost = Round(7192 * 1.29, 0)	WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='3';
UPDATE Technologies SET Cost = Round(8292 * 1.30, 0)	WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='4';

UPDATE Technologies SET Cost = Round(9843 * 1.31, 0)	WHERE EraType ='ERA_MODERN'			AND Tier ='1';
UPDATE Technologies SET Cost = Round(11634 * 1.32, 0)	WHERE EraType ='ERA_MODERN'			AND Tier ='2';
UPDATE Technologies SET Cost = Round(13713 * 1.33, 0)	WHERE EraType ='ERA_MODERN'			AND Tier ='3';
UPDATE Technologies SET Cost = Round(14913 * 1.34, 0)	WHERE EraType ='ERA_MODERN'			AND Tier ='4';

UPDATE Technologies SET Cost = Round(16865 * 1.35, 0)	WHERE EraType ='ERA_ATOMIC'			AND Tier ='1';
UPDATE Technologies SET Cost = Round(20217 * 1.36, 0)	WHERE EraType ='ERA_ATOMIC'			AND Tier ='2';
UPDATE Technologies SET Cost = Round(23967 * 1.37, 0)	WHERE EraType ='ERA_ATOMIC'			AND Tier ='3';
UPDATE Technologies SET Cost = Round(25967 * 1.38, 0)	WHERE EraType ='ERA_ATOMIC'			AND Tier ='4';

UPDATE Technologies SET Cost = Round(29522 * 1.39, 0)	WHERE EraType ='ERA_INFORMATION'	AND Tier ='1';
UPDATE Technologies SET Cost = Round(36496 * 1.40, 0)	WHERE EraType ='ERA_INFORMATION'	AND Tier ='2';

-----------------------------------------------
-- Civics cost
-----------------------------------------------
UPDATE Civics SET Cost = Round(47 * 1.21, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='1';
UPDATE Civics SET Cost = Round(119 * 1.72, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='2';
UPDATE Civics SET Cost = Round(242 * 2.28, 0)		WHERE EraType ='ERA_ANCIENT'		AND Tier ='3';

UPDATE Civics SET Cost = Round(667 * 1.75, 0)		WHERE EraType ='ERA_CLASSICAL'		AND Tier ='1';
UPDATE Civics SET Cost = Round(1021 * 1.76, 0)		WHERE EraType ='ERA_CLASSICAL'		AND Tier ='2';
UPDATE Civics SET Cost = Round(1297 * 1.87, 0)		WHERE EraType ='ERA_CLASSICAL'		AND Tier ='3';

UPDATE Civics SET Cost = Round(1706 * 2.10, 0)		WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='1';
UPDATE Civics SET Cost = Round(1972 * 2.20, 0)		WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='2';
UPDATE Civics SET Cost = Round(2417 * 2.21, 0)		WHERE EraType ='ERA_MEDIEVAL'		AND Tier ='3';

UPDATE Civics SET Cost = Round(3106 * 2.22, 0)		WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='1';
UPDATE Civics SET Cost = Round(3568 * 2.23, 0)		WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='2';
UPDATE Civics SET Cost = Round(4580 * 2.24, 0)		WHERE EraType ='ERA_RENAISSANCE'	AND Tier ='3';

UPDATE Civics SET Cost = Round(5915 * 2.25, 0)		WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='1';
UPDATE Civics SET Cost = Round(6665 * 2.26, 0)		WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='2';
UPDATE Civics SET Cost = Round(7854 * 2.27, 0)		WHERE EraType ='ERA_INDUSTRIAL'		AND Tier ='3';

UPDATE Civics SET Cost = Round(9897 * 2.28, 0)		WHERE EraType ='ERA_MODERN'			AND Tier ='1';
UPDATE Civics SET Cost = Round(11349 * 2.29, 0)		WHERE EraType ='ERA_MODERN'			AND Tier ='2';
UPDATE Civics SET Cost = Round(13298 * 2.30, 0)		WHERE EraType ='ERA_MODERN'			AND Tier ='3';

UPDATE Civics SET Cost = Round(17250 * 2.31, 0)		WHERE EraType ='ERA_ATOMIC'			AND Tier ='1';
UPDATE Civics SET Cost = Round(19767 * 2.32, 0)		WHERE EraType ='ERA_ATOMIC'			AND Tier ='2';
UPDATE Civics SET Cost = Round(22902 * 2.33, 0)		WHERE EraType ='ERA_ATOMIC'			AND Tier ='3';

UPDATE Civics SET Cost = Round(32476 * 3.99, 0)		WHERE EraType ='ERA_INFORMATION'	AND Tier ='1';

-----------------------------------------------
-- Boosts
-----------------------------------------------
UPDATE Boosts SET Boost = Round(Boost / 2, 0);

-----------------------------------------------
-- Minors Production
-----------------------------------------------
UPDATE ModifierArguments SET Value = '-45' WHERE ModifierId = 'MINOR_CIV_PRODUCTION_PENALTY' AND Name = 'Amount';

------------------------------------------------------------
-- Add Maintence
------------------------------------------------------------
UPDATE Units SET Maintenance ='1' WHERE UnitType ='UNIT_WARRIOR';
UPDATE Units SET Maintenance ='1' WHERE UnitType ='UNIT_SLINGER';
UPDATE Units SET Maintenance = Round(Maintenance * 1.6, 0);

------------------------------------------------------------
-- Trade Routes
------------------------------------------------------------
UPDATE GlobalParameters SET Value ='1' WHERE Name ='TRADE_ROUTE_GOLD_PER_DESTINATION_DISTRICT';
UPDATE GlobalParameters SET Value ='1' WHERE Name ='TRADE_ROUTE_GOLD_PER_ORIGIN_DISTRICT';

------------------------------------------------------------
-- Warmonger
------------------------------------------------------------
UPDATE Eras SET WarmongerPoints = '3' WHERE EraType ='ERA_CLASSICAL';
UPDATE Eras SET WarmongerPoints = '6' WHERE EraType ='ERA_MEDIEVAL';
UPDATE Eras SET WarmongerPoints = '9' WHERE EraType ='ERA_RENAISSANCE';
UPDATE Eras SET WarmongerPoints = '12' WHERE EraType ='ERA_INDUSTRIAL';
UPDATE Eras SET WarmongerPoints = '15' WHERE EraType ='ERA_MODERN';
UPDATE Eras SET WarmongerPoints = '18' WHERE EraType ='ERA_ATOMIC';
UPDATE Eras SET WarmongerPoints = '21' WHERE EraType ='ERA_INFORMATION';