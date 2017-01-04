-- City Growth
UPDATE GlobalParameters SET Value ='3' WHERE Name ='CITY_GROWTH_EXPONENT';
UPDATE GlobalParameters SET Value ='3' WHERE Name ='CITY_GROWTH_MULTIPLIER';
UPDATE GlobalParameters SET Value ='25' WHERE Name ='CITY_GROWTH_THRESHOLD';
--UPDATE GlobalParameters SET Value ='2' WHERE Name ='CITY_FOOD_CONSUMPTION_PER_POPULATION';
UPDATE Buildings SET Housing ='0' WHERE BuildingType ='BUILDING_PALACE';