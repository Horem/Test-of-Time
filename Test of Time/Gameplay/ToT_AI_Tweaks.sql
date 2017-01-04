-- Buildings
UPDATE TreeData SET DefaultData ='0' WHERE DefnId ='2' AND NodeId ='2' AND TreeName ='Build City Building';
UPDATE TreeData SET DefaultData ='0' WHERE DefnId ='2' AND NodeId ='4' AND TreeName ='Build City Building';
-- Workers
INSERT INTO TreeData	(DefnId,	NodeId, TreeName,					DefaultData) VALUES
						('2',		'13',	'Build City Improvement',	'-1'),
						('2',		'13',	'Build City Improvement',	'-1');
-- Build Specializations
UPDATE AiBuildSpecializations SET IncludeTradeUnits ='1' WHERE SpecializationType ='BUILD_FOR_FOOD';
UPDATE AiBuildSpecializations SET IncludeTradeUnits ='1' WHERE SpecializationType ='BUILD_FOR_GOLD';
-- Favored Items
UPDATE AiFavoredItems SET Value ='2' WHERE ListType ='BaseOperationsLimits' AND Item ='ATTACK_BARBARIANS';
UPDATE AiFavoredItems SET Value ='3' WHERE ListType ='BaseOperationsLimits' AND Item ='CITY_ASSAULT';
-- Operations
-- Enemy City
UPDATE AiOperationTeams SET InitialStrengthAdvantage	='0'	WHERE TeamName		='Simple City Attack Force' AND OperationName ='Attack Enemy City';
UPDATE AiOperationTeams SET OngoingStrengthAdvantage	='0'	WHERE TeamName		='Simple City Attack Force'	AND OperationName ='Attack Enemy City';
UPDATE AiOperationTeams SET InitialStrengthAdvantage	='0'	WHERE TeamName		='City Attack Force'		AND OperationName ='Attack Walled City';
UPDATE AiOperationTeams SET OngoingStrengthAdvantage	='0'	WHERE TeamName		='City Attack Force'		AND OperationName ='Attack Walled City';
UPDATE AiOperationDefs	SET MinOddsOfSuccess			='0.3'	WHERE OperationName ='Attack Enemy City';
UPDATE AiOperationDefs	SET MinOddsOfSuccess			='0.3'	WHERE OperationName ='Attack Walled City';
-- Wartime
UPDATE AiOperationTeams SET InitialStrengthAdvantage	='0'	WHERE TeamName		='Simple City Attack Force' AND OperationName ='Wartime Attack Enemy City';
UPDATE AiOperationTeams SET OngoingStrengthAdvantage	='0'	WHERE TeamName		='Simple City Attack Force'	AND OperationName ='Wartime Attack Enemy City';
UPDATE AiOperationTeams SET InitialStrengthAdvantage	='0'	WHERE TeamName		='City Attack Force'		AND OperationName ='Wartime Attack Walled City';
UPDATE AiOperationTeams SET OngoingStrengthAdvantage	='0'	WHERE TeamName		='City Attack Force'		AND OperationName ='Wartime Attack Walled City';
UPDATE AiOperationDefs	SET MinOddsOfSuccess			='0.2'	WHERE OperationName ='Wartime Attack Enemy City';
UPDATE AiOperationDefs	SET Priority					='5'	WHERE OperationName ='Wartime Attack Enemy City';
UPDATE AiOperationDefs	SET MinOddsOfSuccess			='0.2'	WHERE OperationName ='Wartime Attack Walled City';
UPDATE AiOperationDefs	SET Priority					='5'	WHERE OperationName ='Wartime Attack Walled City';
-- City Defense
UPDATE AiOperationDefs	SET MinOddsOfSuccess			='0.01'	WHERE OperationName ='City Defense';
-- Adjust AI Seige Attack
-- Remove Default Nodes for Siege City Assault Behavior
DELETE FROM BehaviorTreeNodes WHERE TreeName ='Siege City Assault';
-- Repopulate Nodes for Siege City Assault Behavior
INSERT INTO BehaviorTreeNodes	(NodeType,						NodeId, TreeName,				JumpTo) VALUES
								('Concurrent',					'0',	'Siege City Assault',	'35'),
								('Decode Trigger',				'1',	'Siege City Assault',	'0'),
								('Operation Defend Units',		'2',	'Siege City Assault',	'0'),
								('Sequence',					'3',	'Siege City Assault',	'35'),
								('Concurrent',					'4',	'Siege City Assault',	'35'),
								('Operation Attack Units',		'5',	'Siege City Assault',	'0'),
								('Contract Manager Decorator',	'6',	'Siege City Assault',	'8'),
								('Recruit Units',				'7',	'Siege City Assault',	'0'),
								('Make Formation',				'8',	'Siege City Assault',	'0'),
								('Operation Move',				'9',	'Siege City Assault',	'0'),
								('Lock Units',					'10',	'Siege City Assault',	'0'),
								('Operation Diplomacy',			'11',	'Siege City Assault',	'0'),
								('Concurrent',					'12',	'Siege City Assault',	'17'),
								('Operation Change Target',		'13',	'Siege City Assault',	'0'),
								('Recruit Units',				'14',	'Siege City Assault',	'0'),
								('Operation Attack Units',		'15',	'Siege City Assault',	'0'),
								('Operation Move',				'16',	'Siege City Assault',	'0'),
								('Turn Limiter',				'17',	'Siege City Assault',	'23'),
								('Concurrent',					'18',	'Siege City Assault',	'23'),
								('Contract Manager Decorator',	'19',	'Siege City Assault',	'21'),
								('Operation Diplomacy',			'20',	'Siege City Assault',	'0'),
								('Operation Attack Units',		'21',	'Siege City Assault',	'0'),
								('Operation Move',				'22',	'Siege City Assault',	'0'),
								('Concurrent',					'23',	'Siege City Assault',	'29'),
								('Is At War',					'24',	'Siege City Assault',	'0'),
								('Operation Change Target',		'25',	'Siege City Assault',	'0'),
								('Operation Attack Units',		'26',	'Siege City Assault',	'0'),
								('Operation Attack City',		'27',	'Siege City Assault',	'0'),
								('Operation Move',				'28',	'Siege City Assault',	'0'),
								('Concurrent',					'29',	'Siege City Assault',	'35'),
								('Operation Change Target',		'30',	'Siege City Assault',	'0'),
								('Operation Attack City',		'31',	'Siege City Assault',	'0'),
								('Operation Attack Units',		'32',	'Siege City Assault',	'0'),
								('Operation Pillage',			'33',	'Siege City Assault',	'0'),
								('Operation Move',				'34',	'Siege City Assault',	'0');
