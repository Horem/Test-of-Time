---------------------------------
-- Growth Changes
---------------------------------
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city for scientific endeavors.' WHERE Tag ='LOC_DISTRICT_CAMPUS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city for religious worship.' WHERE Tag ='LOC_DISTRICT_HOLY_SITE_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city dedicated to keeping your people happy by increasing [ICON_Amenities] Amenities.' WHERE Tag ='LOC_DISTRICT_ENTERTAINMENT_COMPLEX_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Brazil. Replaces the Entertainment Complex district, and provides +2 [ICON_Amenities] Amenities. Also unlocks the Carnival project, which grants an additional +1 [ICON_Amenities] Amenity when underway and a variety of [ICON_GreatPerson] Great People points once completed.' WHERE Tag ='LOC_DISTRICT_STREET_CARNIVAL_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Germany for industrial activity. Replaces the Industrial Zone district.' WHERE Tag ='LOC_DISTRICT_HANSA_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Russia for religious activity. Replaces the Holy Site district.[NEWLINE][NEWLINE]Your city border grows by one tile each time a Great Person is expended in this city.' WHERE Tag ='LOC_DISTRICT_LAVRA_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Greece for cultural sites. Replaces the Theater Square district.' WHERE Tag ='LOC_DISTRICT_ACROPOLIS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city for industrial activity.' WHERE Tag ='LOC_DISTRICT_INDUSTRIAL_ZONE_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city for cultural sites.' WHERE Tag ='LOC_DISTRICT_THEATER_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district for naval activity in your city. Also removes the [ICON_Movement] Movement penalty for embarking and disembarking to and from this tile. Must be built on Coast or Lake Terrain adjacent to land.[NEWLINE][NEWLINE]+1 [ICON_TradeRoute] Trade Route capacity' WHERE Tag ='LOC_DISTRICT_HARBOR_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city that provides housing based on the Appeal of the tile:[NEWLINE]Breathtaking: +6 [ICON_Housing] Housing.[NEWLINE]Charming: +5 [ICON_Housing] Housing.[NEWLINE]Average: +4 [ICON_Housing] Housing.[NEWLINE]Uninviting: +3 [ICON_Housing] Housing.[NEWLINE]Disgusting: +2 [ICON_Housing] Housing.' WHERE Tag ='LOC_DISTRICT_NEIGHBORHOOD_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district in your city specializing in finance and trade.[NEWLINE][NEWLINE]+1 [ICON_TradeRoute] Trade Route capacity' WHERE Tag ='LOC_DISTRICT_COMMERCIAL_HUB_DESCRIPTION';
UPDATE LocalizedText SET Text ='+10% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district that provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. Must be built adjacent to the City Center.' WHERE Tag ='LOC_DISTRICT_AQUEDUCT_DESCRIPTION';
UPDATE LocalizedText SET Text ='+10% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Rome for city growth. Replaces the Aqueduct district.[NEWLINE][NEWLINE]It provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. Must be built adjacent to the City Center. In either case, the Bath provides an additional bonus of +2 [ICON_Housing] Housing and +1 [ICON_Amenities] Amenity. Must be built adjacent to the City Center.' WHERE Tag ='LOC_DISTRICT_BATH_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to Kongo that can only be constructed in Rainforest or Woods. Replaces the Neighborhood district but is available earlier. Provides +5 [ICON_Housing] Housing , +2 [ICON_Food] Food, and +4 [ICON_Gold] Gold, regardless of Appeal.' WHERE Tag ='LOC_DISTRICT_MBANZA_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2% [ICON_Citizen] Growth.[NEWLINE][NEWLINE]A district unique to England for naval activity in your city. Replaces the Harbor district. Also removes the [ICON_Movement] Movement penalty for embarking and disembarking to and from this tile. Must be built on Coast or Lake Terrain adjacent to land.[NEWLINE][NEWLINE]+1 [ICON_Movement] Movement for all naval units built in Dockyard[NEWLINE]+2 [ICON_Gold] Gold when built on a foreign continent[NEWLINE]+1 [ICON_TradeRoute] Trade Route capacity' WHERE Tag ='LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_DESCRIPTION';

---------------------------------
-- Ram and Siege Tower change
---------------------------------
UPDATE LocalizedText SET Text ='Ancient era siege unit.' WHERE Tag ='LOC_UNIT_BATTERING_RAM_DESCRIPTION';
UPDATE LocalizedText SET Text ='Classical era support unit. When adjacent to a city, attacking melee units do full damage to the citys Walls.' WHERE Tag ='LOC_UNIT_SIEGE_TOWER_DESCRIPTION';

