---------------------------------
-- Growth Changes
---------------------------------
UPDATE LocalizedText SET Text ='Город растет на 3% быстрее.[NEWLINE]Район, отвечающий в вашем городе за морские коммуникации. На клетке района не действует [ICON_Movement] штраф за погрузку на корабль и выгрузку с него. Можно построить только на побережье или клетках озера, прилегающих к суше.[NEWLINE][NEWLINE]+1 [ICON_TradeRoute] доступный торговый путь.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_HARBOR_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 3% быстрее.[NEWLINE]Район, который обеспечивает горожан жильем в зависимости от престижа клетки:[NEWLINE]Потрясающий: +6 [ICON_Housing] к жилью.[NEWLINE]Притягивающий: +5 [ICON_Housing] к жилью.[NEWLINE]Средний: +4 [ICON_Housing] к жилью.[NEWLINE]Невзрачный: +3 [ICON_Housing] к жилью.[NEWLINE]Отвратительный: +2 [ICON_Housing] к жилью.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_NEIGHBORHOOD_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 3% быстрее.[NEWLINE]Район города, специализирующийся на торговле и финансах.[NEWLINE][NEWLINE]+1 [ICON_TradeRoute] доступный торговый путь.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_COMMERCIAL_HUB_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 10% быстрее.[NEWLINE]Район, поставляющий в город пресную воду из соседней реки, озера, оазиса или с гор. Города без начального доступа к пресной воде получают до 6 [ICON_Housing] жилья от воды. Города с изначальным доступом к пресной воде получают +2 к [ICON_Housing] жилью. Можно построить только рядом с центром города.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_AQUEDUCT_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 10% быстрее.[NEWLINE]Уникальный римский район, способствует росту города. Заменяет собой акведук.[NEWLINE][NEWLINE]Поставляет в город пресную воду из соседней реки, озера, оазиса или с гор. Города без начального доступа к пресной воде получают до 6 [ICON_Housing] жилья. Города с изначальным доступом к пресной воде получают +2 к [ICON_Housing] жилью. В любом случае, бани дают дополнительный бонус +2 к [ICON_Housing] жилью и +1 к [ICON_Amenities] довольству. Можно построить только рядом с центром города.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_BATH_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 3% быстрее.[NEWLINE]Уникальный район Конго, который можно построить только в тропических или обычных лесах. Заменяет собой пригород, но становится доступным раньше. Дает +5 [ICON_Housing] к жилью, +2 [ICON_Food] пищи и +4 [ICON_Gold] золота, независимо от престижа.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_MBANZA_DESCRIPTION';
UPDATE LocalizedText SET Text ='Город растет на 3% быстрее.[NEWLINE]Уникальный район Англии, отвечающий в вашем городе за морские коммуникации. Заменяет собой гавань. На клетке района не действует [ICON_Movement] штраф за погрузку на корабль и выгрузку с него. Можно построить только на клетках побережья или озер, прилегающих к суше.[NEWLINE][NEWLINE]+1 [ICON_Movement] к перемещению морских юнитов, построенных в доках.[NEWLINE]+2 [ICON_Gold] золота, если построен на другом континенте[NEWLINE]+1 [ICON_TradeRoute] дополнительный торговый путь.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_DESCRIPTION';

---------------------------------
-- Ram and Siege Tower change
---------------------------------
UPDATE LocalizedText SET Text ='Юнит поддержки Древного мира.' WHERE Language ='ru_RU' AND Tag ='LOC_UNIT_BATTERING_RAM_DESCRIPTION';
UPDATE LocalizedText SET Text ='Вспомогательный юнит Античности. Когда находится рядом с городом, юниты ближнего боя наносят полный урон стенам при атаке.' WHERE Language ='ru_RU' AND Tag ='LOC_UNIT_SIEGE_TOWER_DESCRIPTION';

---------------------------------
-- Cultural City-State change 
---------------------------------

UPDATE LocalizedText SET Text ='+1 [ICON_Culture] культуры в [ICON_Capital] столице.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='+1 [ICON_Culture] культуры для каждой театральной площади.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS';
-- in current moment it is same UPDATE LocalizedText SET Text ='Additional +2 [ICON_Culture] Culture in every Theater Square district.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS';

---------------------------------
-- Scientific City-State change
---------------------------------

UPDATE LocalizedText SET Text ='+1 [ICON_Science] науки в [ICON_Capital] столице.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='+1 [ICON_Science] науки в каждом кампусе.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_MEDIUM_INFLUENCE_BONUS';
-- in current moment it is same UPDATE LocalizedText SET Text ='Additional +2 [ICON_Science] Science in every Campus district.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_LARGE_INFLUENCE_BONUS';

---------------------------------
-- Boost change
---------------------------------

UPDATE LocalizedText SET Text ='[ICON_TechBoosted]Озарение и [ICON_CivicBoosted] вдохновение дают 35% к получению социальных институтов и 25% к технологиям.' WHERE Language ='ru_RU' AND Tag ='LOC_TRAIT_CIVILIZATION_DYNASTIC_CYCLE_DESCRIPTION';

