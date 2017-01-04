-- AI Attack Formations
-- Simple City Attack Force
-- Melee
UPDATE OpTeamRequirements SET MinNumber ='2' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_MELEE';
UPDATE OpTeamRequirements SET MaxNumber ='9' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_MELEE';
-- Ranged
UPDATE OpTeamRequirements SET MinNumber ='1' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_RANGED';
UPDATE OpTeamRequirements SET MaxNumber ='3' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_RANGED';
-- Siege
UPDATE OpTeamRequirements SET MinNumber ='2' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_SIEGE';
UPDATE OpTeamRequirements SET MaxNumber ='4' WHERE TeamName ='Simple City Attack Force' AND AiType ='UNITTYPE_SIEGE';
-- Limit
INSERT INTO OpTeamRequirements	(TeamName,						MinNumber,	MaxNumber,	AiType) VALUES
								('Simple City Attack Force',	'5',		'16',		'UNITAI_COMBAT');
-- City Attack Force
-- Melee
UPDATE OpTeamRequirements SET MinNumber ='3' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_MELEE';
UPDATE OpTeamRequirements SET MaxNumber ='8' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_MELEE';
-- Ranged
UPDATE OpTeamRequirements SET MinNumber ='1' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_RANGED';
UPDATE OpTeamRequirements SET MaxNumber ='3' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_RANGED';
-- Siege
UPDATE OpTeamRequirements SET MinNumber ='2' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_SIEGE';
UPDATE OpTeamRequirements SET MaxNumber ='3' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_SIEGE';
-- Siege Support
UPDATE OpTeamRequirements SET MinNumber ='1' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_SIEGE_SUPPORT';
UPDATE OpTeamRequirements SET MaxNumber ='2' WHERE TeamName ='City Attack Force' AND AiType ='UNITTYPE_SIEGE_SUPPORT';
-- Limit
INSERT INTO OpTeamRequirements	(TeamName,						MinNumber,	MaxNumber,	AiType) VALUES
								('City Attack Force',			'7',		'16',		'UNITAI_COMBAT');
-- City Defense
-- Ranged
INSERT INTO OpTeamRequirements	(TeamName,			MinNumber,	AiType) VALUES
								('City Defense',	'1',		'UNITTYPE_RANGED');
-- Harass
UPDATE OpTeamRequirements SET MinNumber ='1' WHERE TeamName ='Cavalry Harass' AND AiType ='UNITTYPE_CAVALRY';
UPDATE OpTeamRequirements SET MaxNumber ='4' WHERE TeamName ='Cavalry Harass' AND AiType ='UNITTYPE_CAVALRY';