---------------------------------
-- Cultural City-State change 
---------------------------------
UPDATE LocalizedText SET Text ='+1 [ICON_Culture] Culture in the [ICON_Capital] Capital.' WHERE Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='+1 [ICON_Culture] Culture in every Theater Square district.' WHERE Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Additional +2 [ICON_Culture] Culture in every Theater Square district.' WHERE Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS';

---------------------------------
-- Scientific City-State change
---------------------------------
UPDATE LocalizedText SET Text ='+1 [ICON_Science] Science in your [ICON_Capital] Capital.' WHERE Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='+1 [ICON_Science] Science in every Campus district.' WHERE Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_MEDIUM_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Additional +2 [ICON_Science] Science in every Campus district.' WHERE Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_LARGE_INFLUENCE_BONUS';

---------------------------------
-- Boost change
---------------------------------
UPDATE LocalizedText SET Text ='[ICON_TechBoosted] Eurekas and [ICON_CivicBoosted] Inspirations provide 35% of civics and technologies instead of 25%.' WHERE Tag ='LOC_TRAIT_CIVILIZATION_DYNASTIC_CYCLE_DESCRIPTION';

---------------------------------
-- Military Academy change
---------------------------------
UPDATE LocalizedText SET Text ='+25% combat experience and provides the Elite ability for land units trained in this city. Faster Corps and Army training.' WHERE Tag ='LOC_BUILDING_MILITARY_ACADEMY_DESCRIPTION';

---------------------------------
-- Embark changes
---------------------------------
UPDATE LocalizedText SET Text ='Allows Settlers to embark.' WHERE Tag ='LOC_TECH_SAILING_DESCRIPTION';
UPDATE LocalizedText SET Text ='Allows Traders and Scouts to embark. Allows harvesting of [ICON_RESOURCE_FISH] Fish.' WHERE Tag ='LOC_TECH_CELESTIAL_NAVIGATION_DESCRIPTION';

---------------------------------
-- Commercial Hub name change
---------------------------------
UPDATE LocalizedText SET Text ='+1 Economic policy slot[NEWLINE][NEWLINE]Doubles current treasury. Must be built next to a River adjacent to a Finincial district with a Bank.' WHERE Tag ='LOC_BUILDING_BIG_BEN_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_TradeRoute] Trade Route capacity[NEWLINE][NEWLINE]Your [ICON_TradeRoute] Trade Routes from this city get +2 [ICON_Gold] Gold for every Bonus resource in this citys territory. Must be built adjacent to a Financial district with a Market and adjacent to [ICON_RESOURCE_CATTLE] Cattle.' WHERE Tag ='LOC_BUILDING_GREAT_ZIMBABWE_DESCRIPTION';
UPDATE LocalizedText SET Text ='+100% Financial and Harbor district adjacency bonuses.' WHERE Tag ='LOC_POLICY_ECONOMIC_UNION_DESCRIPTION';
UPDATE LocalizedText SET Text ='+100% [ICON_Gold] Gold yield from Financial district buildings.' WHERE Tag ='LOC_POLICY_FREE_MARKET_DESCRIPTION';
UPDATE LocalizedText SET Text ='+100% Financial district adjacency bonuses.' WHERE Tag ='LOC_POLICY_TOWN_CHARTERS_DESCRIPTION';
UPDATE LocalizedText SET Text ='Rainforest tiles provide +1 adjacency bonus for Campus, Financial, Holy Site, and Theater Square districts. Rainforest tiles provide +1 [ICON_Housing] Housing for Neighborhoods built adjacent to them.' WHERE Tag ='LOC_TRAIT_CIVILIZATION_AMAZON_DESCRIPTION';
UPDATE LocalizedText SET Text ='Merchant, Financial and Harbor districts are the primary sources of [ICON_TradeRoute] Trade Route capacity.' WHERE Tag ='LOC_TOP_PANEL_TRADE_ROUTES_TOOLTIP_SOURCES_HELP';
UPDATE LocalizedText SET Text ='+4 [ICON_Gold] Gold in every Financial district.' WHERE Tag ='LOC_MINOR_CIV_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Additional +4 [ICON_Gold] Gold in every Financial district.' WHERE Tag ='LOC_MINOR_CIV_TRADE_TRAIT_LARGE_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Financial Square' WHERE Tag ='LOC_DISTRICT_COMMERCIAL_HUB_NAME';
UPDATE LocalizedText SET Text ='Financial Square Investment' WHERE Tag ='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_NAME';
UPDATE LocalizedText SET Text ='Financial Square Investment' WHERE Tag ='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_SHORT_NAME';
UPDATE LocalizedText SET Text ='Adjacency: Major [ICON_Production] Production bonus if adjacent to a Financial district. Standard [ICON_Production] Production bonus for each adjacent resource. Minor [ICON_Production] Production bonus for adjacent district tiles.' WHERE Tag ='LOC_DISTRICT_HANSA_DESCRIPTION_ADJACENCY';
UPDATE LocalizedText SET Text ='+{1_num} [ICON_Production] Production from the adjacent Financial district.' WHERE Tag ='LOC_DISTRICT_COMMERCIAL_HUB_PRODUCTION';
UPDATE LocalizedText SET Text ='Each Campus or Financial district in a city following this Religion provides +1 [ICON_Science] Science or +1 [ICON_Gold] Gold respectively.' WHERE Tag ='LOC_BELIEF_STEWARDSHIP_DESCRIPTION';

