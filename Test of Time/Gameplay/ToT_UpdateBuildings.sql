-- Amenities
UPDATE Buildings SET Entertainment ='2' WHERE BuildingType ='BUILDING_ARENA';
UPDATE Buildings SET Entertainment ='3' WHERE BuildingType ='BUILDING_STADIUM';
-- Prereq's
UPDATE Buildings SET PrereqTech ='TECH_Burial_Rites' WHERE BuildingType ='BUILDING_STONEHENGE';
UPDATE Buildings SET PrereqTech ='TECH_Linguistics' WHERE BuildingType ='BUILDING_LIBRARY';
UPDATE Buildings SET PrereqTech ='TECH_Gardening' WHERE BuildingType ='BUILDING_HANGING_GARDENS';
UPDATE Buildings SET PrereqTech ='TECH_Naval_Tactics' WHERE BuildingType ='BUILDING_SHIPYARD';
UPDATE Buildings SET PrereqTech ='TECH_Paleontology' WHERE BuildingType ='BUILDING_STOCK_EXCHANGE';
UPDATE Buildings SET PrereqTech ='TECH_Charters' WHERE BuildingType ='BUILDING_MARKET';
-- Yields
UPDATE Building_YieldChanges SET YieldChange ='2' WHERE BuildingType ='BUILDING_MARKET';
UPDATE Building_YieldChanges SET YieldChange ='4' WHERE BuildingType ='BUILDING_BANK';
UPDATE Building_YieldChanges SET YieldChange ='6' WHERE BuildingType ='BUILDING_STOCK_EXCHANGE';
UPDATE Building_YieldChanges SET YieldChange ='1' WHERE BuildingType ='BUILDING_LIBRARY';
UPDATE Building_YieldChanges SET YieldChange ='3' WHERE BuildingType ='BUILDING_UNIVERSITY';
--Great Works Slots
UPDATE Building_GreatWorks SET NumSlots ='1' WHERE BuildingType ='BUILDING_AMPHITHEATER';
-- Defense Buidling Hit Points
UPDATE Buildings SET OuterDefenseHitPoints ='100' WHERE OuterDefenseHitPoints='50';
-- Wonder Costs
UPDATE Buildings SET Cost = Round(Cost * 1.5, 0) WHERE MaxWorldInstances ='1';
-- National Wonder Costs
UPDATE Buildings SET Cost = Round(Cost * 1.25, 0) WHERE MaxPlayerInstances >='1';
-- Building Costs
UPDATE Buildings SET Cost = Round(Cost * 1.05, 0) WHERE MaxWorldInstances ='-1' AND MaxPlayerInstances ='-1';
-- Building Maintenace
-- UPDATE Buildings SET Maintenance = Round(Maintenance * 1.6, 0);
