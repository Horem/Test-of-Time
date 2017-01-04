-- Prereq's
UPDATE Improvements SET PrereqTech ='TECH_MassTransit'	WHERE ImprovementType ='IMPROVEMENT_OIL_WELL';
UPDATE Improvements SET PrereqTech ='TECH_THE_WHEEL'	WHERE ImprovementType ='IMPROVEMENT_QUARRY';
-- Limit and update Unique Improvements
--Chateau
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_CHATEAU';
UPDATE Improvements SET TilesRequired			='1' WHERE ImprovementType ='IMPROVEMENT_CHATEAU';
UPDATE Improvement_YieldChanges SET YieldChange ='1' WHERE ImprovementType ='IMPROVEMENT_CHATEAU'		AND YieldType ='YIELD_CULTURE';
--Colossal Head
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_COLOSSAL_HEAD';
UPDATE Improvement_YieldChanges SET YieldChange ='3' WHERE ImprovementType ='IMPROVEMENT_COLOSSAL_HEAD' AND YieldType ='YIELD_FAITH';
-- Mission
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_MISSION';
UPDATE Improvement_YieldChanges SET YieldChange ='2' WHERE ImprovementType ='IMPROVEMENT_MISSION'		AND YieldType ='YIELD_FAITH';
-- Roman Fort
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_ROMAN_FORT';
-- Ziggurat
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_ZIGGURAT';
UPDATE Improvement_YieldChanges SET YieldChange ='1' WHERE ImprovementType ='IMPROVEMENT_ZIGGURAT'		AND YieldType ='YIELD_CULTURE';
-- Airstrip
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_AIRSTRIP';
-- Fort
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_FORT';
-- Beach Resort
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_BEACH_RESORT';
-- Kurgan
UPDATE Improvements SET SameAdjacentValid		='0' WHERE ImprovementType ='IMPROVEMENT_KURGAN';
UPDATE Improvement_YieldChanges SET YieldChange ='2' WHERE ImprovementType ='IMPROVEMENT_KURGAN'		AND YieldType ='YIELD_FAITH';
--Sphinx
UPDATE Improvement_YieldChanges SET YieldChange ='2' WHERE ImprovementType ='IMPROVEMENT_SPHINX'		AND YieldType ='YIELD_FAITH';
-- New Unique Improvement Yields
INSERT INTO Improvement_YieldChanges	(ImprovementType,			YieldType,			YieldChange) VALUES
										('IMPROVEMENT_ROMAN_FORT',	'YIELD_PRODUCTION', '1'),
										('IMPROVEMENT_ROMAN_FORT',	'YIELD_GOLD',		'1'),
										('IMPROVEMENT_FORT',		'YIELD_PRODUCTION', '1');
-- Fishing Boat change
UPDATE Improvement_YieldChanges SET YieldChange ='2' WHERE ImprovementType ='IMPROVEMENT_FISHING_BOATS' AND YieldType ='YIELD_FOOD';
-- Improvement Bonus Yield
INSERT INTO Improvement_BonusYieldChanges	(Id,	ImprovementType,				YieldType,		BonusYieldChange,	PrereqTech,				PrereqCivic) VALUES
											('22',	'IMPROVEMENT_FARM',				'YIELD_FOOD',	'2',				'TECH_Naturopathy',		NULL),
											('23',	'IMPROVEMENT_PASTURE',			'YIELD_FOOD',	'1',				'TECH_Crop_Rotation',	NULL),
											('24',	'IMPROVEMENT_PLANTATION',		'YIELD_FOOD',	'1',				'TECH_Crop_Rotation',	NULL),
											('25',	'IMPROVEMENT_FISHING_BOATS',	'YIELD_FOOD',	'1',				NULL,					'CIVIC_CIVIL_ENGINEERING'),
											('26',	'IMPROVEMENT_FARM',				'YIELD_FOOD',	'1',				NULL,					'CIVIC_CIVIL_ENGINEERING'),
											('27',	'IMPROVEMENT_PASTURE',			'YIELD_FOOD',	'1',				NULL,					'CIVIC_CIVIL_ENGINEERING'),
											('28',	'IMPROVEMENT_PLANTATION',		'YIELD_FOOD',	'1',				NULL,					'CIVIC_CIVIL_ENGINEERING');
-- Desert and Tundra Farms
INSERT INTO Improvement_ValidTerrains	(ImprovementType,		TerrainType,			PrereqCivic) VALUES
										('IMPROVEMENT_FARM',	'TERRAIN_TUNDRA',		'CIVIC_CIVIL_SERVICE'),
										('IMPROVEMENT_FARM',	'TERRAIN_DESERT',		'CIVIC_CIVIL_SERVICE'),
										('IMPROVEMENT_FARM',	'TERRAIN_TUNDRA_HILLS', 'CIVIC_CIVIL_ENGINEERING'),
										('IMPROVEMENT_FARM',	'TERRAIN_DESERT_HILLS', 'CIVIC_CIVIL_ENGINEERING');