---------------------------------
-- Pedia
---------------------------------
UPDATE LocalizedText SET Text ='The “financial district” of a city usually refers to the downtown business district, where capitalism and greed enliven the city’s finances. Here are the markets, banks and exchanges that make a few folks rich and fuel city growth. In time, evolving from a simple collection of local financiers and corporate offices, a Financial district might even grow into a “global financial center.” There is even a system for ranking such global centers; until 2013 London held the top spot on the Global Financial Centers Index, when it was supplanted by New York City, both closely followed by Hong Kong, Singapore, and Tokyo. The quest for profit is obviously a universal trait of civilization.' WHERE Tag ='LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_COMMERCIAL_HUB_CHAPTER_HISTORY_PARA_1';
UPDATE LocalizedText SET Text ='The “entertainment” district offers family-friendly distractions from the burden of living in an urban environment. In some cities, the entertainment complex is filled with museums and zoos and other edifying sights; in others it is a district of theaters, cinemas, music venues and such; and some are the center of the city’s sport with stadiums and indoor arenas. Whatever the form – be it the Quartier des Spectacles in Montreal, or Te Aro District in Wellington, or even St. Pauli in Hamburg – every civilized city has one to engender happiness and pride in its citizens, imparting a sense of social identity that the countryside can’t.' WHERE Tag ='LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_ENTERTAINMENT_COMPLEX_CHAPTER_HISTORY_PARA_1';
UPDATE LocalizedText SET Text ='A player can only maintain a limited number of active [ICON_TradeRoute] Trade Routes. This capacity is determined primarily by the number of Financial and Harbor districts they have, but can be increased by other means as well.' WHERE Tag ='LOC_PEDIA_CONCEPTS_PAGE_TRADE_2_CHAPTER_CONTENT_PARA_1';
UPDATE LocalizedText SET Text ='Pillaging a district takes 3 Movement Points, or all of your movement. Each building in a district must be pillaged separately, and awards some sort of plunder based on the district (see below). Once pillaged, a building cannot be pillaged again until it is brought back online by its owner (done through the Production Menu and takes 25% of the [ICON_Production] Production cost of initial construction of that building.)[NEWLINE]Pillaging a Campus awards [ICON_Science] Science.[NEWLINE]Pillaging a Holy Site awards [ICON_Faith] Faith.[NEWLINE]Pillaging a Financial district awards [ICON_Gold] Gold.[NEWLINE]Pillaging a Theater Square awards [ICON_Culture] Culture.[NEWLINE]Pillaging a Harbor district awards [ICON_Gold] Gold.[NEWLINE]Pillaging an Industrial Zone awards [ICON_Science] Science.[NEWLINE]Pillaging an Aerodrome awards [ICON_Gold] Gold.[NEWLINE]Pillaging an Aqueduct awards [ICON_Gold] Gold.[NEWLINE]Pillaging a Spaceport awards [ICON_Science] Science.' WHERE Tag ='LOC_PEDIA_CONCEPTS_PAGE_COMBAT_13_CHAPTER_CONTENT_PARA_2';

---------------------------------
-- Projects
---------------------------------
UPDATE LocalizedText SET Text ='District-based project which provides a large amount of [ICON_Gold] Gold and a small amount of [ICON_GreatMerchant] Great Merchant points.' WHERE Tag='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_DESCRIPTION';

---------------------------------
-- Settler update
---------------------------------
UPDATE LocalizedText SET Text ='May create new cities. Reduces city [ICON_Citizen] Population by 2 when completed.' WHERE Tag ='LOC_UNIT_SETTLER_DESCRIPTION';

---------------------------------
-- Civic Changes
---------------------------------
UPDATE LocalizedText SET Text ='Can build Farms on Tundra and Desert. Allows Alliances.' WHERE Tag ='LOC_CIVIC_CIVIL_SERVICE_DESCRIPTION';
UPDATE LocalizedText SET Text ='Can build Farms on Hills. Farms, Fishing Boats, Plantations and Pastures gain +1 [ICON_FOOD] Food. Unlocks Urban Defenses, giving all of your cities an automatic 450 Fortification Strength and the ability to bombard.' WHERE Tag ='LOC_CIVIC_CIVIL_ENGINEERING_DESCRIPTION';

