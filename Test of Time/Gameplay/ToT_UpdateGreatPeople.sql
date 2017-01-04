-----------------------------------------------
-- Great People Cost
-----------------------------------------------
UPDATE Eras SET GreatPersonBaseCost = Round(80*1.4, 0)			WHERE EraType = 'ERA_ANCIENT';
UPDATE Eras SET GreatPersonBaseCost = Round(160*1.8, 0)			WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras SET GreatPersonBaseCost = Round(320*2.2, 0)			WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras SET GreatPersonBaseCost = Round(640*2.6, 0)			WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras SET GreatPersonBaseCost = Round(1280*3, 0)			WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Eras SET GreatPersonBaseCost = Round(2560*3.4, 0)		WHERE EraType = 'ERA_MODERN';
UPDATE Eras SET GreatPersonBaseCost = Round(5120*3.8, 0)		WHERE EraType = 'ERA_ATOMIC';
UPDATE Eras SET GreatPersonBaseCost = Round(12400*4.2, 0)		WHERE EraType = 'ERA_INFORMATION';
-- Reduce Science Bonus
UPDATE ModifierArguments SET Value ='1' WHERE ModifierId ='GREATPERSON_UNIVERSITIES_SMALL_SCIENCE' AND Name ='Amount';
UPDATE ModifierArguments SET Value ='2' WHERE ModifierId ='GREATPERSON_UNIVERSITIES_BIG_SCIENCE' AND Name ='Amount';