-- Insert SQL Rules Here 
UPDATE Resources SET PrereqTech ='TECH_Alchemy' WHERE ResourceType ='RESOURCE_COAL';
UPDATE Resources SET PrereqTech ='TECH_Biology' WHERE ResourceType ='RESOURCE_OIL';
UPDATE Resources SET PrereqTech ='TECH_TheoryofRelativity' WHERE ResourceType ='RESOURCE_URANIUM';