-- Remove Default Data for Siege City Assault
DELETE FROM TreeData WHERE TreeName ='Siege City Assault';
-- Repopulate Data for Siege City Assault
INSERT INTO TreeData	(DefnId,	NodeId, TreeName,				Tag,					DefaultData) VALUES
						('0',		'1',	'Siege City Assault',	'Unused',				NULL),
						('1',		'1',	'Siege City Assault',	NULL,					NULL),
						('2',		'1',	'Siege City Assault',	NULL,					NULL),
						('3',		'1',	'Siege City Assault',	NULL,					NULL),
						('4',		'1',	'Siege City Assault',	NULL,					NULL),
						('5',		'1',	'Siege City Assault',	NULL,					NULL),
						('6',		'1',	'Siege City Assault',	NULL,					NULL),
						('7',		'1',	'Siege City Assault',	NULL,					NULL),
						('8',		'1',	'Siege City Assault',	'Present Value',		NULL),
						('0',		'2',	'Siege City Assault',	NULL,					'30'),
						('0',		'5',	'Siege City Assault',	NULL,					'1'),
						('1',		'5',	'Siege City Assault',	NULL,					'0'),
						('0',		'6',	'Siege City Assault',	'Initial recruits',		NULL),
						('1',		'6',	'Siege City Assault',	NULL,					NULL),
						('2',		'6',	'Siege City Assault',	NULL,					'7'),
						('3',		'6',	'Siege City Assault',	NULL,					'0'),
						('1',		'7',	'Siege City Assault',	'Initial recruits',		NULL),
						('2',		'7',	'Siege City Assault',	NULL,					'15'),
						('4',		'7',	'Siege City Assault',	'Present Value',		NULL),
						('1',		'8',	'Siege City Assault',	NULL,					'UNITTYPE_MELEE'),
						('2',		'8',	'Siege City Assault',	NULL,					NULL),
						('3',		'8',	'Siege City Assault',	NULL,					'UNITTYPE_SIEGE_SUPPORT'),
						('4',		'8',	'Siege City Assault',	NULL,					NULL),
						('0',		'9',	'Siege City Assault',	NULL,					'0'),
						('1',		'9',	'Siege City Assault',	NULL,					'3'),
						('2',		'9',	'Siege City Assault',	NULL,					'1'),
						('3',		'9',	'Siege City Assault',	NULL,					'4'),
						('0',		'10',	'Siege City Assault',	NULL,					'1'),
						('1',		'10',	'Siege City Assault',	NULL,					'1'),
						('0',		'11',	'Siege City Assault',	NULL,					NULL),
						('1',		'11',	'Siege City Assault',	NULL,					NULL),
						('2',		'11',	'Siege City Assault',	NULL,					NULL),
						('3',		'11',	'Siege City Assault',	NULL,					NULL),
						('4',		'11',	'Siege City Assault',	'Present Value',		NULL),
						('0',		'13',	'Siege City Assault',	NULL,					'-1'),
						('1',		'13',	'Siege City Assault',	NULL,					'-1.5'),
						('0',		'14',	'Siege City Assault',	NULL,					'1'),
						('1',		'14',	'Siege City Assault',	'Ongoing Recruits',		NULL),
						('2',		'14',	'Siege City Assault',	NULL,					'4'),
						('4',		'14',	'Siege City Assault',	'Present Value',		NULL),
						('0',		'15',	'Siege City Assault',	NULL,					'0'),
						('1',		'15',	'Siege City Assault',	NULL,					'1'),
						('0',		'16',	'Siege City Assault',	NULL,					'5'),
						('1',		'16',	'Siege City Assault',	NULL,					'3'),
						('2',		'16',	'Siege City Assault',	NULL,					'1'),
						('3',		'16',	'Siege City Assault',	NULL,					'4'),
						('0',		'17',	'Siege City Assault',	NULL,					'1'),
						('2',		'17',	'Siege City Assault',	NULL,					'1'),
						('1',		'18',	'Siege City Assault',	NULL,					'1'),
						('0',		'19',	'Siege City Assault',	'Declare War',			NULL),
						('1',		'19',	'Siege City Assault',	NULL,					NULL),
						('2',		'19',	'Siege City Assault',	NULL,					'5'),
						('3',		'19',	'Siege City Assault',	NULL,					'1'),
						('0',		'20',	'Siege City Assault',	NULL,					NULL),
						('1',		'20',	'Siege City Assault',	NULL,					NULL),
						('2',		'20',	'Siege City Assault',	NULL,					NULL),
						('3',		'20',	'Siege City Assault',	NULL,					'1'),
						('4',		'20',	'Siege City Assault',	'Present Value',		NULL),
						('5',		'20',	'Siege City Assault',	'Declare War',			NULL),
						('0',		'21',	'Siege City Assault',	NULL,					'0'),
						('1',		'21',	'Siege City Assault',	NULL,					'1'),
						('3',		'21',	'Siege City Assault',	NULL,					'1'),
						('0',		'22',	'Siege City Assault',	NULL,					'5'),
						('1',		'22',	'Siege City Assault',	NULL,					'1'),
						('2',		'22',	'Siege City Assault',	NULL,					'0'),
						('3',		'22',	'Siege City Assault',	NULL,					'4'),
						('0',		'24',	'Siege City Assault',	NULL,					'1'),
						('1',		'24',	'Siege City Assault',	NULL,					'0'),
						('2',		'24',	'Siege City Assault',	NULL,					'1'),
						('0',		'25',	'Siege City Assault',	NULL,					'-6'),
						('1',		'25',	'Siege City Assault',	NULL,					'-5'),
						('0',		'26',	'Siege City Assault',	NULL,					'1'),
						('1',		'26',	'Siege City Assault',	NULL,					'1'),
						('0',		'28',	'Siege City Assault',	NULL,					'1'),
						('1',		'28',	'Siege City Assault',	NULL,					'0'),
						('2',		'28',	'Siege City Assault',	NULL,					'0'),
						('3',		'28',	'Siege City Assault',	NULL,					'3'),
						('0',		'30',	'Siege City Assault',	NULL,					'-8'),
						('1',		'30',	'Siege City Assault',	NULL,					'-6'),
						('0',		'32',	'Siege City Assault',	NULL,					'1'),
						('1',		'32',	'Siege City Assault',	NULL,					'0'),
						('2',		'32',	'Siege City Assault',	NULL,					'1'),
						('0',		'34',	'Siege City Assault',	NULL,					'1'),
						('1',		'34',	'Siege City Assault',	NULL,					'0'),
						('2',		'34',	'Siege City Assault',	NULL,					'0'),
						('3',		'34',	'Siege City Assault',	NULL,					'2');
