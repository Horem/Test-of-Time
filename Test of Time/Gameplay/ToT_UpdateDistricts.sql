-- Amenities
UPDATE Districts SET Entertainment = Entertainment + 1;
-- Trade Route Yields
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination ='2' WHERE DistrictType ='DISTRICT_CITY_CENTER' AND YieldType ='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination ='2' WHERE DistrictType ='DISTRICT_HARBOR' AND YieldType ='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination ='2' WHERE DistrictType ='DISTRICT_ROYAL_NAVY_DOCKYARD' AND YieldType ='YIELD_GOLD';
-- Prereq's
UPDATE Districts SET PrereqTech =NULL WHERE DistrictType ='DISTRICT_COMMERCIAL_HUB';
UPDATE Districts SET PrereqCivic ='CIVIC_CIVIL_SERVICE' WHERE DistrictType ='DISTRICT_COMMERCIAL_HUB';
UPDATE Districts SET PrereqTech ='TECH_Burial_Rites' WHERE DistrictType ='DISTRICT_HOLY_SITE';
UPDATE Districts SET PrereqTech ='TECH_Burial_Rites' WHERE DistrictType ='DISTRICT_LAVRA';
-- District Strength
UPDATE Districts SET CityStrengthModifier ='0';
UPDATE Districts SET CityStrengthModifier ='2' WHERE DistrictType ='DISTRICT_ENCAMPMENT';
--District Cost
UPDATE Districts SET Cost = Round(Cost * 1.25, 0);
UPDATE Districts SET CaptureRemovesBuildings ='1';