---------------------------------
-- Belief Changes
---------------------------------
UPDATE LocalizedText SET Text ='+1 [ICON_Food] Food from flatland Tundra.[NEWLINE]Holy Site districts get +1 [ICON_Faith] Faith from adjacent Tundra tiles.' WHERE Tag ='LOC_BELIEF_DANCE_OF_THE_AURORA_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Food] Food from flatland Desert.[NEWLINE]Holy Site districts get +1 [ICON_Faith] Faith from adjacent Desert tiles.' WHERE Tag ='LOC_BELIEF_DESERT_FOLKLORE_DESCRIPTION';
UPDATE LocalizedText SET Text ='Holy Site districts get +2 [ICON_Faith] Faith from adjacent Forest and Rainforest tiles.' WHERE Tag ='LOC_BELIEF_SACRED_PATH_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Amenities] Amenity to cities if they have a Holy Site district adjacent to a River.[NEWLINE]+1 [ICON_Food] Food on farms adjacent to a River.' WHERE Tag ='LOC_BELIEF_RIVER_GODDESS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Faith] Faith from Monuments.[NEWLINE]+15% [ICON_Production] Production towards Ancient and Classical era wonders.' WHERE Tag ='LOC_BELIEF_MONUMENT_TO_THE_GODS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2 [ICON_Faith] Faith from Wonders.[NEWLINE]+1 Great Person point from Holy Site (Prophet), Campus (Scientist), and Theater Square (Writer) districts.' WHERE Tag ='LOC_BELIEF_DIVINE_SPARK_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Production] Production from Marsh, Oasis, and Floodplains.[NEWLINE]+1 [ICON_Food] Food from Marsh, Oasis, and Floodplains.' WHERE Tag ='LOC_BELIEF_LADY_OF_THE_REEDS_AND_MARSHES_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Production] Production from Fishing Boats.[NEWLINE]+1 [ICON_Food] Food from Fishing Boats.' WHERE Tag ='LOC_BELIEF_GOD_OF_THE_SEA_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Faith] Faith from Pastures.[NEWLINE]+1 [ICON_Food] Food from Pastures.' WHERE Tag ='LOC_BELIEF_GOD_OF_THE_OPEN_SKY_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2 [ICON_Food] Food from Camps.' WHERE Tag ='LOC_BELIEF_GODDESS_OF_THE_HUNT_DESCRIPTION';
UPDATE LocalizedText SET Text ='+4 [ICON_Faith] Faith from Quarries.' WHERE Tag ='LOC_BELIEF_STONE_CIRCLES_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Faith] Faith from Mines.' WHERE Tag ='LOC_BELIEF_RELIGIOUS_IDOLS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Production] Production from Mines over Strategic resources.[NEWLINE]+2 [ICON_Production] Production from Merchant Quarters.' WHERE Tag ='LOC_BELIEF_GOD_OF_CRAFTSMEN_DESCRIPTION';
UPDATE LocalizedText SET Text ='+2 [ICON_Faith] Faith from City Centers.[NEWLINE]+1 [ICON_Food] Food from [ICON_RESOURCE_WINE] Wine, [ICON_RESOURCE_INCENSE] Incense, [ICON_RESOURCE_COCOA] Cocoa, [ICON_RESOURCE_TOBACCO] Tobacco, [ICON_RESOURCE_COFFEE] Coffee, and [ICON_RESOURCE_TEA] Tea Plantations.' WHERE Tag ='LOC_BELIEF_GODDESS_OF_FESTIVALS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Faith] Faith from Luxury resources.' WHERE Tag ='LOC_BELIEF_ORAL_TRADITION_DESCRIPTION';
UPDATE LocalizedText SET Text ='+25% [ICON_Production] Production toward Ancient, Classical and Medieval military units.' WHERE Tag ='LOC_BELIEF_GOD_OF_THE_FORGE_DESCRIPTION';
UPDATE LocalizedText SET Text ='City growth rate is 15% higher.' WHERE Tag ='LOC_BELIEF_FERTILITY_RITES_DESCRIPTION';
UPDATE LocalizedText SET Text ='Border expansion rate is 15% higher.[NEWLINE]+1 [ICON_Faith] Faith from City Center.' WHERE Tag ='LOC_BELIEF_RELIGIOUS_SETTLEMENTS_DESCRIPTION';
UPDATE LocalizedText SET Text ='+1 [ICON_Faith] Faith from Farms with a Bonus resource.[NEWLINE]+1 [ICON_Food] Food from Farms with a Bonus resource.' WHERE Tag ='LOC_BELIEF_GODDESS_OF_THE_HARVEST_DESCRIPTION';