---------------------------------
-- Military Academy change
---------------------------------

UPDATE LocalizedText SET Text ='+25% боевого опыта и бонус Элитной тренировки всем наземным войскам, созданным в этом городе. Ускоренная подготовка корпусов и армий.' WHERE Language ='ru_RU' AND Tag ='LOC_BUILDING_MILITARY_ACADEMY_DESCRIPTION';

---------------------------------
-- Embark changes
---------------------------------

UPDATE LocalizedText SET Text ='Позволяет поселенцам грузиться на корабли.' WHERE Language ='ru_RU' AND Tag ='LOC_TECH_SAILING_DESCRIPTION';
UPDATE LocalizedText SET Text ='Позволяет торговцам и разведчикам грузиться на корабли, позволяет ловить [ICON_RESOURCE_FISH] рыбу.' WHERE Language ='ru_RU' AND Tag ='LOC_TECH_CELESTIAL_NAVIGATION_DESCRIPTION';

---------------------------------
-- Commercial Hub name change
---------------------------------

UPDATE LocalizedText SET Text ='+1 ячейка политического курса экономической направленности[NEWLINE][NEWLINE]Удваивает текущую сокровищницу. Должен быть около реки по соседству с финансовым районом, где есть банк.' WHERE Language ='ru_RU' AND Tag ='LOC_BUILDING_BIG_BEN_DESCRIPTION';
UPDATE LocalizedText SET Text ='Доступен +1 [ICON_TradeRoute] торговый путь[NEWLINE][NEWLINE]Ваши [ICON_TradeRoute] торговые пути из этого города получают +2 [ICON_Gold] золота за каждый бонусный ресурс на территории города. Рядом должен быть финансовый район, содержащий рынок, и [ICON_RESOURCE_CATTLE] скот.' WHERE Language ='ru_RU' AND Tag ='LOC_BUILDING_GREAT_ZIMBABWE_DESCRIPTION';
UPDATE LocalizedText SET Text ='Бонусы от соседства для финансового района и гавани: +100%.' WHERE Language ='ru_RU' AND Tag ='LOC_POLICY_ECONOMIC_UNION_DESCRIPTION';
UPDATE LocalizedText SET Text ='+100% [ICON_Gold] золота от зданий в районе «Финансовый район».' WHERE Language ='ru_RU' AND Tag ='LOC_POLICY_FREE_MARKET_DESCRIPTION';
UPDATE LocalizedText SET Text ='Бонусы от соседства для финансового района: +100%.' WHERE Language ='ru_RU' AND Tag ='LOC_POLICY_TOWN_CHARTERS_DESCRIPTION';
UPDATE LocalizedText SET Text ='Тропические леса дают бонус за соседство +1 для кампуса, финансового района, священного места и театральной площади. Тропические леса дают +1 [ICON_Housing] к жилью для соседних пригородов.' WHERE Language ='ru_RU' AND Tag ='LOC_TRAIT_CIVILIZATION_AMAZON_DESCRIPTION';
UPDATE LocalizedText SET Text ='Торговый квартал, финансовый район и гавань – основные источники дополнительных [ICON_TradeRoute] торговых путей.' WHERE Language ='ru_RU' AND Tag ='LOC_TOP_PANEL_TRADE_ROUTES_TOOLTIP_SOURCES_HELP';
UPDATE LocalizedText SET Text ='+4 [ICON_Gold] золота в каждом финансовом районе.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Дополнительно +4 [ICON_Gold] золота в каждом финансовом районе.' WHERE Language ='ru_RU' AND Tag ='LOC_MINOR_CIV_TRADE_TRAIT_LARGE_INFLUENCE_BONUS';
UPDATE LocalizedText SET Text ='Финансовый район' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_COMMERCIAL_HUB_NAME'; 
UPDATE LocalizedText SET Text ='Инвестиции в финансовый район' WHERE Language ='ru_RU' AND Tag ='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_NAME';
UPDATE LocalizedText SET Text ='Инвестиции в финансовый район' WHERE Language ='ru_RU' AND Tag ='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_SHORT_NAME';
UPDATE LocalizedText SET Text ='Соседство: большой бонус к [ICON_Production] производству за соседство с финансовым районом. Стандартный бонус к [ICON_Production] производству за соседство с ресурсами. Небольшой бонус к [ICON_Production] производству за соседство с другими городскими районами.' WHERE Language ='ru_RU' AND Tag ='LOC_DISTRICT_HANSA_DESCRIPTION_ADJACENCY';
UPDATE LocalizedText SET Text ='+{1_num} [ICON_Production] производства за соседство с финансовым районом.' WHERE Tag ='LOC_DISTRICT_COMMERCIAL_HUB_PRODUCTION';
UPDATE LocalizedText SET Text ='Кампусы и финансовые районы в городе с этой религией дают по +1 [ICON_Science] науки или +1 [ICON_Gold] золота соответственно.' WHERE Language ='ru_RU' AND Tag ='LOC_BELIEF_STEWARDSHIP_DESCRIPTION';

