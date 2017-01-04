-- Insert SQL Rules Here 
INSERT INTO Districts	(DistrictType,					Name,									PrereqCivic,			Description,							Cost,	RequiresPlacement,	RequiresPopulation, NoAdjacentCity, Aqueduct,	InternalOnly,	ZOC,	CaptureRemovesBuildings,	CaptureRemovesCityDefenses, PlunderType,	PlunderAmount,	TradeRouteCapacity, MilitaryDomain, CostProgressionModel,						CostProgressionParam1,	TravelTime, CityStrengthModifier,	TraitType,					CitizenSlots,	AdvisorType) VALUES
						('DISTRICT_SHOPPING_COMPLEX',	'LOC_DISTRICT_SHOPPING_COMPLEX_NAME',	'CIVIC_EARLY_EMPIRE',	'LOC_DISTRICT_SHOPPING_COMPLEX_DESC',	'60',	'1',				'1',				'0',			'0',		'0',			'0',	'0',						'0',						'PLUNDER_GOLD',	'50',			'1',				'NO_DOMAIN',	'COST_PROGRESSION_NUM_UNDER_AVG_PLUS_TECH',	'25',					'3',		'1',					null,						'1',			'ADVISOR_GENERIC'),
						('DISTRICT_SOUQ',				'LOC_DISTRICT_SOUQ_NAME',				'CIVIC_EARLY_EMPIRE',	'LOC_DISTRICT_SOUQ_DESC',				'30',	'1',				'1',				'0',			'0',		'0',			'0',	'0',						'0',						'PLUNDER_GOLD',	'50',			'1',				'NO_DOMAIN',	'COST_PROGRESSION_NUM_UNDER_AVG_PLUS_TECH',	'25',					'3',		'1',					'TRAIT_CIVILIZATION_SOUQ',	'1',			'ADVISOR_GENERIC');

INSERT INTO DistrictReplaces	(CivUniqueDistrictType, ReplacesDistrictType) VALUES
								('DISTRICT_SOUQ',		'DISTRICT_SHOPPING_COMPLEX');

								