-- Insert SQL Rules Here 
INSERT INTO RequirementSets	(RequirementSetId,							RequirementSetType) VALUES
							('PLOT_IS_CITY_CENTER_AA',						'REQUIREMENTSET_TEST_ALL');

INSERT INTO	RequirementSetRequirements	(RequirementSetId,							RequirementId) VALUES
										('PLOT_IS_CITY_CENTER_AA',						'REQUIRES_PLOT_IS_CITY_CENTER_AA');

INSERT INTO Requirements	(RequirementId,								RequirementType) VALUES
							('REQUIRES_PLOT_IS_CITY_CENTER_AA',			'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES');

INSERT INTO RequirementArguments	(RequirementId,								Name,					Value) VALUES
									('REQUIRES_PLOT_IS_CITY_CENTER_AA',			'DistrictType',			'DISTRICT_CITY_CENTER');

INSERT INTO TraitModifiers	(TraitType,					ModifierId) VALUES
							('TRAIT_LEADER_MAJOR_CIV',	'CITY_CENTER_BONUS_FOOD_AA'),
							('TRAIT_LEADER_MAJOR_CIV',	'CITY_CENTER_BONUS_PRODUCTION_AA');
														
INSERT INTO Modifiers	(ModifierId,									ModifierType,										OwnerRequirementSetId,					SubjectRequirementSetId) VALUES
						('CITY_CENTER_BONUS_FOOD_AA',					'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',				NULL,									'PLOT_IS_CITY_CENTER_AA'),
						('CITY_CENTER_BONUS_FOOD_MODIFIER_AA',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	NULL,									NULL),
						('CITY_CENTER_BONUS_PRODUCTION_AA',				'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',				NULL,									'PLOT_IS_CITY_CENTER_AA'),
						('CITY_CENTER_BONUS_PRODUCTION_MODIFIER_AA',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	NULL,									NULL); 
						
INSERT INTO ModifierArguments	(ModifierId,									Name,				Value) VALUES
								('CITY_CENTER_BONUS_FOOD_AA',					'ModifierId',		'CITY_CENTER_BONUS_FOOD_MODIFIER'),
								('CITY_CENTER_BONUS_FOOD_MODIFIER_AA',			'Amount',			'1'),
								('CITY_CENTER_BONUS_FOOD_MODIFIER_AA',			'Description',		'LOC_CITY_CENTER_BONUS_AA'),
								('CITY_CENTER_BONUS_PRODUCTION_AA',				'ModifierId',		'CITY_CENTER_BONUS_PRODUCTION_MODIFIER'),
								('CITY_CENTER_BONUS_PRODUCTION_MODIFIER_AA',	'Amount',			'1');


<?xml version="1.0" encoding="utf-8"?>

<GameData>
	<LocalizedText>
		<Row Tag="LOC_CITY_CENTER_BONUS_AA" Language="en_US">
			<Text>+1 [ICON_FOOD] Food, City Tile.[NEWLINE]+1 [ICON_PRODUCTION] Production, City Tile</Text>
		</Row>
	</LocalizedText>
</GameData>	