---------------------------------
-- Pedia
---------------------------------
UPDATE LocalizedText SET Text ='«Финансовый район» – это, как правило, деловой район, где капитализм и жадность заставляют финансы работать. Там находятся рынки, банки и биржи, которые делают нескольких человек богатыми и заставляют город расти. Со временем из кучки местных финансистов и корпоративных офисов, финансовый район может даже перерасти в «Мировой финансовый центр». Существует даже рейтинг таких глобальных центров. До 2013 года Лондон занимал первое место в Мировом индексе финансовых центров, затем был вытеснен Нью-Йорком, сразу за которым следуют Гонконг, Сингапур и Токио. Стремление к прибыли, очевидно, является универсальной чертой цивилизации.' WHERE Language ='ru_RU' AND Tag ='LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_COMMERCIAL_HUB_CHAPTER_HISTORY_PARA_1';
UPDATE LocalizedText SET Text ='«Развлекательный» район предлагает семейный отдых, позволяющий отвлечься от тягот городской жизни. В некоторых городах в этом районе расположены музеи, зоопарки и другие достопримечательности, способствующие интеллектуальному развитию, в других – это район театров, концертных залов и так далее, в третьих – место для спортивных стадионов и крытых арен. Независимо от формы – будь то Quartier des Spectacles (Квартал зрелищ) в Монреале, район Te Аро в Веллингтоне или даже Санкт-Паули в Гамбурге – в каждом цивилизованном городе есть район, в котором горожане могут отдохнуть и почувствовать себя членами единого городского сообщества – в сельской местности это недоступно.' WHERE Language ='ru_RU' AND Tag ='LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_ENTERTAINMENT_COMPLEX_CHAPTER_HISTORY_PARA_1';
UPDATE LocalizedText SET Text ='Игрок может поддерживать ограниченное число активных [ICON_TradeRoute] торговых путей. Их количество зависит в основном от количества имеющихся у него финансовых районов и гаваней, но может быть увеличено и другими способами.' WHERE Language ='ru_RU' AND Tag ='LOC_PEDIA_CONCEPTS_PAGE_TRADE_2_CHAPTER_CONTENT_PARA_1';
UPDATE LocalizedText SET Text ='Чтобы разграбить район, требуется 3 очка перемещения (или все ОП). Каждое здание в районе нужно грабить отдельно, и добыча зависит от района (см. ниже). После разграбления повторно грабить здание нельзя, пока его не восстановит его владелец (это делается через меню производства и занимает 25% [ICON_Production] изначальных очков производства, необходимых для постройки этого здания).[NEWLINE]Разграбление кампуса дает очки [ICON_Science] науки.[NEWLINE]Разграбление священного места дает очки [ICON_Faith] веры.[NEWLINE]Разграбление финансового района дает [ICON_Gold] золото.[NEWLINE]Разграбление театральной площади дает очки [ICON_Culture] культуры.[NEWLINE]Разграбление гавани дает [ICON_Gold] золото.[NEWLINE]Разграбление промышленной зоны дает очки [ICON_Science] науки.[NEWLINE]Разграбление аэродрома дает [ICON_Gold] золото.[NEWLINE]Разграбление акведука дает [ICON_Gold] золото.[NEWLINE]Разграбление космопорта дает очки [ICON_Science] науки.' WHERE Language ='ru_RU' AND Tag ='LOC_PEDIA_CONCEPTS_PAGE_COMBAT_13_CHAPTER_CONTENT_PARA_2';

---------------------------------
-- Projects
---------------------------------
UPDATE LocalizedText SET Text ='Внутрирайонный проект. Генерирует большое количество [ICON_Gold] золота и небольшое количество очков [ICON_GreatMerchant] великих торговцев.' WHERE Language ='ru_RU' AND Tag='LOC_PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB_DESCRIPTION';

---------------------------------
-- Settler update
---------------------------------
UPDATE LocalizedText SET Text ='Строит новые города. При создании юнита [ICON_Citizen] население города сокращается на 2.' WHERE Language ='ru_RU' AND Tag ='LOC_UNIT_SETTLER_DESCRIPTION';

---------------------------------
-- Civic Changes
---------------------------------
UPDATE LocalizedText SET Text ='Можно строить фермы в тундре и пустыне. Позволяет заключать союзы.' WHERE Language ='ru_RU' AND Tag ='LOC_CIVIC_CIVIL_SERVICE_DESCRIPTION';
UPDATE LocalizedText SET Text ='Можно строить фермы на холмах. Ферма, рыбацкое судно, плантация и пастбище дает +1 [ICON_FOOD] Пищи. Открывает городские укрепления, автоматически дающие всем вашим городам по 450 ед. мощи при обороне и способность к обстрелу.' WHERE Language ='ru_RU' AND Tag ='LOC_CIVIC_CIVIL_ENGINEERING_DESCRIPTION';
